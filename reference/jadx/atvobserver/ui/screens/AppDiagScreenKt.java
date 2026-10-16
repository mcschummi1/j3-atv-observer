package com.cgs.atvobserver.ui.screens;

import android.os.Build;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.core.app.NotificationCompat;
import com.cgs.atvobserver.AppVersion;
import com.cgs.atvobserver.ui.theme.ColorKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppDiagScreen.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a%\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0003¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"AppDiagScreen", "", "isGpsAvailable", "", "onBackToMenu", "Lkotlin/Function0;", "(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "DiagRow", "item", "", NotificationCompat.CATEGORY_STATUS, "isOk", "(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V", "app_debug"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class AppDiagScreenKt {
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ab, code lost:
    
        if (r1 == null) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0269  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void AppDiagScreen(final boolean isGpsAvailable, final Function0<Unit> onBackToMenu, Composer $composer, final int $changed) {
        Function0 factory$iv$iv$iv;
        Function0 factory$iv$iv$iv2;
        Function0 factory$iv$iv$iv3;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(onBackToMenu, "onBackToMenu");
        Composer $composer3 = $composer.startRestartGroup(1814478344);
        ComposerKt.sourceInformation($composer3, "C(AppDiagScreen)25@831L2326:AppDiagScreen.kt#xkugs2");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(isGpsAvailable) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(onBackToMenu) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1814478344, $dirty2, -1, "com.cgs.atvobserver.ui.screens.AppDiagScreen (AppDiagScreen.kt:21)");
            }
            String str = Build.MODEL;
            if (str == null) {
                str = "Device";
            }
            final String deviceModel = str;
            String str2 = Build.MANUFACTURER;
            if (str2 != null) {
                if (str2.length() > 0) {
                    StringBuilder sb = new StringBuilder();
                    char it = str2.charAt(0);
                    String valueOf = String.valueOf(it);
                    Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
                    String upperCase = valueOf.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    StringBuilder append = sb.append((Object) upperCase);
                    String substring = str2.substring(1);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    str2 = append.append(substring).toString();
                }
            }
            str2 = "";
            final String deviceBrand = str2;
            Modifier m828padding3ABfNKs = PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(16));
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
            Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(m828padding3ABfNKs);
            int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                factory$iv$iv$iv = factory$iv$iv$iv4;
                $composer3.createNode(factory$iv$iv$iv);
            } else {
                factory$iv$iv$iv = factory$iv$iv$iv4;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                factory$iv$iv$iv2 = factory$iv$iv$iv;
            } else {
                factory$iv$iv$iv2 = factory$iv$iv$iv;
                if (Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i = ($changed$iv$iv$iv >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                    int i2 = ((438 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 435191106, "C33@1093L300,39@1443L39,38@1403L914,59@2367L37,58@2327L536,77@2953L48,75@2873L278:AppDiagScreen.kt#xkugs2");
                    Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                    $composer3.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                    Modifier modifier$iv = Modifier.INSTANCE;
                    Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer3, ((384 >> 3) & 14) | ((384 >> 3) & 112));
                    int $changed$iv$iv2 = (384 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv);
                    int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if (!$composer3.getInserting()) {
                        factory$iv$iv$iv3 = factory$iv$iv$iv5;
                        $composer3.createNode(factory$iv$iv$iv3);
                    } else {
                        factory$iv$iv$iv3 = factory$iv$iv$iv5;
                        $composer3.useNode();
                    }
                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                        skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i3 = ($changed$iv$iv$iv2 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        int i4 = ((384 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, -151322220, "C34@1166L105,35@1284L99:AppDiagScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("APP DIAG & HARDWARE CHECK", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                        TextKt.m2730Text4IGK_g(deviceBrand + " " + deviceModel + " | v1.1.6-Mk.I (Build 16)", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(12)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, -10109456, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AppDiagScreenKt$AppDiagScreen$1$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                                invoke(columnScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:24:0x01a2  */
                            /* JADX WARN: Removed duplicated region for block: B:27:0x01e6  */
                            /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:30:0x01a4  */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                                Function0 factory$iv$iv$iv6;
                                Intrinsics.checkNotNullParameter(Card, "$this$Card");
                                ComposerKt.sourceInformation($composer4, "C43@1602L705:AppDiagScreen.kt#xkugs2");
                                if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-10109456, $changed2, -1, "com.cgs.atvobserver.ui.screens.AppDiagScreen.<anonymous>.<anonymous> (AppDiagScreen.kt:43)");
                                    }
                                    Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(16));
                                    Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
                                    String str3 = deviceBrand;
                                    String str4 = deviceModel;
                                    boolean z = isGpsAvailable;
                                    $composer4.startReplaceableGroup(-483455358);
                                    ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                    Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv3 = (54 << 3) & 112;
                                    $composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                    CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                    int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                    if (!($composer4.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer4.startReusableNode();
                                    if ($composer4.getInserting()) {
                                        factory$iv$iv$iv6 = factory$iv$iv$iv7;
                                        $composer4.createNode(factory$iv$iv$iv6);
                                    } else {
                                        factory$iv$iv$iv6 = factory$iv$iv$iv7;
                                        $composer4.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                        $composer4.startReplaceableGroup(2058660585);
                                        int i5 = ($changed$iv$iv$iv3 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                        ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                        int i6 = ((54 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                                        AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                                        AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                                        AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                                        AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                                        AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                                        AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                                        AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                                        AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
                                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i52 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                    int i62 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                                    AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                                    AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                                    AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
                        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6676getLambda1$app_debug(), $composer3, 196614, 24);
                        $composer2 = $composer3;
                        ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(48)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6677getLambda2$app_debug(), $composer3, (($dirty2 >> 3) & 14) | 805306416, 492);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer2.endReplaceableGroup();
                        $composer2.endNode();
                        $composer2.endReplaceableGroup();
                        $composer2.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                    skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i32 = ($changed$iv$iv$iv2 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                    int i42 = ((384 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -151322220, "C34@1166L105,35@1284L99:AppDiagScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("APP DIAG & HARDWARE CHECK", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                    TextKt.m2730Text4IGK_g(deviceBrand + " " + deviceModel + " | v1.1.6-Mk.I (Build 16)", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(12)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, -10109456, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AppDiagScreenKt$AppDiagScreen$1$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x01a2  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x01e6  */
                        /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:30:0x01a4  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                            Function0 factory$iv$iv$iv6;
                            Intrinsics.checkNotNullParameter(Card, "$this$Card");
                            ComposerKt.sourceInformation($composer4, "C43@1602L705:AppDiagScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-10109456, $changed2, -1, "com.cgs.atvobserver.ui.screens.AppDiagScreen.<anonymous>.<anonymous> (AppDiagScreen.kt:43)");
                                }
                                Modifier modifier$iv2 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(16));
                                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
                                String str3 = deviceBrand;
                                String str4 = deviceModel;
                                boolean z = isGpsAvailable;
                                $composer4.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv3 = (54 << 3) & 112;
                                $composer4.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                if (!($composer4.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                    factory$iv$iv$iv6 = factory$iv$iv$iv7;
                                    $composer4.createNode(factory$iv$iv$iv6);
                                } else {
                                    factory$iv$iv$iv6 = factory$iv$iv$iv7;
                                    $composer4.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i52 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                    int i62 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                                    AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                                    AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                                    AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                                    AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
                                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i522 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                int i622 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                                AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                                AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                                AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6676getLambda1$app_debug(), $composer3, 196614, 24);
                    $composer2 = $composer3;
                    ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(48)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6677getLambda2$app_debug(), $composer3, (($dirty2 >> 3) & 14) | 805306416, 492);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i5 = ($changed$iv$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
            int i22 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 435191106, "C33@1093L300,39@1443L39,38@1403L914,59@2367L37,58@2327L536,77@2953L48,75@2873L278:AppDiagScreen.kt#xkugs2");
            Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getCenterHorizontally();
            $composer3.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Modifier modifier$iv2 = Modifier.INSTANCE;
            Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv22 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((384 >> 3) & 14) | ((384 >> 3) & 112));
            int $changed$iv$iv22 = (384 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv22 = $composer3.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv52 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv2);
            int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
            }
            $composer3.startReusableNode();
            if (!$composer3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i322 = ($changed$iv$iv$iv22 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                int i422 = ((384 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -151322220, "C34@1166L105,35@1284L99:AppDiagScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g("APP DIAG & HARDWARE CHECK", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
                TextKt.m2730Text4IGK_g(deviceBrand + " " + deviceModel + " | v1.1.6-Mk.I (Build 16)", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(12)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, -10109456, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AppDiagScreenKt$AppDiagScreen$1$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01a2  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x01e6  */
                    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01a4  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                        Function0 factory$iv$iv$iv6;
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer4, "C43@1602L705:AppDiagScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-10109456, $changed2, -1, "com.cgs.atvobserver.ui.screens.AppDiagScreen.<anonymous>.<anonymous> (AppDiagScreen.kt:43)");
                            }
                            Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(16));
                            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
                            String str3 = deviceBrand;
                            String str4 = deviceModel;
                            boolean z = isGpsAvailable;
                            $composer4.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                                factory$iv$iv$iv6 = factory$iv$iv$iv7;
                                $composer4.createNode(factory$iv$iv$iv6);
                            } else {
                                factory$iv$iv$iv6 = factory$iv$iv$iv7;
                                $composer4.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i522 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                int i622 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                                AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                                AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                                AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                                AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i5222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i6222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                            AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                            AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                            AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6676getLambda1$app_debug(), $composer3, 196614, 24);
                $composer2 = $composer3;
                ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(48)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6677getLambda2$app_debug(), $composer3, (($dirty2 >> 3) & 14) | 805306416, 492);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
            skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i3222 = ($changed$iv$iv$iv22 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
            int i4222 = ((384 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -151322220, "C34@1166L105,35@1284L99:AppDiagScreen.kt#xkugs2");
            TextKt.m2730Text4IGK_g("APP DIAG & HARDWARE CHECK", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(20), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200070, 0, 131026);
            TextKt.m2730Text4IGK_g(deviceBrand + " " + deviceModel + " | v1.1.6-Mk.I (Build 16)", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endReplaceableGroup();
            $composer3.endNode();
            $composer3.endReplaceableGroup();
            $composer3.endReplaceableGroup();
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(12)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, -10109456, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AppDiagScreenKt$AppDiagScreen$1$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01a2  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x01e6  */
                /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:30:0x01a4  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                    Function0 factory$iv$iv$iv6;
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C43@1602L705:AppDiagScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-10109456, $changed2, -1, "com.cgs.atvobserver.ui.screens.AppDiagScreen.<anonymous>.<anonymous> (AppDiagScreen.kt:43)");
                        }
                        Modifier modifier$iv22 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(16));
                        Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
                        String str3 = deviceBrand;
                        String str4 = deviceModel;
                        boolean z = isGpsAvailable;
                        $composer4.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv3 = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv6 = factory$iv$iv$iv7;
                            $composer4.createNode(factory$iv$iv$iv6);
                        } else {
                            factory$iv$iv$iv6 = factory$iv$iv$iv7;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i5222 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                            int i6222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                            AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                            AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                            AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                            AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i52222 = ($changed$iv$iv$iv3 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance32222 = ColumnScopeInstance.INSTANCE;
                        int i62222 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -829954951, "C47@1760L53,48@1830L58,49@1905L82,50@2004L40,51@2061L36,52@2114L41,53@2172L55,54@2244L49:AppDiagScreen.kt#xkugs2");
                        AppDiagScreenKt.DiagRow("App Version", AppVersion.FULL_DISPLAY, true, $composer4, 438);
                        AppDiagScreenKt.DiagRow("Device Model", str3 + " " + str4, true, $composer4, 390);
                        AppDiagScreenKt.DiagRow("GPS Receiver", !z ? "OK" : "SEARCHING", z, $composer4, 6);
                        AppDiagScreenKt.DiagRow("Microphone Access", "OK", true, $composer4, 438);
                        AppDiagScreenKt.DiagRow("Camera Access", "OK", true, $composer4, 438);
                        AppDiagScreenKt.DiagRow("Local Storage & DB", "OK", true, $composer4, 438);
                        AppDiagScreenKt.DiagRow("Process Priority", "HIGH (OOM Score 0)", true, $composer4, 438);
                        AppDiagScreenKt.DiagRow("Weather Service", "OFFLINE READY", true, $composer4, 438);
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
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6676getLambda1$app_debug(), $composer3, 196614, 24);
            $composer2 = $composer3;
            ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(48)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$AppDiagScreenKt.INSTANCE.m6677getLambda2$app_debug(), $composer3, (($dirty2 >> 3) & 14) | 805306416, 492);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AppDiagScreenKt$AppDiagScreen$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i6) {
                    AppDiagScreenKt.AppDiagScreen(isGpsAvailable, onBackToMenu, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DiagRow(final String item, final String status, final boolean isOk, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(957201811);
        ComposerKt.sourceInformation($composer3, "C(DiagRow)P(1,2)87@3244L350:AppDiagScreen.kt#xkugs2");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(item) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changed(status) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer3.changed(isOk) ? 256 : 128;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 731) != 146 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(957201811, $dirty2, -1, "com.cgs.atvobserver.ui.screens.DiagRow (AppDiagScreen.kt:86)");
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
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i = ($changed$iv$iv$iv >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i2 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -711588809, "C91@3366L52,92@3427L161:AppDiagScreen.kt#xkugs2");
                $composer2 = $composer3;
                TextKt.m2730Text4IGK_g(item, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, ($dirty2 & 14) | 3456, 0, 131058);
                TextKt.m2730Text4IGK_g(status, (Modifier) null, !isOk ? ColorKt.getCgsGreen() : ColorKt.getCgsYellow(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 3) & 14) | 199680, 0, 131026);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i3 = ($changed$iv$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            int i22 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -711588809, "C91@3366L52,92@3427L161:AppDiagScreen.kt#xkugs2");
            $composer2 = $composer3;
            TextKt.m2730Text4IGK_g(item, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, ($dirty2 & 14) | 3456, 0, 131058);
            TextKt.m2730Text4IGK_g(status, (Modifier) null, !isOk ? ColorKt.getCgsGreen() : ColorKt.getCgsYellow(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 3) & 14) | 199680, 0, 131026);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.AppDiagScreenKt$DiagRow$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i4) {
                    AppDiagScreenKt.DiagRow(item, status, isOk, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
