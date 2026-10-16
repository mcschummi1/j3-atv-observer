package com.cgs.atvobserver.ui.screens;

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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
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
import com.cgs.atvobserver.audio.AudioAnalysisResult;
import com.cgs.atvobserver.ui.theme.ColorKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: CarbTuneScreen.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a5\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0003¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"CarbTuneScreen", "", "audioData", "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;", "temperatureCelsius", "", "altitudeMeters", "onBackToMenu", "Lkotlin/Function0;", "(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DDLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "TuneRow", "label", "", "value", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "app_debug"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class CarbTuneScreenKt {
    /* JADX WARN: Removed duplicated region for block: B:43:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void CarbTuneScreen(final AudioAnalysisResult audioData, final double temperatureCelsius, double altitudeMeters, final Function0<Unit> onBackToMenu, Composer $composer, final int $changed, final int i) {
        double d;
        CompositionLocalMap localMap$iv$iv;
        Function0 factory$iv$iv$iv;
        Function0 factory$iv$iv$iv2;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        double altitudeMeters2;
        Intrinsics.checkNotNullParameter(audioData, "audioData");
        Intrinsics.checkNotNullParameter(onBackToMenu, "onBackToMenu");
        Composer $composer2 = $composer.startRestartGroup(-1114890593);
        ComposerKt.sourceInformation($composer2, "C(CarbTuneScreen)P(1,3)39@1658L21,34@1500L2804:CarbTuneScreen.kt#xkugs2");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(audioData) ? 4 : 2;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= 384;
            d = altitudeMeters;
        } else if (($changed & 896) == 0) {
            d = altitudeMeters;
            $dirty |= $composer2.changed(d) ? 256 : 128;
        } else {
            d = altitudeMeters;
        }
        if ((i & 8) != 0) {
            $dirty |= 3072;
        } else if (($changed & 7168) == 0) {
            $dirty |= $composer2.changedInstance(onBackToMenu) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 5771) == 1154 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            altitudeMeters2 = d;
        } else {
            final double altitudeMeters3 = i2 != 0 ? 350.0d : d;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1114890593, $dirty2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen (CarbTuneScreen.kt:23)");
            }
            double airDensityFactor = RangesKt.coerceIn(1.0d - (altitudeMeters3 / 10000.0d), 0.85d, 1.0d);
            final int airDensityPct = (int) (100 * airDensityFactor);
            final String jettingAdvice = altitudeMeters3 > 1000.0d ? "High Altitude (>1000m): Air is " + (100 - airDensityPct) + "% thinner. Drop main jet 1 size or drop needle 1 notch if bogging at full throttle." : altitudeMeters3 > 500.0d ? "Moderate Altitude (>500m): Air is " + (100 - airDensityPct) + "% thinner. Lean needle 1 notch if rich at mid-throttle." : "Low Altitude (<500m): Air density normal (" + airDensityPct + "%). Standard factory carb jetting recommended.";
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
            CompositionLocalMap localMap$iv$iv2 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(verticalScroll$default);
            int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                $composer2.createNode(factory$iv$iv$iv3);
            } else {
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                localMap$iv$iv = localMap$iv$iv2;
                factory$iv$iv$iv = factory$iv$iv$iv3;
            } else {
                localMap$iv$iv = localMap$iv$iv2;
                factory$iv$iv$iv = factory$iv$iv$iv3;
                if (Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                    $composer2.startReplaceableGroup(2058660585);
                    int i3 = ($changed$iv$iv$iv >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                    int i4 = ((432 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, 1248918207, "C43@1815L308,50@2210L39,49@2170L867,68@3123L39,67@3083L909,86@4082L48,84@4002L296:CarbTuneScreen.kt#xkugs2");
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
                    CompositionLocalMap localMap$iv$iv3 = $composer2.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv);
                    int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
                    if (!($composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer2.startReusableNode();
                    if ($composer2.getInserting()) {
                        factory$iv$iv$iv2 = factory$iv$iv$iv4;
                        $composer2.useNode();
                    } else {
                        factory$iv$iv$iv2 = factory$iv$iv$iv4;
                        $composer2.createNode(factory$iv$iv$iv2);
                    }
                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer2);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                        skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                        $composer2.startReplaceableGroup(2058660585);
                        int i5 = ($changed$iv$iv$iv2 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        int i6 = ((384 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer2, 1847923602, "C44@1888L104,45@2005L108:CarbTuneScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("CARB TUNE & JETTING ASSISTANT", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                        TextKt.m2730Text4IGK_g("Acoustic Idle Tuning & Altitude Air Density Compensation", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $composer2.endReplaceableGroup();
                        $composer2.endNode();
                        $composer2.endReplaceableGroup();
                        $composer2.endReplaceableGroup();
                        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 751678087, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                                invoke(columnScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:24:0x02a0  */
                            /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                                Intrinsics.checkNotNullParameter(Card, "$this$Card");
                                ComposerKt.sourceInformation($composer3, "C54@2369L658:CarbTuneScreen.kt#xkugs2");
                                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(751678087, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:54)");
                                    }
                                    Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                                    Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                    double d2 = altitudeMeters3;
                                    int i7 = airDensityPct;
                                    String str = jettingAdvice;
                                    $composer3.startReplaceableGroup(-483455358);
                                    ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                    Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv3 = (54 << 3) & 112;
                                    $composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                    CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                    int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                    if (!($composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer3.startReusableNode();
                                    if ($composer3.getInserting()) {
                                        $composer3.createNode(factory$iv$iv$iv5);
                                    } else {
                                        $composer3.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i8 = ($changed$iv$iv$iv3 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                        ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                        int i9 = ((54 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                                        TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                        TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                                        TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                                        TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
                                    ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                    TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                                    TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                                    TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
                        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -1339915842, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$3
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                                invoke(columnScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:24:0x01a1  */
                            /* JADX WARN: Removed duplicated region for block: B:27:0x01b6  */
                            /* JADX WARN: Removed duplicated region for block: B:30:0x01fd  */
                            /* JADX WARN: Removed duplicated region for block: B:33:0x0225  */
                            /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:36:0x0200  */
                            /* JADX WARN: Removed duplicated region for block: B:37:0x01cc  */
                            /* JADX WARN: Removed duplicated region for block: B:38:0x01a4  */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                                Intrinsics.checkNotNullParameter(Card, "$this$Card");
                                ComposerKt.sourceInformation($composer3, "C72@3282L700:CarbTuneScreen.kt#xkugs2");
                                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1339915842, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:72)");
                                    }
                                    Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                                    Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                                    AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                                    $composer3.startReplaceableGroup(-483455358);
                                    ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                    Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv3 = (54 << 3) & 112;
                                    $composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                    CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                    int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                    if (!($composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer3.startReusableNode();
                                    if ($composer3.getInserting()) {
                                        $composer3.createNode(factory$iv$iv$iv5);
                                    } else {
                                        $composer3.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i7 = ($changed$iv$iv$iv3 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                        ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                        int i8 = ((54 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                                        TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                        CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                                        CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                                        CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                                        CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
                                    int i72 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                    int i82 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                    CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                                    CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                                    CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                                    CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
                        ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$CarbTuneScreenKt.INSTANCE.m6681getLambda1$app_debug(), $composer2, (($dirty2 >> 9) & 14) | 805306416, 492);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $composer2.endReplaceableGroup();
                        $composer2.endNode();
                        $composer2.endReplaceableGroup();
                        $composer2.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        altitudeMeters2 = altitudeMeters3;
                    }
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                    skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                    $composer2.startReplaceableGroup(2058660585);
                    int i52 = ($changed$iv$iv$iv2 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                    int i62 = ((384 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, 1847923602, "C44@1888L104,45@2005L108:CarbTuneScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("CARB TUNE & JETTING ASSISTANT", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                    TextKt.m2730Text4IGK_g("Acoustic Idle Tuning & Altitude Air Density Compensation", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 751678087, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x02a0  */
                        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                            Intrinsics.checkNotNullParameter(Card, "$this$Card");
                            ComposerKt.sourceInformation($composer3, "C54@2369L658:CarbTuneScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(751678087, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:54)");
                                }
                                Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                double d2 = altitudeMeters3;
                                int i7 = airDensityPct;
                                String str = jettingAdvice;
                                $composer3.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv3 = (54 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    $composer3.createNode(factory$iv$iv$iv5);
                                } else {
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i82 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                    int i92 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                    TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                                    TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                                    TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
                                ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                                TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                                TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -1339915842, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$3
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x01a1  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x01b6  */
                        /* JADX WARN: Removed duplicated region for block: B:30:0x01fd  */
                        /* JADX WARN: Removed duplicated region for block: B:33:0x0225  */
                        /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:36:0x0200  */
                        /* JADX WARN: Removed duplicated region for block: B:37:0x01cc  */
                        /* JADX WARN: Removed duplicated region for block: B:38:0x01a4  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                            Intrinsics.checkNotNullParameter(Card, "$this$Card");
                            ComposerKt.sourceInformation($composer3, "C72@3282L700:CarbTuneScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1339915842, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:72)");
                                }
                                Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                                AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                                $composer3.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv3 = (54 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    $composer3.createNode(factory$iv$iv$iv5);
                                } else {
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i72 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                    int i82 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                    CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                                    CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                                    CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                                    CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
                                int i722 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                int i822 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                                CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                                CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                                CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
                    ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$CarbTuneScreenKt.INSTANCE.m6681getLambda1$app_debug(), $composer2, (($dirty2 >> 9) & 14) | 805306416, 492);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    altitudeMeters2 = altitudeMeters3;
                }
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i32 = ($changed$iv$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
            int i42 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 1248918207, "C43@1815L308,50@2210L39,49@2170L867,68@3123L39,67@3083L909,86@4082L48,84@4002L296:CarbTuneScreen.kt#xkugs2");
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
            CompositionLocalMap localMap$iv$iv32 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv42 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv2);
            int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i522 = ($changed$iv$iv$iv22 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                int i622 = ((384 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 1847923602, "C44@1888L104,45@2005L108:CarbTuneScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g("CARB TUNE & JETTING ASSISTANT", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                TextKt.m2730Text4IGK_g("Acoustic Idle Tuning & Altitude Air Density Compensation", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 751678087, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x02a0  */
                    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer3, "C54@2369L658:CarbTuneScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(751678087, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:54)");
                            }
                            Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                            double d2 = altitudeMeters3;
                            int i7 = airDensityPct;
                            String str = jettingAdvice;
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                $composer3.createNode(factory$iv$iv$iv5);
                            } else {
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i822 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                int i922 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                                TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                                TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
                            ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                            TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                            TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -1339915842, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$3
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01a1  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x01b6  */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01fd  */
                    /* JADX WARN: Removed duplicated region for block: B:33:0x0225  */
                    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:36:0x0200  */
                    /* JADX WARN: Removed duplicated region for block: B:37:0x01cc  */
                    /* JADX WARN: Removed duplicated region for block: B:38:0x01a4  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer3, "C72@3282L700:CarbTuneScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1339915842, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:72)");
                            }
                            Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                $composer3.createNode(factory$iv$iv$iv5);
                            } else {
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i722 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                int i822 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                                CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                                CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                                CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                                CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
                            int i7222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i8222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                            CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                            CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                            CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
                ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$CarbTuneScreenKt.INSTANCE.m6681getLambda1$app_debug(), $composer2, (($dirty2 >> 9) & 14) | 805306416, 492);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
                altitudeMeters2 = altitudeMeters3;
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
            skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i5222 = ($changed$iv$iv$iv22 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
            int i6222 = ((384 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 1847923602, "C44@1888L104,45@2005L108:CarbTuneScreen.kt#xkugs2");
            TextKt.m2730Text4IGK_g("CARB TUNE & JETTING ASSISTANT", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
            TextKt.m2730Text4IGK_g("Acoustic Idle Tuning & Altitude Air Density Compensation", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3462, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 751678087, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x02a0  */
                /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer3, "C54@2369L658:CarbTuneScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(751678087, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:54)");
                        }
                        Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                        Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                        double d2 = altitudeMeters3;
                        int i7 = airDensityPct;
                        String str = jettingAdvice;
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv3 = (54 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            $composer3.createNode(factory$iv$iv$iv5);
                        } else {
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i9222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                            TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                            TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
                        ComposerKt.sourceInformationMarkerStart($composer3, -1326849683, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("🏔️ ALTITUDE AIR DENSITY COMPENSATION", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                        TextKt.m2730Text4IGK_g("Barometric Altitude: " + ((int) d2) + " meters", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                        TextKt.m2730Text4IGK_g("Air Density Index: " + i7 + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer3, 6);
                        TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
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
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(10)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer2, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, -1339915842, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$1$3
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01a1  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x01b6  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x01fd  */
                /* JADX WARN: Removed duplicated region for block: B:33:0x0225  */
                /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:36:0x0200  */
                /* JADX WARN: Removed duplicated region for block: B:37:0x01cc  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x01a4  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer3, int $changed2) {
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer3, "C72@3282L700:CarbTuneScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1339915842, $changed2, -1, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:72)");
                        }
                        Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                        Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        AudioAnalysisResult audioAnalysisResult = AudioAnalysisResult.this;
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv3 = (54 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            $composer3.createNode(factory$iv$iv$iv5);
                        } else {
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i7222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i8222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                            CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                            CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                            CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                            CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
                        int i72222 = ($changed$iv$iv$iv3 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance32222 = ColumnScopeInstance.INSTANCE;
                        int i82222 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1325942685, "C76@3439L100,77@3556L85,78@3658L107,79@3782L67,80@3866L102:CarbTuneScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("🎤 ACOUSTIC IDLE STABILITY", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                        CarbTuneScreenKt.TuneRow("Engine Audio State", !audioAnalysisResult.isEngineRunning() ? "ACTIVE" : "STOPPED", $composer3, 6);
                        CarbTuneScreenKt.TuneRow("Live Audio RPM", !audioAnalysisResult.isEngineRunning() ? audioAnalysisResult.getEstimatedRpm() + " RPM" : "ENGINE OFF", $composer3, 6);
                        CarbTuneScreenKt.TuneRow("Idle Hunting Variation", "±" + audioAnalysisResult.getRpmVariation() + " RPM", $composer3, 6);
                        CarbTuneScreenKt.TuneRow("Idle Stability Verdict", !audioAnalysisResult.isIdleStable() ? "STABLE IDLE" : "HUNTING / UNSTABLE", $composer3, 6);
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
            ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$CarbTuneScreenKt.INSTANCE.m6681getLambda1$app_debug(), $composer2, (($dirty2 >> 9) & 14) | 805306416, 492);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
            altitudeMeters2 = altitudeMeters3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final double d2 = altitudeMeters2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$CarbTuneScreen$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) {
                    CarbTuneScreenKt.CarbTuneScreen(AudioAnalysisResult.this, temperatureCelsius, d2, onBackToMenu, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0113, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1.rememberedValue(), java.lang.Integer.valueOf(r55)) != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void TuneRow(final String label, final String value, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-958790822);
        ComposerKt.sourceInformation($composer3, "C(TuneRow)96@4376L275:CarbTuneScreen.kt#xkugs2");
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
                ComposerKt.traceEventStart(-958790822, $dirty2, -1, "com.cgs.atvobserver.ui.screens.TuneRow (CarbTuneScreen.kt:95)");
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
            ComposerKt.sourceInformationMarkerStart($composer3, -49190673, "C100@4498L55,101@4562L83:CarbTuneScreen.kt#xkugs2");
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
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.CarbTuneScreenKt$TuneRow$2
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
                    CarbTuneScreenKt.TuneRow(label, value, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
