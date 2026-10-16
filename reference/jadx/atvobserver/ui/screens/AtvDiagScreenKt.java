package com.cgs.atvobserver.ui.screens;

import androidx.camera.video.AudioStats;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
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
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
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
import com.cgs.atvobserver.sensor.MotionSensorData;
import com.cgs.atvobserver.ui.theme.ColorKt;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: AtvDiagScreen.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\u001a?\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0007¢\u0006\u0002\u0010\f\u001a\u001d\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0003¢\u0006\u0002\u0010\u0011¨\u0006\u0012²\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u008e\u0002"}, d2 = {"AtvDiagScreen", "", "audioData", "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;", "motionData", "Lcom/cgs/atvobserver/sensor/MotionSensorData;", "aiOutput", "Lcom/cgs/atvobserver/ai/ObserverAiOutput;", "temperatureCelsius", "", "onBackToMenu", "Lkotlin/Function0;", "(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "DiagMetricRow", "label", "", "value", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "app_debug", "showFanQuestion", ""}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class AtvDiagScreenKt {
    /* JADX WARN: Removed duplicated region for block: B:78:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x06d5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0407  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void AtvDiagScreen(final AudioAnalysisResult audioData, MotionSensorData motionData, ObserverAiOutput aiOutput, final double temperatureCelsius, final Function0<Unit> onBackToMenu, Composer $composer, final int $changed, final int i) {
        final MotionSensorData motionData2;
        final ObserverAiOutput aiOutput2;
        Object value$iv;
        AtvDiagScreenKt$AtvDiagScreen$1$1 value$iv2;
        String label;
        final String label2;
        Function0 factory$iv$iv$iv;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        MotionSensorData motionData3;
        ObserverAiOutput aiOutput3;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(audioData, "audioData");
        Intrinsics.checkNotNullParameter(onBackToMenu, "onBackToMenu");
        Composer $composer2 = $composer.startRestartGroup(-872046655);
        ComposerKt.sourceInformation($composer2, "C(AtvDiagScreen)P(1,2!1,4)29@1079L34,31@1154L93,31@1119L128,54@1821L21,49@1663L4538:AtvDiagScreen.kt#xkugs2");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(audioData) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            if ((i & 2) == 0) {
                motionData2 = motionData;
                if ($composer2.changed(motionData2)) {
                    i3 = 32;
                    $dirty |= i3;
                }
            } else {
                motionData2 = motionData;
            }
            i3 = 16;
            $dirty |= i3;
        } else {
            motionData2 = motionData;
        }
        if (($changed & 896) == 0) {
            if ((i & 4) == 0) {
                aiOutput2 = aiOutput;
                if ($composer2.changed(aiOutput2)) {
                    i2 = 256;
                    $dirty |= i2;
                }
            } else {
                aiOutput2 = aiOutput;
            }
            i2 = 128;
            $dirty |= i2;
        } else {
            aiOutput2 = aiOutput;
        }
        if ((i & 8) != 0) {
            $dirty |= 3072;
        } else if (($changed & 7168) == 0) {
            $dirty |= $composer2.changed(temperatureCelsius) ? 2048 : 1024;
        }
        if ((i & 16) != 0) {
            $dirty |= 24576;
        } else if ((57344 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(onBackToMenu) ? 16384 : 8192;
        }
        if ((46811 & $dirty) == 9362 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            motionData3 = motionData2;
            aiOutput3 = aiOutput2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if ((i & 2) != 0) {
                    motionData2 = new MotionSensorData(AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 0.0f, 0.0f, AudioStats.AUDIO_AMPLITUDE_NONE, false, false, false, false, 0, 1023, null);
                    $dirty &= -113;
                }
                if ((i & 4) != 0) {
                    aiOutput2 = new ObserverAiOutput(null, null, null, null, null, 0, 0, false, false, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0, false, false, false, false, 0, null, 134217727, null);
                    $dirty &= -897;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
                if ((i & 4) != 0) {
                    $dirty &= -897;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-872046655, $dirty, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen (AtvDiagScreen.kt:28)");
            }
            $composer2.startReplaceableGroup(614593724);
            ComposerKt.sourceInformation($composer2, "CC(remember):AtvDiagScreen.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final MutableState showFanQuestion$delegate = (MutableState) value$iv;
            $composer2.endReplaceableGroup();
            Double valueOf = Double.valueOf(temperatureCelsius);
            $composer2.startReplaceableGroup(614596183);
            ComposerKt.sourceInformation($composer2, "CC(remember):AtvDiagScreen.kt#9igjgp");
            boolean invalid$iv = ($dirty & 7168) == 2048;
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = new AtvDiagScreenKt$AtvDiagScreen$1$1(temperatureCelsius, showFanQuestion$delegate, null);
                $composer2.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            $composer2.endReplaceableGroup();
            EffectsKt.LaunchedEffect(valueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv2, $composer2, (($dirty >> 9) & 14) | 64);
            if (temperatureCelsius <= -900.0d) {
                label2 = "UNAVAILABLE (NO PROBE)";
            } else {
                if (temperatureCelsius < 50.0d) {
                    label = "COLD (WARMING UP)";
                } else {
                    if (50.0d <= temperatureCelsius && temperatureCelsius <= 100.0d) {
                        label = "NORMAL";
                    } else {
                        label = (100.0d > temperatureCelsius ? 1 : (100.0d == temperatureCelsius ? 0 : -1)) <= 0 && (temperatureCelsius > 115.0d ? 1 : (temperatureCelsius == 115.0d ? 0 : -1)) <= 0 ? "ELEVATED" : "CRITICAL";
                    }
                }
                label2 = ((int) temperatureCelsius) + "°C (" + label + ")";
            }
            Modifier verticalScroll$default = ScrollKt.verticalScroll$default(PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(12)), ScrollKt.rememberScrollState(0, $composer2, 0, 1), false, null, false, 14, null);
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.HorizontalOrVertical m737spacedBy0680j_4 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
            $composer2.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(m737spacedBy0680j_4, centerHorizontally, $composer2, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            int $changed$iv$iv = (432 << 3) & 112;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv2 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(verticalScroll$default);
            int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                $composer2.createNode(factory$iv$iv$iv2);
            } else {
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i4 = ($changed$iv$iv$iv >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i5 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 173743569, "C58@1978L295,93@3733L39,92@3693L997,113@4783L39,112@4743L1096,131@5849L40,135@5979L48,133@5899L296:AtvDiagScreen.kt#xkugs2");
                Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                $composer2.startReplaceableGroup(-483455358);
                ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                Modifier modifier$iv = Modifier.INSTANCE;
                Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer2, ((384 >> 3) & 14) | ((384 >> 3) & 112));
                int $changed$iv$iv2 = (384 << 3) & 112;
                $composer2.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv2 = $composer2.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv);
                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    factory$iv$iv$iv = factory$iv$iv$iv3;
                    $composer2.useNode();
                } else {
                    factory$iv$iv$iv = factory$iv$iv$iv3;
                    $composer2.createNode(factory$iv$iv$iv);
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer2);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                    skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                    $composer2.startReplaceableGroup(2058660585);
                    int i6 = ($changed$iv$iv$iv2 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                    int i7 = ((384 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, 1660677911, "C59@2051L102,60@2166L97:AtvDiagScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("ATV DIAG - LIVE OBSERVER AI", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                    TextKt.m2730Text4IGK_g("Real-Time Sensor Fusion & AI Inspection Panel", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    $composer2.startReplaceableGroup(-1241312905);
                    ComposerKt.sourceInformation($composer2, "66@2412L38,65@2368L1265");
                    if (AtvDiagScreen$lambda$1(showFanQuestion$delegate)) {
                        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsYellow(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -783211042, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                                invoke(columnScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:24:0x025d  */
                            /* JADX WARN: Removed duplicated region for block: B:27:0x0269  */
                            /* JADX WARN: Removed duplicated region for block: B:35:0x0341  */
                            /* JADX WARN: Removed duplicated region for block: B:38:0x03b2  */
                            /* JADX WARN: Removed duplicated region for block: B:41:0x0439  */
                            /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:44:0x03c2  */
                            /* JADX WARN: Removed duplicated region for block: B:45:0x0351  */
                            /* JADX WARN: Removed duplicated region for block: B:48:0x026f  */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                                Function0 factory$iv$iv$iv4;
                                Function0 factory$iv$iv$iv5;
                                Composer $this$Layout_u24lambda_u240$iv$iv3;
                                Object value$iv3;
                                Object it$iv3;
                                Object value$iv4;
                                Intrinsics.checkNotNullParameter(Card, "$this$Card");
                                ComposerKt.sourceInformation($composer3, "C70@2585L1034:AtvDiagScreen.kt#xkugs2");
                                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-783211042, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:70)");
                                    }
                                    Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10));
                                    Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getCenterHorizontally();
                                    final MutableState<Boolean> mutableState = showFanQuestion$delegate;
                                    $composer3.startReplaceableGroup(-483455358);
                                    ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                    Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                                    int $changed$iv$iv3 = (390 << 3) & 112;
                                    $composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                    CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv6 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                    int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                    if (!($composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer3.startReusableNode();
                                    if ($composer3.getInserting()) {
                                        factory$iv$iv$iv4 = factory$iv$iv$iv6;
                                        $composer3.createNode(factory$iv$iv$iv4);
                                    } else {
                                        factory$iv$iv$iv4 = factory$iv$iv$iv6;
                                        $composer3.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer3);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv4.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i8 = ($changed$iv$iv$iv3 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                        ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                        int i9 = ((390 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -2034399101, "C74@2760L93,75@2874L83,76@2978L40,77@3039L562:AtvDiagScreen.kt#xkugs2");
                                        TextKt.m2730Text4IGK_g("Temperature rising unusually fast!", (Modifier) null, Color.INSTANCE.m4038getBlack0d7_KjU(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 196998, 0, 131034);
                                        TextKt.m2730Text4IGK_g("Is the manual cooling fan turned ON?", (Modifier) null, Color.INSTANCE.m4038getBlack0d7_KjU(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer3, 6);
                                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(16));
                                        $composer3.startReplaceableGroup(693286680);
                                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                        Modifier modifier$iv3 = Modifier.INSTANCE;
                                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                                        int $changed$iv = ((48 >> 3) & 14) | ((48 >> 3) & 112);
                                        MeasurePolicy measurePolicy$iv4 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, $changed$iv);
                                        int $changed$iv$iv4 = (48 << 3) & 112;
                                        $composer3.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                        CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                                        Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                        int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                        if (!($composer3.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        $composer3.startReusableNode();
                                        if (!$composer3.getInserting()) {
                                            factory$iv$iv$iv5 = factory$iv$iv$iv7;
                                            $composer3.createNode(factory$iv$iv$iv5);
                                        } else {
                                            factory$iv$iv$iv5 = factory$iv$iv$iv7;
                                            $composer3.useNode();
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                            skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                            $composer3.startReplaceableGroup(2058660585);
                                            int i10 = ($changed$iv$iv$iv4 >> 9) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                            int i11 = ((48 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer3, -1588552412, "C79@3168L27,80@3249L39,78@3122L217,83@3410L27,84@3491L37,82@3364L215:AtvDiagScreen.kt#xkugs2");
                                            $composer3.startReplaceableGroup(1334230737);
                                            ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                            value$iv3 = $composer3.rememberedValue();
                                            if (value$iv3 != Composer.INSTANCE.getEmpty()) {
                                                value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$1$1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                                                        AtvDiagScreenKt.AtvDiagScreen$lambda$2(mutableState, false);
                                                    }
                                                };
                                                $composer3.updateRememberedValue(value$iv3);
                                            }
                                            $composer3.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv3, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6678getLambda1$app_debug(), $composer3, 805306374, 494);
                                            $composer3.startReplaceableGroup(1334238481);
                                            ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                            it$iv3 = $composer3.rememberedValue();
                                            if (it$iv3 != Composer.INSTANCE.getEmpty()) {
                                                value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$2$1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                                                        AtvDiagScreenKt.AtvDiagScreen$lambda$2(mutableState, false);
                                                    }
                                                };
                                                $composer3.updateRememberedValue(value$iv4);
                                            } else {
                                                value$iv4 = it$iv3;
                                            }
                                            $composer3.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv4, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6679getLambda2$app_debug(), $composer3, 805306374, 494);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            $composer3.endReplaceableGroup();
                                            $composer3.endNode();
                                            $composer3.endReplaceableGroup();
                                            $composer3.endReplaceableGroup();
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            $composer3.endReplaceableGroup();
                                            $composer3.endNode();
                                            $composer3.endReplaceableGroup();
                                            $composer3.endReplaceableGroup();
                                            if (!ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                        skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i102 = ($changed$iv$iv$iv4 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                                        int i112 = ((48 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -1588552412, "C79@3168L27,80@3249L39,78@3122L217,83@3410L27,84@3491L37,82@3364L215:AtvDiagScreen.kt#xkugs2");
                                        $composer3.startReplaceableGroup(1334230737);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                        value$iv3 = $composer3.rememberedValue();
                                        if (value$iv3 != Composer.INSTANCE.getEmpty()) {
                                        }
                                        $composer3.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv3, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6678getLambda1$app_debug(), $composer3, 805306374, 494);
                                        $composer3.startReplaceableGroup(1334238481);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                        it$iv3 = $composer3.rememberedValue();
                                        if (it$iv3 != Composer.INSTANCE.getEmpty()) {
                                        }
                                        $composer3.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv4, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6679getLambda2$app_debug(), $composer3, 805306374, 494);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        if (!ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i82 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                    int i92 = ((390 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -2034399101, "C74@2760L93,75@2874L83,76@2978L40,77@3039L562:AtvDiagScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("Temperature rising unusually fast!", (Modifier) null, Color.INSTANCE.m4038getBlack0d7_KjU(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 196998, 0, 131034);
                                    TextKt.m2730Text4IGK_g("Is the manual cooling fan turned ON?", (Modifier) null, Color.INSTANCE.m4038getBlack0d7_KjU(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer3, 6);
                                    Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(16));
                                    $composer3.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                    Modifier modifier$iv32 = Modifier.INSTANCE;
                                    Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                                    int $changed$iv2 = ((48 >> 3) & 14) | ((48 >> 3) & 112);
                                    MeasurePolicy measurePolicy$iv42 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer3, $changed$iv2);
                                    int $changed$iv$iv42 = (48 << 3) & 112;
                                    $composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                    CompositionLocalMap localMap$iv$iv42 = $composer3.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv72 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                                    int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                                    if (!($composer3.getApplier() instanceof Applier)) {
                                    }
                                    $composer3.startReusableNode();
                                    if (!$composer3.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                                        skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i1022 = ($changed$iv$iv$iv42 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
                                        int i1122 = ((48 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -1588552412, "C79@3168L27,80@3249L39,78@3122L217,83@3410L27,84@3491L37,82@3364L215:AtvDiagScreen.kt#xkugs2");
                                        $composer3.startReplaceableGroup(1334230737);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                        value$iv3 = $composer3.rememberedValue();
                                        if (value$iv3 != Composer.INSTANCE.getEmpty()) {
                                        }
                                        $composer3.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv3, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6678getLambda1$app_debug(), $composer3, 805306374, 494);
                                        $composer3.startReplaceableGroup(1334238481);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                        it$iv3 = $composer3.rememberedValue();
                                        if (it$iv3 != Composer.INSTANCE.getEmpty()) {
                                        }
                                        $composer3.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv4, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6679getLambda2$app_debug(), $composer3, 805306374, 494);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        if (!ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                                    skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i10222 = ($changed$iv$iv$iv42 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance222 = RowScopeInstance.INSTANCE;
                                    int i11222 = ((48 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -1588552412, "C79@3168L27,80@3249L39,78@3122L217,83@3410L27,84@3491L37,82@3364L215:AtvDiagScreen.kt#xkugs2");
                                    $composer3.startReplaceableGroup(1334230737);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                    value$iv3 = $composer3.rememberedValue();
                                    if (value$iv3 != Composer.INSTANCE.getEmpty()) {
                                    }
                                    $composer3.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv3, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6678getLambda1$app_debug(), $composer3, 805306374, 494);
                                    $composer3.startReplaceableGroup(1334238481);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):AtvDiagScreen.kt#9igjgp");
                                    it$iv3 = $composer3.rememberedValue();
                                    if (it$iv3 != Composer.INSTANCE.getEmpty()) {
                                    }
                                    $composer3.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv4, null, false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6679getLambda2$app_debug(), $composer3, 805306374, 494);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    if (!ComposerKt.isTraceInProgress()) {
                                    }
                                } else {
                                    $composer3.skipToGroupEnd();
                                }
                            }
                        }), $composer2, 196614, 24);
                    }
                    $composer2.endReplaceableGroup();
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -812465959, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$3
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x01f0  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x0218  */
                        /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:30:0x01f3  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                            Intrinsics.checkNotNullParameter(Card, "$this$Card");
                            ComposerKt.sourceInformation($composer3, "C97@3892L788:AtvDiagScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-812465959, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:97)");
                                }
                                Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                                ObserverAiOutput observerAiOutput = ObserverAiOutput.this;
                                $composer3.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv3 = (54 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    $composer3.createNode(factory$iv$iv$iv4);
                                } else {
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i8 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                    int i9 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                    AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    if (!ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i82 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                int i92 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                }
                            } else {
                                $composer3.skipToGroupEnd();
                            }
                        }
                    }), $composer2, 196614, 24);
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 312847746, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$4
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x01b4  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x0291  */
                        /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:30:0x01cc  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                            Function0 factory$iv$iv$iv4;
                            String str;
                            Intrinsics.checkNotNullParameter(Card, "$this$Card");
                            ComposerKt.sourceInformation($composer3, "C117@4942L887:AtvDiagScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(312847746, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:117)");
                                }
                                Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                                AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                                ObserverAiOutput observerAiOutput = aiOutput2;
                                MotionSensorData motionSensorData = motionData2;
                                String str2 = label2;
                                $composer3.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv3 = (54 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    factory$iv$iv$iv4 = factory$iv$iv$iv5;
                                    $composer3.createNode(factory$iv$iv$iv4);
                                } else {
                                    factory$iv$iv$iv4 = factory$iv$iv$iv5;
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i8 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                    int i9 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                    if (audioAnalysisResult.isEngineRunning()) {
                                        str = "ENGINE STOPPED";
                                    } else {
                                        str = observerAiOutput.getFusedRpm() + " RPM";
                                    }
                                    AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                                    String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                                    AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format + " G", $composer3, 6);
                                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                                    String format2 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                                    AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format2, $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                                    AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    if (!ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i82 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                int i92 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                if (audioAnalysisResult.isEngineRunning()) {
                                }
                                AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                                StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                                String format3 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
                                AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format3 + " G", $composer3, 6);
                                StringCompanionObject stringCompanionObject22 = StringCompanionObject.INSTANCE;
                                String format22 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format22, "format(...)");
                                AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format22, $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                }
                            } else {
                                $composer3.skipToGroupEnd();
                            }
                        }
                    }), $composer2, 196614, 24);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer2, 6);
                    ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6680getLambda3$app_debug(), $composer2, (($dirty >> 12) & 14) | 805306416, 492);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    motionData3 = motionData2;
                    aiOutput3 = aiOutput2;
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i62 = ($changed$iv$iv$iv2 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                int i72 = ((384 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 1660677911, "C59@2051L102,60@2166L97:AtvDiagScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g("ATV DIAG - LIVE OBSERVER AI", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                TextKt.m2730Text4IGK_g("Real-Time Sensor Fusion & AI Inspection Panel", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                $composer2.startReplaceableGroup(-1241312905);
                ComposerKt.sourceInformation($composer2, "66@2412L38,65@2368L1265");
                if (AtvDiagScreen$lambda$1(showFanQuestion$delegate)) {
                }
                $composer2.endReplaceableGroup();
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -812465959, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$3
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01f0  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x0218  */
                    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01f3  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer3, "C97@3892L788:AtvDiagScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-812465959, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:97)");
                            }
                            Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                            Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            ObserverAiOutput observerAiOutput = ObserverAiOutput.this;
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                $composer3.createNode(factory$iv$iv$iv4);
                            } else {
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i82 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                int i92 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i822 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                            int i922 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            $composer3.skipToGroupEnd();
                        }
                    }
                }), $composer2, 196614, 24);
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 312847746, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01b4  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x0291  */
                    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01cc  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv4;
                        String str;
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer3, "C117@4942L887:AtvDiagScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(312847746, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:117)");
                            }
                            Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                            Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                            ObserverAiOutput observerAiOutput = aiOutput2;
                            MotionSensorData motionSensorData = motionData2;
                            String str2 = label2;
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv4 = factory$iv$iv$iv5;
                                $composer3.createNode(factory$iv$iv$iv4);
                            } else {
                                factory$iv$iv$iv4 = factory$iv$iv$iv5;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i82 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                int i92 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                if (audioAnalysisResult.isEngineRunning()) {
                                    str = "ENGINE STOPPED";
                                } else {
                                    str = observerAiOutput.getFusedRpm() + " RPM";
                                }
                                AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                                StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                                String format3 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
                                AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format3 + " G", $composer3, 6);
                                StringCompanionObject stringCompanionObject22 = StringCompanionObject.INSTANCE;
                                String format22 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format22, "format(...)");
                                AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format22, $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i822 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                            int i922 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            if (audioAnalysisResult.isEngineRunning()) {
                            }
                            AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                            StringCompanionObject stringCompanionObject32 = StringCompanionObject.INSTANCE;
                            String format32 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format32, "format(...)");
                            AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format32 + " G", $composer3, 6);
                            StringCompanionObject stringCompanionObject222 = StringCompanionObject.INSTANCE;
                            String format222 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format222, "format(...)");
                            AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format222, $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            $composer3.skipToGroupEnd();
                        }
                    }
                }), $composer2, 196614, 24);
                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer2, 6);
                ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6680getLambda3$app_debug(), $composer2, (($dirty >> 12) & 14) | 805306416, 492);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
                motionData3 = motionData2;
                aiOutput3 = aiOutput2;
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i42 = ($changed$iv$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
            int i52 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 173743569, "C58@1978L295,93@3733L39,92@3693L997,113@4783L39,112@4743L1096,131@5849L40,135@5979L48,133@5899L296:AtvDiagScreen.kt#xkugs2");
            Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getCenterHorizontally();
            $composer2.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Modifier modifier$iv2 = Modifier.INSTANCE;
            Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv22 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer2, ((384 >> 3) & 14) | ((384 >> 3) & 112));
            int $changed$iv$iv22 = (384 << 3) & 112;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv22 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv32 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv2);
            int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i622 = ($changed$iv$iv$iv22 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                int i722 = ((384 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 1660677911, "C59@2051L102,60@2166L97:AtvDiagScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g("ATV DIAG - LIVE OBSERVER AI", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                TextKt.m2730Text4IGK_g("Real-Time Sensor Fusion & AI Inspection Panel", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                $composer2.startReplaceableGroup(-1241312905);
                ComposerKt.sourceInformation($composer2, "66@2412L38,65@2368L1265");
                if (AtvDiagScreen$lambda$1(showFanQuestion$delegate)) {
                }
                $composer2.endReplaceableGroup();
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -812465959, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$3
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01f0  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x0218  */
                    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01f3  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer3, "C97@3892L788:AtvDiagScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-812465959, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:97)");
                            }
                            Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            ObserverAiOutput observerAiOutput = ObserverAiOutput.this;
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                $composer3.createNode(factory$iv$iv$iv4);
                            } else {
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i822 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                int i922 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i9222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            $composer3.skipToGroupEnd();
                        }
                    }
                }), $composer2, 196614, 24);
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 312847746, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01b4  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x0291  */
                    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01cc  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv4;
                        String str;
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer3, "C117@4942L887:AtvDiagScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(312847746, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:117)");
                            }
                            Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                            ObserverAiOutput observerAiOutput = aiOutput2;
                            MotionSensorData motionSensorData = motionData2;
                            String str2 = label2;
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv4 = factory$iv$iv$iv5;
                                $composer3.createNode(factory$iv$iv$iv4);
                            } else {
                                factory$iv$iv$iv4 = factory$iv$iv$iv5;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i822 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                int i922 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                if (audioAnalysisResult.isEngineRunning()) {
                                    str = "ENGINE STOPPED";
                                } else {
                                    str = observerAiOutput.getFusedRpm() + " RPM";
                                }
                                AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                                StringCompanionObject stringCompanionObject32 = StringCompanionObject.INSTANCE;
                                String format32 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format32, "format(...)");
                                AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format32 + " G", $composer3, 6);
                                StringCompanionObject stringCompanionObject222 = StringCompanionObject.INSTANCE;
                                String format222 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format222, "format(...)");
                                AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format222, $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                                AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i9222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            if (audioAnalysisResult.isEngineRunning()) {
                            }
                            AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                            StringCompanionObject stringCompanionObject322 = StringCompanionObject.INSTANCE;
                            String format322 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format322, "format(...)");
                            AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format322 + " G", $composer3, 6);
                            StringCompanionObject stringCompanionObject2222 = StringCompanionObject.INSTANCE;
                            String format2222 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format2222, "format(...)");
                            AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format2222, $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            $composer3.skipToGroupEnd();
                        }
                    }
                }), $composer2, 196614, 24);
                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer2, 6);
                ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6680getLambda3$app_debug(), $composer2, (($dirty >> 12) & 14) | 805306416, 492);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
                motionData3 = motionData2;
                aiOutput3 = aiOutput2;
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
            skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i6222 = ($changed$iv$iv$iv22 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
            int i7222 = ((384 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 1660677911, "C59@2051L102,60@2166L97:AtvDiagScreen.kt#xkugs2");
            TextKt.m2730Text4IGK_g("ATV DIAG - LIVE OBSERVER AI", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
            TextKt.m2730Text4IGK_g("Real-Time Sensor Fusion & AI Inspection Panel", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            $composer2.startReplaceableGroup(-1241312905);
            ComposerKt.sourceInformation($composer2, "66@2412L38,65@2368L1265");
            if (AtvDiagScreen$lambda$1(showFanQuestion$delegate)) {
            }
            $composer2.endReplaceableGroup();
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -812465959, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$3
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01f0  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x0218  */
                /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:30:0x01f3  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer3, "C97@3892L788:AtvDiagScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-812465959, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:97)");
                        }
                        Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                        Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        ObserverAiOutput observerAiOutput = ObserverAiOutput.this;
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv3 = (54 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            $composer3.createNode(factory$iv$iv$iv4);
                        } else {
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i9222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i82222 = ($changed$iv$iv$iv3 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance32222 = ColumnScopeInstance.INSTANCE;
                        int i92222 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, -2033127357, "C101@4049L110,102@4176L64,103@4257L63,104@4337L61,105@4415L67,106@4499L70,107@4586L80:AtvDiagScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("🧠 OBSERVER AI & HARDWARE PROFILING", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                        AtvDiagScreenKt.DiagMetricRow("Detected Device Tier", observerAiOutput.getActiveDeviceTier(), $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("AI Operating Mode", observerAiOutput.getOperatingMode().name(), $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("Detected Ride State", observerAiOutput.getRideState().name(), $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("Classified Road Surface", observerAiOutput.getRoadSurface().name(), $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("System Confidence", observerAiOutput.getSystemConfidencePct() + "%", $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("Speech Isolated", !observerAiOutput.isSpeechDetected() ? "YES" : "NO", $composer3, 6);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer3.skipToGroupEnd();
                    }
                }
            }), $composer2, 196614, 24);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 312847746, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$2$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01b4  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x0291  */
                /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:30:0x01cc  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv4;
                    String str;
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer3, "C117@4942L887:AtvDiagScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(312847746, $changed2, -1, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:117)");
                        }
                        Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                        Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                        ObserverAiOutput observerAiOutput = aiOutput2;
                        MotionSensorData motionSensorData = motionData2;
                        String str2 = label2;
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv3 = (54 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv4 = factory$iv$iv$iv5;
                            $composer3.createNode(factory$iv$iv$iv4);
                        } else {
                            factory$iv$iv$iv4 = factory$iv$iv$iv5;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i9222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            if (audioAnalysisResult.isEngineRunning()) {
                                str = "ENGINE STOPPED";
                            } else {
                                str = observerAiOutput.getFusedRpm() + " RPM";
                            }
                            AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                            StringCompanionObject stringCompanionObject322 = StringCompanionObject.INSTANCE;
                            String format322 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format322, "format(...)");
                            AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format322 + " G", $composer3, 6);
                            StringCompanionObject stringCompanionObject2222 = StringCompanionObject.INSTANCE;
                            String format2222 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format2222, "format(...)");
                            AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format2222, $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                            AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i82222 = ($changed$iv$iv$iv3 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance32222 = ColumnScopeInstance.INSTANCE;
                        int i92222 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, -2032082688, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("📡 HARDWARE SENSORS TELEMETRY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                        if (audioAnalysisResult.isEngineRunning()) {
                        }
                        AtvDiagScreenKt.DiagMetricRow("Audio RPM", str, $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("Audio Confidence", observerAiOutput.getRpmConfidencePct() + "%", $composer3, 6);
                        StringCompanionObject stringCompanionObject3222 = StringCompanionObject.INSTANCE;
                        String format3222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(observerAiOutput.getGForceMagnitude())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format3222, "format(...)");
                        AtvDiagScreenKt.DiagMetricRow("G-Force Magnitude", format3222 + " G", $composer3, 6);
                        StringCompanionObject stringCompanionObject22222 = StringCompanionObject.INSTANCE;
                        String format22222 = String.format(Locale.getDefault(), "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(motionSensorData.getVibrationIntensity())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format22222, "format(...)");
                        AtvDiagScreenKt.DiagMetricRow("Vibration Intensity", format22222, $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("Motion Sample Rate", observerAiOutput.getRecommendedMotionFps() + " FPS", $composer3, 6);
                        AtvDiagScreenKt.DiagMetricRow("Engine Temp", str2, $composer3, 6);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer3.skipToGroupEnd();
                    }
                }
            }), $composer2, 196614, 24);
            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer2, 6);
            ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AtvDiagScreenKt.INSTANCE.m6680getLambda3$app_debug(), $composer2, (($dirty >> 12) & 14) | 805306416, 492);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
            motionData3 = motionData2;
            aiOutput3 = aiOutput2;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final MotionSensorData motionSensorData = motionData3;
            final ObserverAiOutput observerAiOutput = aiOutput3;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    AtvDiagScreenKt.AtvDiagScreen(AudioAnalysisResult.this, motionSensorData, observerAiOutput, temperatureCelsius, onBackToMenu, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    private static final boolean AtvDiagScreen$lambda$1(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void AtvDiagScreen$lambda$2(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0113, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1.rememberedValue(), java.lang.Integer.valueOf(r55)) != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DiagMetricRow(final String label, final String value, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(210708197);
        ComposerKt.sourceInformation($composer3, "C(DiagMetricRow)145@6279L275:AtvDiagScreen.kt#xkugs2");
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
                ComposerKt.traceEventStart(210708197, $dirty2, -1, "com.cgs.atvobserver.ui.screens.DiagMetricRow (AtvDiagScreen.kt:144)");
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
            ComposerKt.sourceInformationMarkerStart($composer3, 621030738, "C149@6401L55,150@6465L83:AtvDiagScreen.kt#xkugs2");
            $composer2 = $composer3;
            TextKt.m2730Text4IGK_g(label, (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, ($dirty2 & 14) | 3456, 0, 131058);
            TextKt.m2730Text4IGK_g(value, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 3) & 14) | 200064, 0, 131026);
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
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$DiagMetricRow$2
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
                    AtvDiagScreenKt.DiagMetricRow(label, value, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
