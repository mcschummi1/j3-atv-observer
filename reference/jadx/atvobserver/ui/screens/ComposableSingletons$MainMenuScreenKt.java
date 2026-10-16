package com.cgs.atvobserver.ui.screens;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
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

/* compiled from: MainMenuScreen.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class ComposableSingletons$MainMenuScreenKt {
    public static final ComposableSingletons$MainMenuScreenKt INSTANCE = new ComposableSingletons$MainMenuScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f100lambda1 = ComposableLambdaKt.composableLambdaInstance(1684591475, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C138@6451L242:MainMenuScreen.kt#xkugs2");
            if (($changed & 81) != 16 || !$composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1684591475, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt.lambda-1.<anonymous> (MainMenuScreen.kt:138)");
                }
                FontWeight bold = FontWeight.INSTANCE.getBold();
                TextKt.m2730Text4IGK_g("🧪 TEST", (Modifier) null, Color.INSTANCE.m4049getWhite0d7_KjU(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200070, 0, 131026);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            $composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f101lambda2 = ComposableLambdaKt.composableLambdaInstance(-157918436, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C211@9105L63:MainMenuScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-157918436, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt.lambda-2.<anonymous> (MainMenuScreen.kt:211)");
            }
            TextKt.m2730Text4IGK_g("LOGS", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3462, 0, 131058);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f102lambda3 = ComposableLambdaKt.composableLambdaInstance(-906933549, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt$lambda-3$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C221@9566L89:MainMenuScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-906933549, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt.lambda-3.<anonymous> (MainMenuScreen.kt:221)");
            }
            TextKt.m2730Text4IGK_g("SERVICE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200070, 0, 131026);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-4, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f103lambda4 = ComposableLambdaKt.composableLambdaInstance(-1743728492, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt$lambda-4$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C231@10054L88:MainMenuScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1743728492, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$MainMenuScreenKt.lambda-4.<anonymous> (MainMenuScreen.kt:231)");
            }
            TextKt.m2730Text4IGK_g("CONFIG", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200070, 0, 131026);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6696getLambda1$app_debug() {
        return f100lambda1;
    }

    /* renamed from: getLambda-2$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6697getLambda2$app_debug() {
        return f101lambda2;
    }

    /* renamed from: getLambda-3$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6698getLambda3$app_debug() {
        return f102lambda3;
    }

    /* renamed from: getLambda-4$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6699getLambda4$app_debug() {
        return f103lambda4;
    }
}
