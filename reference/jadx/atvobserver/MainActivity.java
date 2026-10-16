package com.cgs.atvobserver;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.camera.video.AudioStats;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableDoubleState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotDoubleStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import com.cgs.atvobserver.ai.ObserverAiEngine;
import com.cgs.atvobserver.ai.ObserverAiOutput;
import com.cgs.atvobserver.ai.RoadSurfaceClass;
import com.cgs.atvobserver.audio.AudioAnalysisResult;
import com.cgs.atvobserver.audio.EngineAudioProcessor;
import com.cgs.atvobserver.camera.CameraAnalyzerManager;
import com.cgs.atvobserver.data.config.AppConfig;
import com.cgs.atvobserver.data.config.AppConfigManager;
import com.cgs.atvobserver.data.config.VehicleSpecificConfig;
import com.cgs.atvobserver.data.db.AppDatabase;
import com.cgs.atvobserver.data.db.RideDao;
import com.cgs.atvobserver.data.db.RideLogEntity;
import com.cgs.atvobserver.data.model.RideMode;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.data.model.WeatherCondition;
import com.cgs.atvobserver.data.storage.AppStorageManager;
import com.cgs.atvobserver.domain.DaelimOdometerManager;
import com.cgs.atvobserver.location.GpsData;
import com.cgs.atvobserver.location.GpsTracker;
import com.cgs.atvobserver.location.HomePointManager;
import com.cgs.atvobserver.sensor.MotionSensorData;
import com.cgs.atvobserver.sensor.UniversalSensorData;
import com.cgs.atvobserver.sensor.UniversalSensorManager;
import com.cgs.atvobserver.service.ObserverForegroundService;
import com.cgs.atvobserver.ui.theme.ThemeKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\u0012\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\b\u0010 \u001a\u00020\u001cH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000¨\u0006!²\u0006\n\u0010\"\u001a\u00020#X\u008a\u0084\u0002²\u0006\n\u0010$\u001a\u00020\u0016X\u008a\u008e\u0002²\u0006\n\u0010%\u001a\u00020&X\u008a\u008e\u0002²\u0006\n\u0010'\u001a\u00020(X\u008a\u0084\u0002²\u0006\n\u0010)\u001a\u00020*X\u008a\u0084\u0002²\u0006\n\u0010+\u001a\u00020,X\u008a\u0084\u0002²\u0006\n\u0010-\u001a\u00020.X\u008a\u0084\u0002²\u0006\n\u0010/\u001a\u000200X\u008a\u0084\u0002²\u0006\n\u00101\u001a\u000202X\u008a\u008e\u0002²\u0006\n\u00103\u001a\u000204X\u008a\u008e\u0002²\u0006\n\u00105\u001a\u000206X\u008a\u008e\u0002²\u0006\n\u00107\u001a\u000204X\u008a\u008e\u0002"}, d2 = {"Lcom/cgs/atvobserver/MainActivity;", "Landroidx/activity/ComponentActivity;", "()V", "aiEngine", "Lcom/cgs/atvobserver/ai/ObserverAiEngine;", "audioProcessor", "Lcom/cgs/atvobserver/audio/EngineAudioProcessor;", "cameraAnalyzerManager", "Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;", "configManager", "Lcom/cgs/atvobserver/data/config/AppConfigManager;", "daelimOdometerManager", "Lcom/cgs/atvobserver/domain/DaelimOdometerManager;", "database", "Lcom/cgs/atvobserver/data/db/AppDatabase;", "gpsTracker", "Lcom/cgs/atvobserver/location/GpsTracker;", "homePointManager", "Lcom/cgs/atvobserver/location/HomePointManager;", "requestPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "storageManager", "Lcom/cgs/atvobserver/data/storage/AppStorageManager;", "universalSensorManager", "Lcom/cgs/atvobserver/sensor/UniversalSensorManager;", "checkAndRequestPermissions", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_debug", "configState", "Lcom/cgs/atvobserver/data/config/AppConfig;", "currentScreen", "selectedMode", "Lcom/cgs/atvobserver/data/model/RideMode;", "gpsData", "Lcom/cgs/atvobserver/location/GpsData;", "audioData", "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;", "universalData", "Lcom/cgs/atvobserver/sensor/UniversalSensorData;", "cameraSurface", "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;", "aiOutput", "Lcom/cgs/atvobserver/ai/ObserverAiOutput;", "rideSeconds", "", "testSpeed", "", "testRpm", "", "testDistance"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MainActivity extends ComponentActivity {
    public static final int $stable = 8;
    private ObserverAiEngine aiEngine;
    private EngineAudioProcessor audioProcessor;
    private CameraAnalyzerManager cameraAnalyzerManager;
    private AppConfigManager configManager;
    private DaelimOdometerManager daelimOdometerManager;
    private AppDatabase database;
    private GpsTracker gpsTracker;
    private HomePointManager homePointManager;
    private final ActivityResultLauncher<String[]> requestPermissionLauncher = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: com.cgs.atvobserver.MainActivity$$ExternalSyntheticLambda0
        @Override // androidx.activity.result.ActivityResultCallback
        public final void onActivityResult(Object obj) {
            MainActivity.requestPermissionLauncher$lambda$0(MainActivity.this, (Map) obj);
        }
    });
    private AppStorageManager storageManager;
    private UniversalSensorManager universalSensorManager;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestPermissionLauncher$lambda$0(MainActivity this$0, Map permissions) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Boolean bool = (Boolean) permissions.get("android.permission.ACCESS_FINE_LOCATION");
        boolean fineLoc = bool != null ? bool.booleanValue() : false;
        Boolean bool2 = (Boolean) permissions.get("android.permission.RECORD_AUDIO");
        boolean audio = bool2 != null ? bool2.booleanValue() : false;
        Boolean bool3 = (Boolean) permissions.get("android.permission.CAMERA");
        boolean camera = bool3 != null ? bool3.booleanValue() : false;
        CameraAnalyzerManager cameraAnalyzerManager = null;
        if (fineLoc) {
            GpsTracker gpsTracker = this$0.gpsTracker;
            if (gpsTracker == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gpsTracker");
                gpsTracker = null;
            }
            gpsTracker.startTracking();
        }
        if (audio) {
            EngineAudioProcessor engineAudioProcessor = this$0.audioProcessor;
            if (engineAudioProcessor == null) {
                Intrinsics.throwUninitializedPropertyAccessException("audioProcessor");
                engineAudioProcessor = null;
            }
            engineAudioProcessor.startListening(LifecycleOwnerKt.getLifecycleScope(this$0));
        }
        if (camera) {
            CameraAnalyzerManager cameraAnalyzerManager2 = this$0.cameraAnalyzerManager;
            if (cameraAnalyzerManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraAnalyzerManager");
            } else {
                cameraAnalyzerManager = cameraAnalyzerManager2;
            }
            cameraAnalyzerManager.startCameraAnalysis(this$0);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.database = companion.getDatabase(applicationContext);
        Context applicationContext2 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
        this.configManager = new AppConfigManager(applicationContext2);
        Context applicationContext3 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext3, "getApplicationContext(...)");
        this.storageManager = new AppStorageManager(applicationContext3);
        Context applicationContext4 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext4, "getApplicationContext(...)");
        this.homePointManager = new HomePointManager(applicationContext4);
        Context applicationContext5 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext5, "getApplicationContext(...)");
        this.daelimOdometerManager = new DaelimOdometerManager(applicationContext5);
        Context applicationContext6 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext6, "getApplicationContext(...)");
        this.gpsTracker = new GpsTracker(applicationContext6);
        this.audioProcessor = new EngineAudioProcessor();
        Context applicationContext7 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext7, "getApplicationContext(...)");
        this.universalSensorManager = new UniversalSensorManager(applicationContext7);
        Context applicationContext8 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext8, "getApplicationContext(...)");
        this.cameraAnalyzerManager = new CameraAnalyzerManager(applicationContext8);
        this.aiEngine = new ObserverAiEngine();
        checkAndRequestPermissions();
        UniversalSensorManager universalSensorManager = this.universalSensorManager;
        if (universalSensorManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("universalSensorManager");
            universalSensorManager = null;
        }
        universalSensorManager.startListeningAllSensors();
        CameraAnalyzerManager cameraAnalyzerManager = this.cameraAnalyzerManager;
        if (cameraAnalyzerManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraAnalyzerManager");
            cameraAnalyzerManager = null;
        }
        cameraAnalyzerManager.startCameraAnalysis(this);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new MainActivity$onCreate$1(this, null), 3, null);
        ObserverForegroundService.Companion companion2 = ObserverForegroundService.INSTANCE;
        Context applicationContext9 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext9, "getApplicationContext(...)");
        companion2.startService(applicationContext9, "CGS Observer Running - Maximum Process Priority");
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(180816075, true, new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.MainActivity$onCreate$2
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer $composer, int $changed) {
                ComposerKt.sourceInformation($composer, "C103@4547L18604:MainActivity.kt#n931v1");
                if (($changed & 11) != 2 || !$composer.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(180816075, $changed, -1, "com.cgs.atvobserver.MainActivity.onCreate.<anonymous> (MainActivity.kt:103)");
                    }
                    final MainActivity mainActivity = MainActivity.this;
                    ThemeKt.CgsAtvObserverTheme(ComposableLambdaKt.composableLambda($composer, -1188168425, true, new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.MainActivity$onCreate$2.1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer2, int $changed2) {
                            ComposerKt.sourceInformation($composer2, "C106@4691L11,104@4585L18552:MainActivity.kt#n931v1");
                            if (($changed2 & 11) != 2 || !$composer2.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1188168425, $changed2, -1, "com.cgs.atvobserver.MainActivity.onCreate.<anonymous>.<anonymous> (MainActivity.kt:104)");
                                }
                                SurfaceKt.m2582SurfaceT9BRK9s(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), null, MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getBackground(), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.composableLambda($composer2, 7094834, true, new C00801(MainActivity.this)), $composer2, 12582918, 122);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer2.skipToGroupEnd();
                        }

                        /* compiled from: MainActivity.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\u000b¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "(Landroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {1, 9, 0}, xi = 48)
                        /* renamed from: com.cgs.atvobserver.MainActivity$onCreate$2$1$1, reason: invalid class name and collision with other inner class name */
                        static final class C00801 extends Lambda implements Function2<Composer, Integer, Unit> {
                            final /* synthetic */ MainActivity this$0;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C00801(MainActivity mainActivity) {
                                super(2);
                                this.this$0 = mainActivity;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                invoke(composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            public static final AppConfig invoke$lambda$0(State<AppConfig> state) {
                                Object thisObj$iv = state.getValue();
                                return (AppConfig) thisObj$iv;
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r1v84, types: [com.cgs.atvobserver.data.config.AppConfigManager] */
                            /* JADX WARN: Type inference failed for: r2v121, types: [com.cgs.atvobserver.domain.DaelimOdometerManager] */
                            /* JADX WARN: Type inference failed for: r3v25, types: [com.cgs.atvobserver.domain.DaelimOdometerManager] */
                            public final void invoke(Composer composer, int i) {
                                AppConfigManager appConfigManager;
                                Object obj;
                                Object obj2;
                                GpsTracker gpsTracker;
                                EngineAudioProcessor engineAudioProcessor;
                                UniversalSensorManager universalSensorManager;
                                CameraAnalyzerManager cameraAnalyzerManager;
                                ObserverAiEngine observerAiEngine;
                                Object obj3;
                                MotionSensorData motionSensorData;
                                AppDatabase appDatabase;
                                MainActivity$onCreate$2$1$1$2$1 mainActivity$onCreate$2$1$1$2$1;
                                Object obj4;
                                Object obj5;
                                Object obj6;
                                int i2;
                                AppDatabase appDatabase2;
                                MotionSensorData motionSensorData2;
                                final MutableState mutableState;
                                final GpsData gpsData;
                                final MotionSensorData motionSensorData3;
                                Object obj7;
                                Composer composer2;
                                Object obj8;
                                Object obj9;
                                GpsData gpsData2;
                                State state;
                                Composer composer3;
                                MotionSensorData motionSensorData4;
                                final MutableState mutableState2;
                                State state2;
                                MotionSensorData motionSensorData5;
                                final MutableState mutableState3;
                                Object obj10;
                                Object obj11;
                                Object obj12;
                                Object obj13;
                                Object obj14;
                                AppDatabase appDatabase3;
                                AppDatabase appDatabase4;
                                Object obj15;
                                Object obj16;
                                final MutableState mutableState4;
                                State state3;
                                Object obj17;
                                Object obj18;
                                Object obj19;
                                ?? r3;
                                Object obj20;
                                ComposerKt.sourceInformation(composer, "C108@4799L16,112@5050L54,113@5145L42,115@5243L16,116@5326L16,117@5418L16,118@5514L16,119@5585L16,135@6501L215,141@6839L35,142@6925L342,142@6895L372,159@7745L39,160@7820L36,161@7897L38,163@7999L564,163@7957L606,193@9692L722:MainActivity.kt#n931v1");
                                if ((i & 11) == 2 && composer.getSkipping()) {
                                    composer.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(7094834, i, -1, "com.cgs.atvobserver.MainActivity.onCreate.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:108)");
                                }
                                appConfigManager = this.this$0.configManager;
                                if (appConfigManager == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("configManager");
                                    appConfigManager = null;
                                }
                                final State collectAsState = SnapshotStateKt.collectAsState(appConfigManager.getConfigState(), null, composer, 8, 1);
                                VehicleSpecificConfig vehicleSpecificConfig = invoke$lambda$0(collectAsState).getVehicleConfigs().get(invoke$lambda$0(collectAsState).getActiveVehicle());
                                if (vehicleSpecificConfig == null) {
                                    vehicleSpecificConfig = new VehicleSpecificConfig(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0, null, 15, null);
                                }
                                VehicleSpecificConfig vehicleSpecificConfig2 = vehicleSpecificConfig;
                                composer.startReplaceableGroup(2012780243);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                Object rememberedValue = composer.rememberedValue();
                                if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                                    obj = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(invoke$lambda$0(collectAsState).getStartupScreen(), null, 2, null);
                                    composer.updateRememberedValue(obj);
                                } else {
                                    obj = rememberedValue;
                                }
                                final MutableState mutableState5 = (MutableState) obj;
                                composer.endReplaceableGroup();
                                composer.startReplaceableGroup(2012783271);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                Object rememberedValue2 = composer.rememberedValue();
                                if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                                    obj2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(RideMode.TRIP, null, 2, null);
                                    composer.updateRememberedValue(obj2);
                                } else {
                                    obj2 = rememberedValue2;
                                }
                                MutableState mutableState6 = (MutableState) obj2;
                                composer.endReplaceableGroup();
                                gpsTracker = this.this$0.gpsTracker;
                                if (gpsTracker == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("gpsTracker");
                                    gpsTracker = null;
                                }
                                State collectAsState2 = SnapshotStateKt.collectAsState(gpsTracker.getGpsData(), null, composer, 8, 1);
                                engineAudioProcessor = this.this$0.audioProcessor;
                                if (engineAudioProcessor == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("audioProcessor");
                                    engineAudioProcessor = null;
                                }
                                State collectAsState3 = SnapshotStateKt.collectAsState(engineAudioProcessor.getAnalysisState(), null, composer, 8, 1);
                                universalSensorManager = this.this$0.universalSensorManager;
                                if (universalSensorManager == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("universalSensorManager");
                                    universalSensorManager = null;
                                }
                                State collectAsState4 = SnapshotStateKt.collectAsState(universalSensorManager.getSensorData(), null, composer, 8, 1);
                                cameraAnalyzerManager = this.this$0.cameraAnalyzerManager;
                                if (cameraAnalyzerManager == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("cameraAnalyzerManager");
                                    cameraAnalyzerManager = null;
                                }
                                State collectAsState5 = SnapshotStateKt.collectAsState(cameraAnalyzerManager.getDetectedSurface(), null, composer, 8, 1);
                                observerAiEngine = this.this$0.aiEngine;
                                if (observerAiEngine == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("aiEngine");
                                    observerAiEngine = null;
                                }
                                final State collectAsState6 = SnapshotStateKt.collectAsState(observerAiEngine.getAiOutput(), null, composer, 8, 1);
                                MotionSensorData motionSensorData6 = new MotionSensorData(invoke$lambda$9(collectAsState4).getGForceMagnitude(), invoke$lambda$9(collectAsState4).getRawX(), invoke$lambda$9(collectAsState4).getRawY(), invoke$lambda$9(collectAsState4).getRawZ(), invoke$lambda$9(collectAsState4).getVibrationIntensity(), invoke$lambda$9(collectAsState4).getHardBrakingDetected(), invoke$lambda$9(collectAsState4).getHardLaunchDetected(), invoke$lambda$9(collectAsState4).getCrashOrFallDetected(), invoke$lambda$9(collectAsState4).isAccelerometerAvailable(), 0, 512, null);
                                EffectsKt.LaunchedEffect(invoke$lambda$2(mutableState5), new C00811(this.this$0, mutableState5, null), composer, 64);
                                composer.startReplaceableGroup(2012837472);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                Object rememberedValue3 = composer.rememberedValue();
                                if (rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                                    obj3 = SnapshotLongStateKt.mutableLongStateOf(0L);
                                    composer.updateRememberedValue(obj3);
                                } else {
                                    obj3 = rememberedValue3;
                                }
                                MutableLongState mutableLongState = (MutableLongState) obj3;
                                composer.endReplaceableGroup();
                                String invoke$lambda$2 = invoke$lambda$2(mutableState5);
                                composer.startReplaceableGroup(2012840531);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                Object rememberedValue4 = composer.rememberedValue();
                                if (rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                                    motionSensorData = motionSensorData6;
                                    appDatabase = null;
                                    mainActivity$onCreate$2$1$1$2$1 = new MainActivity$onCreate$2$1$1$2$1(mutableState5, mutableLongState, null);
                                    composer.updateRememberedValue(mainActivity$onCreate$2$1$1$2$1);
                                } else {
                                    motionSensorData = motionSensorData6;
                                    appDatabase = null;
                                    mainActivity$onCreate$2$1$1$2$1 = rememberedValue4;
                                }
                                composer.endReplaceableGroup();
                                EffectsKt.LaunchedEffect(invoke$lambda$2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) mainActivity$onCreate$2$1$1$2$1, composer, 64);
                                double coerceIn = 23.0d + ((88.0d - 23.0d) * RangesKt.coerceIn(invoke$lambda$13(mutableLongState) / 180.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d));
                                composer.startReplaceableGroup(2012866468);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                Object rememberedValue5 = composer.rememberedValue();
                                if (rememberedValue5 == Composer.INSTANCE.getEmpty()) {
                                    obj4 = SnapshotDoubleStateKt.mutableDoubleStateOf(35.0d);
                                    composer.updateRememberedValue(obj4);
                                } else {
                                    obj4 = rememberedValue5;
                                }
                                MutableDoubleState mutableDoubleState = (MutableDoubleState) obj4;
                                composer.endReplaceableGroup();
                                composer.startReplaceableGroup(2012868865);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                Object rememberedValue6 = composer.rememberedValue();
                                if (rememberedValue6 == Composer.INSTANCE.getEmpty()) {
                                    obj5 = SnapshotIntStateKt.mutableIntStateOf(3400);
                                    composer.updateRememberedValue(obj5);
                                } else {
                                    obj5 = rememberedValue6;
                                }
                                MutableIntState mutableIntState = (MutableIntState) obj5;
                                composer.endReplaceableGroup();
                                composer.startReplaceableGroup(2012871331);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                Object rememberedValue7 = composer.rememberedValue();
                                if (rememberedValue7 == Composer.INSTANCE.getEmpty()) {
                                    obj6 = SnapshotDoubleStateKt.mutableDoubleStateOf(AudioStats.AUDIO_AMPLITUDE_NONE);
                                    composer.updateRememberedValue(obj6);
                                } else {
                                    obj6 = rememberedValue7;
                                }
                                MutableDoubleState mutableDoubleState2 = (MutableDoubleState) obj6;
                                composer.endReplaceableGroup();
                                VehicleType activeVehicle = invoke$lambda$0(collectAsState).getActiveVehicle();
                                composer.startReplaceableGroup(2012875121);
                                ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                boolean changed = composer.changed(collectAsState);
                                Object rememberedValue8 = composer.rememberedValue();
                                if (changed || rememberedValue8 == Composer.INSTANCE.getEmpty()) {
                                    i2 = 64;
                                    appDatabase2 = appDatabase;
                                    motionSensorData2 = motionSensorData;
                                    rememberedValue8 = new MainActivity$onCreate$2$1$1$3$1(collectAsState, mutableDoubleState2, mutableDoubleState, mutableIntState, null);
                                    composer.updateRememberedValue(rememberedValue8);
                                } else {
                                    appDatabase2 = appDatabase;
                                    motionSensorData2 = motionSensorData;
                                    i2 = 64;
                                }
                                composer.endReplaceableGroup();
                                EffectsKt.LaunchedEffect(activeVehicle, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) rememberedValue8, composer, i2);
                                final GpsData copy = invoke$lambda$0(collectAsState).getActiveVehicle() == VehicleType.APP_TEST ? r47.copy((r26 & 1) != 0 ? r47.currentSpeedKmh : invoke$lambda$17(mutableDoubleState), (r26 & 2) != 0 ? r47.maxSpeedKmh : Math.max(invoke$lambda$7(collectAsState2).getMaxSpeedKmh(), invoke$lambda$17(mutableDoubleState)), (r26 & 4) != 0 ? r47.distanceKm : invoke$lambda$23(mutableDoubleState2), (r26 & 8) != 0 ? r47.isGpsAvailable : true, (r26 & 16) != 0 ? r47.latitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r47.longitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 64) != 0 ? invoke$lambda$7(collectAsState2).accuracyMeters : 0.0f) : invoke$lambda$7(collectAsState2);
                                AudioAnalysisResult audioAnalysisResult = invoke$lambda$0(collectAsState).getActiveVehicle() == VehicleType.APP_TEST ? new AudioAnalysisResult(invoke$lambda$20(mutableIntState), 25, true, true, false, AudioStats.AUDIO_AMPLITUDE_NONE, "SIMULATED", 48, null) : invoke$lambda$8(collectAsState3);
                                double d = invoke$lambda$0(collectAsState).getActiveVehicle() == VehicleType.APP_TEST ? coerceIn : -999.0d;
                                EffectsKt.LaunchedEffect(new Object[]{copy, audioAnalysisResult, motionSensorData2, invoke$lambda$10(collectAsState5), invoke$lambda$0(collectAsState).getActiveVehicle(), invoke$lambda$2(mutableState5)}, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) new AnonymousClass4(this.this$0, this.this$0.getApplicationContext(), copy, audioAnalysisResult, motionSensorData2, collectAsState, mutableState5, collectAsState4, null), composer, 72);
                                String invoke$lambda$22 = invoke$lambda$2(mutableState5);
                                switch (invoke$lambda$22.hashCode()) {
                                    case -1929606762:
                                        mutableState = mutableState5;
                                        gpsData = copy;
                                        motionSensorData3 = motionSensorData2;
                                        if (invoke$lambda$22.equals("POCKET")) {
                                            composer.startReplaceableGroup(-2015112340);
                                            ComposerKt.sourceInformation(composer, "369@21064L31,330@18308L2817");
                                            VehicleType activeVehicle2 = invoke$lambda$0(collectAsState).getActiveVehicle();
                                            double tankCapacityL = vehicleSpecificConfig2.getTankCapacityL();
                                            ObserverAiOutput invoke$lambda$11 = invoke$lambda$11(collectAsState6);
                                            final MainActivity mainActivity = this.this$0;
                                            Function4<Double, Long, Double, VehicleType, Unit> function4 = new Function4<Double, Long, Double, VehicleType, Unit>() { // from class: com.cgs.atvobserver.MainActivity.onCreate.2.1.1.15
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(4);
                                                }

                                                @Override // kotlin.jvm.functions.Function4
                                                public /* bridge */ /* synthetic */ Unit invoke(Double d2, Long l, Double d3, VehicleType vehicleType) {
                                                    invoke(d2.doubleValue(), l.longValue(), d3.doubleValue(), vehicleType);
                                                    return Unit.INSTANCE;
                                                }

                                                /* compiled from: MainActivity.kt */
                                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                                @DebugMetadata(c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$15$1", f = "MainActivity.kt", i = {}, l = {344}, m = "invokeSuspend", n = {}, s = {})
                                                /* renamed from: com.cgs.atvobserver.MainActivity$onCreate$2$1$1$15$1, reason: invalid class name and collision with other inner class name */
                                                static final class C00841 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                    final /* synthetic */ double $distance;
                                                    final /* synthetic */ long $duration;
                                                    final /* synthetic */ GpsData $effectiveGps;
                                                    final /* synthetic */ double $fuelUsed;
                                                    final /* synthetic */ MotionSensorData $motionData;
                                                    final /* synthetic */ VehicleType $vehicleType;
                                                    int label;
                                                    final /* synthetic */ MainActivity this$0;

                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    C00841(long j, MainActivity mainActivity, double d, GpsData gpsData, double d2, VehicleType vehicleType, MotionSensorData motionSensorData, Continuation<? super C00841> continuation) {
                                                        super(2, continuation);
                                                        this.$duration = j;
                                                        this.this$0 = mainActivity;
                                                        this.$distance = d;
                                                        this.$effectiveGps = gpsData;
                                                        this.$fuelUsed = d2;
                                                        this.$vehicleType = vehicleType;
                                                        this.$motionData = motionSensorData;
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                        return new C00841(this.$duration, this.this$0, this.$distance, this.$effectiveGps, this.$fuelUsed, this.$vehicleType, this.$motionData, continuation);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function2
                                                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                        return ((C00841) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Object invokeSuspend(Object $result) {
                                                        AppDatabase appDatabase;
                                                        double d;
                                                        double d2;
                                                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                        switch (this.label) {
                                                            case 0:
                                                                ResultKt.throwOnFailure($result);
                                                                long now = System.currentTimeMillis();
                                                                long j = 1000;
                                                                long startTime = now - (this.$duration * j);
                                                                long j2 = startTime + ((this.$duration * j) / 2);
                                                                appDatabase = this.this$0.database;
                                                                if (appDatabase == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("database");
                                                                    appDatabase = null;
                                                                }
                                                                RideDao rideDao = appDatabase.rideDao();
                                                                long j3 = this.$duration;
                                                                double d3 = this.$distance;
                                                                double maxSpeedKmh = this.$effectiveGps.getMaxSpeedKmh();
                                                                if (this.$duration > 0) {
                                                                    d = d3;
                                                                    d2 = this.$distance / (this.$duration / 3600.0d);
                                                                } else {
                                                                    d = d3;
                                                                    d2 = AudioStats.AUDIO_AMPLITUDE_NONE;
                                                                }
                                                                double d4 = d;
                                                                this.label = 1;
                                                                if (rideDao.insertRide(new RideLogEntity(0L, startTime, j2, now, j3, d4, maxSpeedKmh, d2, this.$fuelUsed, null, "POCKET", this.$vehicleType.name(), 0, true, this.$effectiveGps.getLatitude(), this.$effectiveGps.getLongitude(), this.$effectiveGps.getLatitude(), this.$effectiveGps.getLongitude(), this.$effectiveGps.getLatitude(), this.$effectiveGps.getLongitude(), RangesKt.coerceAtLeast(this.$motionData.getGForceMagnitude(), 1.2d), 95, AudioStats.AUDIO_AMPLITUDE_NONE, "Pocket Mode Background Log", false, 20976129, null), this) != coroutine_suspended) {
                                                                    break;
                                                                } else {
                                                                    return coroutine_suspended;
                                                                }
                                                            case 1:
                                                                ResultKt.throwOnFailure($result);
                                                                break;
                                                            default:
                                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                        }
                                                        return Unit.INSTANCE;
                                                    }
                                                }

                                                public final void invoke(double distance, long duration, double fuelUsed, VehicleType vehicleType) {
                                                    Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
                                                    BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(MainActivity.this), null, null, new C00841(duration, MainActivity.this, distance, gpsData, fuelUsed, vehicleType, motionSensorData3, null), 3, null);
                                                }
                                            };
                                            composer.startReplaceableGroup(2013292668);
                                            ComposerKt.sourceInformation(composer, "CC(remember):MainActivity.kt#9igjgp");
                                            Object rememberedValue9 = composer.rememberedValue();
                                            if (rememberedValue9 == Composer.INSTANCE.getEmpty()) {
                                                obj7 = (Function0) 
                                                /*  JADX ERROR: Method code generation error
                                                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x09ee: CHECK_CAST (r0v5 'obj7' java.lang.Object) = (kotlin.jvm.functions.Function0) (wrap:java.lang.Object:0x09eb: CONSTRUCTOR 
                                                      (r14v1 'mutableState' androidx.compose.runtime.MutableState A[D('currentScreen$delegate' androidx.compose.runtime.MutableState), DONT_INLINE])
                                                     A[MD:(androidx.compose.runtime.MutableState<java.lang.String>):void (m), WRAPPED] (LINE:370) call: com.cgs.atvobserver.MainActivity$onCreate$2$1$1$16$1.<init>(androidx.compose.runtime.MutableState):void type: CONSTRUCTOR) in method: com.cgs.atvobserver.MainActivity.onCreate.2.1.1.invoke(androidx.compose.runtime.Composer, int):void, file: classes3.dex
                                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                                                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                                                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.cgs.atvobserver.MainActivity$onCreate$2$1$1$16$1, state: NOT_LOADED
                                                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:305)
                                                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:345)
                                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                                    	... 37 more
                                                    */
                                                /*
                                                    Method dump skipped, instructions count: 2648
                                                    To view this dump add '--comments-level debug' option
                                                */
                                                throw new UnsupportedOperationException("Method not decompiled: com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.invoke(androidx.compose.runtime.Composer, int):void");
                                            }

                                            /* JADX INFO: Access modifiers changed from: private */
                                            public static final String invoke$lambda$2(MutableState<String> mutableState) {
                                                MutableState<String> $this$getValue$iv = mutableState;
                                                return $this$getValue$iv.getValue();
                                            }

                                            private static final RideMode invoke$lambda$5(MutableState<RideMode> mutableState) {
                                                MutableState<RideMode> $this$getValue$iv = mutableState;
                                                return $this$getValue$iv.getValue();
                                            }

                                            private static final GpsData invoke$lambda$7(State<GpsData> state) {
                                                Object thisObj$iv = state.getValue();
                                                return (GpsData) thisObj$iv;
                                            }

                                            private static final AudioAnalysisResult invoke$lambda$8(State<AudioAnalysisResult> state) {
                                                Object thisObj$iv = state.getValue();
                                                return (AudioAnalysisResult) thisObj$iv;
                                            }

                                            /* JADX INFO: Access modifiers changed from: private */
                                            public static final UniversalSensorData invoke$lambda$9(State<UniversalSensorData> state) {
                                                Object thisObj$iv = state.getValue();
                                                return (UniversalSensorData) thisObj$iv;
                                            }

                                            private static final RoadSurfaceClass invoke$lambda$10(State<? extends RoadSurfaceClass> state) {
                                                Object thisObj$iv = state.getValue();
                                                return (RoadSurfaceClass) thisObj$iv;
                                            }

                                            /* JADX INFO: Access modifiers changed from: private */
                                            public static final ObserverAiOutput invoke$lambda$11(State<ObserverAiOutput> state) {
                                                Object thisObj$iv = state.getValue();
                                                return (ObserverAiOutput) thisObj$iv;
                                            }

                                            /* compiled from: MainActivity.kt */
                                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                            @DebugMetadata(c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                                            /* renamed from: com.cgs.atvobserver.MainActivity$onCreate$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                            static final class C00811 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                final /* synthetic */ MutableState<String> $currentScreen$delegate;
                                                int label;
                                                final /* synthetic */ MainActivity this$0;

                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                C00811(MainActivity mainActivity, MutableState<String> mutableState, Continuation<? super C00811> continuation) {
                                                    super(2, continuation);
                                                    this.this$0 = mainActivity;
                                                    this.$currentScreen$delegate = mutableState;
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                    return new C00811(this.this$0, this.$currentScreen$delegate, continuation);
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                    return ((C00811) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Object invokeSuspend(Object obj) {
                                                    EngineAudioProcessor engineAudioProcessor;
                                                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                    switch (this.label) {
                                                        case 0:
                                                            ResultKt.throwOnFailure(obj);
                                                            boolean isDiag = Intrinsics.areEqual(C00801.invoke$lambda$2(this.$currentScreen$delegate), "ATV_DIAG") || Intrinsics.areEqual(C00801.invoke$lambda$2(this.$currentScreen$delegate), "CARB_TUNE");
                                                            engineAudioProcessor = this.this$0.audioProcessor;
                                                            if (engineAudioProcessor == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("audioProcessor");
                                                                engineAudioProcessor = null;
                                                            }
                                                            engineAudioProcessor.setDiagnosticMode(isDiag);
                                                            return Unit.INSTANCE;
                                                        default:
                                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                    }
                                                }
                                            }

                                            /* JADX INFO: Access modifiers changed from: private */
                                            public static final long invoke$lambda$13(MutableLongState $rideSeconds$delegate) {
                                                MutableLongState $this$getValue$iv = $rideSeconds$delegate;
                                                return $this$getValue$iv.getLongValue();
                                            }

                                            /* JADX INFO: Access modifiers changed from: private */
                                            public static final double invoke$lambda$17(MutableDoubleState $testSpeed$delegate) {
                                                MutableDoubleState $this$getValue$iv = $testSpeed$delegate;
                                                return $this$getValue$iv.getDoubleValue();
                                            }

                                            private static final int invoke$lambda$20(MutableIntState $testRpm$delegate) {
                                                MutableIntState $this$getValue$iv = $testRpm$delegate;
                                                return $this$getValue$iv.getIntValue();
                                            }

                                            /* JADX INFO: Access modifiers changed from: private */
                                            public static final double invoke$lambda$23(MutableDoubleState $testDistance$delegate) {
                                                MutableDoubleState $this$getValue$iv = $testDistance$delegate;
                                                return $this$getValue$iv.getDoubleValue();
                                            }

                                            /* compiled from: MainActivity.kt */
                                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                            @DebugMetadata(c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$4", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                                            /* renamed from: com.cgs.atvobserver.MainActivity$onCreate$2$1$1$4, reason: invalid class name */
                                            static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                final /* synthetic */ Context $appContext;
                                                final /* synthetic */ State<AppConfig> $configState$delegate;
                                                final /* synthetic */ MutableState<String> $currentScreen$delegate;
                                                final /* synthetic */ AudioAnalysisResult $effectiveAudio;
                                                final /* synthetic */ GpsData $effectiveGps;
                                                final /* synthetic */ MotionSensorData $motionData;
                                                final /* synthetic */ State<UniversalSensorData> $universalData$delegate;
                                                int label;
                                                final /* synthetic */ MainActivity this$0;

                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                AnonymousClass4(MainActivity mainActivity, Context context, GpsData gpsData, AudioAnalysisResult audioAnalysisResult, MotionSensorData motionSensorData, State<AppConfig> state, MutableState<String> mutableState, State<UniversalSensorData> state2, Continuation<? super AnonymousClass4> continuation) {
                                                    super(2, continuation);
                                                    this.this$0 = mainActivity;
                                                    this.$appContext = context;
                                                    this.$effectiveGps = gpsData;
                                                    this.$effectiveAudio = audioAnalysisResult;
                                                    this.$motionData = motionSensorData;
                                                    this.$configState$delegate = state;
                                                    this.$currentScreen$delegate = mutableState;
                                                    this.$universalData$delegate = state2;
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                    return new AnonymousClass4(this.this$0, this.$appContext, this.$effectiveGps, this.$effectiveAudio, this.$motionData, this.$configState$delegate, this.$currentScreen$delegate, this.$universalData$delegate, continuation);
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                    return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Object invokeSuspend(Object obj) {
                                                    ObserverAiEngine observerAiEngine;
                                                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                    switch (this.label) {
                                                        case 0:
                                                            ResultKt.throwOnFailure(obj);
                                                            observerAiEngine = this.this$0.aiEngine;
                                                            if (observerAiEngine == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("aiEngine");
                                                                observerAiEngine = null;
                                                            }
                                                            Context appContext = this.$appContext;
                                                            Intrinsics.checkNotNullExpressionValue(appContext, "$appContext");
                                                            observerAiEngine.processTelemetryFrame(appContext, this.$effectiveGps, this.$effectiveAudio, this.$motionData, WeatherCondition.NORMAL_DRY, (r22 & 32) != 0 ? VehicleType.ATV : C00801.invoke$lambda$0(this.$configState$delegate).getActiveVehicle(), (r22 & 64) != 0 ? false : Intrinsics.areEqual(C00801.invoke$lambda$2(this.$currentScreen$delegate), "TEST_TRACK"), (r22 & 128) != 0 ? 500.0f : C00801.invoke$lambda$9(this.$universalData$delegate).getAmbientLux(), (r22 & 256) != 0 ? 320 : 0);
                                                            return Unit.INSTANCE;
                                                        default:
                                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                    }
                                                }
                                            }
                                        }
                                    }), $composer, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer.skipToGroupEnd();
                            }
                        }), 1, null);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private final void checkAndRequestPermissions() {
                        List permissionsToRequest = new ArrayList();
                        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) {
                            permissionsToRequest.add("android.permission.ACCESS_FINE_LOCATION");
                        }
                        if (ContextCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") != 0) {
                            permissionsToRequest.add("android.permission.RECORD_AUDIO");
                        }
                        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
                            permissionsToRequest.add("android.permission.CAMERA");
                        }
                        if (!permissionsToRequest.isEmpty()) {
                            List $this$toTypedArray$iv = permissionsToRequest;
                            this.requestPermissionLauncher.launch($this$toTypedArray$iv.toArray(new String[0]));
                            return;
                        }
                        GpsTracker gpsTracker = this.gpsTracker;
                        CameraAnalyzerManager cameraAnalyzerManager = null;
                        if (gpsTracker == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("gpsTracker");
                            gpsTracker = null;
                        }
                        gpsTracker.startTracking();
                        EngineAudioProcessor engineAudioProcessor = this.audioProcessor;
                        if (engineAudioProcessor == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("audioProcessor");
                            engineAudioProcessor = null;
                        }
                        engineAudioProcessor.startListening(LifecycleOwnerKt.getLifecycleScope(this));
                        CameraAnalyzerManager cameraAnalyzerManager2 = this.cameraAnalyzerManager;
                        if (cameraAnalyzerManager2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("cameraAnalyzerManager");
                        } else {
                            cameraAnalyzerManager = cameraAnalyzerManager2;
                        }
                        cameraAnalyzerManager.startCameraAnalysis(this);
                    }

                    @Override // android.app.Activity
                    protected void onDestroy() {
                        super.onDestroy();
                        GpsTracker gpsTracker = this.gpsTracker;
                        CameraAnalyzerManager cameraAnalyzerManager = null;
                        if (gpsTracker == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("gpsTracker");
                            gpsTracker = null;
                        }
                        gpsTracker.stopTracking();
                        EngineAudioProcessor engineAudioProcessor = this.audioProcessor;
                        if (engineAudioProcessor == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("audioProcessor");
                            engineAudioProcessor = null;
                        }
                        engineAudioProcessor.stopListening();
                        UniversalSensorManager universalSensorManager = this.universalSensorManager;
                        if (universalSensorManager == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("universalSensorManager");
                            universalSensorManager = null;
                        }
                        universalSensorManager.stopListening();
                        CameraAnalyzerManager cameraAnalyzerManager2 = this.cameraAnalyzerManager;
                        if (cameraAnalyzerManager2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("cameraAnalyzerManager");
                        } else {
                            cameraAnalyzerManager = cameraAnalyzerManager2;
                        }
                        cameraAnalyzerManager.stopCameraAnalysis();
                        ObserverForegroundService.Companion companion = ObserverForegroundService.INSTANCE;
                        Context applicationContext = getApplicationContext();
                        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                        companion.stopService(applicationContext);
                    }
                }
