package com.cgs.atvobserver.ui.screens;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SkippableUpdater;
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
import com.cgs.atvobserver.ui.theme.ColorKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppDiagScreen.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class ComposableSingletons$AppDiagScreenKt {
    public static final ComposableSingletons$AppDiagScreenKt INSTANCE = new ComposableSingletons$AppDiagScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function3<ColumnScope, Composer, Integer, Unit> f80lambda1 = ComposableLambdaKt.composableLambdaInstance(86422951, false, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$AppDiagScreenKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
            invoke(columnScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x01a0  */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void invoke(ColumnScope Card, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Card, "$this$Card");
            ComposerKt.sourceInformation($composer, "C63@2523L330:AppDiagScreen.kt#xkugs2");
            if (($changed & 81) != 16 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(86422951, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$AppDiagScreenKt.lambda-1.<anonymous> (AppDiagScreen.kt:63)");
                }
                Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(12));
                Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
                $composer.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation($composer, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                MeasurePolicy measurePolicy$iv = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv, false, $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv = (54 << 3) & 112;
                $composer.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer, 0);
                CompositionLocalMap localMap$iv$iv = $composer.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv = ComposeUiNode.Companion.getConstructor();
                Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
                int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                    $composer.createNode(factory$iv$iv$iv);
                } else {
                    $composer.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer)), $composer, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                    $composer.startReplaceableGroup(2058660585);
                    int i = ($changed$iv$iv$iv >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    int i2 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, -337912145, "C67@2664L175:AppDiagScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("OVERALL DIAGNOSTIC STATUS: PASS", (Modifier) null, Color.INSTANCE.m4049getWhite0d7_KjU(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 196998, 0, 131034);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endReplaceableGroup();
                    $composer.endNode();
                    $composer.endReplaceableGroup();
                    $composer.endReplaceableGroup();
                    if (!ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer)), $composer, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                $composer.startReplaceableGroup(2058660585);
                int i3 = ($changed$iv$iv$iv >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i22 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -337912145, "C67@2664L175:AppDiagScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g("OVERALL DIAGNOSTIC STATUS: PASS", (Modifier) null, Color.INSTANCE.m4049getWhite0d7_KjU(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 196998, 0, 131034);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endReplaceableGroup();
                $composer.endNode();
                $composer.endReplaceableGroup();
                $composer.endReplaceableGroup();
                if (!ComposerKt.isTraceInProgress()) {
                }
            } else {
                $composer.skipToGroupEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f81lambda2 = ComposableLambdaKt.composableLambdaInstance(2050814318, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$AppDiagScreenKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C80@3088L53:AppDiagScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2050814318, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$AppDiagScreenKt.lambda-2.<anonymous> (AppDiagScreen.kt:80)");
            }
            TextKt.m2730Text4IGK_g("RETURN TO MAIN MENU", (Modifier) null, ColorKt.getCgsTextSecondary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$app_debug, reason: not valid java name */
    public final Function3<ColumnScope, Composer, Integer, Unit> m6676getLambda1$app_debug() {
        return f80lambda1;
    }

    /* renamed from: getLambda-2$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6677getLambda2$app_debug() {
        return f81lambda2;
    }
}
