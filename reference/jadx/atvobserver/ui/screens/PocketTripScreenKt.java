package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import androidx.autofill.HintConstants;
import androidx.camera.video.AudioStats;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.cgs.atvobserver.ai.ObserverAiOutput;
import com.cgs.atvobserver.audio.AudioAnalysisResult;
import com.cgs.atvobserver.audio.HeadsetAudioDetector;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.location.GpsData;
import com.cgs.atvobserver.ui.theme.ColorKt;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: PocketTripScreen.kt */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0003¢\u0006\u0002\u0010\u0005\u001a±\u0001\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2`\u0010\u0012\u001a\\\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00010\u00132\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00010\u001cH\u0007¢\u0006\u0002\u0010\u001d\u001a\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0017H\u0002¨\u0006 ²\u0006\n\u0010!\u001a\u00020\u0017X\u008a\u008e\u0002²\u0006\f\u0010\"\u001a\u0004\u0018\u00010#X\u008a\u008e\u0002"}, d2 = {"PocketStatRow", "", "label", "", "value", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "PocketTripScreen", "activeVehicle", "Lcom/cgs/atvobserver/data/model/VehicleType;", "tankCapacityL", "", "gpsData", "Lcom/cgs/atvobserver/location/GpsData;", "audioData", "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;", "aiOutput", "Lcom/cgs/atvobserver/ai/ObserverAiOutput;", "temperatureCelsius", "onEndRide", "Lkotlin/Function4;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "distanceKm", "", "durationSec", "fuelUsedL", "vehicleType", "onBackToMenu", "Lkotlin/Function0;", "(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "formatDuration", "seconds", "app_debug", "rideSeconds", "tts", "Landroid/speech/tts/TextToSpeech;"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class PocketTripScreenKt {
    /* JADX WARN: Removed duplicated region for block: B:100:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x04b7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x04b9  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void PocketTripScreen(final VehicleType activeVehicle, double tankCapacityL, final GpsData gpsData, final AudioAnalysisResult audioData, ObserverAiOutput aiOutput, final double temperatureCelsius, final Function4<? super Double, ? super Long, ? super Double, ? super VehicleType, Unit> onEndRide, final Function0<Unit> onBackToMenu, Composer $composer, final int $changed, final int i) {
        ObserverAiOutput observerAiOutput;
        double tankCapacityL2;
        int $dirty;
        ObserverAiOutput aiOutput2;
        Object it$iv;
        Object value$iv;
        Object it$iv2;
        Object value$iv2;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        boolean invalid$iv;
        Object value$iv3;
        Composer $composer2;
        ObserverAiOutput aiOutput3;
        ScopeUpdateScope endRestartGroup;
        int i2;
        int i3;
        int i4;
        Intrinsics.checkNotNullParameter(activeVehicle, "activeVehicle");
        Intrinsics.checkNotNullParameter(gpsData, "gpsData");
        Intrinsics.checkNotNullParameter(audioData, "audioData");
        Intrinsics.checkNotNullParameter(onEndRide, "onEndRide");
        Intrinsics.checkNotNullParameter(onBackToMenu, "onBackToMenu");
        Composer $composer3 = $composer.startRestartGroup(-589190342);
        ComposerKt.sourceInformation($composer3, "C(PocketTripScreen)P(!1,6,3,2!1,7,5)35@1337L35,36@1404L7,37@1427L48,39@1481L495,55@2039L551,68@2596L2635:PocketTripScreen.kt#xkugs2");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 14) == 0) {
            $dirty2 |= $composer3.changed(activeVehicle) ? 4 : 2;
        }
        if ((i & 4) != 0) {
            $dirty2 |= 384;
        } else if (($changed & 896) == 0) {
            $dirty2 |= $composer3.changed(gpsData) ? 256 : 128;
        }
        if ((57344 & $changed) == 0) {
            if ((i & 16) == 0) {
                observerAiOutput = aiOutput;
                if ($composer3.changed(observerAiOutput)) {
                    i4 = 16384;
                    $dirty2 |= i4;
                }
            } else {
                observerAiOutput = aiOutput;
            }
            i4 = 8192;
            $dirty2 |= i4;
        } else {
            observerAiOutput = aiOutput;
        }
        if ((i & 64) == 0) {
            i3 = ($changed & 3670016) == 0 ? $composer3.changedInstance(onEndRide) ? 1048576 : 524288 : 1572864;
            if ((i & 128) != 0) {
                i2 = ($changed & 29360128) == 0 ? $composer3.changedInstance(onBackToMenu) ? 8388608 : 4194304 : 12582912;
                if ((23634571 & $dirty2) == 4726914 || !$composer3.getSkipping()) {
                    $composer3.startDefaults();
                    if (($changed & 1) != 0 || $composer3.getDefaultsInvalid()) {
                        tankCapacityL2 = (i & 2) != 0 ? 2.0d : tankCapacityL;
                        if ((i & 16) != 0) {
                            $dirty = $dirty2 & (-57345);
                            aiOutput2 = new ObserverAiOutput(null, null, null, null, null, 0, 0, false, false, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0, false, false, false, false, 0, null, 134217727, null);
                        } else {
                            $dirty = $dirty2;
                            aiOutput2 = observerAiOutput;
                        }
                    } else {
                        $composer3.skipToGroupEnd();
                        if ((i & 16) != 0) {
                            tankCapacityL2 = tankCapacityL;
                            $dirty = $dirty2 & (-57345);
                            aiOutput2 = observerAiOutput;
                        } else {
                            tankCapacityL2 = tankCapacityL;
                            $dirty = $dirty2;
                            aiOutput2 = observerAiOutput;
                        }
                    }
                    $composer3.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-589190342, $dirty, -1, "com.cgs.atvobserver.ui.screens.PocketTripScreen (PocketTripScreen.kt:34)");
                    }
                    $composer3.startReplaceableGroup(693786410);
                    ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
                    it$iv = $composer3.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = SnapshotLongStateKt.mutableLongStateOf(0L);
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    final MutableLongState rideSeconds$delegate = (MutableLongState) value$iv;
                    $composer3.endReplaceableGroup();
                    ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object consume = $composer3.consume(localContext);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    final Context context = (Context) consume;
                    $composer3.startReplaceableGroup(693789303);
                    ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
                    it$iv2 = $composer3.rememberedValue();
                    if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                        value$iv2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        $composer3.updateRememberedValue(value$iv2);
                    } else {
                        value$iv2 = it$iv2;
                    }
                    MutableState tts$delegate = (MutableState) value$iv2;
                    $composer3.endReplaceableGroup();
                    EffectsKt.DisposableEffect(Unit.INSTANCE, new PocketTripScreenKt$PocketTripScreen$1(context, tts$delegate), $composer3, 6);
                    int $dirty3 = $dirty;
                    final ObserverAiOutput aiOutput4 = aiOutput2;
                    EffectsKt.LaunchedEffect(Unit.INSTANCE, new PocketTripScreenKt$PocketTripScreen$2(context, gpsData, aiOutput2, rideSeconds$delegate, tts$delegate, null), $composer3, 70);
                    Modifier m828padding3ABfNKs = PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(20));
                    Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                    $composer3.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                    MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(spaceBetween, centerHorizontally, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                    int $changed$iv$iv = (438 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(m828padding3ABfNKs);
                    int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        $composer3.createNode(factory$iv$iv$iv);
                    } else {
                        $composer3.useNode();
                    }
                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i5 = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        int i6 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1386675902, "C76@2858L41,77@2908L95,78@3012L112,81@3174L39,80@3134L1629,109@4966L37,105@4803L125,104@4773L452:PocketTripScreen.kt#xkugs2");
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10)), $composer3, 6);
                        TextKt.m2730Text4IGK_g("👝 POCKET MODE ACTIVE", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(24), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                        TextKt.m2730Text4IGK_g(activeVehicle.getDisplayName() + " | Hands-Free Background Logging", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                        CardKt.Card(PaddingKt.m830paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m6360constructorimpl(16), 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(14)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, 753999442, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                                invoke(columnScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:24:0x01c8  */
                            /* JADX WARN: Removed duplicated region for block: B:27:0x01e3  */
                            /* JADX WARN: Removed duplicated region for block: B:30:0x0312  */
                            /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:33:0x01e8  */
                            /* JADX WARN: Removed duplicated region for block: B:34:0x01cb  */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                                Function0 factory$iv$iv$iv2;
                                long PocketTripScreen$lambda$1;
                                String formatDuration;
                                Intrinsics.checkNotNullParameter(Card, "$this$Card");
                                ComposerKt.sourceInformation($composer4, "C85@3359L1394:PocketTripScreen.kt#xkugs2");
                                if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(753999442, $changed2, -1, "com.cgs.atvobserver.ui.screens.PocketTripScreen.<anonymous>.<anonymous> (PocketTripScreen.kt:85)");
                                    }
                                    Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(20));
                                    Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                                    Context context2 = context;
                                    GpsData gpsData2 = gpsData;
                                    ObserverAiOutput observerAiOutput2 = aiOutput4;
                                    MutableLongState mutableLongState = rideSeconds$delegate;
                                    $composer4.startReplaceableGroup(-483455358);
                                    ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                    Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                                    int $changed$iv$iv2 = (390 << 3) & 112;
                                    $composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                    CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv);
                                    int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
                                    if (!($composer4.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer4.startReusableNode();
                                    if ($composer4.getInserting()) {
                                        factory$iv$iv$iv2 = factory$iv$iv$iv3;
                                        $composer4.createNode(factory$iv$iv$iv2);
                                    } else {
                                        factory$iv$iv$iv2 = factory$iv$iv$iv3;
                                        $composer4.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                        skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                                        $composer4.startReplaceableGroup(2058660585);
                                        int i7 = ($changed$iv$iv$iv2 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                                        int i8 = ((390 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                                        TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                        String headsetStatus = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                                        TextKt.m2730Text4IGK_g(headsetStatus, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                        TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                                        String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                                        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                                        PocketTripScreenKt.PocketStatRow("Distance Logged", format + " km", $composer4, 6);
                                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                        PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput2.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                        PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                                        formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                                        PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        if (!ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                                    skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i72 = ($changed$iv$iv$iv2 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                                    int i82 = ((390 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    String headsetStatus2 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                                    TextKt.m2730Text4IGK_g(headsetStatus2, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                                    String format2 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                                    PocketTripScreenKt.PocketStatRow("Distance Logged", format2 + " km", $composer4, 6);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput2.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                                    formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                                    PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (!ComposerKt.isTraceInProgress()) {
                                    }
                                } else {
                                    $composer4.skipToGroupEnd();
                                }
                            }
                        }), $composer3, 196614, 24);
                        ButtonColors m1872buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                        Modifier m863height3ABfNKs = SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(56));
                        RoundedCornerShape m1098RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10));
                        $composer3.startReplaceableGroup(460433475);
                        ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
                        invalid$iv = (($dirty3 & 896) == 256) | (($dirty3 & 3670016) == 1048576) | (($dirty3 & 14) == 4) | (($dirty3 & 29360128) == 8388608);
                        value$iv3 = $composer3.rememberedValue();
                        if (!invalid$iv || value$iv3 == Composer.INSTANCE.getEmpty()) {
                            $composer2 = $composer3;
                            value$iv3 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$2$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Unit invoke() {
                                    invoke2();
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2() {
                                    long PocketTripScreen$lambda$1;
                                    Function4<Double, Long, Double, VehicleType, Unit> function4 = onEndRide;
                                    Double valueOf = Double.valueOf(gpsData.getDistanceKm());
                                    PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(rideSeconds$delegate);
                                    function4.invoke(valueOf, Long.valueOf(PocketTripScreen$lambda$1), Double.valueOf(0.2d), activeVehicle);
                                    onBackToMenu.invoke();
                                }
                            };
                            $composer3.updateRememberedValue(value$iv3);
                        } else {
                            $composer2 = $composer3;
                        }
                        $composer2.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs, false, m1098RoundedCornerShape0680j_4, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$PocketTripScreenKt.INSTANCE.m6711getLambda1$app_debug(), $composer2, 805306416, 484);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        aiOutput3 = aiOutput4;
                    }
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                    skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i52 = ($changed$iv$iv$iv >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                    int i62 = ((438 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1386675902, "C76@2858L41,77@2908L95,78@3012L112,81@3174L39,80@3134L1629,109@4966L37,105@4803L125,104@4773L452:PocketTripScreen.kt#xkugs2");
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10)), $composer3, 6);
                    TextKt.m2730Text4IGK_g("👝 POCKET MODE ACTIVE", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(24), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                    TextKt.m2730Text4IGK_g(activeVehicle.getDisplayName() + " | Hands-Free Background Logging", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                    CardKt.Card(PaddingKt.m830paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m6360constructorimpl(16), 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(14)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, 753999442, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x01c8  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x01e3  */
                        /* JADX WARN: Removed duplicated region for block: B:30:0x0312  */
                        /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:33:0x01e8  */
                        /* JADX WARN: Removed duplicated region for block: B:34:0x01cb  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                            Function0 factory$iv$iv$iv2;
                            long PocketTripScreen$lambda$1;
                            String formatDuration;
                            Intrinsics.checkNotNullParameter(Card, "$this$Card");
                            ComposerKt.sourceInformation($composer4, "C85@3359L1394:PocketTripScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(753999442, $changed2, -1, "com.cgs.atvobserver.ui.screens.PocketTripScreen.<anonymous>.<anonymous> (PocketTripScreen.kt:85)");
                                }
                                Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(20));
                                Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                                Context context2 = context;
                                GpsData gpsData2 = gpsData;
                                ObserverAiOutput observerAiOutput2 = aiOutput4;
                                MutableLongState mutableLongState = rideSeconds$delegate;
                                $composer4.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                                int $changed$iv$iv2 = (390 << 3) & 112;
                                $composer4.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv);
                                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
                                if (!($composer4.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                    factory$iv$iv$iv2 = factory$iv$iv$iv3;
                                    $composer4.createNode(factory$iv$iv$iv2);
                                } else {
                                    factory$iv$iv$iv2 = factory$iv$iv$iv3;
                                    $composer4.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                    skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i72 = ($changed$iv$iv$iv2 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                                    int i82 = ((390 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    String headsetStatus2 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                                    TextKt.m2730Text4IGK_g(headsetStatus2, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                                    String format2 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                                    PocketTripScreenKt.PocketStatRow("Distance Logged", format2 + " km", $composer4, 6);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput2.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                    PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                                    formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                                    PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (!ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                                skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i722 = ($changed$iv$iv$iv2 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                                int i822 = ((390 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                String headsetStatus22 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                                TextKt.m2730Text4IGK_g(headsetStatus22, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context2) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                                StringCompanionObject stringCompanionObject22 = StringCompanionObject.INSTANCE;
                                String format22 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format22, "format(...)");
                                PocketTripScreenKt.PocketStatRow("Distance Logged", format22 + " km", $composer4, 6);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput2.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                                formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                                PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                }
                            } else {
                                $composer4.skipToGroupEnd();
                            }
                        }
                    }), $composer3, 196614, 24);
                    ButtonColors m1872buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                    Modifier m863height3ABfNKs2 = SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(56));
                    RoundedCornerShape m1098RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10));
                    $composer3.startReplaceableGroup(460433475);
                    ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
                    invalid$iv = (($dirty3 & 896) == 256) | (($dirty3 & 3670016) == 1048576) | (($dirty3 & 14) == 4) | (($dirty3 & 29360128) == 8388608);
                    value$iv3 = $composer3.rememberedValue();
                    if (invalid$iv) {
                    }
                    $composer2 = $composer3;
                    value$iv3 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            long PocketTripScreen$lambda$1;
                            Function4<Double, Long, Double, VehicleType, Unit> function4 = onEndRide;
                            Double valueOf = Double.valueOf(gpsData.getDistanceKm());
                            PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(rideSeconds$delegate);
                            function4.invoke(valueOf, Long.valueOf(PocketTripScreen$lambda$1), Double.valueOf(0.2d), activeVehicle);
                            onBackToMenu.invoke();
                        }
                    };
                    $composer3.updateRememberedValue(value$iv3);
                    $composer2.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs2, false, m1098RoundedCornerShape0680j_42, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$PocketTripScreenKt.INSTANCE.m6711getLambda1$app_debug(), $composer2, 805306416, 484);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    aiOutput3 = aiOutput4;
                } else {
                    $composer3.skipToGroupEnd();
                    tankCapacityL2 = tankCapacityL;
                    aiOutput3 = observerAiOutput;
                }
                endRestartGroup = $composer3.endRestartGroup();
                if (endRestartGroup == null) {
                    final double d = tankCapacityL2;
                    final ObserverAiOutput observerAiOutput2 = aiOutput3;
                    endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$4
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer, int i7) {
                            PocketTripScreenKt.PocketTripScreen(VehicleType.this, d, gpsData, audioData, observerAiOutput2, temperatureCelsius, onEndRide, onBackToMenu, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                        }
                    });
                    return;
                }
                return;
            }
            $dirty2 |= i2;
            if ((23634571 & $dirty2) == 4726914) {
            }
            $composer3.startDefaults();
            if (($changed & 1) != 0) {
            }
            if ((i & 2) != 0) {
            }
            if ((i & 16) != 0) {
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            $composer3.startReplaceableGroup(693786410);
            ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
            it$iv = $composer3.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
            }
            final MutableLongState rideSeconds$delegate2 = (MutableLongState) value$iv;
            $composer3.endReplaceableGroup();
            ProvidableCompositionLocal<Context> localContext2 = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = $composer3.consume(localContext2);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final Context context2 = (Context) consume2;
            $composer3.startReplaceableGroup(693789303);
            ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
            it$iv2 = $composer3.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
            }
            MutableState tts$delegate2 = (MutableState) value$iv2;
            $composer3.endReplaceableGroup();
            EffectsKt.DisposableEffect(Unit.INSTANCE, new PocketTripScreenKt$PocketTripScreen$1(context2, tts$delegate2), $composer3, 6);
            int $dirty32 = $dirty;
            final ObserverAiOutput aiOutput42 = aiOutput2;
            EffectsKt.LaunchedEffect(Unit.INSTANCE, new PocketTripScreenKt$PocketTripScreen$2(context2, gpsData, aiOutput2, rideSeconds$delegate2, tts$delegate2, null), $composer3, 70);
            Modifier m828padding3ABfNKs2 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(20));
            Alignment.Horizontal centerHorizontally2 = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.HorizontalOrVertical spaceBetween2 = Arrangement.INSTANCE.getSpaceBetween();
            $composer3.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(spaceBetween2, centerHorizontally2, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            int $changed$iv$iv2 = (438 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv2 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(m828padding3ABfNKs2);
            int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i522 = ($changed$iv$iv$iv2 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                int i622 = ((438 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 1386675902, "C76@2858L41,77@2908L95,78@3012L112,81@3174L39,80@3134L1629,109@4966L37,105@4803L125,104@4773L452:PocketTripScreen.kt#xkugs2");
                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10)), $composer3, 6);
                TextKt.m2730Text4IGK_g("👝 POCKET MODE ACTIVE", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(24), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                TextKt.m2730Text4IGK_g(activeVehicle.getDisplayName() + " | Hands-Free Background Logging", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                CardKt.Card(PaddingKt.m830paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m6360constructorimpl(16), 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(14)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, 753999442, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01c8  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x01e3  */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x0312  */
                    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:33:0x01e8  */
                    /* JADX WARN: Removed duplicated region for block: B:34:0x01cb  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                        Function0 factory$iv$iv$iv22;
                        long PocketTripScreen$lambda$1;
                        String formatDuration;
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer4, "C85@3359L1394:PocketTripScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(753999442, $changed2, -1, "com.cgs.atvobserver.ui.screens.PocketTripScreen.<anonymous>.<anonymous> (PocketTripScreen.kt:85)");
                            }
                            Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(20));
                            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                            Context context22 = context2;
                            GpsData gpsData2 = gpsData;
                            ObserverAiOutput observerAiOutput22 = aiOutput42;
                            MutableLongState mutableLongState = rideSeconds$delegate2;
                            $composer4.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv22 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                            int $changed$iv$iv22 = (390 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv22 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv);
                            int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                                factory$iv$iv$iv22 = factory$iv$iv$iv3;
                                $composer4.createNode(factory$iv$iv$iv22);
                            } else {
                                factory$iv$iv$iv22 = factory$iv$iv$iv3;
                                $composer4.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv22))) {
                                skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i722 = ($changed$iv$iv$iv22 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                                int i822 = ((390 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                String headsetStatus22 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                                TextKt.m2730Text4IGK_g(headsetStatus22, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                                StringCompanionObject stringCompanionObject22 = StringCompanionObject.INSTANCE;
                                String format22 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format22, "format(...)");
                                PocketTripScreenKt.PocketStatRow("Distance Logged", format22 + " km", $composer4, 6);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput22.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                                PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                                formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                                PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
                            skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i7222 = ($changed$iv$iv$iv22 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
                            int i8222 = ((390 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            String headsetStatus222 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                            TextKt.m2730Text4IGK_g(headsetStatus222, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                            StringCompanionObject stringCompanionObject222 = StringCompanionObject.INSTANCE;
                            String format222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format222, "format(...)");
                            PocketTripScreenKt.PocketStatRow("Distance Logged", format222 + " km", $composer4, 6);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput22.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                            formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                            PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            $composer4.skipToGroupEnd();
                        }
                    }
                }), $composer3, 196614, 24);
                ButtonColors m1872buttonColorsro_MJ8822 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                Modifier m863height3ABfNKs22 = SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(56));
                RoundedCornerShape m1098RoundedCornerShape0680j_422 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10));
                $composer3.startReplaceableGroup(460433475);
                ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
                invalid$iv = (($dirty32 & 896) == 256) | (($dirty32 & 3670016) == 1048576) | (($dirty32 & 14) == 4) | (($dirty32 & 29360128) == 8388608);
                value$iv3 = $composer3.rememberedValue();
                if (invalid$iv) {
                }
                $composer2 = $composer3;
                value$iv3 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        long PocketTripScreen$lambda$1;
                        Function4<Double, Long, Double, VehicleType, Unit> function4 = onEndRide;
                        Double valueOf = Double.valueOf(gpsData.getDistanceKm());
                        PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(rideSeconds$delegate2);
                        function4.invoke(valueOf, Long.valueOf(PocketTripScreen$lambda$1), Double.valueOf(0.2d), activeVehicle);
                        onBackToMenu.invoke();
                    }
                };
                $composer3.updateRememberedValue(value$iv3);
                $composer2.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs22, false, m1098RoundedCornerShape0680j_422, m1872buttonColorsro_MJ8822, null, null, null, null, ComposableSingletons$PocketTripScreenKt.INSTANCE.m6711getLambda1$app_debug(), $composer2, 805306416, 484);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
                aiOutput3 = aiOutput42;
                endRestartGroup = $composer3.endRestartGroup();
                if (endRestartGroup == null) {
                }
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
            skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i5222 = ($changed$iv$iv$iv2 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
            int i6222 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1386675902, "C76@2858L41,77@2908L95,78@3012L112,81@3174L39,80@3134L1629,109@4966L37,105@4803L125,104@4773L452:PocketTripScreen.kt#xkugs2");
            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10)), $composer3, 6);
            TextKt.m2730Text4IGK_g("👝 POCKET MODE ACTIVE", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(24), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
            TextKt.m2730Text4IGK_g(activeVehicle.getDisplayName() + " | Hands-Free Background Logging", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
            CardKt.Card(PaddingKt.m830paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m6360constructorimpl(16), 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(14)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, 753999442, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01c8  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x01e3  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x0312  */
                /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:33:0x01e8  */
                /* JADX WARN: Removed duplicated region for block: B:34:0x01cb  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                    Function0 factory$iv$iv$iv22;
                    long PocketTripScreen$lambda$1;
                    String formatDuration;
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C85@3359L1394:PocketTripScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(753999442, $changed2, -1, "com.cgs.atvobserver.ui.screens.PocketTripScreen.<anonymous>.<anonymous> (PocketTripScreen.kt:85)");
                        }
                        Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(20));
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                        Context context22 = context2;
                        GpsData gpsData2 = gpsData;
                        ObserverAiOutput observerAiOutput22 = aiOutput42;
                        MutableLongState mutableLongState = rideSeconds$delegate2;
                        $composer4.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv22 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                        int $changed$iv$iv22 = (390 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv22 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv);
                        int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv22 = factory$iv$iv$iv3;
                            $composer4.createNode(factory$iv$iv$iv22);
                        } else {
                            factory$iv$iv$iv22 = factory$iv$iv$iv3;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv22))) {
                            skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i7222 = ($changed$iv$iv$iv22 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
                            int i8222 = ((390 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            String headsetStatus222 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                            TextKt.m2730Text4IGK_g(headsetStatus222, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                            StringCompanionObject stringCompanionObject222 = StringCompanionObject.INSTANCE;
                            String format222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format222, "format(...)");
                            PocketTripScreenKt.PocketStatRow("Distance Logged", format222 + " km", $composer4, 6);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput22.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                            formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                            PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
                        skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i72222 = ($changed$iv$iv$iv22 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance22222 = ColumnScopeInstance.INSTANCE;
                        int i82222 = ((390 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        String headsetStatus2222 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                        TextKt.m2730Text4IGK_g(headsetStatus2222, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context22) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                        StringCompanionObject stringCompanionObject2222 = StringCompanionObject.INSTANCE;
                        String format2222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format2222, "format(...)");
                        PocketTripScreenKt.PocketStatRow("Distance Logged", format2222 + " km", $composer4, 6);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput22.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                        formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                        PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer4.skipToGroupEnd();
                    }
                }
            }), $composer3, 196614, 24);
            ButtonColors m1872buttonColorsro_MJ88222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
            Modifier m863height3ABfNKs222 = SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(56));
            RoundedCornerShape m1098RoundedCornerShape0680j_4222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10));
            $composer3.startReplaceableGroup(460433475);
            ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
            invalid$iv = (($dirty32 & 896) == 256) | (($dirty32 & 3670016) == 1048576) | (($dirty32 & 14) == 4) | (($dirty32 & 29360128) == 8388608);
            value$iv3 = $composer3.rememberedValue();
            if (invalid$iv) {
            }
            $composer2 = $composer3;
            value$iv3 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    long PocketTripScreen$lambda$1;
                    Function4<Double, Long, Double, VehicleType, Unit> function4 = onEndRide;
                    Double valueOf = Double.valueOf(gpsData.getDistanceKm());
                    PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(rideSeconds$delegate2);
                    function4.invoke(valueOf, Long.valueOf(PocketTripScreen$lambda$1), Double.valueOf(0.2d), activeVehicle);
                    onBackToMenu.invoke();
                }
            };
            $composer3.updateRememberedValue(value$iv3);
            $composer2.endReplaceableGroup();
            ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs222, false, m1098RoundedCornerShape0680j_4222, m1872buttonColorsro_MJ88222, null, null, null, null, ComposableSingletons$PocketTripScreenKt.INSTANCE.m6711getLambda1$app_debug(), $composer2, 805306416, 484);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endReplaceableGroup();
            $composer3.endNode();
            $composer3.endReplaceableGroup();
            $composer3.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
            aiOutput3 = aiOutput42;
            endRestartGroup = $composer3.endRestartGroup();
            if (endRestartGroup == null) {
            }
        }
        $dirty2 |= i3;
        if ((i & 128) != 0) {
        }
        $dirty2 |= i2;
        if ((23634571 & $dirty2) == 4726914) {
        }
        $composer3.startDefaults();
        if (($changed & 1) != 0) {
        }
        if ((i & 2) != 0) {
        }
        if ((i & 16) != 0) {
        }
        $composer3.endDefaults();
        if (ComposerKt.isTraceInProgress()) {
        }
        $composer3.startReplaceableGroup(693786410);
        ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
        it$iv = $composer3.rememberedValue();
        if (it$iv == Composer.INSTANCE.getEmpty()) {
        }
        final MutableLongState rideSeconds$delegate22 = (MutableLongState) value$iv;
        $composer3.endReplaceableGroup();
        ProvidableCompositionLocal<Context> localContext22 = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume22 = $composer3.consume(localContext22);
        ComposerKt.sourceInformationMarkerEnd($composer3);
        final Context context22 = (Context) consume22;
        $composer3.startReplaceableGroup(693789303);
        ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
        it$iv2 = $composer3.rememberedValue();
        if (it$iv2 == Composer.INSTANCE.getEmpty()) {
        }
        MutableState tts$delegate22 = (MutableState) value$iv2;
        $composer3.endReplaceableGroup();
        EffectsKt.DisposableEffect(Unit.INSTANCE, new PocketTripScreenKt$PocketTripScreen$1(context22, tts$delegate22), $composer3, 6);
        int $dirty322 = $dirty;
        final ObserverAiOutput aiOutput422 = aiOutput2;
        EffectsKt.LaunchedEffect(Unit.INSTANCE, new PocketTripScreenKt$PocketTripScreen$2(context22, gpsData, aiOutput2, rideSeconds$delegate22, tts$delegate22, null), $composer3, 70);
        Modifier m828padding3ABfNKs22 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(20));
        Alignment.Horizontal centerHorizontally22 = Alignment.INSTANCE.getCenterHorizontally();
        Arrangement.HorizontalOrVertical spaceBetween22 = Arrangement.INSTANCE.getSpaceBetween();
        $composer3.startReplaceableGroup(-483455358);
        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
        MeasurePolicy measurePolicy$iv22 = ColumnKt.columnMeasurePolicy(spaceBetween22, centerHorizontally22, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
        int $changed$iv$iv22 = (438 << 3) & 112;
        $composer3.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
        int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
        CompositionLocalMap localMap$iv$iv22 = $composer3.getCurrentCompositionLocalMap();
        Function0 factory$iv$iv$iv22 = ComposeUiNode.INSTANCE.getConstructor();
        Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(m828padding3ABfNKs22);
        int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
        if (!($composer3.getApplier() instanceof Applier)) {
        }
        $composer3.startReusableNode();
        if ($composer3.getInserting()) {
        }
        $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
        }
        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
        skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
        $composer3.startReplaceableGroup(2058660585);
        int i52222 = ($changed$iv$iv$iv22 >> 9) & 14;
        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
        ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
        int i62222 = ((438 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer3, 1386675902, "C76@2858L41,77@2908L95,78@3012L112,81@3174L39,80@3134L1629,109@4966L37,105@4803L125,104@4773L452:PocketTripScreen.kt#xkugs2");
        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10)), $composer3, 6);
        TextKt.m2730Text4IGK_g("👝 POCKET MODE ACTIVE", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(24), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
        TextKt.m2730Text4IGK_g(activeVehicle.getDisplayName() + " | Hands-Free Background Logging", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
        CardKt.Card(PaddingKt.m830paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m6360constructorimpl(16), 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(14)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, 753999442, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x01c8  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x01e3  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x0312  */
            /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:33:0x01e8  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x01cb  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                Function0 factory$iv$iv$iv222;
                long PocketTripScreen$lambda$1;
                String formatDuration;
                Intrinsics.checkNotNullParameter(Card, "$this$Card");
                ComposerKt.sourceInformation($composer4, "C85@3359L1394:PocketTripScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(753999442, $changed2, -1, "com.cgs.atvobserver.ui.screens.PocketTripScreen.<anonymous>.<anonymous> (PocketTripScreen.kt:85)");
                    }
                    Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(20));
                    Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                    Context context222 = context22;
                    GpsData gpsData2 = gpsData;
                    ObserverAiOutput observerAiOutput22 = aiOutput422;
                    MutableLongState mutableLongState = rideSeconds$delegate22;
                    $composer4.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                    Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                    int $changed$iv$iv222 = (390 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv222 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv222 = LayoutKt.modifierMaterializerOf(modifier$iv);
                    int $changed$iv$iv$iv222 = (($changed$iv$iv222 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                        factory$iv$iv$iv222 = factory$iv$iv$iv3;
                        $composer4.createNode(factory$iv$iv$iv222);
                    } else {
                        factory$iv$iv$iv222 = factory$iv$iv$iv3;
                        $composer4.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv222))) {
                        skippableUpdate$iv$iv$iv222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv222 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i72222 = ($changed$iv$iv$iv222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance22222 = ColumnScopeInstance.INSTANCE;
                        int i82222 = ((390 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        String headsetStatus2222 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context222) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                        TextKt.m2730Text4IGK_g(headsetStatus2222, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context222) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                        StringCompanionObject stringCompanionObject2222 = StringCompanionObject.INSTANCE;
                        String format2222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format2222, "format(...)");
                        PocketTripScreenKt.PocketStatRow("Distance Logged", format2222 + " km", $composer4, 6);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput22.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                        formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                        PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        if (!ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv222));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv222), block$iv$iv$iv222);
                    skippableUpdate$iv$iv$iv222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv222 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i722222 = ($changed$iv$iv$iv222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance222222 = ColumnScopeInstance.INSTANCE;
                    int i822222 = ((390 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, -50860535, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("PHONE IS IN YOUR POCKET", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                    String headsetStatus22222 = !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context222) ? "🎧 My Lil Buds Pro Connected (Voice Active)" : "🔇 Headset Disconnected (Voice Muted)";
                    TextKt.m2730Text4IGK_g(headsetStatus22222, (Modifier) null, !HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context222) ? ColorKt.getCgsGreen() : ColorKt.getCgsRed(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 199680, 0, 131026);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                    TextKt.m2730Text4IGK_g("Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background.", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m6223boximpl(TextAlign.INSTANCE.m6230getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 130546);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12)), $composer4, 6);
                    StringCompanionObject stringCompanionObject22222 = StringCompanionObject.INSTANCE;
                    String format22222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(gpsData2.getDistanceKm())}, 1));
                    Intrinsics.checkNotNullExpressionValue(format22222, "format(...)");
                    PocketTripScreenKt.PocketStatRow("Distance Logged", format22222 + " km", $composer4, 6);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                    PocketTripScreenKt.PocketStatRow("Current Speed", ((int) observerAiOutput22.getFusedSpeedKmh()) + " km/h", $composer4, 6);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                    PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(mutableLongState);
                    formatDuration = PocketTripScreenKt.formatDuration(PocketTripScreen$lambda$1);
                    PocketTripScreenKt.PocketStatRow("Duration", formatDuration, $composer4, 6);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    if (!ComposerKt.isTraceInProgress()) {
                    }
                } else {
                    $composer4.skipToGroupEnd();
                }
            }
        }), $composer3, 196614, 24);
        ButtonColors m1872buttonColorsro_MJ882222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
        Modifier m863height3ABfNKs2222 = SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(56));
        RoundedCornerShape m1098RoundedCornerShape0680j_42222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10));
        $composer3.startReplaceableGroup(460433475);
        ComposerKt.sourceInformation($composer3, "CC(remember):PocketTripScreen.kt#9igjgp");
        invalid$iv = (($dirty322 & 896) == 256) | (($dirty322 & 3670016) == 1048576) | (($dirty322 & 14) == 4) | (($dirty322 & 29360128) == 8388608);
        value$iv3 = $composer3.rememberedValue();
        if (invalid$iv) {
        }
        $composer2 = $composer3;
        value$iv3 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$3$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                long PocketTripScreen$lambda$1;
                Function4<Double, Long, Double, VehicleType, Unit> function4 = onEndRide;
                Double valueOf = Double.valueOf(gpsData.getDistanceKm());
                PocketTripScreen$lambda$1 = PocketTripScreenKt.PocketTripScreen$lambda$1(rideSeconds$delegate22);
                function4.invoke(valueOf, Long.valueOf(PocketTripScreen$lambda$1), Double.valueOf(0.2d), activeVehicle);
                onBackToMenu.invoke();
            }
        };
        $composer3.updateRememberedValue(value$iv3);
        $composer2.endReplaceableGroup();
        ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs2222, false, m1098RoundedCornerShape0680j_42222, m1872buttonColorsro_MJ882222, null, null, null, null, ComposableSingletons$PocketTripScreenKt.INSTANCE.m6711getLambda1$app_debug(), $composer2, 805306416, 484);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        ComposerKt.sourceInformationMarkerEnd($composer3);
        $composer3.endReplaceableGroup();
        $composer3.endNode();
        $composer3.endReplaceableGroup();
        $composer3.endReplaceableGroup();
        if (ComposerKt.isTraceInProgress()) {
        }
        aiOutput3 = aiOutput422;
        endRestartGroup = $composer3.endRestartGroup();
        if (endRestartGroup == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long PocketTripScreen$lambda$1(MutableLongState $rideSeconds$delegate) {
        MutableLongState $this$getValue$iv = $rideSeconds$delegate;
        return $this$getValue$iv.getLongValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextToSpeech PocketTripScreen$lambda$4(MutableState<TextToSpeech> mutableState) {
        MutableState<TextToSpeech> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0113, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1.rememberedValue(), java.lang.Integer.valueOf(r55)) != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void PocketStatRow(final String label, final String value, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-197827305);
        ComposerKt.sourceInformation($composer3, "C(PocketStatRow)120@5309L275:PocketTripScreen.kt#xkugs2");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(label) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changed(value) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-197827305, $dirty2, -1, "com.cgs.atvobserver.ui.screens.PocketStatRow (PocketTripScreen.kt:119)");
            }
            Modifier modifier$iv = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
            $composer3.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv = (54 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
            int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                $composer3.createNode(factory$iv$iv$iv);
            } else {
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i = ($changed$iv$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i2 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 23076065, "C124@5431L55,125@5495L83:PocketTripScreen.kt#xkugs2");
            $composer2 = $composer3;
            TextKt.m2730Text4IGK_g(label, (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, ($dirty2 & 14) | 3456, 0, 131058);
            TextKt.m2730Text4IGK_g(value, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 3) & 14) | 200064, 0, 131026);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketStatRow$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    PocketTripScreenKt.PocketStatRow(label, value, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String formatDuration(long seconds) {
        long j = 60;
        long mins = seconds / j;
        long secs = seconds % j;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), "%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(mins), Long.valueOf(secs)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
