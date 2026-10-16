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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PocketTripScreen.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class ComposableSingletons$PocketTripScreenKt {
    public static final ComposableSingletons$PocketTripScreenKt INSTANCE = new ComposableSingletons$PocketTripScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f115lambda1 = ComposableLambdaKt.composableLambdaInstance(-1135497452, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ComposableSingletons$PocketTripScreenKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope Button, Composer $composer, int $changed) {
            Intrinsics.checkNotNullParameter(Button, "$this$Button");
            ComposerKt.sourceInformation($composer, "C113@5137L78:PocketTripScreen.kt#xkugs2");
            if (($changed & 81) == 16 && $composer.getSkipping()) {
                $composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1135497452, $changed, -1, "com.cgs.atvobserver.ui.screens.ComposableSingletons$PocketTripScreenKt.lambda-1.<anonymous> (PocketTripScreen.kt:113)");
            }
            TextKt.m2730Text4IGK_g("END POCKET RIDE & SAVE", (Modifier) null, 0L, TextUnitKt.getSp(16), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199686, 0, 131030);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$app_debug, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m6711getLambda1$app_debug() {
        return f115lambda1;
    }
}
