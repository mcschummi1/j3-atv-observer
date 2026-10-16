package com.cgs.atvobserver.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.cgs.atvobserver.MainActivity;
import com.cgs.atvobserver.R;
import com.cgs.atvobserver.ai.ObserverAiEngine;
import com.cgs.atvobserver.audio.EngineAudioProcessor;
import com.cgs.atvobserver.camera.CameraAnalyzerManager;
import com.cgs.atvobserver.location.GpsTracker;
import com.cgs.atvobserver.sensor.UniversalSensorManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: ObserverForegroundService.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0002/0B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010#\u001a\u00020$H\u0002J\u0012\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\b\u0010)\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020$H\u0016J\"\u0010+\u001a\u00020,2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,H\u0016R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0012\u0010\r\u001a\u00060\u000eR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u001f@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u00061"}, d2 = {"Lcom/cgs/atvobserver/service/ObserverForegroundService;", "Landroid/app/Service;", "Landroidx/lifecycle/LifecycleOwner;", "()V", "<set-?>", "Lcom/cgs/atvobserver/ai/ObserverAiEngine;", "aiEngine", "getAiEngine", "()Lcom/cgs/atvobserver/ai/ObserverAiEngine;", "Lcom/cgs/atvobserver/audio/EngineAudioProcessor;", "audioProcessor", "getAudioProcessor", "()Lcom/cgs/atvobserver/audio/EngineAudioProcessor;", "binder", "Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;", "Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;", "cameraAnalyzerManager", "getCameraAnalyzerManager", "()Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;", "Lcom/cgs/atvobserver/location/GpsTracker;", "gpsTracker", "getGpsTracker", "()Lcom/cgs/atvobserver/location/GpsTracker;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "getLifecycle", "()Landroidx/lifecycle/Lifecycle;", "lifecycleRegistry", "Landroidx/lifecycle/LifecycleRegistry;", "serviceScope", "Lkotlinx/coroutines/CoroutineScope;", "Lcom/cgs/atvobserver/sensor/UniversalSensorManager;", "universalSensorManager", "getUniversalSensorManager", "()Lcom/cgs/atvobserver/sensor/UniversalSensorManager;", "createNotificationChannel", "", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onCreate", "onDestroy", "onStartCommand", "", "flags", "startId", "Companion", "LocalBinder", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes12.dex */
public final class ObserverForegroundService extends Service implements LifecycleOwner {
    public static final String CHANNEL_ID = "cgs_observer_foreground_channel";
    public static final int NOTIFICATION_ID = 1001;
    private ObserverAiEngine aiEngine;
    private EngineAudioProcessor audioProcessor;
    private CameraAnalyzerManager cameraAnalyzerManager;
    private GpsTracker gpsTracker;
    private UniversalSensorManager universalSensorManager;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final MutableStateFlow<Boolean> _isServiceRunning = StateFlowKt.MutableStateFlow(false);
    private static final StateFlow<Boolean> isServiceRunning = FlowKt.asStateFlow(_isServiceRunning);
    private final LifecycleRegistry lifecycleRegistry = new LifecycleRegistry(this);
    private final LocalBinder binder = new LocalBinder();
    private final CoroutineScope serviceScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)));

    @Override // androidx.lifecycle.LifecycleOwner
    /* renamed from: getLifecycle */
    public Lifecycle getLifecycleRegistry() {
        return this.lifecycleRegistry;
    }

    public final GpsTracker getGpsTracker() {
        GpsTracker gpsTracker = this.gpsTracker;
        if (gpsTracker != null) {
            return gpsTracker;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gpsTracker");
        return null;
    }

    public final EngineAudioProcessor getAudioProcessor() {
        EngineAudioProcessor engineAudioProcessor = this.audioProcessor;
        if (engineAudioProcessor != null) {
            return engineAudioProcessor;
        }
        Intrinsics.throwUninitializedPropertyAccessException("audioProcessor");
        return null;
    }

    public final UniversalSensorManager getUniversalSensorManager() {
        UniversalSensorManager universalSensorManager = this.universalSensorManager;
        if (universalSensorManager != null) {
            return universalSensorManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("universalSensorManager");
        return null;
    }

    public final CameraAnalyzerManager getCameraAnalyzerManager() {
        CameraAnalyzerManager cameraAnalyzerManager = this.cameraAnalyzerManager;
        if (cameraAnalyzerManager != null) {
            return cameraAnalyzerManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cameraAnalyzerManager");
        return null;
    }

    public final ObserverAiEngine getAiEngine() {
        ObserverAiEngine observerAiEngine = this.aiEngine;
        if (observerAiEngine != null) {
            return observerAiEngine;
        }
        Intrinsics.throwUninitializedPropertyAccessException("aiEngine");
        return null;
    }

    /* compiled from: ObserverForegroundService.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;", "Landroid/os/Binder;", "(Lcom/cgs/atvobserver/service/ObserverForegroundService;)V", "getService", "Lcom/cgs/atvobserver/service/ObserverForegroundService;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class LocalBinder extends Binder {
        public LocalBinder() {
        }

        /* renamed from: getService, reason: from getter */
        public final ObserverForegroundService getThis$0() {
            return ObserverForegroundService.this;
        }
    }

    /* compiled from: ObserverForegroundService.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;", "", "()V", "CHANNEL_ID", "", "NOTIFICATION_ID", "", "_isServiceRunning", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "isServiceRunning", "Lkotlinx/coroutines/flow/StateFlow;", "()Lkotlinx/coroutines/flow/StateFlow;", "startService", "", "context", "Landroid/content/Context;", "statusText", "stopService", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StateFlow<Boolean> isServiceRunning() {
            return ObserverForegroundService.isServiceRunning;
        }

        public static /* synthetic */ void startService$default(Companion companion, Context context, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = "Observer Active - Tracking Ride";
            }
            companion.startService(context, str);
        }

        public final void startService(Context context, String statusText) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(statusText, "statusText");
            Intent intent = new Intent(context, (Class<?>) ObserverForegroundService.class);
            intent.putExtra("status_text", statusText);
            context.startForegroundService(intent);
        }

        public final void stopService(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, (Class<?>) ObserverForegroundService.class);
            context.stopService(intent);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.lifecycleRegistry.setCurrentState(Lifecycle.State.CREATED);
        this.lifecycleRegistry.setCurrentState(Lifecycle.State.STARTED);
        createNotificationChannel();
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.gpsTracker = new GpsTracker(applicationContext);
        this.audioProcessor = new EngineAudioProcessor();
        Context applicationContext2 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
        this.universalSensorManager = new UniversalSensorManager(applicationContext2);
        Context applicationContext3 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext3, "getApplicationContext(...)");
        this.cameraAnalyzerManager = new CameraAnalyzerManager(applicationContext3);
        this.aiEngine = new ObserverAiEngine();
        getGpsTracker().startTracking();
        getAudioProcessor().startListening(this.serviceScope);
        getUniversalSensorManager().startListeningAllSensors();
        getCameraAnalyzerManager().startCameraAnalysis(this);
        _isServiceRunning.setValue(true);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        String statusText;
        if (intent == null || (statusText = intent.getStringExtra("status_text")) == null) {
            statusText = "Observer Active - Telemetry Running";
        }
        Intent notificationIntent = new Intent(this, (Class<?>) MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(this, 0, notificationIntent, 201326592);
        Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID).setContentTitle("J3 VEHICLE OBSERVER").setContentText(statusText).setSmallIcon(R.drawable.ic_launcher_foreground).setContentIntent(pendingIntent).setOngoing(true).setPriority(2).setCategory(NotificationCompat.CATEGORY_SERVICE).build();
        Intrinsics.checkNotNullExpressionValue(notification, "build(...)");
        startForeground(1001, notification);
        return 1;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.lifecycleRegistry.setCurrentState(Lifecycle.State.DESTROYED);
        _isServiceRunning.setValue(false);
        getGpsTracker().stopTracking();
        getAudioProcessor().stopListening();
        getUniversalSensorManager().stopListening();
        getCameraAnalyzerManager().stopCameraAnalysis();
        CoroutineScopeKt.cancel$default(this.serviceScope, null, 1, null);
    }

    private final void createNotificationChannel() {
        NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "CGS Observer Foreground Service", 4);
        channel.setDescription("Keeps J3 Observer running with highest Android process priority");
        NotificationManager manager = (NotificationManager) getSystemService(NotificationManager.class);
        if (manager != null) {
            manager.createNotificationChannel(channel);
        }
    }
}
