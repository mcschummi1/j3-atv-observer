# Sensors + on-device filtering (step 4)

## What is implemented (and what is not)
**Implemented:** adaptive DSP thresholds plus a hand-weighted logistic score with hysteresis
(`src/java/com/cgs/atvobserver/patch/AdaptiveEventFilter.java`). **Not implemented:** any trained
ML model / TFLite inference. The original APK's `ObserverAiEngine` is also rule-based (no model
files, no TFLite classes, the only native library is CameraX's `libimage_processing_util_jni.so`).

### 1. Adaptive engine gate (patched into `EngineAudioProcessor.processAudioBuffer`)
Original: `boolean isRunning = rmsDb > 65.0d;` and RPM accepted only if `maxAutocorr2 > 0.15d`
(absolute, energy-dependent). Patched:
* `rmsDb > AdaptiveEventFilter.engineGateDb(rmsDb)` – 1 dB histogram of all frame levels with slow
  forgetting; gate = clamp(5th percentile + 12 dB, 35, 65). It is **never stricter than the
  original 65 dB**, and digital silence (0 dB) is still rejected.
* `maxAutocorr > AdaptiveEventFilter.autocorrThreshold(sumSquares)` = min(0.15, 0.4·frame energy),
  i.e. the original absolute value for loud frames, a normalised periodicity test for quiet ones.

### 2. Per-second event classifier in the service journal
Features per second: mean/max band-passed audio level, fraction of frames with a periodic RPM
estimate, vibration RMS (linear-acceleration sensor, or accelerometer with a low-pass gravity
estimate), gyro RMS, GPS speed (only if accuracy < 50 m), pocket flag.
Score = σ(−3 + 1.2·clip(SNR/10,0,3) + 2.0·periodic + 0.8·clip(log2(vib/vibFloor),−2,3) + 1.5·[speed>5]).
States: RIDING / ENGINE_IDLE / QUIET, plus NOISE for loud-but-aperiodic seconds without
vibration (fabric rubbing, wind, speech, handling). A 3-second majority vote provides hysteresis;
NOISE seconds are counted as *rejected* and never become an event state. Weights were chosen by
hand, not fitted to data. Host test (`tests/FilterTest.java`, run by `scripts/build.sh`):

```
PASS gate defaults to original 65 dB
PASS gate learned from ambient floor (38+12=50)
PASS muffled 55 dB engine passes adaptive gate (original 65 dB would reject)
PASS gate never stricter than original
PASS digital silence still rejected (0 dB -> gate 65)
PASS loud frame keeps 0.15 absolute threshold
PASS quiet frame uses 0.4*energy
PASS isolated noise seconds never become a stable state
PASS riding detected
PASS engine idle detected
PASS noise seconds counted as rejected
ALL TESTS PASSED
```
These are synthetic feature sequences, not real ATV recordings.

## Sensor utilisation
`PocketRecorder.SensorHub` registers, on the journal's own HandlerThread and only if present:
accelerometer, linear acceleration, gyroscope, magnetometer, barometer, light, **proximity** (not
used by the original app). Rate: `SENSOR_DELAY_GAME`, `SENSOR_DELAY_UI` on low-RAM devices;
environment sensors at `SENSOR_DELAY_NORMAL`. Per-second journal columns:

`vib_rms, peak_g, gyro_rms, heading_deg (accel+mag rotation matrix), pressure_hpa, alt_m
(barometric), lux, prox_near, pocketed (proximity covered, or lux < 5 if no proximity sensor -
the app's own rule), score, raw_state, state` – in addition to GPS (lat/lon/accuracy/speed/
distance) and audio (rms, rpm, variation, engine flag, confidence, frames/s, floor, gate).

The `#END` line and recovered Ride-History rows carry peak g, barometric altitude range and the
filter summary (e.g. `Riding 40% | Engine idle 20% | Quiet 40% | Noise rejected 2s`).

## What a full source-level ML implementation would do
1. **Audio event model**: YAMNet (MobileNet-v1, AudioSet 521 classes incl. *Engine*, *Idling*,
   *Motorcycle*, *Wind noise*, *Speech*) via TFLite / MediaPipe Audio Classifier on 0.975 s
   windows at 16 kHz, then fine-tune the head on labelled recordings from *this* ATV
   (idle / riding / revving / off) with a few hundred clips per class; INT8-quantise (~4 MB).
2. **Motion model**: a small 1-D CNN/GRU over 2 s accelerometer+gyro windows (ride / idle / walk
   / phone-handling), exported to TFLite, < 100 KB.
3. **Fusion**: late fusion of both model probabilities with GPS speed in a small HMM/Viterbi
   smoother instead of the hand-set 3-s vote.
4. Run inference in the foreground service on a dedicated thread with NNAPI/XNNPACK delegates,
   falling back to CPU on the J3.

Why it was not done here: the APK has no TFLite runtime or model; adding one means shipping the
TFLite AAR's classes plus native `libtensorflowlite_jni.so` for 4 ABIs and a model file, and –
more importantly – there are no labelled recordings from this vehicle to train or validate on, so
any accuracy claim would be fabricated. The journal CSVs this build writes are exactly the
training data such a model would need.
