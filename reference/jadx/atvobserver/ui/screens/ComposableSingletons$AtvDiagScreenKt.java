package com.cgs.atvobserver.ui.screens;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.TextUnitKt;
import com.cgs.atvobserver.ui.theme.ColorKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AtvDiagScreen.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class ComposableSingletons$AtvDiagScreenKt {
    public static final ComposableSingletons$AtvDiagScreenKt INSTANCE = new ComposableSingletons$AtvDiagScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f82lambda1 = ComposableLambdaKt.composableLambdaInstance(-1179618732, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$AtvDiagScreenKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C81@3317L20:AtvDiagScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1179618732, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$AtvDiagScreenKt.lambda-1.<anonymous> (AtvDiagScreen.kt:81)");
            }
            TextKt.m2730Text4IGK_g("YES (FAN ON)", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f83lambda2 = ComposableLambdaKt.composableLambdaInstance(526522557, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$AtvDiagScreenKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C85@3557L20:AtvDiagScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(526522557, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$AtvDiagScreenKt.lambda-2.<anonymous> (AtvDiagScreen.kt:85)");
            }
            TextKt.m2730Text4IGK_g("NO (FAN OFF)", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f84lambda3 = ComposableLambdaKt.composableLambdaInstance(1088274459, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$AtvDiagScreenKt$lambda-3$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C138@6114L71:AtvDiagScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1088274459, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$AtvDiagScreenKt.lambda-3.<anonymous> (AtvDiagScreen.kt:138)");
            }
            TextKt.m2730Text4IGK_g("RETURN TO MAIN MENU", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3462, 0, 131058);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6678getLambda1$app_debug() {
        return f82lambda1;
    }

    /* renamed from: getLambda-2$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6679getLambda2$app_debug() {
        return f83lambda2;
    }

    /* renamed from: getLambda-3$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6680getLambda3$app_debug() {
        return f84lambda3;
    }
}
