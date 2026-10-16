package com.cgs.atvobserver.ui.screens;

import android.os.Build;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
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
import androidx.compose.ui.unit.TextUnitKt;
import com.cgs.atvobserver.data.model.RideMode;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.ui.theme.ColorKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainMenuScreen.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001ag\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\tH\u0007¢\u0006\u0002\u0010\f\u001aB\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\tH\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u0017"}, d2 = {"MainMenuScreen", "", "activeVehicle", "Lcom/cgs/atvobserver/data/model/VehicleType;", "onSwitchVehicle", "Lkotlin/Function1;", "onSelectMode", "Lcom/cgs/atvobserver/data/model/RideMode;", "onOpenLogs", "Lkotlin/Function0;", "onOpenMaintenance", "onOpenConfig", "(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "ModeButton", "title", "", "subtitle", "backgroundColor", "Landroidx/compose/ui/graphics/Color;", "textColor", "onClick", "ModeButton-t6yy7ic", "(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "app_debug"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class MainMenuScreenKt {
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0110, code lost:
    
        if (r1 == null) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x062d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x063d  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0686  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x06e0  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x06ef  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x073a  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0749  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x079a  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x07a9  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0801  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x08c1  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x08cd  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0900  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0ad0  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0ade  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0b50  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0ad3  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0916 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x08d1  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x080e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x07f4  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x07b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x079c  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0756 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x073c  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x06fc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x06a2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x064a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x062f  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x054d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void MainMenuScreen(final VehicleType activeVehicle, final Function1<? super VehicleType, Unit> onSwitchVehicle, final Function1<? super RideMode, Unit> onSelectMode, final Function0<Unit> onOpenLogs, final Function0<Unit> onOpenMaintenance, final Function0<Unit> onOpenConfig, Composer $composer, final int $changed) {
        Function0 factory$iv$iv$iv;
        Composer $composer2;
        Function0 factory$iv$iv$iv2;
        Function0 factory$iv$iv$iv3;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        boolean invalid$iv;
        Object it$iv;
        Object value$iv;
        boolean invalid$iv2;
        Object it$iv2;
        Object value$iv2;
        boolean invalid$iv3;
        Object it$iv3;
        Object value$iv3;
        boolean invalid$iv4;
        Object it$iv4;
        Object value$iv4;
        boolean invalid$iv5;
        Object it$iv5;
        Object value$iv5;
        boolean invalid$iv6;
        Object it$iv6;
        Object value$iv6;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        boolean invalid$iv7;
        Object value$iv7;
        Intrinsics.checkNotNullParameter(activeVehicle, "activeVehicle");
        Intrinsics.checkNotNullParameter(onSwitchVehicle, "onSwitchVehicle");
        Intrinsics.checkNotNullParameter(onSelectMode, "onSelectMode");
        Intrinsics.checkNotNullParameter(onOpenLogs, "onOpenLogs");
        Intrinsics.checkNotNullParameter(onOpenMaintenance, "onOpenMaintenance");
        Intrinsics.checkNotNullParameter(onOpenConfig, "onOpenConfig");
        Composer $composer3 = $composer.startRestartGroup(1784111826);
        ComposerKt.sourceInformation($composer3, "C(MainMenuScreen)P(!1,5,4,2,3)39@1412L21,34@1254L8918:MainMenuScreen.kt#xkugs2");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(activeVehicle) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(onSwitchVehicle) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer3.changedInstance(onSelectMode) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            $dirty |= $composer3.changedInstance(onOpenLogs) ? 2048 : 1024;
        }
        if ((57344 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(onOpenMaintenance) ? 16384 : 8192;
        }
        if ((458752 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(onOpenConfig) ? 131072 : 65536;
        }
        int $dirty2 = $dirty;
        if ((374491 & $dirty2) == 74898 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1784111826, $dirty2, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen (MainMenuScreen.kt:29)");
            }
            String deviceModel = Build.MODEL;
            if (deviceModel == null) {
                deviceModel = "Device";
            }
            String deviceBrand = Build.MANUFACTURER;
            if (deviceBrand != null) {
                if (deviceBrand.length() > 0) {
                    StringBuilder sb = new StringBuilder();
                    char it = deviceBrand.charAt(0);
                    String valueOf = String.valueOf(it);
                    Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
                    String upperCase = valueOf.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    StringBuilder append = sb.append((Object) upperCase);
                    String substring = deviceBrand.substring(1);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    deviceBrand = append.append(substring).toString();
                }
            }
            deviceBrand = "";
            String dynamicTitle = (deviceBrand + " " + deviceModel + " OBSERVER").toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(dynamicTitle, "toUpperCase(...)");
            Modifier verticalScroll$default = ScrollKt.verticalScroll$default(PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(10)), ScrollKt.rememberScrollState(0, $composer3, 0, 1), false, null, false, 14, null);
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            $composer3.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(spaceBetween, centerHorizontally, $composer3, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            int $changed$iv$iv = (432 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(verticalScroll$default);
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
            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
            }
            skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i = ($changed$iv$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i2 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 81178425, "C44@1615L5168,151@6853L1690,200@8609L1557:MainMenuScreen.kt#xkugs2");
            Alignment.Horizontal centerHorizontally2 = Alignment.INSTANCE.getCenterHorizontally();
            Modifier m832paddingqDBjuR0$default = PaddingKt.m832paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, Dp.m6360constructorimpl(2), 0.0f, 0.0f, 13, null);
            $composer3.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, centerHorizontally2, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            int $changed$iv$iv2 = (390 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(m832paddingqDBjuR0$default);
            $composer2 = $composer3;
            int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                factory$iv$iv$iv2 = factory$iv$iv$iv5;
                $composer3.createNode(factory$iv$iv$iv2);
            } else {
                factory$iv$iv$iv2 = factory$iv$iv$iv5;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv4.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i3 = ($changed$iv$iv$iv2 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                int i4 = ((390 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 1873787471, "C48@1763L175,54@1951L177,60@2142L40,64@2303L39,63@2259L4514:MainMenuScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g(dynamicTitle, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(17), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                TextKt.m2730Text4IGK_g("Catalin Garage Standard (CGS) v1.1.6-Mk.I (Build 16)", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer3, 6);
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, -166904400, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x022e  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x023a  */
                    /* JADX WARN: Removed duplicated region for block: B:35:0x02f2  */
                    /* JADX WARN: Removed duplicated region for block: B:38:0x0371  */
                    /* JADX WARN: Removed duplicated region for block: B:43:0x03c7  */
                    /* JADX WARN: Removed duplicated region for block: B:46:0x043f  */
                    /* JADX WARN: Removed duplicated region for block: B:51:0x0495  */
                    /* JADX WARN: Removed duplicated region for block: B:54:0x050d  */
                    /* JADX WARN: Removed duplicated region for block: B:59:0x0563  */
                    /* JADX WARN: Removed duplicated region for block: B:62:0x05d4  */
                    /* JADX WARN: Removed duplicated region for block: B:67:0x064c  */
                    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:71:0x05e1 A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:72:0x0568  */
                    /* JADX WARN: Removed duplicated region for block: B:74:0x051a A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:75:0x049a  */
                    /* JADX WARN: Removed duplicated region for block: B:77:0x044c A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:78:0x03cc  */
                    /* JADX WARN: Removed duplicated region for block: B:80:0x037e A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:81:0x02f7  */
                    /* JADX WARN: Removed duplicated region for block: B:84:0x0240  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                        Function0 factory$iv$iv$iv6;
                        Function0 factory$iv$iv$iv7;
                        Composer $this$Layout_u24lambda_u240$iv$iv5;
                        boolean invalid$iv8;
                        Object it$iv7;
                        Object value$iv8;
                        boolean invalid$iv9;
                        Object it$iv8;
                        Object value$iv9;
                        boolean invalid$iv10;
                        Object it$iv9;
                        Object value$iv10;
                        boolean invalid$iv11;
                        Object it$iv10;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(Card, "$this$Card");
                        ComposerKt.sourceInformation($composer4, "C68@2477L4282:MainMenuScreen.kt#xkugs2");
                        if (($changed2 & 81) == 16 && $composer4.getSkipping()) {
                            $composer4.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-166904400, $changed2, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:68)");
                        }
                        Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4));
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                        final VehicleType vehicleType = VehicleType.this;
                        final Function1<VehicleType, Unit> function1 = onSwitchVehicle;
                        $composer4.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv, $composer4, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                        int $changed$iv$iv3 = (390 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv);
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv6 = factory$iv$iv$iv8;
                            $composer4.createNode(factory$iv$iv$iv6);
                        } else {
                            factory$iv$iv$iv6 = factory$iv$iv$iv8;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i5 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                            int i6 = ((390 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -1523887063, "C72@2651L80,73@2752L40,74@2813L3928:MainMenuScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("ACTIVE PROFILE / SANDBOX MODE", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(9), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 131058);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(2)), $composer4, 6);
                            Modifier modifier$iv2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                            $composer4.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            int $changed$iv = ((54 >> 3) & 14) | ((54 >> 3) & 112);
                            MeasurePolicy measurePolicy$iv4 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, $changed$iv);
                            int $changed$iv$iv4 = (54 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv4 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv9 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                            int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                                factory$iv$iv$iv7 = factory$iv$iv$iv9;
                                $composer4.useNode();
                            } else {
                                factory$iv$iv$iv7 = factory$iv$iv$iv9;
                                $composer4.createNode(factory$iv$iv$iv7);
                            }
                            $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i7 = ($changed$iv$iv$iv4 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i8 = ((54 >> 6) & 112) | 6;
                                RowScope $this$invoke_u24lambda_u245_u24lambda_u244 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                                ButtonColors m1872buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654674115);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv8 = $composer4.changed(function1);
                                it$iv7 = $composer4.rememberedValue();
                                if (!invalid$iv8 && it$iv7 != Composer.INSTANCE.getEmpty()) {
                                    value$iv8 = it$iv7;
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs, false, m1098RoundedCornerShape0680j_4, m1872buttonColorsro_MJ88, null, null, m822PaddingValuesYgX7TsA, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA2 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs2 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654704201);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv9 = $composer4.changed(function1);
                                    it$iv8 = $composer4.rememberedValue();
                                    if (!invalid$iv9 && it$iv8 != Composer.INSTANCE.getEmpty()) {
                                        value$iv9 = it$iv8;
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs2, false, m1098RoundedCornerShape0680j_42, m1872buttonColorsro_MJ882, null, null, m822PaddingValuesYgX7TsA2, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                            {
                                                super(3);
                                            }

                                            @Override // kotlin.jvm.functions.Function3
                                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                                invoke(rowScope, composer, num.intValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                                ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                                    }
                                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                                    TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                $composer5.skipToGroupEnd();
                                            }
                                        }), $composer4, 817889280, 356);
                                        ButtonColors m1872buttonColorsro_MJ883 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                        RoundedCornerShape m1098RoundedCornerShape0680j_43 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                        PaddingValues m822PaddingValuesYgX7TsA3 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                        Modifier m863height3ABfNKs3 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                        $composer4.startReplaceableGroup(1654734950);
                                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                        invalid$iv10 = $composer4.changed(function1);
                                        it$iv9 = $composer4.rememberedValue();
                                        if (!invalid$iv10 && it$iv9 != Composer.INSTANCE.getEmpty()) {
                                            value$iv10 = it$iv9;
                                            $composer4.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs3, false, m1098RoundedCornerShape0680j_43, m1872buttonColorsro_MJ883, null, null, m822PaddingValuesYgX7TsA3, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                                {
                                                    super(3);
                                                }

                                                @Override // kotlin.jvm.functions.Function3
                                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                                    invoke(rowScope, composer, num.intValue());
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                                    ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                        }
                                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                                        TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    $composer5.skipToGroupEnd();
                                                }
                                            }), $composer4, 817889280, 356);
                                            ButtonColors m1872buttonColorsro_MJ884 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                            RoundedCornerShape m1098RoundedCornerShape0680j_44 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                            PaddingValues m822PaddingValuesYgX7TsA4 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                            Modifier m863height3ABfNKs4 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                            $composer4.startReplaceableGroup(1654765448);
                                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                            invalid$iv11 = $composer4.changed(function1);
                                            it$iv10 = $composer4.rememberedValue();
                                            if (!invalid$iv11 && it$iv10 != Composer.INSTANCE.getEmpty()) {
                                                value$iv11 = it$iv10;
                                                $composer4.endReplaceableGroup();
                                                ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4, false, m1098RoundedCornerShape0680j_44, m1872buttonColorsro_MJ884, null, null, m822PaddingValuesYgX7TsA4, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                                $composer4.endReplaceableGroup();
                                                $composer4.endNode();
                                                $composer4.endReplaceableGroup();
                                                $composer4.endReplaceableGroup();
                                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                                $composer4.endReplaceableGroup();
                                                $composer4.endNode();
                                                $composer4.endReplaceableGroup();
                                                $composer4.endReplaceableGroup();
                                                if (ComposerKt.isTraceInProgress()) {
                                                    return;
                                                }
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                                    function1.invoke(VehicleType.APP_TEST);
                                                }
                                            };
                                            $composer4.updateRememberedValue(value$iv11);
                                            $composer4.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4, false, m1098RoundedCornerShape0680j_44, m1872buttonColorsro_MJ884, null, null, m822PaddingValuesYgX7TsA4, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                        }
                                        value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                                function1.invoke(VehicleType.DAELIM);
                                            }
                                        };
                                        $composer4.updateRememberedValue(value$iv10);
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs3, false, m1098RoundedCornerShape0680j_43, m1872buttonColorsro_MJ883, null, null, m822PaddingValuesYgX7TsA3, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                            {
                                                super(3);
                                            }

                                            @Override // kotlin.jvm.functions.Function3
                                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                                invoke(rowScope, composer, num.intValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                                ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                    }
                                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                $composer5.skipToGroupEnd();
                                            }
                                        }), $composer4, 817889280, 356);
                                        ButtonColors m1872buttonColorsro_MJ8842 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                        RoundedCornerShape m1098RoundedCornerShape0680j_442 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                        PaddingValues m822PaddingValuesYgX7TsA42 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                        Modifier m863height3ABfNKs42 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                        $composer4.startReplaceableGroup(1654765448);
                                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                        invalid$iv11 = $composer4.changed(function1);
                                        it$iv10 = $composer4.rememberedValue();
                                        if (!invalid$iv11) {
                                            value$iv11 = it$iv10;
                                            $composer4.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42, false, m1098RoundedCornerShape0680j_442, m1872buttonColorsro_MJ8842, null, null, m822PaddingValuesYgX7TsA42, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                        }
                                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                                function1.invoke(VehicleType.APP_TEST);
                                            }
                                        };
                                        $composer4.updateRememberedValue(value$iv11);
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42, false, m1098RoundedCornerShape0680j_442, m1872buttonColorsro_MJ8842, null, null, m822PaddingValuesYgX7TsA42, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                            function1.invoke(VehicleType.MOTOCROSS);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv9);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs2, false, m1098RoundedCornerShape0680j_42, m1872buttonColorsro_MJ882, null, null, m822PaddingValuesYgX7TsA2, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ8832 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_432 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA32 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs32 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654734950);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv10 = $composer4.changed(function1);
                                    it$iv9 = $composer4.rememberedValue();
                                    if (!invalid$iv10) {
                                        value$iv10 = it$iv9;
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32, false, m1098RoundedCornerShape0680j_432, m1872buttonColorsro_MJ8832, null, null, m822PaddingValuesYgX7TsA32, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                            {
                                                super(3);
                                            }

                                            @Override // kotlin.jvm.functions.Function3
                                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                                invoke(rowScope, composer, num.intValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                                ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                    }
                                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                $composer5.skipToGroupEnd();
                                            }
                                        }), $composer4, 817889280, 356);
                                        ButtonColors m1872buttonColorsro_MJ88422 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                        RoundedCornerShape m1098RoundedCornerShape0680j_4422 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                        PaddingValues m822PaddingValuesYgX7TsA422 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                        Modifier m863height3ABfNKs422 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                        $composer4.startReplaceableGroup(1654765448);
                                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                        invalid$iv11 = $composer4.changed(function1);
                                        it$iv10 = $composer4.rememberedValue();
                                        if (!invalid$iv11) {
                                        }
                                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                                function1.invoke(VehicleType.APP_TEST);
                                            }
                                        };
                                        $composer4.updateRememberedValue(value$iv11);
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs422, false, m1098RoundedCornerShape0680j_4422, m1872buttonColorsro_MJ88422, null, null, m822PaddingValuesYgX7TsA422, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                            function1.invoke(VehicleType.DAELIM);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv10);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32, false, m1098RoundedCornerShape0680j_432, m1872buttonColorsro_MJ8832, null, null, m822PaddingValuesYgX7TsA32, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ884222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_44222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA4222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs4222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654765448);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv11 = $composer4.changed(function1);
                                    it$iv10 = $composer4.rememberedValue();
                                    if (!invalid$iv11) {
                                    }
                                    value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                            function1.invoke(VehicleType.APP_TEST);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv11);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222, false, m1098RoundedCornerShape0680j_44222, m1872buttonColorsro_MJ884222, null, null, m822PaddingValuesYgX7TsA4222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                                        function1.invoke(VehicleType.ATV);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv8);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs, false, m1098RoundedCornerShape0680j_4, m1872buttonColorsro_MJ88, null, null, m822PaddingValuesYgX7TsA, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ8822 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_422 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA22 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs22 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654704201);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv9 = $composer4.changed(function1);
                                it$iv8 = $composer4.rememberedValue();
                                if (!invalid$iv9) {
                                    value$iv9 = it$iv8;
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs22, false, m1098RoundedCornerShape0680j_422, m1872buttonColorsro_MJ8822, null, null, m822PaddingValuesYgX7TsA22, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ88322 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_4322 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA322 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs322 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654734950);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv10 = $composer4.changed(function1);
                                    it$iv9 = $composer4.rememberedValue();
                                    if (!invalid$iv10) {
                                    }
                                    value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                            function1.invoke(VehicleType.DAELIM);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv10);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs322, false, m1098RoundedCornerShape0680j_4322, m1872buttonColorsro_MJ88322, null, null, m822PaddingValuesYgX7TsA322, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ8842222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_442222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA42222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs42222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654765448);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv11 = $composer4.changed(function1);
                                    it$iv10 = $composer4.rememberedValue();
                                    if (!invalid$iv11) {
                                    }
                                    value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                            function1.invoke(VehicleType.APP_TEST);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv11);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42222, false, m1098RoundedCornerShape0680j_442222, m1872buttonColorsro_MJ8842222, null, null, m822PaddingValuesYgX7TsA42222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                        function1.invoke(VehicleType.MOTOCROSS);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv9);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs22, false, m1098RoundedCornerShape0680j_422, m1872buttonColorsro_MJ8822, null, null, m822PaddingValuesYgX7TsA22, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ883222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_43222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA3222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs3222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654734950);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv10 = $composer4.changed(function1);
                                it$iv9 = $composer4.rememberedValue();
                                if (!invalid$iv10) {
                                }
                                value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                        function1.invoke(VehicleType.DAELIM);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv10);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs3222, false, m1098RoundedCornerShape0680j_43222, m1872buttonColorsro_MJ883222, null, null, m822PaddingValuesYgX7TsA3222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ88422222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_4422222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA422222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs422222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654765448);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv11 = $composer4.changed(function1);
                                it$iv10 = $composer4.rememberedValue();
                                if (!invalid$iv11) {
                                }
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                        function1.invoke(VehicleType.APP_TEST);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv11);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs422222, false, m1098RoundedCornerShape0680j_4422222, m1872buttonColorsro_MJ88422222, null, null, m822PaddingValuesYgX7TsA422222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                            skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i72 = ($changed$iv$iv$iv4 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i82 = ((54 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u245_u24lambda_u2442 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                            ButtonColors m1872buttonColorsro_MJ885 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_45 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA5 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs5 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654674115);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv8 = $composer4.changed(function1);
                            it$iv7 = $composer4.rememberedValue();
                            if (!invalid$iv8) {
                                value$iv8 = it$iv7;
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs5, false, m1098RoundedCornerShape0680j_45, m1872buttonColorsro_MJ885, null, null, m822PaddingValuesYgX7TsA5, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ88222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_4222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654704201);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv9 = $composer4.changed(function1);
                                it$iv8 = $composer4.rememberedValue();
                                if (!invalid$iv9) {
                                }
                                value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                        function1.invoke(VehicleType.MOTOCROSS);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv9);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs222, false, m1098RoundedCornerShape0680j_4222, m1872buttonColorsro_MJ88222, null, null, m822PaddingValuesYgX7TsA222, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ8832222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_432222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA32222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs32222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654734950);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv10 = $composer4.changed(function1);
                                it$iv9 = $composer4.rememberedValue();
                                if (!invalid$iv10) {
                                }
                                value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                        function1.invoke(VehicleType.DAELIM);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv10);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32222, false, m1098RoundedCornerShape0680j_432222, m1872buttonColorsro_MJ8832222, null, null, m822PaddingValuesYgX7TsA32222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ884222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_44222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA4222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs4222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654765448);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv11 = $composer4.changed(function1);
                                it$iv10 = $composer4.rememberedValue();
                                if (!invalid$iv11) {
                                }
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                        function1.invoke(VehicleType.APP_TEST);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv11);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222222, false, m1098RoundedCornerShape0680j_44222222, m1872buttonColorsro_MJ884222222, null, null, m822PaddingValuesYgX7TsA4222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                                    function1.invoke(VehicleType.ATV);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv8);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs5, false, m1098RoundedCornerShape0680j_45, m1872buttonColorsro_MJ885, null, null, m822PaddingValuesYgX7TsA5, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ882222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_42222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA2222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs2222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654704201);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv9 = $composer4.changed(function1);
                            it$iv8 = $composer4.rememberedValue();
                            if (!invalid$iv9) {
                            }
                            value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                    function1.invoke(VehicleType.MOTOCROSS);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv9);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs2222, false, m1098RoundedCornerShape0680j_42222, m1872buttonColorsro_MJ882222, null, null, m822PaddingValuesYgX7TsA2222, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ88322222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_4322222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA322222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs322222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654734950);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv10 = $composer4.changed(function1);
                            it$iv9 = $composer4.rememberedValue();
                            if (!invalid$iv10) {
                            }
                            value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                    function1.invoke(VehicleType.DAELIM);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv10);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs322222, false, m1098RoundedCornerShape0680j_4322222, m1872buttonColorsro_MJ88322222, null, null, m822PaddingValuesYgX7TsA322222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ8842222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_442222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA42222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs42222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654765448);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv11 = $composer4.changed(function1);
                            it$iv10 = $composer4.rememberedValue();
                            if (!invalid$iv11) {
                            }
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                    function1.invoke(VehicleType.APP_TEST);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv11);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42222222, false, m1098RoundedCornerShape0680j_442222222, m1872buttonColorsro_MJ8842222222, null, null, m822PaddingValuesYgX7TsA42222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                        $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i52 = ($changed$iv$iv$iv3 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                        int i62 = ((390 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1523887063, "C72@2651L80,73@2752L40,74@2813L3928:MainMenuScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("ACTIVE PROFILE / SANDBOX MODE", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(9), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 131058);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(2)), $composer4, 6);
                        Modifier modifier$iv22 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                        $composer4.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                        int $changed$iv2 = ((54 >> 3) & 14) | ((54 >> 3) & 112);
                        MeasurePolicy measurePolicy$iv42 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer4, $changed$iv2);
                        int $changed$iv$iv42 = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv42 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv92 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                        int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i722 = ($changed$iv$iv$iv42 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i822 = ((54 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u245_u24lambda_u24422 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                            ButtonColors m1872buttonColorsro_MJ8852 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_452 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA52 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs52 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654674115);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv8 = $composer4.changed(function1);
                            it$iv7 = $composer4.rememberedValue();
                            if (!invalid$iv8) {
                            }
                            value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                                    function1.invoke(VehicleType.ATV);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv8);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs52, false, m1098RoundedCornerShape0680j_452, m1872buttonColorsro_MJ8852, null, null, m822PaddingValuesYgX7TsA52, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ8822222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_422222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA22222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs22222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654704201);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv9 = $composer4.changed(function1);
                            it$iv8 = $composer4.rememberedValue();
                            if (!invalid$iv9) {
                            }
                            value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                    function1.invoke(VehicleType.MOTOCROSS);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv9);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs22222, false, m1098RoundedCornerShape0680j_422222, m1872buttonColorsro_MJ8822222, null, null, m822PaddingValuesYgX7TsA22222, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ883222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_43222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA3222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs3222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654734950);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv10 = $composer4.changed(function1);
                            it$iv9 = $composer4.rememberedValue();
                            if (!invalid$iv10) {
                            }
                            value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                    function1.invoke(VehicleType.DAELIM);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv10);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs3222222, false, m1098RoundedCornerShape0680j_43222222, m1872buttonColorsro_MJ883222222, null, null, m822PaddingValuesYgX7TsA3222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ88422222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_4422222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA422222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs422222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654765448);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv11 = $composer4.changed(function1);
                            it$iv10 = $composer4.rememberedValue();
                            if (!invalid$iv11) {
                            }
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                    function1.invoke(VehicleType.APP_TEST);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv11);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs422222222, false, m1098RoundedCornerShape0680j_4422222222, m1872buttonColorsro_MJ88422222222, null, null, m822PaddingValuesYgX7TsA422222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                        skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i7222 = ($changed$iv$iv$iv42 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i8222 = ((54 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u245_u24lambda_u244222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                        ButtonColors m1872buttonColorsro_MJ88522 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_4522 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA522 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs522 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654674115);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv8 = $composer4.changed(function1);
                        it$iv7 = $composer4.rememberedValue();
                        if (!invalid$iv8) {
                        }
                        value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                                function1.invoke(VehicleType.ATV);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv8);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs522, false, m1098RoundedCornerShape0680j_4522, m1872buttonColorsro_MJ88522, null, null, m822PaddingValuesYgX7TsA522, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ88222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_4222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654704201);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv9 = $composer4.changed(function1);
                        it$iv8 = $composer4.rememberedValue();
                        if (!invalid$iv9) {
                        }
                        value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                function1.invoke(VehicleType.MOTOCROSS);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv9);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs222222, false, m1098RoundedCornerShape0680j_4222222, m1872buttonColorsro_MJ88222222, null, null, m822PaddingValuesYgX7TsA222222, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ8832222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_432222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA32222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs32222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654734950);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv10 = $composer4.changed(function1);
                        it$iv9 = $composer4.rememberedValue();
                        if (!invalid$iv10) {
                        }
                        value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                function1.invoke(VehicleType.DAELIM);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv10);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32222222, false, m1098RoundedCornerShape0680j_432222222, m1872buttonColorsro_MJ8832222222, null, null, m822PaddingValuesYgX7TsA32222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ884222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_44222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA4222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs4222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654765448);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv11 = $composer4.changed(function1);
                        it$iv10 = $composer4.rememberedValue();
                        if (!invalid$iv11) {
                        }
                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                function1.invoke(VehicleType.APP_TEST);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv11);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222222222, false, m1098RoundedCornerShape0680j_44222222222, m1872buttonColorsro_MJ884222222222, null, null, m822PaddingValuesYgX7TsA4222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                }), $composer3, 196614, 24);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                Modifier modifier$iv = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(5));
                $composer3.startReplaceableGroup(-483455358);
                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv3 = (54 << 3) & 112;
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv6 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv);
                int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                    factory$iv$iv$iv3 = factory$iv$iv$iv6;
                    $composer3.useNode();
                } else {
                    factory$iv$iv$iv3 = factory$iv$iv$iv6;
                    $composer3.createNode(factory$iv$iv$iv3);
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i5 = ($changed$iv$iv$iv3 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                    int i6 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1878869022, "C159@7185L31,155@6994L236,166@7442L33,162@7244L245,173@7692L37,169@7503L240,180@7942L35,176@7757L234,188@8227L35,183@8005L271,195@8483L36,191@8290L243:MainMenuScreen.kt#xkugs2");
                    String str = "Dashboard & " + activeVehicle.getShortName() + " Logging";
                    long cgsGreen = ColorKt.getCgsGreen();
                    $composer3.startReplaceableGroup(-1047765375);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    invalid$iv = ($dirty2 & 896) != 256;
                    it$iv = $composer3.rememberedValue();
                    if (!invalid$iv && it$iv != Composer.INSTANCE.getEmpty()) {
                        value$iv = it$iv;
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("TRIP", str, cgsGreen, 0L, (Function0) value$iv, $composer3, 390, 8);
                        long cgsAccent = ColorKt.getCgsAccent();
                        $composer3.startReplaceableGroup(-1047757149);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv2 = ($dirty2 & 896) != 256;
                        it$iv2 = $composer3.rememberedValue();
                        if (!invalid$iv2 && it$iv2 != Composer.INSTANCE.getEmpty()) {
                            value$iv2 = it$iv2;
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent, 0L, (Function0) value$iv2, $composer3, 438, 8);
                            long cgsSurfaceVariant = ColorKt.getCgsSurfaceVariant();
                            $composer3.startReplaceableGroup(-1047749145);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv3 = ($dirty2 & 896) != 256;
                            it$iv3 = $composer3.rememberedValue();
                            if (!invalid$iv3 && it$iv3 != Composer.INSTANCE.getEmpty()) {
                                value$iv3 = it$iv3;
                                $composer3.endReplaceableGroup();
                                m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant, 0L, (Function0) value$iv3, $composer3, 438, 8);
                                long cgsSurfaceVariant2 = ColorKt.getCgsSurfaceVariant();
                                $composer3.startReplaceableGroup(-1047741147);
                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv4 = ($dirty2 & 896) != 256;
                                it$iv4 = $composer3.rememberedValue();
                                if (!invalid$iv4 && it$iv4 != Composer.INSTANCE.getEmpty()) {
                                    value$iv4 = it$iv4;
                                    $composer3.endReplaceableGroup();
                                    m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant2, 0L, (Function0) value$iv4, $composer3, 438, 8);
                                    long cgsYellow = ColorKt.getCgsYellow();
                                    long m4038getBlack0d7_KjU = Color.INSTANCE.m4038getBlack0d7_KjU();
                                    $composer3.startReplaceableGroup(-1047732027);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv5 = ($dirty2 & 896) != 256;
                                    it$iv5 = $composer3.rememberedValue();
                                    if (!invalid$iv5 && it$iv5 != Composer.INSTANCE.getEmpty()) {
                                        value$iv5 = it$iv5;
                                        $composer3.endReplaceableGroup();
                                        m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow, m4038getBlack0d7_KjU, (Function0) value$iv5, $composer3, 3510, 0);
                                        long cgsSurfaceVariant3 = ColorKt.getCgsSurfaceVariant();
                                        $composer3.startReplaceableGroup(-1047723834);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                        invalid$iv6 = ($dirty2 & 896) != 256;
                                        it$iv6 = $composer3.rememberedValue();
                                        if (!invalid$iv6 && it$iv6 != Composer.INSTANCE.getEmpty()) {
                                            value$iv6 = it$iv6;
                                            $composer3.endReplaceableGroup();
                                            m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant3, 0L, (Function0) value$iv6, $composer3, 438, 8);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            $composer3.endReplaceableGroup();
                                            $composer3.endNode();
                                            $composer3.endReplaceableGroup();
                                            $composer3.endReplaceableGroup();
                                            Modifier modifier$iv2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                            $composer3.startReplaceableGroup(693286680);
                                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                                            MeasurePolicy measurePolicy$iv4 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                            int $changed$iv$iv4 = (54 << 3) & 112;
                                            $composer3.startReplaceableGroup(-1323940314);
                                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                            CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                                            Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                                            Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                                            int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                            if (!($composer3.getApplier() instanceof Applier)) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            $composer3.startReusableNode();
                                            if ($composer3.getInserting()) {
                                                $composer3.useNode();
                                            } else {
                                                $composer3.createNode(factory$iv$iv$iv7);
                                            }
                                            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                            Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                                $composer3.startReplaceableGroup(2058660585);
                                                int i7 = ($changed$iv$iv$iv4 >> 9) & 14;
                                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                                int i8 = ((54 >> 6) & 112) | 6;
                                                RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410 = RowScopeInstance.INSTANCE;
                                                ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                                ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                                ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                                ButtonColors m1872buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                                RoundedCornerShape m1098RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                                PaddingValues m822PaddingValuesYgX7TsA = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                                Modifier m863height3ABfNKs = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                                $composer3.startReplaceableGroup(-1047684364);
                                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                                invalid$iv7 = (458752 & $dirty2) != 131072;
                                                Object it$iv7 = $composer3.rememberedValue();
                                                if (!invalid$iv7 || it$iv7 == Composer.INSTANCE.getEmpty()) {
                                                    value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                                            onOpenConfig.invoke();
                                                        }
                                                    };
                                                    $composer3.updateRememberedValue(value$iv7);
                                                } else {
                                                    value$iv7 = it$iv7;
                                                }
                                                $composer3.endReplaceableGroup();
                                                ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs, false, m1098RoundedCornerShape0680j_4, m1872buttonColorsro_MJ88, null, null, m822PaddingValuesYgX7TsA, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                                $composer3.endReplaceableGroup();
                                                $composer3.endNode();
                                                $composer3.endReplaceableGroup();
                                                $composer3.endReplaceableGroup();
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
                                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                            skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                            $composer3.startReplaceableGroup(2058660585);
                                            int i72 = ($changed$iv$iv$iv4 >> 9) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                            int i82 = ((54 >> 6) & 112) | 6;
                                            RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102 = RowScopeInstance.INSTANCE;
                                            ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                            ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                            ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                            ButtonColors m1872buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                            RoundedCornerShape m1098RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                            PaddingValues m822PaddingValuesYgX7TsA2 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                            Modifier m863height3ABfNKs2 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                            $composer3.startReplaceableGroup(-1047684364);
                                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                            invalid$iv7 = (458752 & $dirty2) != 131072;
                                            Object it$iv72 = $composer3.rememberedValue();
                                            if (invalid$iv7) {
                                            }
                                            value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                                    onOpenConfig.invoke();
                                                }
                                            };
                                            $composer3.updateRememberedValue(value$iv7);
                                            $composer3.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs2, false, m1098RoundedCornerShape0680j_42, m1872buttonColorsro_MJ882, null, null, m822PaddingValuesYgX7TsA2, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            $composer3.endReplaceableGroup();
                                            $composer3.endNode();
                                            $composer3.endReplaceableGroup();
                                            $composer3.endReplaceableGroup();
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            $composer2.endReplaceableGroup();
                                            $composer2.endNode();
                                            $composer2.endReplaceableGroup();
                                            $composer2.endReplaceableGroup();
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                        }
                                        value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                                onSelectMode.invoke(RideMode.CARB_TUNE);
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv6);
                                        $composer3.endReplaceableGroup();
                                        m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant3, 0L, (Function0) value$iv6, $composer3, 438, 8);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        Modifier modifier$iv22 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                        Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                        $composer3.startReplaceableGroup(693286680);
                                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                        Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                                        MeasurePolicy measurePolicy$iv42 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                        int $changed$iv$iv42 = (54 << 3) & 112;
                                        $composer3.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                        CompositionLocalMap localMap$iv$iv42 = $composer3.getCurrentCompositionLocalMap();
                                        Function0 factory$iv$iv$iv72 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                                        int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                                        if (!($composer3.getApplier() instanceof Applier)) {
                                        }
                                        $composer3.startReusableNode();
                                        if ($composer3.getInserting()) {
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                            $composer3.startReplaceableGroup(2058660585);
                                            int i722 = ($changed$iv$iv$iv42 >> 9) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                            int i822 = ((54 >> 6) & 112) | 6;
                                            RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022 = RowScopeInstance.INSTANCE;
                                            ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                            ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                            ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                            ButtonColors m1872buttonColorsro_MJ8822 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                            RoundedCornerShape m1098RoundedCornerShape0680j_422 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                            PaddingValues m822PaddingValuesYgX7TsA22 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                            Modifier m863height3ABfNKs22 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                            $composer3.startReplaceableGroup(-1047684364);
                                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                            invalid$iv7 = (458752 & $dirty2) != 131072;
                                            Object it$iv722 = $composer3.rememberedValue();
                                            if (invalid$iv7) {
                                            }
                                            value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                                    onOpenConfig.invoke();
                                                }
                                            };
                                            $composer3.updateRememberedValue(value$iv7);
                                            $composer3.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs22, false, m1098RoundedCornerShape0680j_422, m1872buttonColorsro_MJ8822, null, null, m822PaddingValuesYgX7TsA22, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            $composer3.endReplaceableGroup();
                                            $composer3.endNode();
                                            $composer3.endReplaceableGroup();
                                            $composer3.endReplaceableGroup();
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            ComposerKt.sourceInformationMarkerEnd($composer3);
                                            $composer2.endReplaceableGroup();
                                            $composer2.endNode();
                                            $composer2.endReplaceableGroup();
                                            $composer2.endReplaceableGroup();
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                                        skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i7222 = ($changed$iv$iv$iv42 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        int i8222 = ((54 >> 6) & 112) | 6;
                                        RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222 = RowScopeInstance.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                        ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                        ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                        ButtonColors m1872buttonColorsro_MJ88222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                        RoundedCornerShape m1098RoundedCornerShape0680j_4222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                        PaddingValues m822PaddingValuesYgX7TsA222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                        Modifier m863height3ABfNKs222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                        $composer3.startReplaceableGroup(-1047684364);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                        invalid$iv7 = (458752 & $dirty2) != 131072;
                                        Object it$iv7222 = $composer3.rememberedValue();
                                        if (invalid$iv7) {
                                        }
                                        value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                                onOpenConfig.invoke();
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv7);
                                        $composer3.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs222, false, m1098RoundedCornerShape0680j_4222, m1872buttonColorsro_MJ88222, null, null, m822PaddingValuesYgX7TsA222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer2.endReplaceableGroup();
                                        $composer2.endNode();
                                        $composer2.endReplaceableGroup();
                                        $composer2.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                                            onSelectMode.invoke(RideMode.ATV_DIAG);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv5);
                                    $composer3.endReplaceableGroup();
                                    m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow, m4038getBlack0d7_KjU, (Function0) value$iv5, $composer3, 3510, 0);
                                    long cgsSurfaceVariant32 = ColorKt.getCgsSurfaceVariant();
                                    $composer3.startReplaceableGroup(-1047723834);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    if (($dirty2 & 896) != 256) {
                                    }
                                    it$iv6 = $composer3.rememberedValue();
                                    if (!invalid$iv6) {
                                        value$iv6 = it$iv6;
                                        $composer3.endReplaceableGroup();
                                        m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant32, 0L, (Function0) value$iv6, $composer3, 438, 8);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        Modifier modifier$iv222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                        Arrangement.Horizontal horizontalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                        $composer3.startReplaceableGroup(693286680);
                                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                        Alignment.Vertical verticalAlignment$iv22 = Alignment.INSTANCE.getTop();
                                        MeasurePolicy measurePolicy$iv422 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22, verticalAlignment$iv22, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                        int $changed$iv$iv422 = (54 << 3) & 112;
                                        $composer3.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                        CompositionLocalMap localMap$iv$iv422 = $composer3.getCurrentCompositionLocalMap();
                                        Function0 factory$iv$iv$iv722 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv222);
                                        int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                                        if (!($composer3.getApplier() instanceof Applier)) {
                                        }
                                        $composer3.startReusableNode();
                                        if ($composer3.getInserting()) {
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv422, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv422, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                                        skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i72222 = ($changed$iv$iv$iv422 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        int i82222 = ((54 >> 6) & 112) | 6;
                                        RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222 = RowScopeInstance.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                        ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                        ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                        ButtonColors m1872buttonColorsro_MJ882222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                        RoundedCornerShape m1098RoundedCornerShape0680j_42222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                        PaddingValues m822PaddingValuesYgX7TsA2222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                        Modifier m863height3ABfNKs2222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                        $composer3.startReplaceableGroup(-1047684364);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                        invalid$iv7 = (458752 & $dirty2) != 131072;
                                        Object it$iv72222 = $composer3.rememberedValue();
                                        if (invalid$iv7) {
                                        }
                                        value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                                onOpenConfig.invoke();
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv7);
                                        $composer3.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs2222, false, m1098RoundedCornerShape0680j_42222, m1872buttonColorsro_MJ882222, null, null, m822PaddingValuesYgX7TsA2222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer2.endReplaceableGroup();
                                        $composer2.endNode();
                                        $composer2.endReplaceableGroup();
                                        $composer2.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                            onSelectMode.invoke(RideMode.CARB_TUNE);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv6);
                                    $composer3.endReplaceableGroup();
                                    m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant32, 0L, (Function0) value$iv6, $composer3, 438, 8);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    Modifier modifier$iv2222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                    Arrangement.Horizontal horizontalArrangement$iv222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                    $composer3.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                    Alignment.Vertical verticalAlignment$iv222 = Alignment.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv4222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222, verticalAlignment$iv222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv4222 = (54 << 3) & 112;
                                    $composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                    CompositionLocalMap localMap$iv$iv4222 = $composer3.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv7222 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv2222);
                                    int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                                    if (!($composer3.getApplier() instanceof Applier)) {
                                    }
                                    $composer3.startReusableNode();
                                    if ($composer3.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                                    skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i722222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    int i822222 = ((54 >> 6) & 112) | 6;
                                    RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222 = RowScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                    ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                    ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ8822222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_422222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA22222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs22222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                    $composer3.startReplaceableGroup(-1047684364);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv7 = (458752 & $dirty2) != 131072;
                                    Object it$iv722222 = $composer3.rememberedValue();
                                    if (invalid$iv7) {
                                    }
                                    value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                            onOpenConfig.invoke();
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv7);
                                    $composer3.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs22222, false, m1098RoundedCornerShape0680j_422222, m1872buttonColorsro_MJ8822222, null, null, m822PaddingValuesYgX7TsA22222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer2.endReplaceableGroup();
                                    $composer2.endNode();
                                    $composer2.endReplaceableGroup();
                                    $composer2.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                                        onSelectMode.invoke(RideMode.APP_DIAG);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv4);
                                $composer3.endReplaceableGroup();
                                m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant2, 0L, (Function0) value$iv4, $composer3, 438, 8);
                                long cgsYellow2 = ColorKt.getCgsYellow();
                                long m4038getBlack0d7_KjU2 = Color.INSTANCE.m4038getBlack0d7_KjU();
                                $composer3.startReplaceableGroup(-1047732027);
                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                if (($dirty2 & 896) != 256) {
                                }
                                it$iv5 = $composer3.rememberedValue();
                                if (!invalid$iv5) {
                                    value$iv5 = it$iv5;
                                    $composer3.endReplaceableGroup();
                                    m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow2, m4038getBlack0d7_KjU2, (Function0) value$iv5, $composer3, 3510, 0);
                                    long cgsSurfaceVariant322 = ColorKt.getCgsSurfaceVariant();
                                    $composer3.startReplaceableGroup(-1047723834);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    if (($dirty2 & 896) != 256) {
                                    }
                                    it$iv6 = $composer3.rememberedValue();
                                    if (!invalid$iv6) {
                                    }
                                    value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                            onSelectMode.invoke(RideMode.CARB_TUNE);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv6);
                                    $composer3.endReplaceableGroup();
                                    m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant322, 0L, (Function0) value$iv6, $composer3, 438, 8);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    Modifier modifier$iv22222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                    Arrangement.Horizontal horizontalArrangement$iv2222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                    $composer3.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                    Alignment.Vertical verticalAlignment$iv2222 = Alignment.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv42222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222, verticalAlignment$iv2222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv42222 = (54 << 3) & 112;
                                    $composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                    CompositionLocalMap localMap$iv$iv42222 = $composer3.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv72222 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv22222);
                                    int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                                    if (!($composer3.getApplier() instanceof Applier)) {
                                    }
                                    $composer3.startReusableNode();
                                    if ($composer3.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv42222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                                    skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i7222222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    int i8222222 = ((54 >> 6) & 112) | 6;
                                    RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222 = RowScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                    ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                    ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ88222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_4222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                    $composer3.startReplaceableGroup(-1047684364);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv7 = (458752 & $dirty2) != 131072;
                                    Object it$iv7222222 = $composer3.rememberedValue();
                                    if (invalid$iv7) {
                                    }
                                    value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                            onOpenConfig.invoke();
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv7);
                                    $composer3.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs222222, false, m1098RoundedCornerShape0680j_4222222, m1872buttonColorsro_MJ88222222, null, null, m822PaddingValuesYgX7TsA222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer2.endReplaceableGroup();
                                    $composer2.endNode();
                                    $composer2.endReplaceableGroup();
                                    $composer2.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                                        onSelectMode.invoke(RideMode.ATV_DIAG);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv5);
                                $composer3.endReplaceableGroup();
                                m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow2, m4038getBlack0d7_KjU2, (Function0) value$iv5, $composer3, 3510, 0);
                                long cgsSurfaceVariant3222 = ColorKt.getCgsSurfaceVariant();
                                $composer3.startReplaceableGroup(-1047723834);
                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                if (($dirty2 & 896) != 256) {
                                }
                                it$iv6 = $composer3.rememberedValue();
                                if (!invalid$iv6) {
                                }
                                value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                        onSelectMode.invoke(RideMode.CARB_TUNE);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv6);
                                $composer3.endReplaceableGroup();
                                m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant3222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                Modifier modifier$iv222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                Arrangement.Horizontal horizontalArrangement$iv22222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                $composer3.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Alignment.Vertical verticalAlignment$iv22222 = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv422222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22222, verticalAlignment$iv22222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv422222 = (54 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv422222 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv722222 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv222222);
                                int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv422222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv422222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                                skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i72222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i82222222 = ((54 >> 6) & 112) | 6;
                                RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ882222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_42222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA2222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs2222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                $composer3.startReplaceableGroup(-1047684364);
                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv7 = (458752 & $dirty2) != 131072;
                                Object it$iv72222222 = $composer3.rememberedValue();
                                if (invalid$iv7) {
                                }
                                value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                        onOpenConfig.invoke();
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv7);
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs2222222, false, m1098RoundedCornerShape0680j_42222222, m1872buttonColorsro_MJ882222222, null, null, m822PaddingValuesYgX7TsA2222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer2.endReplaceableGroup();
                                $composer2.endNode();
                                $composer2.endReplaceableGroup();
                                $composer2.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                                    onSelectMode.invoke(RideMode.TEST_TRACK);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv3);
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant, 0L, (Function0) value$iv3, $composer3, 438, 8);
                            long cgsSurfaceVariant22 = ColorKt.getCgsSurfaceVariant();
                            $composer3.startReplaceableGroup(-1047741147);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            if (($dirty2 & 896) != 256) {
                            }
                            it$iv4 = $composer3.rememberedValue();
                            if (!invalid$iv4) {
                                value$iv4 = it$iv4;
                                $composer3.endReplaceableGroup();
                                m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant22, 0L, (Function0) value$iv4, $composer3, 438, 8);
                                long cgsYellow22 = ColorKt.getCgsYellow();
                                long m4038getBlack0d7_KjU22 = Color.INSTANCE.m4038getBlack0d7_KjU();
                                $composer3.startReplaceableGroup(-1047732027);
                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                if (($dirty2 & 896) != 256) {
                                }
                                it$iv5 = $composer3.rememberedValue();
                                if (!invalid$iv5) {
                                }
                                value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                                        onSelectMode.invoke(RideMode.ATV_DIAG);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv5);
                                $composer3.endReplaceableGroup();
                                m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow22, m4038getBlack0d7_KjU22, (Function0) value$iv5, $composer3, 3510, 0);
                                long cgsSurfaceVariant32222 = ColorKt.getCgsSurfaceVariant();
                                $composer3.startReplaceableGroup(-1047723834);
                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                if (($dirty2 & 896) != 256) {
                                }
                                it$iv6 = $composer3.rememberedValue();
                                if (!invalid$iv6) {
                                }
                                value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                        onSelectMode.invoke(RideMode.CARB_TUNE);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv6);
                                $composer3.endReplaceableGroup();
                                m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant32222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                Modifier modifier$iv2222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                Arrangement.Horizontal horizontalArrangement$iv222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                                $composer3.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Alignment.Vertical verticalAlignment$iv222222 = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv4222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222222, verticalAlignment$iv222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv4222222 = (54 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv4222222 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv7222222 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4222222 = LayoutKt.modifierMaterializerOf(modifier$iv2222222);
                                int $changed$iv$iv$iv4222222 = (($changed$iv$iv4222222 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222222));
                                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv4222222), block$iv$iv$iv4222222);
                                skippableUpdate$iv$iv$iv4222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222222 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i722222222 = ($changed$iv$iv$iv4222222 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i822222222 = ((54 >> 6) & 112) | 6;
                                RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                                ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                                ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ8822222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_422222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA22222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs22222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                                $composer3.startReplaceableGroup(-1047684364);
                                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv7 = (458752 & $dirty2) != 131072;
                                Object it$iv722222222 = $composer3.rememberedValue();
                                if (invalid$iv7) {
                                }
                                value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                        onOpenConfig.invoke();
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv7);
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs22222222, false, m1098RoundedCornerShape0680j_422222222, m1872buttonColorsro_MJ8822222222, null, null, m822PaddingValuesYgX7TsA22222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer2.endReplaceableGroup();
                                $composer2.endNode();
                                $composer2.endReplaceableGroup();
                                $composer2.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                                    onSelectMode.invoke(RideMode.APP_DIAG);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv4);
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant22, 0L, (Function0) value$iv4, $composer3, 438, 8);
                            long cgsYellow222 = ColorKt.getCgsYellow();
                            long m4038getBlack0d7_KjU222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                            $composer3.startReplaceableGroup(-1047732027);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            if (($dirty2 & 896) != 256) {
                            }
                            it$iv5 = $composer3.rememberedValue();
                            if (!invalid$iv5) {
                            }
                            value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                                    onSelectMode.invoke(RideMode.ATV_DIAG);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv5);
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow222, m4038getBlack0d7_KjU222, (Function0) value$iv5, $composer3, 3510, 0);
                            long cgsSurfaceVariant322222 = ColorKt.getCgsSurfaceVariant();
                            $composer3.startReplaceableGroup(-1047723834);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            if (($dirty2 & 896) != 256) {
                            }
                            it$iv6 = $composer3.rememberedValue();
                            if (!invalid$iv6) {
                            }
                            value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                    onSelectMode.invoke(RideMode.CARB_TUNE);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv6);
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant322222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            Modifier modifier$iv22222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv2222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv2222222 = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv42222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222222, verticalAlignment$iv2222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv42222222 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv42222222 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv72222222 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42222222 = LayoutKt.modifierMaterializerOf(modifier$iv22222222);
                            int $changed$iv$iv$iv42222222 = (($changed$iv$iv42222222 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv42222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222222));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv42222222), block$iv$iv$iv42222222);
                            skippableUpdate$iv$iv$iv42222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i7222222222 = ($changed$iv$iv$iv42222222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i8222222222 = ((54 >> 6) & 112) | 6;
                            RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                            ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                            ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ88222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_4222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                            $composer3.startReplaceableGroup(-1047684364);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv7 = (458752 & $dirty2) != 131072;
                            Object it$iv7222222222 = $composer3.rememberedValue();
                            if (invalid$iv7) {
                            }
                            value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                    onOpenConfig.invoke();
                                }
                            };
                            $composer3.updateRememberedValue(value$iv7);
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs222222222, false, m1098RoundedCornerShape0680j_4222222222, m1872buttonColorsro_MJ88222222222, null, null, m822PaddingValuesYgX7TsA222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer2.endReplaceableGroup();
                            $composer2.endNode();
                            $composer2.endReplaceableGroup();
                            $composer2.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        value$iv2 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$2$1
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
                                onSelectMode.invoke(RideMode.POCKET);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv2);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent, 0L, (Function0) value$iv2, $composer3, 438, 8);
                        long cgsSurfaceVariant4 = ColorKt.getCgsSurfaceVariant();
                        $composer3.startReplaceableGroup(-1047749145);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv3 = $composer3.rememberedValue();
                        if (!invalid$iv3) {
                            value$iv3 = it$iv3;
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant4, 0L, (Function0) value$iv3, $composer3, 438, 8);
                            long cgsSurfaceVariant222 = ColorKt.getCgsSurfaceVariant();
                            $composer3.startReplaceableGroup(-1047741147);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            if (($dirty2 & 896) != 256) {
                            }
                            it$iv4 = $composer3.rememberedValue();
                            if (!invalid$iv4) {
                            }
                            value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                                    onSelectMode.invoke(RideMode.APP_DIAG);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv4);
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant222, 0L, (Function0) value$iv4, $composer3, 438, 8);
                            long cgsYellow2222 = ColorKt.getCgsYellow();
                            long m4038getBlack0d7_KjU2222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                            $composer3.startReplaceableGroup(-1047732027);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            if (($dirty2 & 896) != 256) {
                            }
                            it$iv5 = $composer3.rememberedValue();
                            if (!invalid$iv5) {
                            }
                            value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                                    onSelectMode.invoke(RideMode.ATV_DIAG);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv5);
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow2222, m4038getBlack0d7_KjU2222, (Function0) value$iv5, $composer3, 3510, 0);
                            long cgsSurfaceVariant3222222 = ColorKt.getCgsSurfaceVariant();
                            $composer3.startReplaceableGroup(-1047723834);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            if (($dirty2 & 896) != 256) {
                            }
                            it$iv6 = $composer3.rememberedValue();
                            if (!invalid$iv6) {
                            }
                            value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                    onSelectMode.invoke(RideMode.CARB_TUNE);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv6);
                            $composer3.endReplaceableGroup();
                            m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant3222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            Modifier modifier$iv222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv22222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv22222222 = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv422222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22222222, verticalAlignment$iv22222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv422222222 = (54 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv422222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv422222222 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv722222222 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv422222222 = LayoutKt.modifierMaterializerOf(modifier$iv222222222);
                            int $changed$iv$iv$iv422222222 = (($changed$iv$iv422222222 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv422222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv422222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv422222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222222));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv422222222), block$iv$iv$iv422222222);
                            skippableUpdate$iv$iv$iv422222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i72222222222 = ($changed$iv$iv$iv422222222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i82222222222 = ((54 >> 6) & 112) | 6;
                            RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                            ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                            ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ882222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_42222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA2222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs2222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                            $composer3.startReplaceableGroup(-1047684364);
                            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv7 = (458752 & $dirty2) != 131072;
                            Object it$iv72222222222 = $composer3.rememberedValue();
                            if (invalid$iv7) {
                            }
                            value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                    onOpenConfig.invoke();
                                }
                            };
                            $composer3.updateRememberedValue(value$iv7);
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs2222222222, false, m1098RoundedCornerShape0680j_42222222222, m1872buttonColorsro_MJ882222222222, null, null, m822PaddingValuesYgX7TsA2222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer2.endReplaceableGroup();
                            $composer2.endNode();
                            $composer2.endReplaceableGroup();
                            $composer2.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                                onSelectMode.invoke(RideMode.TEST_TRACK);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv3);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant4, 0L, (Function0) value$iv3, $composer3, 438, 8);
                        long cgsSurfaceVariant2222 = ColorKt.getCgsSurfaceVariant();
                        $composer3.startReplaceableGroup(-1047741147);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv4 = $composer3.rememberedValue();
                        if (!invalid$iv4) {
                        }
                        value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                                onSelectMode.invoke(RideMode.APP_DIAG);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv4);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant2222, 0L, (Function0) value$iv4, $composer3, 438, 8);
                        long cgsYellow22222 = ColorKt.getCgsYellow();
                        long m4038getBlack0d7_KjU22222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                        $composer3.startReplaceableGroup(-1047732027);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv5 = $composer3.rememberedValue();
                        if (!invalid$iv5) {
                        }
                        value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                                onSelectMode.invoke(RideMode.ATV_DIAG);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv5);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow22222, m4038getBlack0d7_KjU22222, (Function0) value$iv5, $composer3, 3510, 0);
                        long cgsSurfaceVariant32222222 = ColorKt.getCgsSurfaceVariant();
                        $composer3.startReplaceableGroup(-1047723834);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv6 = $composer3.rememberedValue();
                        if (!invalid$iv6) {
                        }
                        value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                onSelectMode.invoke(RideMode.CARB_TUNE);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv6);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant32222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        Modifier modifier$iv2222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv222222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv222222222 = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv4222222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222222222, verticalAlignment$iv222222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv4222222222 = (54 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4222222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv4222222222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv7222222222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv4222222222 = LayoutKt.modifierMaterializerOf(modifier$iv2222222222);
                        int $changed$iv$iv$iv4222222222 = (($changed$iv$iv4222222222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4222222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4222222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv4222222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222222222));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv4222222222), block$iv$iv$iv4222222222);
                        skippableUpdate$iv$iv$iv4222222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222222222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i722222222222 = ($changed$iv$iv$iv4222222222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i822222222222 = ((54 >> 6) & 112) | 6;
                        RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                        ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                        ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ8822222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_422222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA22222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs22222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                        $composer3.startReplaceableGroup(-1047684364);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv7 = (458752 & $dirty2) != 131072;
                        Object it$iv722222222222 = $composer3.rememberedValue();
                        if (invalid$iv7) {
                        }
                        value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                onOpenConfig.invoke();
                            }
                        };
                        $composer3.updateRememberedValue(value$iv7);
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs22222222222, false, m1098RoundedCornerShape0680j_422222222222, m1872buttonColorsro_MJ8822222222222, null, null, m822PaddingValuesYgX7TsA22222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer2.endReplaceableGroup();
                        $composer2.endNode();
                        $composer2.endReplaceableGroup();
                        $composer2.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    value$iv = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$1$1
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
                            onSelectMode.invoke(RideMode.TRIP);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("TRIP", str, cgsGreen, 0L, (Function0) value$iv, $composer3, 390, 8);
                    long cgsAccent2 = ColorKt.getCgsAccent();
                    $composer3.startReplaceableGroup(-1047757149);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv2 = $composer3.rememberedValue();
                    if (!invalid$iv2) {
                        value$iv2 = it$iv2;
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent2, 0L, (Function0) value$iv2, $composer3, 438, 8);
                        long cgsSurfaceVariant42 = ColorKt.getCgsSurfaceVariant();
                        $composer3.startReplaceableGroup(-1047749145);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv3 = $composer3.rememberedValue();
                        if (!invalid$iv3) {
                        }
                        value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                                onSelectMode.invoke(RideMode.TEST_TRACK);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv3);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant42, 0L, (Function0) value$iv3, $composer3, 438, 8);
                        long cgsSurfaceVariant22222 = ColorKt.getCgsSurfaceVariant();
                        $composer3.startReplaceableGroup(-1047741147);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv4 = $composer3.rememberedValue();
                        if (!invalid$iv4) {
                        }
                        value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                                onSelectMode.invoke(RideMode.APP_DIAG);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv4);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant22222, 0L, (Function0) value$iv4, $composer3, 438, 8);
                        long cgsYellow222222 = ColorKt.getCgsYellow();
                        long m4038getBlack0d7_KjU222222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                        $composer3.startReplaceableGroup(-1047732027);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv5 = $composer3.rememberedValue();
                        if (!invalid$iv5) {
                        }
                        value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                                onSelectMode.invoke(RideMode.ATV_DIAG);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv5);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow222222, m4038getBlack0d7_KjU222222, (Function0) value$iv5, $composer3, 3510, 0);
                        long cgsSurfaceVariant322222222 = ColorKt.getCgsSurfaceVariant();
                        $composer3.startReplaceableGroup(-1047723834);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        if (($dirty2 & 896) != 256) {
                        }
                        it$iv6 = $composer3.rememberedValue();
                        if (!invalid$iv6) {
                        }
                        value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                                onSelectMode.invoke(RideMode.CARB_TUNE);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv6);
                        $composer3.endReplaceableGroup();
                        m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant322222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        Modifier modifier$iv22222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv2222222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv2222222222 = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv42222222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222222222, verticalAlignment$iv2222222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv42222222222 = (54 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv42222222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv42222222222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv72222222222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv42222222222 = LayoutKt.modifierMaterializerOf(modifier$iv22222222222);
                        int $changed$iv$iv$iv42222222222 = (($changed$iv$iv42222222222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42222222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv42222222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv42222222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222222222));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv42222222222), block$iv$iv$iv42222222222);
                        skippableUpdate$iv$iv$iv42222222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222222222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i7222222222222 = ($changed$iv$iv$iv42222222222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i8222222222222 = ((54 >> 6) & 112) | 6;
                        RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                        ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                        ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ88222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_4222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                        $composer3.startReplaceableGroup(-1047684364);
                        ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv7 = (458752 & $dirty2) != 131072;
                        Object it$iv7222222222222 = $composer3.rememberedValue();
                        if (invalid$iv7) {
                        }
                        value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                                onOpenConfig.invoke();
                            }
                        };
                        $composer3.updateRememberedValue(value$iv7);
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs222222222222, false, m1098RoundedCornerShape0680j_4222222222222, m1872buttonColorsro_MJ88222222222222, null, null, m822PaddingValuesYgX7TsA222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer2.endReplaceableGroup();
                        $composer2.endNode();
                        $composer2.endReplaceableGroup();
                        $composer2.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    value$iv2 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$2$1
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
                            onSelectMode.invoke(RideMode.POCKET);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv2);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent2, 0L, (Function0) value$iv2, $composer3, 438, 8);
                    long cgsSurfaceVariant422 = ColorKt.getCgsSurfaceVariant();
                    $composer3.startReplaceableGroup(-1047749145);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv3 = $composer3.rememberedValue();
                    if (!invalid$iv3) {
                    }
                    value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                            onSelectMode.invoke(RideMode.TEST_TRACK);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv3);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant422, 0L, (Function0) value$iv3, $composer3, 438, 8);
                    long cgsSurfaceVariant222222 = ColorKt.getCgsSurfaceVariant();
                    $composer3.startReplaceableGroup(-1047741147);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv4 = $composer3.rememberedValue();
                    if (!invalid$iv4) {
                    }
                    value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                            onSelectMode.invoke(RideMode.APP_DIAG);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv4);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant222222, 0L, (Function0) value$iv4, $composer3, 438, 8);
                    long cgsYellow2222222 = ColorKt.getCgsYellow();
                    long m4038getBlack0d7_KjU2222222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                    $composer3.startReplaceableGroup(-1047732027);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv5 = $composer3.rememberedValue();
                    if (!invalid$iv5) {
                    }
                    value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                            onSelectMode.invoke(RideMode.ATV_DIAG);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv5);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow2222222, m4038getBlack0d7_KjU2222222, (Function0) value$iv5, $composer3, 3510, 0);
                    long cgsSurfaceVariant3222222222 = ColorKt.getCgsSurfaceVariant();
                    $composer3.startReplaceableGroup(-1047723834);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv6 = $composer3.rememberedValue();
                    if (!invalid$iv6) {
                    }
                    value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                            onSelectMode.invoke(RideMode.CARB_TUNE);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv6);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant3222222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    Modifier modifier$iv222222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv22222222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                    $composer3.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Alignment.Vertical verticalAlignment$iv22222222222 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv422222222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22222222222, verticalAlignment$iv22222222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv422222222222 = (54 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv422222222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv422222222222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv722222222222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv422222222222 = LayoutKt.modifierMaterializerOf(modifier$iv222222222222);
                    int $changed$iv$iv$iv422222222222 = (($changed$iv$iv422222222222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv422222222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv422222222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv422222222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222222222));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv422222222222), block$iv$iv$iv422222222222);
                    skippableUpdate$iv$iv$iv422222222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222222222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i72222222222222 = ($changed$iv$iv$iv422222222222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i82222222222222 = ((54 >> 6) & 112) | 6;
                    RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                    ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                    ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                    ButtonColors m1872buttonColorsro_MJ882222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                    RoundedCornerShape m1098RoundedCornerShape0680j_42222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                    PaddingValues m822PaddingValuesYgX7TsA2222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs2222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                    $composer3.startReplaceableGroup(-1047684364);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    invalid$iv7 = (458752 & $dirty2) != 131072;
                    Object it$iv72222222222222 = $composer3.rememberedValue();
                    if (invalid$iv7) {
                    }
                    value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                            onOpenConfig.invoke();
                        }
                    };
                    $composer3.updateRememberedValue(value$iv7);
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs2222222222222, false, m1098RoundedCornerShape0680j_42222222222222, m1872buttonColorsro_MJ882222222222222, null, null, m822PaddingValuesYgX7TsA2222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i52 = ($changed$iv$iv$iv3 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                int i62 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 1878869022, "C159@7185L31,155@6994L236,166@7442L33,162@7244L245,173@7692L37,169@7503L240,180@7942L35,176@7757L234,188@8227L35,183@8005L271,195@8483L36,191@8290L243:MainMenuScreen.kt#xkugs2");
                String str2 = "Dashboard & " + activeVehicle.getShortName() + " Logging";
                long cgsGreen2 = ColorKt.getCgsGreen();
                $composer3.startReplaceableGroup(-1047765375);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv = $composer3.rememberedValue();
                if (!invalid$iv) {
                    value$iv = it$iv;
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("TRIP", str2, cgsGreen2, 0L, (Function0) value$iv, $composer3, 390, 8);
                    long cgsAccent22 = ColorKt.getCgsAccent();
                    $composer3.startReplaceableGroup(-1047757149);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv2 = $composer3.rememberedValue();
                    if (!invalid$iv2) {
                    }
                    value$iv2 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$2$1
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
                            onSelectMode.invoke(RideMode.POCKET);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv2);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent22, 0L, (Function0) value$iv2, $composer3, 438, 8);
                    long cgsSurfaceVariant4222 = ColorKt.getCgsSurfaceVariant();
                    $composer3.startReplaceableGroup(-1047749145);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv3 = $composer3.rememberedValue();
                    if (!invalid$iv3) {
                    }
                    value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                            onSelectMode.invoke(RideMode.TEST_TRACK);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv3);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant4222, 0L, (Function0) value$iv3, $composer3, 438, 8);
                    long cgsSurfaceVariant2222222 = ColorKt.getCgsSurfaceVariant();
                    $composer3.startReplaceableGroup(-1047741147);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv4 = $composer3.rememberedValue();
                    if (!invalid$iv4) {
                    }
                    value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                            onSelectMode.invoke(RideMode.APP_DIAG);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv4);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant2222222, 0L, (Function0) value$iv4, $composer3, 438, 8);
                    long cgsYellow22222222 = ColorKt.getCgsYellow();
                    long m4038getBlack0d7_KjU22222222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                    $composer3.startReplaceableGroup(-1047732027);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv5 = $composer3.rememberedValue();
                    if (!invalid$iv5) {
                    }
                    value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                            onSelectMode.invoke(RideMode.ATV_DIAG);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv5);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow22222222, m4038getBlack0d7_KjU22222222, (Function0) value$iv5, $composer3, 3510, 0);
                    long cgsSurfaceVariant32222222222 = ColorKt.getCgsSurfaceVariant();
                    $composer3.startReplaceableGroup(-1047723834);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    if (($dirty2 & 896) != 256) {
                    }
                    it$iv6 = $composer3.rememberedValue();
                    if (!invalid$iv6) {
                    }
                    value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                            onSelectMode.invoke(RideMode.CARB_TUNE);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv6);
                    $composer3.endReplaceableGroup();
                    m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant32222222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    Modifier modifier$iv2222222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv222222222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                    $composer3.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Alignment.Vertical verticalAlignment$iv222222222222 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv4222222222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222222222222, verticalAlignment$iv222222222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv4222222222222 = (54 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv4222222222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv4222222222222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv7222222222222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv4222222222222 = LayoutKt.modifierMaterializerOf(modifier$iv2222222222222);
                    int $changed$iv$iv$iv4222222222222 = (($changed$iv$iv4222222222222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4222222222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4222222222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv4222222222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222222222222));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv4222222222222), block$iv$iv$iv4222222222222);
                    skippableUpdate$iv$iv$iv4222222222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222222222222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i722222222222222 = ($changed$iv$iv$iv4222222222222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i822222222222222 = ((54 >> 6) & 112) | 6;
                    RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                    ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                    ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                    ButtonColors m1872buttonColorsro_MJ8822222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                    RoundedCornerShape m1098RoundedCornerShape0680j_422222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                    PaddingValues m822PaddingValuesYgX7TsA22222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs22222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                    $composer3.startReplaceableGroup(-1047684364);
                    ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                    invalid$iv7 = (458752 & $dirty2) != 131072;
                    Object it$iv722222222222222 = $composer3.rememberedValue();
                    if (invalid$iv7) {
                    }
                    value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                            onOpenConfig.invoke();
                        }
                    };
                    $composer3.updateRememberedValue(value$iv7);
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs22222222222222, false, m1098RoundedCornerShape0680j_422222222222222, m1872buttonColorsro_MJ8822222222222222, null, null, m822PaddingValuesYgX7TsA22222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
                value$iv = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$1$1
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
                        onSelectMode.invoke(RideMode.TRIP);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("TRIP", str2, cgsGreen2, 0L, (Function0) value$iv, $composer3, 390, 8);
                long cgsAccent222 = ColorKt.getCgsAccent();
                $composer3.startReplaceableGroup(-1047757149);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv2 = $composer3.rememberedValue();
                if (!invalid$iv2) {
                }
                value$iv2 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$2$1
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
                        onSelectMode.invoke(RideMode.POCKET);
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent222, 0L, (Function0) value$iv2, $composer3, 438, 8);
                long cgsSurfaceVariant42222 = ColorKt.getCgsSurfaceVariant();
                $composer3.startReplaceableGroup(-1047749145);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv3 = $composer3.rememberedValue();
                if (!invalid$iv3) {
                }
                value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                        onSelectMode.invoke(RideMode.TEST_TRACK);
                    }
                };
                $composer3.updateRememberedValue(value$iv3);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant42222, 0L, (Function0) value$iv3, $composer3, 438, 8);
                long cgsSurfaceVariant22222222 = ColorKt.getCgsSurfaceVariant();
                $composer3.startReplaceableGroup(-1047741147);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv4 = $composer3.rememberedValue();
                if (!invalid$iv4) {
                }
                value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                        onSelectMode.invoke(RideMode.APP_DIAG);
                    }
                };
                $composer3.updateRememberedValue(value$iv4);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant22222222, 0L, (Function0) value$iv4, $composer3, 438, 8);
                long cgsYellow222222222 = ColorKt.getCgsYellow();
                long m4038getBlack0d7_KjU222222222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                $composer3.startReplaceableGroup(-1047732027);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv5 = $composer3.rememberedValue();
                if (!invalid$iv5) {
                }
                value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                        onSelectMode.invoke(RideMode.ATV_DIAG);
                    }
                };
                $composer3.updateRememberedValue(value$iv5);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow222222222, m4038getBlack0d7_KjU222222222, (Function0) value$iv5, $composer3, 3510, 0);
                long cgsSurfaceVariant322222222222 = ColorKt.getCgsSurfaceVariant();
                $composer3.startReplaceableGroup(-1047723834);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv6 = $composer3.rememberedValue();
                if (!invalid$iv6) {
                }
                value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                        onSelectMode.invoke(RideMode.CARB_TUNE);
                    }
                };
                $composer3.updateRememberedValue(value$iv6);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant322222222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                Modifier modifier$iv22222222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalArrangement$iv2222222222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                $composer3.startReplaceableGroup(693286680);
                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                Alignment.Vertical verticalAlignment$iv2222222222222 = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv42222222222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222222222222, verticalAlignment$iv2222222222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv42222222222222 = (54 << 3) & 112;
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv42222222222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv42222222222222 = $composer3.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv72222222222222 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv42222222222222 = LayoutKt.modifierMaterializerOf(modifier$iv22222222222222);
                int $changed$iv$iv$iv42222222222222 = (($changed$iv$iv42222222222222 << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42222222222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv42222222222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv42222222222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222222222222));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv42222222222222), block$iv$iv$iv42222222222222);
                skippableUpdate$iv$iv$iv42222222222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222222222222 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i7222222222222222 = ($changed$iv$iv$iv42222222222222 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                int i8222222222222222 = ((54 >> 6) & 112) | 6;
                RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222222 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                ButtonColors m1872buttonColorsro_MJ88222222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                RoundedCornerShape m1098RoundedCornerShape0680j_4222222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                PaddingValues m822PaddingValuesYgX7TsA222222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                Modifier m863height3ABfNKs222222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                $composer3.startReplaceableGroup(-1047684364);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                invalid$iv7 = (458752 & $dirty2) != 131072;
                Object it$iv7222222222222222 = $composer3.rememberedValue();
                if (invalid$iv7) {
                }
                value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                        onOpenConfig.invoke();
                    }
                };
                $composer3.updateRememberedValue(value$iv7);
                $composer3.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs222222222222222, false, m1098RoundedCornerShape0680j_4222222222222222, m1872buttonColorsro_MJ88222222222222222, null, null, m822PaddingValuesYgX7TsA222222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
            skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i32 = ($changed$iv$iv$iv2 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
            int i42 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1873787471, "C48@1763L175,54@1951L177,60@2142L40,64@2303L39,63@2259L4514:MainMenuScreen.kt#xkugs2");
            TextKt.m2730Text4IGK_g(dynamicTitle, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(17), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
            TextKt.m2730Text4IGK_g("Catalin Garage Standard (CGS) v1.1.6-Mk.I (Build 16)", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3456, 0, 131058);
            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer3, 6);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, -166904400, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x022e  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x023a  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x02f2  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x0371  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x03c7  */
                /* JADX WARN: Removed duplicated region for block: B:46:0x043f  */
                /* JADX WARN: Removed duplicated region for block: B:51:0x0495  */
                /* JADX WARN: Removed duplicated region for block: B:54:0x050d  */
                /* JADX WARN: Removed duplicated region for block: B:59:0x0563  */
                /* JADX WARN: Removed duplicated region for block: B:62:0x05d4  */
                /* JADX WARN: Removed duplicated region for block: B:67:0x064c  */
                /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:71:0x05e1 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:72:0x0568  */
                /* JADX WARN: Removed duplicated region for block: B:74:0x051a A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:75:0x049a  */
                /* JADX WARN: Removed duplicated region for block: B:77:0x044c A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:78:0x03cc  */
                /* JADX WARN: Removed duplicated region for block: B:80:0x037e A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:81:0x02f7  */
                /* JADX WARN: Removed duplicated region for block: B:84:0x0240  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                    Function0 factory$iv$iv$iv62;
                    Function0 factory$iv$iv$iv73;
                    Composer $this$Layout_u24lambda_u240$iv$iv5;
                    boolean invalid$iv8;
                    Object it$iv73;
                    Object value$iv8;
                    boolean invalid$iv9;
                    Object it$iv8;
                    Object value$iv9;
                    boolean invalid$iv10;
                    Object it$iv9;
                    Object value$iv10;
                    boolean invalid$iv11;
                    Object it$iv10;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C68@2477L4282:MainMenuScreen.kt#xkugs2");
                    if (($changed2 & 81) == 16 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-166904400, $changed2, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:68)");
                    }
                    Modifier modifier$iv3 = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4));
                    Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getCenterHorizontally();
                    final VehicleType vehicleType = VehicleType.this;
                    final Function1<? super VehicleType, Unit> function1 = onSwitchVehicle;
                    $composer4.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                    Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv32 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv2, $composer4, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                    int $changed$iv$iv32 = (390 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv32 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv32 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                    int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                        factory$iv$iv$iv62 = factory$iv$iv$iv8;
                        $composer4.createNode(factory$iv$iv$iv62);
                    } else {
                        factory$iv$iv$iv62 = factory$iv$iv$iv8;
                        $composer4.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv32))) {
                        skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i522 = ($changed$iv$iv$iv32 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                        int i622 = ((390 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1523887063, "C72@2651L80,73@2752L40,74@2813L3928:MainMenuScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("ACTIVE PROFILE / SANDBOX MODE", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(9), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 131058);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(2)), $composer4, 6);
                        Modifier modifier$iv223 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv23 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                        $composer4.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv23 = Alignment.INSTANCE.getTop();
                        int $changed$iv2 = ((54 >> 3) & 14) | ((54 >> 3) & 112);
                        MeasurePolicy measurePolicy$iv423 = RowKt.rowMeasurePolicy(horizontalArrangement$iv23, verticalAlignment$iv23, $composer4, $changed$iv2);
                        int $changed$iv$iv423 = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv423 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv423 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv92 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv423 = LayoutKt.modifierMaterializerOf(modifier$iv223);
                        int $changed$iv$iv$iv423 = (($changed$iv$iv423 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv73 = factory$iv$iv$iv92;
                            $composer4.useNode();
                        } else {
                            factory$iv$iv$iv73 = factory$iv$iv$iv92;
                            $composer4.createNode(factory$iv$iv$iv73);
                        }
                        $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv423, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv423, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv423 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv423))) {
                            skippableUpdate$iv$iv$iv423.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv423 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i72223 = ($changed$iv$iv$iv423 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i82223 = ((54 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u245_u24lambda_u244222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                            ButtonColors m1872buttonColorsro_MJ88522 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_4522 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA522 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs522 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654674115);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv8 = $composer4.changed(function1);
                            it$iv73 = $composer4.rememberedValue();
                            if (!invalid$iv8 && it$iv73 != Composer.INSTANCE.getEmpty()) {
                                value$iv8 = it$iv73;
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs522, false, m1098RoundedCornerShape0680j_4522, m1872buttonColorsro_MJ88522, null, null, m822PaddingValuesYgX7TsA522, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ882222223 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_42222223 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA2222223 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs2222223 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654704201);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv9 = $composer4.changed(function1);
                                it$iv8 = $composer4.rememberedValue();
                                if (!invalid$iv9 && it$iv8 != Composer.INSTANCE.getEmpty()) {
                                    value$iv9 = it$iv8;
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs2222223, false, m1098RoundedCornerShape0680j_42222223, m1872buttonColorsro_MJ882222223, null, null, m822PaddingValuesYgX7TsA2222223, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ8832222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_432222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA32222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs32222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654734950);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv10 = $composer4.changed(function1);
                                    it$iv9 = $composer4.rememberedValue();
                                    if (!invalid$iv10 && it$iv9 != Composer.INSTANCE.getEmpty()) {
                                        value$iv10 = it$iv9;
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32222222, false, m1098RoundedCornerShape0680j_432222222, m1872buttonColorsro_MJ8832222222, null, null, m822PaddingValuesYgX7TsA32222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                            {
                                                super(3);
                                            }

                                            @Override // kotlin.jvm.functions.Function3
                                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                                invoke(rowScope, composer, num.intValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                                ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                    }
                                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                $composer5.skipToGroupEnd();
                                            }
                                        }), $composer4, 817889280, 356);
                                        ButtonColors m1872buttonColorsro_MJ884222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                        RoundedCornerShape m1098RoundedCornerShape0680j_44222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                        PaddingValues m822PaddingValuesYgX7TsA4222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                        Modifier m863height3ABfNKs4222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                        $composer4.startReplaceableGroup(1654765448);
                                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                        invalid$iv11 = $composer4.changed(function1);
                                        it$iv10 = $composer4.rememberedValue();
                                        if (!invalid$iv11 && it$iv10 != Composer.INSTANCE.getEmpty()) {
                                            value$iv11 = it$iv10;
                                            $composer4.endReplaceableGroup();
                                            ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222222222, false, m1098RoundedCornerShape0680j_44222222222, m1872buttonColorsro_MJ884222222222, null, null, m822PaddingValuesYgX7TsA4222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            if (ComposerKt.isTraceInProgress()) {
                                                return;
                                            }
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                                function1.invoke(VehicleType.APP_TEST);
                                            }
                                        };
                                        $composer4.updateRememberedValue(value$iv11);
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222222222, false, m1098RoundedCornerShape0680j_44222222222, m1872buttonColorsro_MJ884222222222, null, null, m822PaddingValuesYgX7TsA4222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                            function1.invoke(VehicleType.DAELIM);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv10);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32222222, false, m1098RoundedCornerShape0680j_432222222, m1872buttonColorsro_MJ8832222222, null, null, m822PaddingValuesYgX7TsA32222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ8842222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_442222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA42222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs42222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654765448);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv11 = $composer4.changed(function1);
                                    it$iv10 = $composer4.rememberedValue();
                                    if (!invalid$iv11) {
                                        value$iv11 = it$iv10;
                                        $composer4.endReplaceableGroup();
                                        ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42222222222, false, m1098RoundedCornerShape0680j_442222222222, m1872buttonColorsro_MJ8842222222222, null, null, m822PaddingValuesYgX7TsA42222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                            function1.invoke(VehicleType.APP_TEST);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv11);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42222222222, false, m1098RoundedCornerShape0680j_442222222222, m1872buttonColorsro_MJ8842222222222, null, null, m822PaddingValuesYgX7TsA42222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                        function1.invoke(VehicleType.MOTOCROSS);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv9);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs2222223, false, m1098RoundedCornerShape0680j_42222223, m1872buttonColorsro_MJ882222223, null, null, m822PaddingValuesYgX7TsA2222223, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ88322222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_4322222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA322222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs322222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654734950);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv10 = $composer4.changed(function1);
                                it$iv9 = $composer4.rememberedValue();
                                if (!invalid$iv10) {
                                    value$iv10 = it$iv9;
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs322222222, false, m1098RoundedCornerShape0680j_4322222222, m1872buttonColorsro_MJ88322222222, null, null, m822PaddingValuesYgX7TsA322222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                            invoke(rowScope, composer, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                            ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                                }
                                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                                TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer5.skipToGroupEnd();
                                        }
                                    }), $composer4, 817889280, 356);
                                    ButtonColors m1872buttonColorsro_MJ88422222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                    RoundedCornerShape m1098RoundedCornerShape0680j_4422222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                    PaddingValues m822PaddingValuesYgX7TsA422222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                    Modifier m863height3ABfNKs422222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                    $composer4.startReplaceableGroup(1654765448);
                                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                    invalid$iv11 = $composer4.changed(function1);
                                    it$iv10 = $composer4.rememberedValue();
                                    if (!invalid$iv11) {
                                    }
                                    value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                            function1.invoke(VehicleType.APP_TEST);
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv11);
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs422222222222, false, m1098RoundedCornerShape0680j_4422222222222, m1872buttonColorsro_MJ88422222222222, null, null, m822PaddingValuesYgX7TsA422222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                        function1.invoke(VehicleType.DAELIM);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv10);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs322222222, false, m1098RoundedCornerShape0680j_4322222222, m1872buttonColorsro_MJ88322222222, null, null, m822PaddingValuesYgX7TsA322222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ884222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_44222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA4222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs4222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654765448);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv11 = $composer4.changed(function1);
                                it$iv10 = $composer4.rememberedValue();
                                if (!invalid$iv11) {
                                }
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                        function1.invoke(VehicleType.APP_TEST);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv11);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222222222222, false, m1098RoundedCornerShape0680j_44222222222222, m1872buttonColorsro_MJ884222222222222, null, null, m822PaddingValuesYgX7TsA4222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                                    function1.invoke(VehicleType.ATV);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv8);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs522, false, m1098RoundedCornerShape0680j_4522, m1872buttonColorsro_MJ88522, null, null, m822PaddingValuesYgX7TsA522, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ8822222232 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_422222232 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA22222232 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs22222232 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654704201);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv9 = $composer4.changed(function1);
                            it$iv8 = $composer4.rememberedValue();
                            if (!invalid$iv9) {
                                value$iv9 = it$iv8;
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs22222232, false, m1098RoundedCornerShape0680j_422222232, m1872buttonColorsro_MJ8822222232, null, null, m822PaddingValuesYgX7TsA22222232, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ883222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_43222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA3222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs3222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654734950);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv10 = $composer4.changed(function1);
                                it$iv9 = $composer4.rememberedValue();
                                if (!invalid$iv10) {
                                }
                                value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                        function1.invoke(VehicleType.DAELIM);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv10);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs3222222222, false, m1098RoundedCornerShape0680j_43222222222, m1872buttonColorsro_MJ883222222222, null, null, m822PaddingValuesYgX7TsA3222222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                        if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                            }
                                            FontWeight bold = FontWeight.INSTANCE.getBold();
                                            TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer5.skipToGroupEnd();
                                    }
                                }), $composer4, 817889280, 356);
                                ButtonColors m1872buttonColorsro_MJ8842222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                RoundedCornerShape m1098RoundedCornerShape0680j_442222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                                PaddingValues m822PaddingValuesYgX7TsA42222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs42222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                                $composer4.startReplaceableGroup(1654765448);
                                ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                                invalid$iv11 = $composer4.changed(function1);
                                it$iv10 = $composer4.rememberedValue();
                                if (!invalid$iv11) {
                                }
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                        function1.invoke(VehicleType.APP_TEST);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv11);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42222222222222, false, m1098RoundedCornerShape0680j_442222222222222, m1872buttonColorsro_MJ8842222222222222, null, null, m822PaddingValuesYgX7TsA42222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                    function1.invoke(VehicleType.MOTOCROSS);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv9);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs22222232, false, m1098RoundedCornerShape0680j_422222232, m1872buttonColorsro_MJ8822222232, null, null, m822PaddingValuesYgX7TsA22222232, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ8832222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_432222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA32222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs32222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654734950);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv10 = $composer4.changed(function1);
                            it$iv9 = $composer4.rememberedValue();
                            if (!invalid$iv10) {
                            }
                            value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                    function1.invoke(VehicleType.DAELIM);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv10);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32222222222, false, m1098RoundedCornerShape0680j_432222222222, m1872buttonColorsro_MJ8832222222222, null, null, m822PaddingValuesYgX7TsA32222222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ88422222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_4422222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA422222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs422222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654765448);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv11 = $composer4.changed(function1);
                            it$iv10 = $composer4.rememberedValue();
                            if (!invalid$iv11) {
                            }
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                    function1.invoke(VehicleType.APP_TEST);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv11);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs422222222222222, false, m1098RoundedCornerShape0680j_4422222222222222, m1872buttonColorsro_MJ88422222222222222, null, null, m822PaddingValuesYgX7TsA422222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv423));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv423), block$iv$iv$iv423);
                        skippableUpdate$iv$iv$iv423.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv423 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i722232 = ($changed$iv$iv$iv423 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i822232 = ((54 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u245_u24lambda_u2442222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                        ButtonColors m1872buttonColorsro_MJ885222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_45222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA5222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs5222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654674115);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv8 = $composer4.changed(function1);
                        it$iv73 = $composer4.rememberedValue();
                        if (!invalid$iv8) {
                            value$iv8 = it$iv73;
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs5222, false, m1098RoundedCornerShape0680j_45222, m1872buttonColorsro_MJ885222, null, null, m822PaddingValuesYgX7TsA5222, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ88222222322 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_4222222322 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA222222322 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs222222322 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654704201);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv9 = $composer4.changed(function1);
                            it$iv8 = $composer4.rememberedValue();
                            if (!invalid$iv9) {
                            }
                            value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                    function1.invoke(VehicleType.MOTOCROSS);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv9);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs222222322, false, m1098RoundedCornerShape0680j_4222222322, m1872buttonColorsro_MJ88222222322, null, null, m822PaddingValuesYgX7TsA222222322, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ88322222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_4322222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA322222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs322222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654734950);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv10 = $composer4.changed(function1);
                            it$iv9 = $composer4.rememberedValue();
                            if (!invalid$iv10) {
                            }
                            value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                    function1.invoke(VehicleType.DAELIM);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv10);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs322222222222, false, m1098RoundedCornerShape0680j_4322222222222, m1872buttonColorsro_MJ88322222222222, null, null, m822PaddingValuesYgX7TsA322222222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                    if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                        }
                                        FontWeight bold = FontWeight.INSTANCE.getBold();
                                        TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer5.skipToGroupEnd();
                                }
                            }), $composer4, 817889280, 356);
                            ButtonColors m1872buttonColorsro_MJ884222222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            RoundedCornerShape m1098RoundedCornerShape0680j_44222222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                            PaddingValues m822PaddingValuesYgX7TsA4222222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs4222222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                            $composer4.startReplaceableGroup(1654765448);
                            ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                            invalid$iv11 = $composer4.changed(function1);
                            it$iv10 = $composer4.rememberedValue();
                            if (!invalid$iv11) {
                            }
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                    function1.invoke(VehicleType.APP_TEST);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv11);
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222222222222222, false, m1098RoundedCornerShape0680j_44222222222222222, m1872buttonColorsro_MJ884222222222222222, null, null, m822PaddingValuesYgX7TsA4222222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                                function1.invoke(VehicleType.ATV);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv8);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs5222, false, m1098RoundedCornerShape0680j_45222, m1872buttonColorsro_MJ885222, null, null, m822PaddingValuesYgX7TsA5222, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ882222223222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_42222223222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA2222223222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs2222223222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654704201);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv9 = $composer4.changed(function1);
                        it$iv8 = $composer4.rememberedValue();
                        if (!invalid$iv9) {
                        }
                        value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                function1.invoke(VehicleType.MOTOCROSS);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv9);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs2222223222, false, m1098RoundedCornerShape0680j_42222223222, m1872buttonColorsro_MJ882222223222, null, null, m822PaddingValuesYgX7TsA2222223222, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ883222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_43222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA3222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs3222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654734950);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv10 = $composer4.changed(function1);
                        it$iv9 = $composer4.rememberedValue();
                        if (!invalid$iv10) {
                        }
                        value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                function1.invoke(VehicleType.DAELIM);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv10);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs3222222222222, false, m1098RoundedCornerShape0680j_43222222222222, m1872buttonColorsro_MJ883222222222222, null, null, m822PaddingValuesYgX7TsA3222222222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ8842222222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_442222222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA42222222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs42222222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u2442222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654765448);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv11 = $composer4.changed(function1);
                        it$iv10 = $composer4.rememberedValue();
                        if (!invalid$iv11) {
                        }
                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                function1.invoke(VehicleType.APP_TEST);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv11);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs42222222222222222, false, m1098RoundedCornerShape0680j_442222222222222222, m1872buttonColorsro_MJ8842222222222222222, null, null, m822PaddingValuesYgX7TsA42222222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                    $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv32), block$iv$iv$iv32);
                    skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i5222 = ($changed$iv$iv$iv32 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                    int i6222 = ((390 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, -1523887063, "C72@2651L80,73@2752L40,74@2813L3928:MainMenuScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("ACTIVE PROFILE / SANDBOX MODE", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(9), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3462, 0, 131058);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(2)), $composer4, 6);
                    Modifier modifier$iv2232 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv232 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                    $composer4.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Alignment.Vertical verticalAlignment$iv232 = Alignment.INSTANCE.getTop();
                    int $changed$iv22 = ((54 >> 3) & 14) | ((54 >> 3) & 112);
                    MeasurePolicy measurePolicy$iv4232 = RowKt.rowMeasurePolicy(horizontalArrangement$iv232, verticalAlignment$iv232, $composer4, $changed$iv22);
                    int $changed$iv$iv4232 = (54 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv4232 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv4232 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv922 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv4232 = LayoutKt.modifierMaterializerOf(modifier$iv2232);
                    int $changed$iv$iv$iv4232 = (($changed$iv$iv4232 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv4232, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv4232, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv4232 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                        skippableUpdate$iv$iv$iv4232.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4232 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i7222322 = ($changed$iv$iv$iv4232 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i8222322 = ((54 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u245_u24lambda_u24422222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                        ButtonColors m1872buttonColorsro_MJ8852222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_452222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA52222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs52222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654674115);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv8 = $composer4.changed(function1);
                        it$iv73 = $composer4.rememberedValue();
                        if (!invalid$iv8) {
                        }
                        value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                                function1.invoke(VehicleType.ATV);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv8);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs52222, false, m1098RoundedCornerShape0680j_452222, m1872buttonColorsro_MJ8852222, null, null, m822PaddingValuesYgX7TsA52222, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ8822222232222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_422222232222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA22222232222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs22222232222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654704201);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv9 = $composer4.changed(function1);
                        it$iv8 = $composer4.rememberedValue();
                        if (!invalid$iv9) {
                        }
                        value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                                function1.invoke(VehicleType.MOTOCROSS);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv9);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs22222232222, false, m1098RoundedCornerShape0680j_422222232222, m1872buttonColorsro_MJ8822222232222, null, null, m822PaddingValuesYgX7TsA22222232222, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ8832222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_432222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA32222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs32222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654734950);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv10 = $composer4.changed(function1);
                        it$iv9 = $composer4.rememberedValue();
                        if (!invalid$iv10) {
                        }
                        value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                                function1.invoke(VehicleType.DAELIM);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv10);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs32222222222222, false, m1098RoundedCornerShape0680j_432222222222222, m1872buttonColorsro_MJ8832222222222222, null, null, m822PaddingValuesYgX7TsA32222222222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                                if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                    }
                                    FontWeight bold = FontWeight.INSTANCE.getBold();
                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer5.skipToGroupEnd();
                            }
                        }), $composer4, 817889280, 356);
                        ButtonColors m1872buttonColorsro_MJ88422222222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        RoundedCornerShape m1098RoundedCornerShape0680j_4422222222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                        PaddingValues m822PaddingValuesYgX7TsA422222222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs422222222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u24422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                        $composer4.startReplaceableGroup(1654765448);
                        ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                        invalid$iv11 = $composer4.changed(function1);
                        it$iv10 = $composer4.rememberedValue();
                        if (!invalid$iv11) {
                        }
                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                                function1.invoke(VehicleType.APP_TEST);
                            }
                        };
                        $composer4.updateRememberedValue(value$iv11);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs422222222222222222, false, m1098RoundedCornerShape0680j_4422222222222222222, m1872buttonColorsro_MJ88422222222222222222, null, null, m822PaddingValuesYgX7TsA422222222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4232));
                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4232), block$iv$iv$iv4232);
                    skippableUpdate$iv$iv$iv4232.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4232 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i72223222 = ($changed$iv$iv$iv4232 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i82223222 = ((54 >> 6) & 112) | 6;
                    RowScope $this$invoke_u24lambda_u245_u24lambda_u244222222 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer4, -244641474, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2");
                    ButtonColors m1872buttonColorsro_MJ88522222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    RoundedCornerShape m1098RoundedCornerShape0680j_4522222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                    PaddingValues m822PaddingValuesYgX7TsA522222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs522222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                    $composer4.startReplaceableGroup(1654674115);
                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                    invalid$iv8 = $composer4.changed(function1);
                    it$iv73 = $composer4.rememberedValue();
                    if (!invalid$iv8) {
                    }
                    value$iv8 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1
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
                            function1.invoke(VehicleType.ATV);
                        }
                    };
                    $composer4.updateRememberedValue(value$iv8);
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv8, m863height3ABfNKs522222, false, m1098RoundedCornerShape0680j_4522222, m1872buttonColorsro_MJ88522222, null, null, m822PaddingValuesYgX7TsA522222, null, ComposableLambdaKt.composableLambda($composer4, 1395551610, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                            invoke(rowScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                            ComposerKt.sourceInformation($composer5, "C87@3588L301:MainMenuScreen.kt#xkugs2");
                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1395551610, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:87)");
                                }
                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                TextKt.m2730Text4IGK_g("🚜 ATV", (Modifier) null, VehicleType.this == VehicleType.ATV ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer5.skipToGroupEnd();
                        }
                    }), $composer4, 817889280, 356);
                    ButtonColors m1872buttonColorsro_MJ88222222322222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    RoundedCornerShape m1098RoundedCornerShape0680j_4222222322222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                    PaddingValues m822PaddingValuesYgX7TsA222222322222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs222222322222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                    $composer4.startReplaceableGroup(1654704201);
                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                    invalid$iv9 = $composer4.changed(function1);
                    it$iv8 = $composer4.rememberedValue();
                    if (!invalid$iv9) {
                    }
                    value$iv9 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1
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
                            function1.invoke(VehicleType.MOTOCROSS);
                        }
                    };
                    $composer4.updateRememberedValue(value$iv9);
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv9, m863height3ABfNKs222222322222, false, m1098RoundedCornerShape0680j_4222222322222, m1872buttonColorsro_MJ88222222322222, null, null, m822PaddingValuesYgX7TsA222222322222, null, ComposableLambdaKt.composableLambda($composer4, 1951999601, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                            invoke(rowScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                            ComposerKt.sourceInformation($composer5, "C104@4541L309:MainMenuScreen.kt#xkugs2");
                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1951999601, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:104)");
                                }
                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                TextKt.m2730Text4IGK_g("🏍️ MOTO", (Modifier) null, VehicleType.this == VehicleType.MOTOCROSS ? Color.INSTANCE.m4049getWhite0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer5.skipToGroupEnd();
                        }
                    }), $composer4, 817889280, 356);
                    ButtonColors m1872buttonColorsro_MJ88322222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    RoundedCornerShape m1098RoundedCornerShape0680j_4322222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                    PaddingValues m822PaddingValuesYgX7TsA322222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs322222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                    $composer4.startReplaceableGroup(1654734950);
                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                    invalid$iv10 = $composer4.changed(function1);
                    it$iv9 = $composer4.rememberedValue();
                    if (!invalid$iv10) {
                    }
                    value$iv10 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1
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
                            function1.invoke(VehicleType.DAELIM);
                        }
                    };
                    $composer4.updateRememberedValue(value$iv10);
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv10, m863height3ABfNKs322222222222222, false, m1098RoundedCornerShape0680j_4322222222222222, m1872buttonColorsro_MJ88322222222222222, null, null, m822PaddingValuesYgX7TsA322222222222222, null, ComposableLambdaKt.composableLambda($composer4, 1818295538, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                            invoke(rowScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RowScope Button, Composer $composer5, int $changed3) {
                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                            ComposerKt.sourceInformation($composer5, "C121@5496L307:MainMenuScreen.kt#xkugs2");
                            if (($changed3 & 81) != 16 || !$composer5.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1818295538, $changed3, -1, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:121)");
                                }
                                FontWeight bold = FontWeight.INSTANCE.getBold();
                                TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, VehicleType.this == VehicleType.DAELIM ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, bold, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 199686, 0, 131026);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer5.skipToGroupEnd();
                        }
                    }), $composer4, 817889280, 356);
                    ButtonColors m1872buttonColorsro_MJ884222222222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(vehicleType != VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    RoundedCornerShape m1098RoundedCornerShape0680j_44222222222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                    PaddingValues m822PaddingValuesYgX7TsA4222222222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs4222222222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$invoke_u24lambda_u245_u24lambda_u244222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(36));
                    $composer4.startReplaceableGroup(1654765448);
                    ComposerKt.sourceInformation($composer4, "CC(remember):MainMenuScreen.kt#9igjgp");
                    invalid$iv11 = $composer4.changed(function1);
                    it$iv10 = $composer4.rememberedValue();
                    if (!invalid$iv11) {
                    }
                    value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1
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
                            function1.invoke(VehicleType.APP_TEST);
                        }
                    };
                    $composer4.updateRememberedValue(value$iv11);
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv11, m863height3ABfNKs4222222222222222222, false, m1098RoundedCornerShape0680j_44222222222222222222, m1872buttonColorsro_MJ884222222222222222222, null, null, m822PaddingValuesYgX7TsA4222222222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6696getLambda1$app_debug(), $composer4, 817889280, 356);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            }), $composer3, 196614, 24);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endReplaceableGroup();
            $composer3.endNode();
            $composer3.endReplaceableGroup();
            $composer3.endReplaceableGroup();
            Modifier modifier$iv3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(5));
            $composer3.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv32 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv2, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv32 = (54 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv32 = $composer3.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv62 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv32 = LayoutKt.modifierMaterializerOf(modifier$iv3);
            int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i522 = ($changed$iv$iv$iv32 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                int i622 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 1878869022, "C159@7185L31,155@6994L236,166@7442L33,162@7244L245,173@7692L37,169@7503L240,180@7942L35,176@7757L234,188@8227L35,183@8005L271,195@8483L36,191@8290L243:MainMenuScreen.kt#xkugs2");
                String str22 = "Dashboard & " + activeVehicle.getShortName() + " Logging";
                long cgsGreen22 = ColorKt.getCgsGreen();
                $composer3.startReplaceableGroup(-1047765375);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv = $composer3.rememberedValue();
                if (!invalid$iv) {
                }
                value$iv = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$1$1
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
                        onSelectMode.invoke(RideMode.TRIP);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("TRIP", str22, cgsGreen22, 0L, (Function0) value$iv, $composer3, 390, 8);
                long cgsAccent2222 = ColorKt.getCgsAccent();
                $composer3.startReplaceableGroup(-1047757149);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv2 = $composer3.rememberedValue();
                if (!invalid$iv2) {
                }
                value$iv2 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$2$1
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
                        onSelectMode.invoke(RideMode.POCKET);
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent2222, 0L, (Function0) value$iv2, $composer3, 438, 8);
                long cgsSurfaceVariant422222 = ColorKt.getCgsSurfaceVariant();
                $composer3.startReplaceableGroup(-1047749145);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv3 = $composer3.rememberedValue();
                if (!invalid$iv3) {
                }
                value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                        onSelectMode.invoke(RideMode.TEST_TRACK);
                    }
                };
                $composer3.updateRememberedValue(value$iv3);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant422222, 0L, (Function0) value$iv3, $composer3, 438, 8);
                long cgsSurfaceVariant222222222 = ColorKt.getCgsSurfaceVariant();
                $composer3.startReplaceableGroup(-1047741147);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv4 = $composer3.rememberedValue();
                if (!invalid$iv4) {
                }
                value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                        onSelectMode.invoke(RideMode.APP_DIAG);
                    }
                };
                $composer3.updateRememberedValue(value$iv4);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant222222222, 0L, (Function0) value$iv4, $composer3, 438, 8);
                long cgsYellow2222222222 = ColorKt.getCgsYellow();
                long m4038getBlack0d7_KjU2222222222 = Color.INSTANCE.m4038getBlack0d7_KjU();
                $composer3.startReplaceableGroup(-1047732027);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv5 = $composer3.rememberedValue();
                if (!invalid$iv5) {
                }
                value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                        onSelectMode.invoke(RideMode.ATV_DIAG);
                    }
                };
                $composer3.updateRememberedValue(value$iv5);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow2222222222, m4038getBlack0d7_KjU2222222222, (Function0) value$iv5, $composer3, 3510, 0);
                long cgsSurfaceVariant3222222222222 = ColorKt.getCgsSurfaceVariant();
                $composer3.startReplaceableGroup(-1047723834);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                if (($dirty2 & 896) != 256) {
                }
                it$iv6 = $composer3.rememberedValue();
                if (!invalid$iv6) {
                }
                value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                        onSelectMode.invoke(RideMode.CARB_TUNE);
                    }
                };
                $composer3.updateRememberedValue(value$iv6);
                $composer3.endReplaceableGroup();
                m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant3222222222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                Modifier modifier$iv222222222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalArrangement$iv22222222222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                $composer3.startReplaceableGroup(693286680);
                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                Alignment.Vertical verticalAlignment$iv22222222222222 = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv422222222222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22222222222222, verticalAlignment$iv22222222222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv422222222222222 = (54 << 3) & 112;
                $composer3.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv422222222222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv422222222222222 = $composer3.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv722222222222222 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv422222222222222 = LayoutKt.modifierMaterializerOf(modifier$iv222222222222222);
                int $changed$iv$iv$iv422222222222222 = (($changed$iv$iv422222222222222 << 9) & 7168) | 6;
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv422222222222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv422222222222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv422222222222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222222222222));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv422222222222222), block$iv$iv$iv422222222222222);
                skippableUpdate$iv$iv$iv422222222222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222222222222 >> 3) & 112));
                $composer3.startReplaceableGroup(2058660585);
                int i72222222222222222 = ($changed$iv$iv$iv422222222222222 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                int i82222222222222222 = ((54 >> 6) & 112) | 6;
                RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222222 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
                ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
                ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
                ButtonColors m1872buttonColorsro_MJ882222222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
                RoundedCornerShape m1098RoundedCornerShape0680j_42222222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
                PaddingValues m822PaddingValuesYgX7TsA2222222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                Modifier m863height3ABfNKs2222222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u24102222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
                $composer3.startReplaceableGroup(-1047684364);
                ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
                invalid$iv7 = (458752 & $dirty2) != 131072;
                Object it$iv72222222222222222 = $composer3.rememberedValue();
                if (invalid$iv7) {
                }
                value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                        onOpenConfig.invoke();
                    }
                };
                $composer3.updateRememberedValue(value$iv7);
                $composer3.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs2222222222222222, false, m1098RoundedCornerShape0680j_42222222222222222, m1872buttonColorsro_MJ882222222222222222, null, null, m822PaddingValuesYgX7TsA2222222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv32), block$iv$iv$iv32);
            skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i5222 = ($changed$iv$iv$iv32 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
            int i6222 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1878869022, "C159@7185L31,155@6994L236,166@7442L33,162@7244L245,173@7692L37,169@7503L240,180@7942L35,176@7757L234,188@8227L35,183@8005L271,195@8483L36,191@8290L243:MainMenuScreen.kt#xkugs2");
            String str222 = "Dashboard & " + activeVehicle.getShortName() + " Logging";
            long cgsGreen222 = ColorKt.getCgsGreen();
            $composer3.startReplaceableGroup(-1047765375);
            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
            if (($dirty2 & 896) != 256) {
            }
            it$iv = $composer3.rememberedValue();
            if (!invalid$iv) {
            }
            value$iv = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$1$1
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
                    onSelectMode.invoke(RideMode.TRIP);
                }
            };
            $composer3.updateRememberedValue(value$iv);
            $composer3.endReplaceableGroup();
            m6748ModeButtont6yy7ic("TRIP", str222, cgsGreen222, 0L, (Function0) value$iv, $composer3, 390, 8);
            long cgsAccent22222 = ColorKt.getCgsAccent();
            $composer3.startReplaceableGroup(-1047757149);
            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
            if (($dirty2 & 896) != 256) {
            }
            it$iv2 = $composer3.rememberedValue();
            if (!invalid$iv2) {
            }
            value$iv2 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$2$1
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
                    onSelectMode.invoke(RideMode.POCKET);
                }
            };
            $composer3.updateRememberedValue(value$iv2);
            $composer3.endReplaceableGroup();
            m6748ModeButtont6yy7ic("👝 POCKET MODE", "Hands-Free Background Ride & Voice Updates", cgsAccent22222, 0L, (Function0) value$iv2, $composer3, 438, 8);
            long cgsSurfaceVariant4222222 = ColorKt.getCgsSurfaceVariant();
            $composer3.startReplaceableGroup(-1047749145);
            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
            if (($dirty2 & 896) != 256) {
            }
            it$iv3 = $composer3.rememberedValue();
            if (!invalid$iv3) {
            }
            value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$3$1
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
                    onSelectMode.invoke(RideMode.TEST_TRACK);
                }
            };
            $composer3.updateRememberedValue(value$iv3);
            $composer3.endReplaceableGroup();
            m6748ModeButtont6yy7ic("TEST TRACK", "Isolated Calibration Sessions", cgsSurfaceVariant4222222, 0L, (Function0) value$iv3, $composer3, 438, 8);
            long cgsSurfaceVariant2222222222 = ColorKt.getCgsSurfaceVariant();
            $composer3.startReplaceableGroup(-1047741147);
            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
            if (($dirty2 & 896) != 256) {
            }
            it$iv4 = $composer3.rememberedValue();
            if (!invalid$iv4) {
            }
            value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$4$1
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
                    onSelectMode.invoke(RideMode.APP_DIAG);
                }
            };
            $composer3.updateRememberedValue(value$iv4);
            $composer3.endReplaceableGroup();
            m6748ModeButtont6yy7ic("APP DIAG", "System & Hardware Self-Test", cgsSurfaceVariant2222222222, 0L, (Function0) value$iv4, $composer3, 438, 8);
            long cgsYellow22222222222 = ColorKt.getCgsYellow();
            long m4038getBlack0d7_KjU22222222222 = Color.INSTANCE.m4038getBlack0d7_KjU();
            $composer3.startReplaceableGroup(-1047732027);
            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
            if (($dirty2 & 896) != 256) {
            }
            it$iv5 = $composer3.rememberedValue();
            if (!invalid$iv5) {
            }
            value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$5$1
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
                    onSelectMode.invoke(RideMode.ATV_DIAG);
                }
            };
            $composer3.updateRememberedValue(value$iv5);
            $composer3.endReplaceableGroup();
            m6748ModeButtont6yy7ic("ATV DIAG", "Stationary Live Engine Observer", cgsYellow22222222222, m4038getBlack0d7_KjU22222222222, (Function0) value$iv5, $composer3, 3510, 0);
            long cgsSurfaceVariant32222222222222 = ColorKt.getCgsSurfaceVariant();
            $composer3.startReplaceableGroup(-1047723834);
            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
            if (($dirty2 & 896) != 256) {
            }
            it$iv6 = $composer3.rememberedValue();
            if (!invalid$iv6) {
            }
            value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$2$6$1
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
                    onSelectMode.invoke(RideMode.CARB_TUNE);
                }
            };
            $composer3.updateRememberedValue(value$iv6);
            $composer3.endReplaceableGroup();
            m6748ModeButtont6yy7ic("CARB TUNE", "Carburetor & Idle Tuning Assistant", cgsSurfaceVariant32222222222222, 0L, (Function0) value$iv6, $composer3, 438, 8);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endReplaceableGroup();
            $composer3.endNode();
            $composer3.endReplaceableGroup();
            $composer3.endReplaceableGroup();
            Modifier modifier$iv2222222222222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalArrangement$iv222222222222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
            $composer3.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
            Alignment.Vertical verticalAlignment$iv222222222222222 = Alignment.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv4222222222222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222222222222222, verticalAlignment$iv222222222222222, $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv4222222222222222 = (54 << 3) & 112;
            $composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv4222222222222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv4222222222222222 = $composer3.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv7222222222222222 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv4222222222222222 = LayoutKt.modifierMaterializerOf(modifier$iv2222222222222222);
            int $changed$iv$iv$iv4222222222222222 = (($changed$iv$iv4222222222222222 << 9) & 7168) | 6;
            if (!($composer3.getApplier() instanceof Applier)) {
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer3);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4222222222222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4222222222222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv4222222222222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222222222222222));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv4222222222222222), block$iv$iv$iv4222222222222222);
            skippableUpdate$iv$iv$iv4222222222222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222222222222222 >> 3) & 112));
            $composer3.startReplaceableGroup(2058660585);
            int i722222222222222222 = ($changed$iv$iv$iv4222222222222222 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
            int i822222222222222222 = ((54 >> 6) & 112) | 6;
            RowScope $this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222222 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer3, 1880605890, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2");
            ButtonKt.Button(onOpenLogs, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6697getLambda2$app_debug(), $composer3, (($dirty2 >> 9) & 14) | 817889280, 356);
            ButtonKt.Button(onOpenMaintenance, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14), null, null, PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2)), null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6698getLambda3$app_debug(), $composer3, (($dirty2 >> 12) & 14) | 817889280, 356);
            ButtonColors m1872buttonColorsro_MJ8822222222222222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, (ButtonDefaults.$stable << 12) | 6, 14);
            RoundedCornerShape m1098RoundedCornerShape0680j_422222222222222222 = RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6));
            PaddingValues m822PaddingValuesYgX7TsA22222222222222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
            Modifier m863height3ABfNKs22222222222222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$MainMenuScreen_u24lambda_u2411_u24lambda_u241022222222222222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(42));
            $composer3.startReplaceableGroup(-1047684364);
            ComposerKt.sourceInformation($composer3, "CC(remember):MainMenuScreen.kt#9igjgp");
            invalid$iv7 = (458752 & $dirty2) != 131072;
            Object it$iv722222222222222222 = $composer3.rememberedValue();
            if (invalid$iv7) {
            }
            value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$1$3$1$1
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
                    onOpenConfig.invoke();
                }
            };
            $composer3.updateRememberedValue(value$iv7);
            $composer3.endReplaceableGroup();
            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs22222222222222222, false, m1098RoundedCornerShape0680j_422222222222222222, m1872buttonColorsro_MJ8822222222222222222, null, null, m822PaddingValuesYgX7TsA22222222222222222, null, ComposableSingletons$MainMenuScreenKt.INSTANCE.m6699getLambda4$app_debug(), $composer3, 817889280, 356);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endReplaceableGroup();
            $composer3.endNode();
            $composer3.endReplaceableGroup();
            $composer3.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$MainMenuScreen$2
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

                public final void invoke(Composer composer, int i9) {
                    MainMenuScreenKt.MainMenuScreen(VehicleType.this, onSwitchVehicle, onSelectMode, onOpenLogs, onOpenMaintenance, onOpenConfig, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ModeButton-t6yy7ic, reason: not valid java name */
    public static final void m6748ModeButtont6yy7ic(final String title, final String subtitle, final long backgroundColor, long textColor, final Function0<Unit> function0, Composer $composer, final int $changed, final int i) {
        long j;
        long textColor2;
        Composer $composer2 = $composer.startRestartGroup(1472211679);
        ComposerKt.sourceInformation($composer2, "C(ModeButton)P(4,2,0:c#ui.graphics.Color,3:c#ui.graphics.Color)247@10416L46,245@10349L659:MainMenuScreen.kt#xkugs2");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(title) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 112) == 0) {
            $dirty |= $composer2.changed(subtitle) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty |= 384;
        } else if (($changed & 896) == 0) {
            $dirty |= $composer2.changed(backgroundColor) ? 256 : 128;
        }
        int i2 = i & 8;
        if (i2 != 0) {
            $dirty |= 3072;
            j = textColor;
        } else if (($changed & 7168) == 0) {
            j = textColor;
            $dirty |= $composer2.changed(j) ? 2048 : 1024;
        } else {
            j = textColor;
        }
        if ((i & 16) != 0) {
            $dirty |= 24576;
        } else if ((57344 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 16384 : 8192;
        }
        int $dirty2 = $dirty;
        if ((46811 & $dirty2) == 9362 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            textColor2 = j;
        } else {
            final long textColor3 = i2 != 0 ? Color.INSTANCE.m4049getWhite0d7_KjU() : j;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1472211679, $dirty2, -1, "com.cgs.atvobserver.ui.screens.ModeButton (MainMenuScreen.kt:244)");
            }
            ButtonKt.Button(function0, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(backgroundColor, 0L, 0L, 0L, $composer2, (($dirty2 >> 6) & 14) | (ButtonDefaults.$stable << 12), 14), null, null, null, null, ComposableLambdaKt.composableLambda($composer2, -1427119409, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$ModeButton$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                    invoke(rowScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01f5  */
                /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(RowScope Button, Composer $composer3, int $changed2) {
                    long m4010copywmQWz5c;
                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                    ComposerKt.sourceInformation($composer3, "C253@10605L397:MainMenuScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1427119409, $changed2, -1, "com.cgs.atvobserver.ui.screens.ModeButton.<anonymous> (MainMenuScreen.kt:253)");
                        }
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                        String str = title;
                        long j2 = textColor3;
                        String str2 = subtitle;
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Modifier modifier$iv = Modifier.INSTANCE;
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer3, ((384 >> 3) & 14) | ((384 >> 3) & 112));
                        int $changed$iv$iv = (384 << 3) & 112;
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
                            int i3 = ($changed$iv$iv$iv >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                            int i4 = ((384 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1599626038, "C254@10678L163,260@10854L138:MainMenuScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g(str, (Modifier) null, j2, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 199680, 0, 131026);
                            long sp = TextUnitKt.getSp(9);
                            m4010copywmQWz5c = Color.m4010copywmQWz5c(j2, (r12 & 1) != 0 ? Color.m4014getAlphaimpl(j2) : 0.8f, (r12 & 2) != 0 ? Color.m4018getRedimpl(j2) : 0.0f, (r12 & 4) != 0 ? Color.m4017getGreenimpl(j2) : 0.0f, (r12 & 8) != 0 ? Color.m4015getBlueimpl(j2) : 0.0f);
                            TextKt.m2730Text4IGK_g(str2, (Modifier) null, m4010copywmQWz5c, sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3072, 0, 131058);
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
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i32 = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        int i42 = ((384 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1599626038, "C254@10678L163,260@10854L138:MainMenuScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g(str, (Modifier) null, j2, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 199680, 0, 131026);
                        long sp2 = TextUnitKt.getSp(9);
                        m4010copywmQWz5c = Color.m4010copywmQWz5c(j2, (r12 & 1) != 0 ? Color.m4014getAlphaimpl(j2) : 0.8f, (r12 & 2) != 0 ? Color.m4018getRedimpl(j2) : 0.0f, (r12 & 4) != 0 ? Color.m4017getGreenimpl(j2) : 0.0f, (r12 & 8) != 0 ? Color.m4015getBlueimpl(j2) : 0.0f);
                        TextKt.m2730Text4IGK_g(str2, (Modifier) null, m4010copywmQWz5c, sp2, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3072, 0, 131058);
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
            }), $composer2, (($dirty2 >> 12) & 14) | 805306416, 484);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            textColor2 = textColor3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final long j2 = textColor2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.MainMenuScreenKt$ModeButton$2
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
                    MainMenuScreenKt.m6748ModeButtont6yy7ic(title, subtitle, backgroundColor, j2, function0, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }
}
