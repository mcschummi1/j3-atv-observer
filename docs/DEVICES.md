# Multi-device support (step 3)

No device-model checks are used anywhere. Behaviour is chosen from runtime capabilities, and
every service start writes `Android/data/com.cgs.atvobserver/files/ride_journal/capabilities.json`
(SDK, RAM / low-RAM flag, standby bucket, background-restriction flag, battery-optimisation
status, supported audio sample rates, UNPROCESSED-source support, audio source actually in use,
complete sensor list with type/vendor/range/min delay/wake-up, GPS/mic features, su presence).

**None of this has been run on the physical phones.** The table describes what the code does
on each class of device, derived from the Android API level and capabilities, not from a test.

| Target | Android | Relevant behaviour of the patched app |
|---|---|---|
| Galaxy J3 (low RAM) | 9 (SDK 28, minSdk floor) | `startForeground(id, n)` 2-arg path (FGS types not enforced < Q). Low-RAM detection (`ActivityManager.isLowRamDevice()` or < 2.2 GB) lowers the accelerometer from `SENSOR_DELAY_FASTEST` to `SENSOR_DELAY_UI` (others: `SENSOR_DELAY_GAME`). Only one `AudioRecord` per process now (Android 9 allows a single capture); `startRecording()` failure is detected and retried every 10 s. |
| Galaxy A71 (rooted) | 10 at launch, upgradeable to 13 | Typed `location\|microphone` FGS on Q+. Root is **not** used or required; `su` presence is only reported in capabilities.json. Optional manual step below. |
| Galaxy S22 (Exynos) | 12–16 | Typed FGS; Android 14+ requires `FOREGROUND_SERVICE_MICROPHONE` + granted `RECORD_AUDIO` at `startForeground()` time – the service is only started after a while-in-use permission is granted and only with the types actually granted. `UNPROCESSED` audio source is used if `AudioManager.PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED` reports true, otherwise `VOICE_RECOGNITION`, then `MIC`. |
| Motorola Razr 40 | 13 → 16 (SDK 36) | Same as S22. `POST_NOTIFICATIONS` is requested together with the core permissions (Android 13+) so the FGS notification is visible. |

## Audio capability detection
* Sample rate: first of 22050 (original), 16000, 44100, 48000, 11025, 8000 for which
  `AudioRecord.getMinBufferSize()` succeeds (fallback 44100, the only CDD-guaranteed rate).
* Source: UNPROCESSED (if supported) → VOICE_RECOGNITION → MIC → DEFAULT; every candidate is checked
  for `STATE_INITIALIZED` and released if unusable. If none works the original "UNAVAILABLE"
  state is published instead of a dead recorder.
* Buffer: max(original 8192 samples·2 B, 2 × min buffer).

## OEM background-kill quirks – user-facing steps
The app now asks **once (max. twice)** for "ignore battery optimisations"
(`ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS`) after location+mic are granted. Please accept.
Additionally (per [dontkillmyapp.com/samsung](https://dontkillmyapp.com/samsung) and
[dontkillmyapp.com/motorola](https://dontkillmyapp.com/motorola)):

**Samsung (J3, A71, S22)**
1. Settings → Apps → J3 ATV Observer → Battery → **Unrestricted** (older One UI: Battery optimisation → All apps → Don't optimise).
2. Settings → Battery (and device care) → Background usage limits → disable **Put unused apps to sleep**, and add the app to **Never sleeping apps**.
3. Optional: Recent apps → app icon → **Lock this app / Keep open**.

**Motorola (Razr 40)**
1. Settings → Apps → J3 ATV Observer → App battery usage → tap the row (not only the toggle) → **Unrestricted**.
2. Settings → Battery → disable **Adaptive battery** if the service is still stopped.

**Rooted A71 (optional, manual)** – adds the app to the Doze whitelist without the dialog:
`su -c 'dumpsys deviceidle whitelist +com.cgs.atvobserver'`. The app never runs `su` itself.

## Before a pocket ride
Open the app, choose Pocket mode *while the screen is on*, then lock the phone. On Android 14+ a
microphone or location foreground service cannot be (re)started from the background, so if the
system kills the process while the phone is locked, the `START_STICKY` restart cannot re-acquire
those types; `startForegroundCompat` then stops the service cleanly instead of crashing, and the
interrupted journal is recovered into Ride History the next time the app is opened. The journal records the
active FGS types in its first line (`fgsTypes=0x88` = location+microphone).
