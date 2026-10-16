# Code map (original v1.1.6-Mk1)

Decompiled with jadx (`reference/jadx`) and apktool 2.12.0 (`reference/smali`).

## Components involved in a ride recording
| Class | Role |
|---|---|
| `MainActivity` | Creates its **own** `GpsTracker`, `EngineAudioProcessor`, `UniversalSensorManager`, `CameraAnalyzerManager`, `ObserverAiEngine`; drives the Compose UI; persists rides to Room on "End Ride". |
| `service.ObserverForegroundService` | Foreground service started from `MainActivity.onCreate`. Creates a **second, independent** set of `GpsTracker`/`EngineAudioProcessor`/`UniversalSensorManager`/`CameraAnalyzerManager` whose data is never read by anything (no `bindService` / `getAudioProcessor()` caller exists outside the service). |
| `audio.EngineAudioProcessor` | `AudioRecord(MIC, 22050 Hz, mono, PCM16)`, 4096-sample frames, Butterworth 2–700 Hz band-pass, RMS dB + autocorrelation RPM estimate. |
| `sensor.UniversalSensorManager` | Accelerometer (SENSOR_DELAY_FASTEST), gyroscope, magnetometer, barometer, light. No proximity sensor. |
| `location.GpsTracker` | `LocationManager` GPS provider, 1 s / 1 m updates, distance only accumulated when `accuracy < 25 m`. |
| `ai.ObserverAiEngine` | Rule-based fusion (`processTelemetryFrame`), invoked only from a Compose `LaunchedEffect` in `MainActivity`. Despite the name there is no ML model in the APK. |
| `ui.screens.PocketTripScreenKt` | Pocket-mode UI: 1 s `delay()` ride-seconds counter, TTS updates, "End Ride" button calling `onEndRide(distance, seconds, 0.2, vehicle)`. |

## Manifest facts
* `<service android:foregroundServiceType="location" .../>` – location only.
* Permissions: `RECORD_AUDIO`, `CAMERA`, `FOREGROUND_SERVICE`, `FOREGROUND_SERVICE_LOCATION`, `WAKE_LOCK`, `HIGH_SAMPLING_RATE_SENSORS`.
  No `FOREGROUND_SERVICE_MICROPHONE`, no `POST_NOTIFICATIONS`.
* `WAKE_LOCK` is declared but no `PowerManager`/`newWakeLock` call exists anywhere in the app package.
