# Root cause: "Pocket mode records nothing"

All code below is quoted from the jadx decompilation in `reference/jadx/` (or the decoded
manifest in `reference/AndroidManifest.decoded.xml`). Nothing here was verified on a physical
device - this is static analysis of the shipped v1.1.6-Mk1 APK.

## Primary cause - the foreground service is not allowed to use the microphone

`reference/AndroidManifest.decoded.xml`:

```xml
<uses-permission android:name="android.permission.FOREGROUND_SERVICE"/>
<uses-permission android:name="android.permission.FOREGROUND_SERVICE_LOCATION"/>
...
<service android:exported="false" android:foregroundServiceType="location"
         android:name="com.cgs.atvobserver.service.ObserverForegroundService"/>
```

`service/ObserverForegroundService.java` – `onStartCommand`:

```java
startForeground(1001, notification);   // no type argument -> manifest type "location" only
return 1;                              // START_STICKY
```

The app targets SDK 36. Android's rules (from the Android developer docs):

* Android 11+: *"If your app targets Android 11 or higher and accesses the camera or microphone in a
  foreground service, you must include the `camera` and `microphone` foreground service types."*
  ([Android 11 foreground services](https://developer.android.com/about/versions/11/privacy/foreground-services))
* Android 14+: the `microphone` type requires the `FOREGROUND_SERVICE_MICROPHONE` manifest permission and a granted
  `RECORD_AUDIO` ([Foreground service types](https://developer.android.com/develop/background-work/services/fgs/service-types)).
* Since Android 9, an app without a qualifying foreground component *"continued running but received silence"*
  ([Sharing audio input](https://developer.android.com/guide/topics/media/sharing-audio-input)).

In pocket mode the screen is off, so `MainActivity` is no longer a foreground UI. The only thing
keeping the app "foreground" is a service of type **location**, which grants location
while-in-use but **not** microphone. On Android 11+ (Galaxy S22, Razr 40, and the Galaxy A71 once
updated beyond its launch Android 10) the already-open `AudioRecord` therefore keeps "working"
but delivers silent buffers. On the Galaxy J3 (Android 9) the FGS type is not enforced, so there the
contributing causes below (C1-C3, C6) are what can lose the data.

`audio/EngineAudioProcessor.java` – `processAudioBuffer` turns silence into "nothing":

```java
double rms = Math.sqrt(sumSquares / size);
double rmsDb = rms > 1.0E-5d ? (20 * Math.log10(rms)) + 90.0d : AudioStats.AUDIO_AMPLITUDE_NONE;
boolean isRunning = rmsDb > 65.0d;
if (!isRunning) {
    this.rpmHistory.clear();
    this._analysisState.setValue(new AudioAnalysisResult(0, 0, true, false, false, rmsDb, "UNAVAILABLE"));
    return;
}
```

With all-zero input `rmsDb` becomes `0.0`, `isRunning` is false and every frame is published as
RPM 0 / engine off / "UNAVAILABLE". There is no error, no log and no UI hint – the failure is
completely silent.

## Contributing causes (also fixed)

### C1. The data that is shown and saved is owned by the Activity, not the service
`MainActivity.onCreate`:

```java
this.gpsTracker = new GpsTracker(applicationContext6);
this.audioProcessor = new EngineAudioProcessor();
this.universalSensorManager = new UniversalSensorManager(applicationContext7);
...
companion2.startService(applicationContext9, "CGS Observer Running - Maximum Process Priority");
```

`ObserverForegroundService.onCreate` creates a *second* full set:

```java
this.gpsTracker = new GpsTracker(applicationContext);
this.audioProcessor = new EngineAudioProcessor();
this.universalSensorManager = new UniversalSensorManager(applicationContext2);
this.cameraAnalyzerManager = new CameraAnalyzerManager(applicationContext3);
...
getAudioProcessor().startListening(this.serviceScope);
getCameraAnalyzerManager().startCameraAnalysis(this);
```

Nothing ever reads the service's instances (no `bindService`, and `getAudioProcessor()` /
`getGpsTracker()` have no callers outside the service). The service therefore only provides
process priority, while it opens a second `AudioRecord` on the same mic (on Android 9 / Galaxy J3
only one capture can run: *"an error would be returned when you called startRecording()"*) and
starts the camera from a service that has no `camera` FGS type.

The Activity's audio job is launched on the Activity's `lifecycleScope`
(`engineAudioProcessor.startListening(LifecycleOwnerKt.getLifecycleScope(this))`).

### C2. The ride is persisted only on the "End Ride" tap, and the Activity kills the service
`PocketTripScreenKt` – the only write path:

```java
function4.invoke(valueOf /* gpsData.getDistanceKm() */, Long.valueOf(PocketTripScreen$lambda$1), Double.valueOf(0.2d), activeVehicle);
```
which `MainActivity` turns into `rideDao.insertRide(new RideLogEntity(... "POCKET" ... "Pocket Mode Background Log" ...))`
on `LifecycleOwnerKt.getLifecycleScope(MainActivity.this)`.

`MainActivity.onDestroy`:

```java
gpsTracker.stopTracking();
engineAudioProcessor.stopListening();
universalSensorManager.stopListening();
cameraAnalyzerManager.stopCameraAnalysis();
companion.stopService(applicationContext);
```

If the Activity is destroyed during a ride (task swiped away, Samsung/Motorola task cleaners) all
recording is stopped and nothing at all is written. If the process is killed, likewise.

### C3. No wake lock
`WAKE_LOCK` is declared in the manifest but `newWakeLock`/`PowerManager` appear nowhere in the app
package (`grep -r "newWakeLock\|PowerManager" reference/jadx` → no matches). With the screen off
the CPU may suspend between GPS fixes; the 1 s ride timer (`DelayKt.delay(1000)` loop in
`PocketTripScreenKt$PocketTripScreen$2`) and the audio loop only run while the CPU is awake.

### C4. Android 14+ start order
`MainActivity.onCreate` calls `checkAndRequestPermissions()` (which only *launches* the permission
dialog) and immediately afterwards `startService(...)` → `startForeground(1001, notification)` with
type `location`. On Android 14+ a location FGS started before `ACCESS_FINE/COARSE_LOCATION` is granted
throws `SecurityException` (first launch on the Razr 40 / Android 16).

### C5. Distance is cumulative since app launch
`GpsTracker.resetTrip()` exists but has no caller (`grep -rn resetTrip reference/jadx` only finds the
definition), so the "distance" saved for a pocket ride is the distance since the app was started.

### C6. Hard-coded 65 dB engine gate (fixed in step 4)
`boolean isRunning = rmsDb > 65.0d;` is an absolute threshold on a device-dependent quantity: mic
sensitivity/AGC differ per phone, and a pocket muffles the signal. On a quiet mic the processor
reports "engine off" even when audio is captured correctly.

## What the fix does (patches/01-pocket-mode-fix.patch + src/java/.../patch/)

| Problem | Fix |
|---|---|
| FGS lacks mic type | Manifest `foregroundServiceType="location\|microphone"`, `FOREGROUND_SERVICE_MICROPHONE` permission; `startForeground(id, n, types)` with exactly the types whose permission is granted, falling back to fewer types and finally `stopSelf()` instead of crashing (`ObserverCompat.startForegroundCompat`). |
| C1 duplicate sources | `ObserverCompat.sharedGps/sharedAudio/sharedSensors` – one instance per process used by both Activity and service; audio runs on an app-wide scope (`audioScope`); camera no longer started from the service. |
| C2 nothing persisted | `PocketRecorder`: service-owned HandlerThread journal (1 row/s CSV, flushed every 5 rows) under `Android/data/com.cgs.atvobserver/files/ride_journal/`. `MainActivity.onDestroy` keeps recording if a TRIP/POCKET ride is active. Journals left without `#END` (process killed) are summarised and inserted into `ride_logs` on the next start; rides whose Activity died are inserted when the session ends. |
| C3 | `PARTIAL_WAKE_LOCK` held only while a TRIP/POCKET session is active (10 h cap). |
| C4 | Service only started once location or mic permission is granted, and re-started from the permission callback. |
| C5 | `GpsTracker.resetTrip()` at ride start. |
