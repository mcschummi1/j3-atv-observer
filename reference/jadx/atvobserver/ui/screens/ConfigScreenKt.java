package com.cgs.atvobserver.ui.screens;

import androidx.camera.video.AudioStats;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.SwitchDefaults;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.cgs.atvobserver.data.config.AppConfig;
import com.cgs.atvobserver.data.config.AppConfigManager;
import com.cgs.atvobserver.data.config.VehicleSpecificConfig;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.domain.DaelimOdometerManager;
import com.cgs.atvobserver.ui.theme.ColorKt;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* compiled from: ConfigScreen.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a3\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0004\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0007¢\u0006\u0002\b\bH\u0003¢\u0006\u0002\u0010\t\u001a/\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00010\u0010H\u0007¢\u0006\u0002\u0010\u0011¨\u0006\u0012²\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u0015\u001a\u00020\u0016X\u008a\u008e\u0002²\u0006\n\u0010\u0017\u001a\u00020\u0003X\u008a\u008e\u0002²\u0006\n\u0010\u0018\u001a\u00020\u0003X\u008a\u008e\u0002²\u0006\n\u0010\u0019\u001a\u00020\u0003X\u008a\u008e\u0002²\u0006\n\u0010\u001a\u001a\u00020\u0003X\u008a\u008e\u0002²\u0006\n\u0010\u001b\u001a\u00020\u0003X\u008a\u008e\u0002²\u0006\n\u0010\u001c\u001a\u00020\u0003X\u008a\u008e\u0002²\u0006\n\u0010\u001d\u001a\u00020\u001eX\u008a\u008e\u0002²\u0006\n\u0010\u001f\u001a\u00020\u0003X\u008a\u008e\u0002²\u0006\n\u0010 \u001a\u00020\u001eX\u008a\u008e\u0002"}, d2 = {"ConfigCard", "", "title", "", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V", "ConfigScreen", "configManager", "Lcom/cgs/atvobserver/data/config/AppConfigManager;", "daelimOdometerManager", "Lcom/cgs/atvobserver/domain/DaelimOdometerManager;", "onBackToMenu", "Lkotlin/Function0;", "(Lcom/cgs/atvobserver/data/config/AppConfigManager;Lcom/cgs/atvobserver/domain/DaelimOdometerManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "app_debug", "currentConfig", "Lcom/cgs/atvobserver/data/config/AppConfig;", "configTargetVehicle", "Lcom/cgs/atvobserver/data/model/VehicleType;", "tankCapacityInput", "criticalTempInput", "targetIdleRpmInput", "assignedBatteryInput", "frontSprocketTeeth", "rearSprocketTeeth", "voiceEnabled", "", "startupScreen", "tempMonitoringEnabled"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class ConfigScreenKt {
    /* JADX WARN: Removed duplicated region for block: B:102:0x0b99  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0ba2  */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0a14  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x09cf  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x075d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0714  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x070e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0747  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x09bf  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x09cb  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x09fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ConfigScreen(final AppConfigManager configManager, DaelimOdometerManager daelimOdometerManager, final Function0<Unit> onBackToMenu, Composer $composer, final int $changed, final int i) {
        Object value$iv;
        Object value$iv2;
        MutableState configTargetVehicle$delegate;
        Object value$iv3;
        Object value$iv4;
        Object value$iv5;
        Object value$iv6;
        Object value$iv7;
        Object value$iv8;
        Object value$iv9;
        MutableState tempMonitoringEnabled$delegate;
        MutableState voiceEnabled$delegate;
        final double sprocketRatio;
        Function0 factory$iv$iv$iv;
        Function0 factory$iv$iv$iv2;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        Function0 factory$iv$iv$iv3;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        Composer $this$Layout_u24lambda_u240$iv$iv3;
        CompositionLocalMap localMap$iv$iv;
        MeasurePolicy measurePolicy$iv;
        ScopeUpdateScope endRestartGroup;
        Intrinsics.checkNotNullParameter(configManager, "configManager");
        Intrinsics.checkNotNullParameter(onBackToMenu, "onBackToMenu");
        Composer $composer2 = $composer.startRestartGroup(2057669194);
        ComposerKt.sourceInformation($composer2, "C(ConfigScreen)30@1200L16,32@1249L56,36@1457L79,37@1566L87,38@1684L79,39@1796L76,42@1939L33,43@2002L33,45@2061L64,46@2151L56,47@2241L71,53@2516L11221:ConfigScreen.kt#xkugs2");
        DaelimOdometerManager daelimOdometerManager2 = (i & 2) != 0 ? null : daelimOdometerManager;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2057669194, $changed, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen (ConfigScreen.kt:29)");
        }
        final State currentConfig$delegate = SnapshotStateKt.collectAsState(configManager.getConfigState(), null, $composer2, 8, 1);
        $composer2.startReplaceableGroup(-1572538970);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        Object it$iv = $composer2.rememberedValue();
        if (it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ConfigScreen$lambda$0(currentConfig$delegate).getActiveVehicle(), null, 2, null);
            $composer2.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        MutableState configTargetVehicle$delegate2 = (MutableState) value$iv;
        $composer2.endReplaceableGroup();
        VehicleSpecificConfig vehicleSpecificConfig = ConfigScreen$lambda$0(currentConfig$delegate).getVehicleConfigs().get(ConfigScreen$lambda$2(configTargetVehicle$delegate2));
        if (vehicleSpecificConfig == null) {
            vehicleSpecificConfig = new VehicleSpecificConfig(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0, null, 15, null);
        }
        VehicleSpecificConfig vehicleCfg = vehicleSpecificConfig;
        VehicleType ConfigScreen$lambda$2 = ConfigScreen$lambda$2(configTargetVehicle$delegate2);
        $composer2.startReplaceableGroup(-1572532291);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        boolean invalid$iv = $composer2.changed(ConfigScreen$lambda$2);
        Object it$iv2 = $composer2.rememberedValue();
        if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
            value$iv2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(String.valueOf(vehicleCfg.getTankCapacityL()), null, 2, null);
            $composer2.updateRememberedValue(value$iv2);
        } else {
            value$iv2 = it$iv2;
        }
        final MutableState tankCapacityInput$delegate = (MutableState) value$iv2;
        $composer2.endReplaceableGroup();
        VehicleType ConfigScreen$lambda$22 = ConfigScreen$lambda$2(configTargetVehicle$delegate2);
        $composer2.startReplaceableGroup(-1572528795);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        boolean invalid$iv2 = $composer2.changed(ConfigScreen$lambda$22);
        Object it$iv3 = $composer2.rememberedValue();
        if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
            configTargetVehicle$delegate = configTargetVehicle$delegate2;
            value$iv3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(String.valueOf((int) vehicleCfg.getCriticalTempC()), null, 2, null);
            $composer2.updateRememberedValue(value$iv3);
        } else {
            value$iv3 = it$iv3;
            configTargetVehicle$delegate = configTargetVehicle$delegate2;
        }
        final MutableState criticalTempInput$delegate = (MutableState) value$iv3;
        $composer2.endReplaceableGroup();
        VehicleType ConfigScreen$lambda$23 = ConfigScreen$lambda$2(configTargetVehicle$delegate);
        $composer2.startReplaceableGroup(-1572525027);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        boolean invalid$iv3 = $composer2.changed(ConfigScreen$lambda$23);
        Object it$iv4 = $composer2.rememberedValue();
        if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
            value$iv4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(String.valueOf(vehicleCfg.getTargetIdleRpm()), null, 2, null);
            $composer2.updateRememberedValue(value$iv4);
        } else {
            value$iv4 = it$iv4;
        }
        final MutableState targetIdleRpmInput$delegate = (MutableState) value$iv4;
        $composer2.endReplaceableGroup();
        VehicleType ConfigScreen$lambda$24 = ConfigScreen$lambda$2(configTargetVehicle$delegate);
        $composer2.startReplaceableGroup(-1572521446);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        boolean invalid$iv4 = $composer2.changed(ConfigScreen$lambda$24);
        Object it$iv5 = $composer2.rememberedValue();
        if (invalid$iv4 || it$iv5 == Composer.INSTANCE.getEmpty()) {
            value$iv5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(vehicleCfg.getAssignedBattery(), null, 2, null);
            $composer2.updateRememberedValue(value$iv5);
        } else {
            value$iv5 = it$iv5;
        }
        final MutableState assignedBatteryInput$delegate = (MutableState) value$iv5;
        $composer2.endReplaceableGroup();
        $composer2.startReplaceableGroup(-1572516913);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        Object it$iv6 = $composer2.rememberedValue();
        if (it$iv6 == Composer.INSTANCE.getEmpty()) {
            value$iv6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("14", null, 2, null);
            $composer2.updateRememberedValue(value$iv6);
        } else {
            value$iv6 = it$iv6;
        }
        final MutableState frontSprocketTeeth$delegate = (MutableState) value$iv6;
        $composer2.endReplaceableGroup();
        $composer2.startReplaceableGroup(-1572514897);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        Object it$iv7 = $composer2.rememberedValue();
        if (it$iv7 == Composer.INSTANCE.getEmpty()) {
            value$iv7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("37", null, 2, null);
            $composer2.updateRememberedValue(value$iv7);
        } else {
            value$iv7 = it$iv7;
        }
        final MutableState rearSprocketTeeth$delegate = (MutableState) value$iv7;
        $composer2.endReplaceableGroup();
        $composer2.startReplaceableGroup(-1572512978);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        Object it$iv8 = $composer2.rememberedValue();
        if (it$iv8 == Composer.INSTANCE.getEmpty()) {
            value$iv8 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(ConfigScreen$lambda$0(currentConfig$delegate).getVoiceAssistantEnabled()), null, 2, null);
            $composer2.updateRememberedValue(value$iv8);
        } else {
            value$iv8 = it$iv8;
        }
        MutableState voiceEnabled$delegate2 = (MutableState) value$iv8;
        $composer2.endReplaceableGroup();
        $composer2.startReplaceableGroup(-1572510106);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        Object value$iv10 = $composer2.rememberedValue();
        if (value$iv10 == Composer.INSTANCE.getEmpty()) {
            value$iv10 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ConfigScreen$lambda$0(currentConfig$delegate).getStartupScreen(), null, 2, null);
            $composer2.updateRememberedValue(value$iv10);
        }
        final MutableState startupScreen$delegate = (MutableState) value$iv10;
        $composer2.endReplaceableGroup();
        $composer2.startReplaceableGroup(-1572507211);
        ComposerKt.sourceInformation($composer2, "CC(remember):ConfigScreen.kt#9igjgp");
        Object it$iv9 = $composer2.rememberedValue();
        if (it$iv9 == Composer.INSTANCE.getEmpty()) {
            value$iv9 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(ConfigScreen$lambda$0(currentConfig$delegate).getTemperatureMonitoringEnabled()), null, 2, null);
            $composer2.updateRememberedValue(value$iv9);
        } else {
            value$iv9 = it$iv9;
        }
        MutableState tempMonitoringEnabled$delegate2 = (MutableState) value$iv9;
        $composer2.endReplaceableGroup();
        Integer intOrNull = StringsKt.toIntOrNull(ConfigScreen$lambda$17(frontSprocketTeeth$delegate));
        int frontT = intOrNull != null ? intOrNull.intValue() : 14;
        Integer intOrNull2 = StringsKt.toIntOrNull(ConfigScreen$lambda$20(rearSprocketTeeth$delegate));
        int rearT = intOrNull2 != null ? intOrNull2.intValue() : 37;
        if (frontT > 0) {
            tempMonitoringEnabled$delegate = tempMonitoringEnabled$delegate2;
            voiceEnabled$delegate = voiceEnabled$delegate2;
            sprocketRatio = rearT / frontT;
        } else {
            tempMonitoringEnabled$delegate = tempMonitoringEnabled$delegate2;
            voiceEnabled$delegate = voiceEnabled$delegate2;
            sprocketRatio = 2.64d;
        }
        Modifier m828padding3ABfNKs = PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(16));
        Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
        $composer2.startReplaceableGroup(-483455358);
        ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
        MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(spaceBetween, centerHorizontally, $composer2, ((438 >> 3) & 14) | ((438 >> 3) & 112));
        int $changed$iv$iv = (438 << 3) & 112;
        $composer2.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
        CompositionLocalMap localMap$iv$iv2 = $composer2.getCurrentCompositionLocalMap();
        Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
        Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(m828padding3ABfNKs);
        final DaelimOdometerManager daelimOdometerManager3 = daelimOdometerManager2;
        int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
        if (!($composer2.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        $composer2.startReusableNode();
        if ($composer2.getInserting()) {
            factory$iv$iv$iv = factory$iv$iv$iv4;
            $composer2.createNode(factory$iv$iv$iv);
        } else {
            factory$iv$iv$iv = factory$iv$iv$iv4;
            $composer2.useNode();
        }
        Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer2);
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (!$this$Layout_u24lambda_u240$iv$iv4.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
            skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i2 = ($changed$iv$iv$iv >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            int i3 = ((438 >> 6) & 112) | 6;
            ColumnScope $this$ConfigScreen_u24lambda_u2434 = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer2, 1884679789, "C61@2778L313,71@3276L21,66@3101L8576,233@11713L2018:ConfigScreen.kt#xkugs2");
            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
            $composer2.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Modifier modifier$iv = Modifier.INSTANCE;
            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer2, ((384 >> 3) & 14) | ((384 >> 3) & 112));
            int $changed$iv$iv2 = (384 << 3) & 112;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv3 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv);
            int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                factory$iv$iv$iv2 = factory$iv$iv$iv5;
                $composer2.useNode();
            } else {
                factory$iv$iv$iv2 = factory$iv$iv$iv5;
                $composer2.createNode(factory$iv$iv$iv2);
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i4 = ($changed$iv$iv$iv2 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i5 = ((384 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -1332244431, "C62@2851L115,63@2979L102:ConfigScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g("PER-VEHICLE CONFIG & SPROCKET CALCULATOR", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(17), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
                TextKt.m2730Text4IGK_g("Configuring specs for: " + ConfigScreen$lambda$2(configTargetVehicle$delegate).getDisplayName(), (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3456, 0, 131058);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                Modifier modifier$iv2 = ScrollKt.verticalScroll$default(PaddingKt.m830paddingVpY3zN4$default(ColumnScope.weight$default($this$ConfigScreen_u24lambda_u2434, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 1.0f, false, 2, null), 0.0f, Dp.m6360constructorimpl(10), 1, null), ScrollKt.rememberScrollState(0, $composer2, 0, 1), false, null, false, 14, null);
                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
                $composer2.startReplaceableGroup(-483455358);
                ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                MeasurePolicy measurePolicy$iv4 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer2, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                int $changed$iv$iv3 = (48 << 3) & 112;
                $composer2.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv4 = $composer2.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv6 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    factory$iv$iv$iv3 = factory$iv$iv$iv6;
                    $composer2.useNode();
                } else {
                    factory$iv$iv$iv3 = factory$iv$iv$iv6;
                    $composer2.createNode(factory$iv$iv$iv3);
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer2);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                    $composer2.startReplaceableGroup(2058660585);
                    int i6 = ($changed$iv$iv$iv3 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                    int i7 = ((48 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1331409353, "C75@3443L1695,104@5193L1230,127@6495L441,138@6996L504,150@7560L505,162@8127L501,174@8689L1292,197@10040L885,216@10977L690:ConfigScreen.kt#xkugs2");
                    final MutableState configTargetVehicle$delegate3 = configTargetVehicle$delegate;
                    ConfigCard("SELECT VEHICLE TO CONFIGURE", ComposableLambdaKt.composableLambda($composer2, 601583863, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            Function0 factory$iv$iv$iv7;
                            VehicleType ConfigScreen$lambda$25;
                            VehicleType ConfigScreen$lambda$26;
                            VehicleType ConfigScreen$lambda$27;
                            VehicleType ConfigScreen$lambda$28;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C76@3511L1613:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(601583863, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:76)");
                                }
                                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                                final MutableState<VehicleType> mutableState = configTargetVehicle$delegate3;
                                $composer3.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Modifier modifier$iv3 = Modifier.INSTANCE;
                                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv5 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                                int $changed$iv$iv4 = (48 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv5 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv8;
                                    $composer3.createNode(factory$iv$iv$iv7);
                                } else {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv8;
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                }
                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i8 = ($changed$iv$iv$iv4 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i9 = ((48 >> 6) & 112) | 6;
                                RowScope $this$invoke_u24lambda_u244 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1435020812, "C79@3722L106,78@3631L41,77@3589L354,85@4104L113,84@4007L47,83@3965L369,91@4492L110,90@4398L44,89@4356L364,97@4880L110,96@4784L46,95@4742L364:ConfigScreen.kt#xkugs2");
                                ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                                ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                                ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(ConfigScreen$lambda$25 == VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                                Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293216851);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                Object value$iv12 = $composer3.rememberedValue();
                                if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                                    value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$1$1
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
                                            mutableState.setValue(VehicleType.ATV);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv12);
                                }
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6682getLambda1$app_debug(), $composer3, 805306374, 492);
                                ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                                ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                                ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(ConfigScreen$lambda$26 == VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                                Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293228889);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                Object value$iv13 = $composer3.rememberedValue();
                                if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                                    value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$2$1
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
                                            mutableState.setValue(VehicleType.MOTOCROSS);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv13);
                                }
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6688getLambda2$app_debug(), $composer3, 805306374, 492);
                                ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                                ConfigScreen$lambda$27 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                                ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(ConfigScreen$lambda$27 == VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                                Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293241398);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                Object value$iv14 = $composer3.rememberedValue();
                                if (value$iv14 == Composer.INSTANCE.getEmpty()) {
                                    value$iv14 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$3$1
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
                                            mutableState.setValue(VehicleType.DAELIM);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv14);
                                }
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv14, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6689getLambda3$app_debug(), $composer3, 805306374, 492);
                                ButtonDefaults buttonDefaults4 = ButtonDefaults.INSTANCE;
                                ConfigScreen$lambda$28 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                                ButtonColors m1872buttonColorsro_MJ884 = buttonDefaults4.m1872buttonColorsro_MJ88(ConfigScreen$lambda$28 == VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                                Modifier weight$default4 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293253752);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                Object it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$4$1
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
                                            mutableState.setValue(VehicleType.APP_TEST);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv11, weight$default4, false, null, m1872buttonColorsro_MJ884, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6690getLambda4$app_debug(), $composer3, 805306374, 492);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer3.skipToGroupEnd();
                        }
                    }), $composer2, 54);
                    ConfigCard("⚙️ SPROCKET TEETH & FINAL DRIVE RATIO (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 2121076576, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x021c  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x02c0  */
                        /* JADX WARN: Removed duplicated region for block: B:30:0x0332  */
                        /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:33:0x02d0  */
                        /* JADX WARN: Removed duplicated region for block: B:34:0x022e  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            String ConfigScreen$lambda$17;
                            Object it$iv10;
                            Object value$iv11;
                            String ConfigScreen$lambda$20;
                            Object it$iv11;
                            Object value$iv12;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C105@5306L154,106@5477L932:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2121076576, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:105)");
                                }
                                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                                String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(sprocketRatio)}, 1));
                                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                                TextKt.m2730Text4IGK_g("Calculated Ratio: " + format + ":1", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                                final MutableState<String> mutableState = frontSprocketTeeth$delegate;
                                final MutableState<String> mutableState2 = rearSprocketTeeth$delegate;
                                $composer3.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Modifier modifier$iv3 = Modifier.INSTANCE;
                                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv5 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                                int $changed$iv$iv4 = (48 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv5 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    $composer3.createNode(factory$iv$iv$iv7);
                                } else {
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i8 = ($changed$iv$iv$iv4 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    int i9 = ((48 >> 6) & 112) | 6;
                                    RowScope $this$invoke_u24lambda_u242 = RowScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                                    ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                                    KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                    Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u242, Modifier.INSTANCE, 1.0f, false, 2, null);
                                    $composer3.startReplaceableGroup(1293281957);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                    it$iv10 = $composer3.rememberedValue();
                                    if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                        value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$1$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                                invoke2(str);
                                                return Unit.INSTANCE;
                                            }

                                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                            public final void invoke2(String it) {
                                                Intrinsics.checkNotNullParameter(it, "it");
                                                mutableState.setValue(it);
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv11);
                                    } else {
                                        value$iv11 = it$iv10;
                                    }
                                    $composer3.endReplaceableGroup();
                                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                                    ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                                    KeyboardOptions keyboardOptions2 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                    Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u242, Modifier.INSTANCE, 1.0f, false, 2, null);
                                    $composer3.startReplaceableGroup(1293295684);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                    it$iv11 = $composer3.rememberedValue();
                                    if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                                        value$iv12 = (Function1) new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$2$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                                invoke2(str);
                                                return Unit.INSTANCE;
                                            }

                                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                            public final void invoke2(String it) {
                                                Intrinsics.checkNotNullParameter(it, "it");
                                                mutableState2.setValue(it);
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv12);
                                    } else {
                                        value$iv12 = it$iv11;
                                    }
                                    $composer3.endReplaceableGroup();
                                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions2, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i82 = ($changed$iv$iv$iv4 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i92 = ((48 >> 6) & 112) | 6;
                                RowScope $this$invoke_u24lambda_u2422 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                                ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                                KeyboardOptions keyboardOptions3 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u2422, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293281957);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions3, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                                ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                                KeyboardOptions keyboardOptions22 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier weight$default22 = RowScope.weight$default($this$invoke_u24lambda_u2422, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293295684);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv11 = $composer3.rememberedValue();
                                if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default22, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions22, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                    }), $composer2, 48);
                    ConfigCard("ASSIGNED STARTER BATTERY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -1222058881, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            String ConfigScreen$lambda$14;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C130@6700L29,128@6595L327:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1222058881, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:128)");
                                }
                                ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                                Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                $composer3.startReplaceableGroup(-1610546584);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                boolean invalid$iv5 = $composer3.changed(assignedBatteryInput$delegate);
                                final MutableState<String> mutableState = assignedBatteryInput$delegate;
                                Object it$iv10 = $composer3.rememberedValue();
                                if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$14, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6693getLambda7$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12582912, 0, 8257464);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer3.skipToGroupEnd();
                        }
                    }), $composer2, 48);
                    ConfigCard("FUEL TANK CAPACITY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -270227042, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            String ConfigScreen$lambda$5;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C141@7192L26,139@7090L396:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-270227042, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:139)");
                                }
                                ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                                KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                $composer3.startReplaceableGroup(-1610530843);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                boolean invalid$iv5 = $composer3.changed(tankCapacityInput$delegate);
                                final MutableState<String> mutableState = tankCapacityInput$delegate;
                                Object it$iv10 = $composer3.rememberedValue();
                                if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$5, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6694getLambda8$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer3.skipToGroupEnd();
                        }
                    }), $composer2, 48);
                    ConfigCard("CRITICAL TEMP THRESHOLD (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 681604797, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            String ConfigScreen$lambda$8;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C153@7761L26,151@7659L392:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(681604797, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:151)");
                                }
                                ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                                KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                $composer3.startReplaceableGroup(-1610512635);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                boolean invalid$iv5 = $composer3.changed(criticalTempInput$delegate);
                                final MutableState<String> mutableState = criticalTempInput$delegate;
                                Object it$iv10 = $composer3.rememberedValue();
                                if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$8, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6695getLambda9$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer3.skipToGroupEnd();
                        }
                    }), $composer2, 48);
                    ConfigCard("TARGET CARB IDLE RPM (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 1633436636, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            String ConfigScreen$lambda$11;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C165@8326L27,163@8223L391:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1633436636, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:163)");
                                }
                                ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                                KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                $composer3.startReplaceableGroup(-1610494554);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                boolean invalid$iv5 = $composer3.changed(targetIdleRpmInput$delegate);
                                final MutableState<String> mutableState = targetIdleRpmInput$delegate;
                                Object it$iv10 = $composer3.rememberedValue();
                                if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$11, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6683getLambda10$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer3.skipToGroupEnd();
                        }
                    }), $composer2, 48);
                    ConfigCard("DEFAULT APP STARTUP SCREEN", ComposableLambdaKt.composableLambda($composer2, -1709698821, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            Function0 factory$iv$iv$iv7;
                            String ConfigScreen$lambda$26;
                            String ConfigScreen$lambda$262;
                            String ConfigScreen$lambda$263;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C175@8756L1211:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1709698821, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:175)");
                                }
                                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                                final MutableState<String> mutableState = startupScreen$delegate;
                                $composer3.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Modifier modifier$iv3 = Modifier.INSTANCE;
                                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv5 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                                int $changed$iv$iv4 = (48 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv5 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv8;
                                    $composer3.createNode(factory$iv$iv$iv7);
                                } else {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv8;
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                }
                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i8 = ($changed$iv$iv$iv4 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i9 = ((48 >> 6) & 112) | 6;
                                RowScope $this$invoke_u24lambda_u243 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1440211390, "C178@8957L97,177@8876L31,176@8834L338,184@9312L91,183@9236L26,182@9194L327,190@9665L96,189@9585L30,188@9543L406:ConfigScreen.kt#xkugs2");
                                ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                                ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$26, "MAIN_MENU") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                                Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293384681);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                Object value$iv12 = $composer3.rememberedValue();
                                if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                                    value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$1$1
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
                                            mutableState.setValue("MAIN_MENU");
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv12);
                                }
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6684getLambda11$app_debug(), $composer3, 805306374, 492);
                                ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                                ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$262, "TRIP") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                                Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293396196);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                Object value$iv13 = $composer3.rememberedValue();
                                if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                                    value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$2$1
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
                                            mutableState.setValue("TRIP");
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv13);
                                }
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6685getLambda12$app_debug(), $composer3, 805306374, 492);
                                ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                                ConfigScreen$lambda$263 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$263, "ATV_DIAG") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                                Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293407368);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                Object it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$3$1
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
                                            mutableState.setValue("ATV_DIAG");
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv11, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableLambdaKt.composableLambda($composer3, 2022375087, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$4
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer4, int $changed3) {
                                        String ConfigScreen$lambda$264;
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer4, "C192@9842L105:ConfigScreen.kt#xkugs2");
                                        if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                            $composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2022375087, $changed3, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:192)");
                                        }
                                        long sp = TextUnitKt.getSp(11);
                                        ConfigScreen$lambda$264 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                        TextKt.m2730Text4IGK_g("ATV Diag", (Modifier) null, Intrinsics.areEqual(ConfigScreen$lambda$264, "ATV_DIAG") ? Color.INSTANCE.m4038getBlack0d7_KjU() : Color.INSTANCE.m4049getWhite0d7_KjU(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3078, 0, 131058);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }
                                }), $composer3, 805306374, 492);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer3.skipToGroupEnd();
                        }
                    }), $composer2, 54);
                    final MutableState tempMonitoringEnabled$delegate3 = tempMonitoringEnabled$delegate;
                    ConfigCard("TEMPERATURE SENSOR PROBE", ComposableLambdaKt.composableLambda($composer2, -757866982, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8
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
                        /* JADX WARN: Removed duplicated region for block: B:27:0x01d4  */
                        /* JADX WARN: Removed duplicated region for block: B:35:0x0325  */
                        /* JADX WARN: Removed duplicated region for block: B:38:0x03a7  */
                        /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:41:0x0335  */
                        /* JADX WARN: Removed duplicated region for block: B:44:0x01da  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            Function0 factory$iv$iv$iv7;
                            Function0 factory$iv$iv$iv8;
                            Composer $this$Layout_u24lambda_u240$iv$iv5;
                            boolean ConfigScreen$lambda$29;
                            Object it$iv10;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C198@10105L806:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-757866982, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:198)");
                                }
                                Modifier modifier$iv3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                                final MutableState<Boolean> mutableState = tempMonitoringEnabled$delegate3;
                                $composer3.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                MeasurePolicy measurePolicy$iv5 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                                int $changed$iv$iv4 = (438 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv5 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv9 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv9;
                                    $composer3.createNode(factory$iv$iv$iv7);
                                } else {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv9;
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i8 = ($changed$iv$iv$iv4 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    int i9 = ((438 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                                    $composer3.startReplaceableGroup(-483455358);
                                    ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                    Modifier modifier$iv4 = Modifier.INSTANCE;
                                    Arrangement.Vertical verticalArrangement$iv3 = Arrangement.INSTANCE.getTop();
                                    Alignment.Horizontal horizontalAlignment$iv3 = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv6 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3, horizontalAlignment$iv3, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                    int $changed$iv$iv5 = (0 << 3) & 112;
                                    $composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv5 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                    CompositionLocalMap localMap$iv$iv6 = $composer3.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv10 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv5 = LayoutKt.modifierMaterializerOf(modifier$iv4);
                                    int $changed$iv$iv$iv5 = (($changed$iv$iv5 << 9) & 7168) | 6;
                                    if (!($composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer3.startReusableNode();
                                    if (!$composer3.getInserting()) {
                                        factory$iv$iv$iv8 = factory$iv$iv$iv10;
                                        $composer3.createNode(factory$iv$iv$iv8);
                                    } else {
                                        factory$iv$iv$iv8 = factory$iv$iv$iv10;
                                        $composer3.useNode();
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv6, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv6, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv5 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv5))) {
                                        skippableUpdate$iv$iv$iv5.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112));
                                        $composer3.startReplaceableGroup(2058660585);
                                        int i10 = ($changed$iv$iv$iv5 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                        ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                        int i11 = ((0 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                        TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                        TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        ComposerKt.sourceInformationMarkerEnd($composer3);
                                        $composer3.endReplaceableGroup();
                                        $composer3.endNode();
                                        $composer3.endReplaceableGroup();
                                        $composer3.endReplaceableGroup();
                                        ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                        $composer3.startReplaceableGroup(1293443816);
                                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                        it$iv10 = $composer3.rememberedValue();
                                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                            value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8$1$2$1
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(1);
                                                }

                                                @Override // kotlin.jvm.functions.Function1
                                                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                                    invoke(bool.booleanValue());
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(boolean it) {
                                                    ConfigScreenKt.ConfigScreen$lambda$30(mutableState, it);
                                                }
                                            };
                                            $composer3.updateRememberedValue(value$iv11);
                                        } else {
                                            value$iv11 = it$iv10;
                                        }
                                        $composer3.endReplaceableGroup();
                                        SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5));
                                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv5), block$iv$iv$iv5);
                                    skippableUpdate$iv$iv$iv5.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i102 = ($changed$iv$iv$iv5 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                                    int i112 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                    $composer3.startReplaceableGroup(1293443816);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                    it$iv10 = $composer3.rememberedValue();
                                    if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                    }
                                    $composer3.endReplaceableGroup();
                                    SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    if (!ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i82 = ($changed$iv$iv$iv4 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                                int i92 = ((438 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                                $composer3.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Modifier modifier$iv42 = Modifier.INSTANCE;
                                Arrangement.Vertical verticalArrangement$iv32 = Arrangement.INSTANCE.getTop();
                                Alignment.Horizontal horizontalAlignment$iv32 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv62 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv32, horizontalAlignment$iv32, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                int $changed$iv$iv52 = (0 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv52 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv62 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv102 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv52 = LayoutKt.modifierMaterializerOf(modifier$iv42);
                                int $changed$iv$iv$iv52 = (($changed$iv$iv52 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                }
                                $composer3.startReusableNode();
                                if (!$composer3.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv62, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv62, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv52 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                                    skippableUpdate$iv$iv$iv52.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i1022 = ($changed$iv$iv$iv52 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                                    int i1122 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                    $composer3.startReplaceableGroup(1293443816);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                    it$iv10 = $composer3.rememberedValue();
                                    if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                    }
                                    $composer3.endReplaceableGroup();
                                    SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    if (!ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv52));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv52), block$iv$iv$iv52);
                                skippableUpdate$iv$iv$iv52.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i10222 = ($changed$iv$iv$iv52 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                                int i11222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                $composer3.startReplaceableGroup(1293443816);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                    }), $composer2, 54);
                    final MutableState voiceEnabled$delegate3 = voiceEnabled$delegate;
                    ConfigCard("VOICE ASSISTANT & SPOKEN ALERTS", ComposableLambdaKt.composableLambda($composer2, 193964857, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                            invoke(columnScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:24:0x01b7  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x023b  */
                        /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:30:0x01c9  */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                            Function0 factory$iv$iv$iv7;
                            boolean ConfigScreen$lambda$232;
                            Object value$iv11;
                            Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                            ComposerKt.sourceInformation($composer3, "C217@11049L604:ConfigScreen.kt#xkugs2");
                            if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(193964857, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:217)");
                                }
                                Modifier modifier$iv3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                                final MutableState<Boolean> mutableState = voiceEnabled$delegate3;
                                $composer3.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                MeasurePolicy measurePolicy$iv5 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                                int $changed$iv$iv4 = (438 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv5 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if ($composer3.getInserting()) {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv8;
                                    $composer3.createNode(factory$iv$iv$iv7);
                                } else {
                                    factory$iv$iv$iv7 = factory$iv$iv$iv8;
                                    $composer3.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i8 = ($changed$iv$iv$iv4 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    int i9 = ((438 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                                    $composer3.startReplaceableGroup(1293467839);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                    value$iv11 = $composer3.rememberedValue();
                                    if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                                        value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9$1$1$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                                invoke(bool.booleanValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(boolean it) {
                                                ConfigScreenKt.ConfigScreen$lambda$24(mutableState, it);
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv11);
                                    }
                                    $composer3.endReplaceableGroup();
                                    SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i82 = ($changed$iv$iv$iv4 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                                int i92 = ((438 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                                $composer3.startReplaceableGroup(1293467839);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                value$iv11 = $composer3.rememberedValue();
                                if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                    }), $composer2, 54);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    Modifier modifier$iv3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Vertical verticalArrangement$iv3 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                    $composer2.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                    Alignment.Horizontal horizontalAlignment$iv3 = Alignment.INSTANCE.getStart();
                    MeasurePolicy measurePolicy$iv5 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3, horizontalAlignment$iv3, $composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv4 = (54 << 3) & 112;
                    $composer2.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                    CompositionLocalMap localMap$iv$iv5 = $composer2.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                    int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                    if (!($composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer2.startReusableNode();
                    if ($composer2.getInserting()) {
                        $composer2.useNode();
                    } else {
                        $composer2.createNode(factory$iv$iv$iv7);
                    }
                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer2);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                        localMap$iv$iv = localMap$iv$iv5;
                        measurePolicy$iv = measurePolicy$iv5;
                        if (Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                            skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                            $composer2.startReplaceableGroup(2058660585);
                            int i8 = ($changed$iv$iv$iv4 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                            int i9 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer2, -1323262708, "C264@13065L39,237@11854L1437,275@13487L48,270@13305L416:ConfigScreen.kt#xkugs2");
                            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$1
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
                                    String ConfigScreen$lambda$5;
                                    String ConfigScreen$lambda$8;
                                    String ConfigScreen$lambda$11;
                                    VehicleType ConfigScreen$lambda$25;
                                    String ConfigScreen$lambda$14;
                                    VehicleType ConfigScreen$lambda$26;
                                    AppConfig ConfigScreen$lambda$0;
                                    boolean ConfigScreen$lambda$232;
                                    String ConfigScreen$lambda$262;
                                    boolean ConfigScreen$lambda$29;
                                    ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                                    Double doubleOrNull = StringsKt.toDoubleOrNull(ConfigScreen$lambda$5);
                                    double finalTank = doubleOrNull != null ? doubleOrNull.doubleValue() : 2.0d;
                                    ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                                    Double doubleOrNull2 = StringsKt.toDoubleOrNull(ConfigScreen$lambda$8);
                                    double finalTemp = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 115.0d;
                                    ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                                    Integer intOrNull3 = StringsKt.toIntOrNull(ConfigScreen$lambda$11);
                                    int finalRpm = intOrNull3 != null ? intOrNull3.intValue() : 1380;
                                    AppConfigManager appConfigManager = AppConfigManager.this;
                                    ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate3);
                                    ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                                    appConfigManager.updateVehicleConfig(ConfigScreen$lambda$25, new VehicleSpecificConfig(finalTank, finalTemp, finalRpm, ConfigScreen$lambda$14));
                                    AppConfigManager appConfigManager2 = AppConfigManager.this;
                                    ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate3);
                                    appConfigManager2.setActiveVehicle(ConfigScreen$lambda$26);
                                    AppConfigManager appConfigManager3 = AppConfigManager.this;
                                    ConfigScreen$lambda$0 = ConfigScreenKt.ConfigScreen$lambda$0(currentConfig$delegate);
                                    ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(voiceEnabled$delegate3);
                                    ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(startupScreen$delegate);
                                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(tempMonitoringEnabled$delegate3);
                                    appConfigManager3.updateConfig(AppConfig.copy$default(ConfigScreen$lambda$0, null, ConfigScreen$lambda$232, false, false, ConfigScreen$lambda$262, ConfigScreen$lambda$29, null, 77, null));
                                    onBackToMenu.invoke();
                                }
                            }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6686getLambda13$app_debug(), $composer2, 805306416, 492);
                            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$2
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
                                    AppConfigManager.this.resetToDefaults();
                                    onBackToMenu.invoke();
                                }
                            }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(42)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6687getLambda14$app_debug(), $composer2, 805306416, 492);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            $composer2.endReplaceableGroup();
                            $composer2.endNode();
                            $composer2.endReplaceableGroup();
                            $composer2.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            $composer2.endReplaceableGroup();
                            $composer2.endNode();
                            $composer2.endReplaceableGroup();
                            $composer2.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            endRestartGroup = $composer2.endRestartGroup();
                            if (endRestartGroup != null) {
                                endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$2
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                        invoke(composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer composer, int i10) {
                                        ConfigScreenKt.ConfigScreen(AppConfigManager.this, daelimOdometerManager3, onBackToMenu, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                    } else {
                        localMap$iv$iv = localMap$iv$iv5;
                        measurePolicy$iv = measurePolicy$iv5;
                    }
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                    skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                    $composer2.startReplaceableGroup(2058660585);
                    int i82 = ($changed$iv$iv$iv4 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                    int i92 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1323262708, "C264@13065L39,237@11854L1437,275@13487L48,270@13305L416:ConfigScreen.kt#xkugs2");
                    ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$1
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
                            String ConfigScreen$lambda$5;
                            String ConfigScreen$lambda$8;
                            String ConfigScreen$lambda$11;
                            VehicleType ConfigScreen$lambda$25;
                            String ConfigScreen$lambda$14;
                            VehicleType ConfigScreen$lambda$26;
                            AppConfig ConfigScreen$lambda$0;
                            boolean ConfigScreen$lambda$232;
                            String ConfigScreen$lambda$262;
                            boolean ConfigScreen$lambda$29;
                            ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                            Double doubleOrNull = StringsKt.toDoubleOrNull(ConfigScreen$lambda$5);
                            double finalTank = doubleOrNull != null ? doubleOrNull.doubleValue() : 2.0d;
                            ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                            Double doubleOrNull2 = StringsKt.toDoubleOrNull(ConfigScreen$lambda$8);
                            double finalTemp = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 115.0d;
                            ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                            Integer intOrNull3 = StringsKt.toIntOrNull(ConfigScreen$lambda$11);
                            int finalRpm = intOrNull3 != null ? intOrNull3.intValue() : 1380;
                            AppConfigManager appConfigManager = AppConfigManager.this;
                            ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate3);
                            ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                            appConfigManager.updateVehicleConfig(ConfigScreen$lambda$25, new VehicleSpecificConfig(finalTank, finalTemp, finalRpm, ConfigScreen$lambda$14));
                            AppConfigManager appConfigManager2 = AppConfigManager.this;
                            ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate3);
                            appConfigManager2.setActiveVehicle(ConfigScreen$lambda$26);
                            AppConfigManager appConfigManager3 = AppConfigManager.this;
                            ConfigScreen$lambda$0 = ConfigScreenKt.ConfigScreen$lambda$0(currentConfig$delegate);
                            ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(voiceEnabled$delegate3);
                            ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(startupScreen$delegate);
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(tempMonitoringEnabled$delegate3);
                            appConfigManager3.updateConfig(AppConfig.copy$default(ConfigScreen$lambda$0, null, ConfigScreen$lambda$232, false, false, ConfigScreen$lambda$262, ConfigScreen$lambda$29, null, 77, null));
                            onBackToMenu.invoke();
                        }
                    }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6686getLambda13$app_debug(), $composer2, 805306416, 492);
                    ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$2
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
                            AppConfigManager.this.resetToDefaults();
                            onBackToMenu.invoke();
                        }
                    }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(42)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6687getLambda14$app_debug(), $composer2, 805306416, 492);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endReplaceableGroup();
                    $composer2.endNode();
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    endRestartGroup = $composer2.endRestartGroup();
                    if (endRestartGroup != null) {
                    }
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i62 = ($changed$iv$iv$iv3 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                int i72 = ((48 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -1331409353, "C75@3443L1695,104@5193L1230,127@6495L441,138@6996L504,150@7560L505,162@8127L501,174@8689L1292,197@10040L885,216@10977L690:ConfigScreen.kt#xkugs2");
                final MutableState<VehicleType> configTargetVehicle$delegate32 = configTargetVehicle$delegate;
                ConfigCard("SELECT VEHICLE TO CONFIGURE", ComposableLambdaKt.composableLambda($composer2, 601583863, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv72;
                        VehicleType ConfigScreen$lambda$25;
                        VehicleType ConfigScreen$lambda$26;
                        VehicleType ConfigScreen$lambda$27;
                        VehicleType ConfigScreen$lambda$28;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C76@3511L1613:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(601583863, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:76)");
                            }
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            final MutableState<VehicleType> mutableState = configTargetVehicle$delegate32;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Modifier modifier$iv32 = Modifier.INSTANCE;
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv52 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                            int $changed$iv$iv42 = (48 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv52 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                            int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv72 = factory$iv$iv$iv8;
                                $composer3.createNode(factory$iv$iv$iv72);
                            } else {
                                factory$iv$iv$iv72 = factory$iv$iv$iv8;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42))) {
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                            }
                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i83 = ($changed$iv$iv$iv42 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i93 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u244 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1435020812, "C79@3722L106,78@3631L41,77@3589L354,85@4104L113,84@4007L47,83@3965L369,91@4492L110,90@4398L44,89@4356L364,97@4880L110,96@4784L46,95@4742L364:ConfigScreen.kt#xkugs2");
                            ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(ConfigScreen$lambda$25 == VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293216851);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv12 = $composer3.rememberedValue();
                            if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                                value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$1$1
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
                                        mutableState.setValue(VehicleType.ATV);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv12);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6682getLambda1$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(ConfigScreen$lambda$26 == VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293228889);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv13 = $composer3.rememberedValue();
                            if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                                value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$2$1
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
                                        mutableState.setValue(VehicleType.MOTOCROSS);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv13);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6688getLambda2$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$27 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(ConfigScreen$lambda$27 == VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293241398);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv14 = $composer3.rememberedValue();
                            if (value$iv14 == Composer.INSTANCE.getEmpty()) {
                                value$iv14 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$3$1
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
                                        mutableState.setValue(VehicleType.DAELIM);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv14);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv14, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6689getLambda3$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults4 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$28 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ884 = buttonDefaults4.m1872buttonColorsro_MJ88(ConfigScreen$lambda$28 == VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default4 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293253752);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$4$1
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
                                        mutableState.setValue(VehicleType.APP_TEST);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, weight$default4, false, null, m1872buttonColorsro_MJ884, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6690getLambda4$app_debug(), $composer3, 805306374, 492);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 54);
                ConfigCard("⚙️ SPROCKET TEETH & FINAL DRIVE RATIO (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 2121076576, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x021c  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x02c0  */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x0332  */
                    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:33:0x02d0  */
                    /* JADX WARN: Removed duplicated region for block: B:34:0x022e  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$17;
                        Object it$iv10;
                        Object value$iv11;
                        String ConfigScreen$lambda$20;
                        Object it$iv11;
                        Object value$iv12;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C105@5306L154,106@5477L932:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2121076576, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:105)");
                            }
                            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                            String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(sprocketRatio)}, 1));
                            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                            TextKt.m2730Text4IGK_g("Calculated Ratio: " + format + ":1", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                            final MutableState<String> mutableState = frontSprocketTeeth$delegate;
                            final MutableState<String> mutableState2 = rearSprocketTeeth$delegate;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Modifier modifier$iv32 = Modifier.INSTANCE;
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv52 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                            int $changed$iv$iv42 = (48 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv52 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv72 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                            int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                $composer3.createNode(factory$iv$iv$iv72);
                            } else {
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42))) {
                                skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i822 = ($changed$iv$iv$iv42 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i922 = ((48 >> 6) & 112) | 6;
                                RowScope $this$invoke_u24lambda_u2422 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                                ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                                KeyboardOptions keyboardOptions3 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u2422, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293281957);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions3, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                                ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                                KeyboardOptions keyboardOptions22 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier weight$default22 = RowScope.weight$default($this$invoke_u24lambda_u2422, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293295684);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv11 = $composer3.rememberedValue();
                                if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                                    value$iv12 = (Function1) new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$2$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState2.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv12);
                                } else {
                                    value$iv12 = it$iv11;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default22, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions22, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv42 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i9222 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u24222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                            ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                            KeyboardOptions keyboardOptions32 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default32 = RowScope.weight$default($this$invoke_u24lambda_u24222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293281957);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default32, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions32, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                            ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                            KeyboardOptions keyboardOptions222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default222 = RowScope.weight$default($this$invoke_u24lambda_u24222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293295684);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv11 = $composer3.rememberedValue();
                            if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                }), $composer2, 48);
                ConfigCard("ASSIGNED STARTER BATTERY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -1222058881, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$14;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C130@6700L29,128@6595L327:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1222058881, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:128)");
                            }
                            ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610546584);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(assignedBatteryInput$delegate);
                            final MutableState<String> mutableState = assignedBatteryInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$14, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6693getLambda7$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12582912, 0, 8257464);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("FUEL TANK CAPACITY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -270227042, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$5;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C141@7192L26,139@7090L396:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-270227042, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:139)");
                            }
                            ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                            KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610530843);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(tankCapacityInput$delegate);
                            final MutableState<String> mutableState = tankCapacityInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$5, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6694getLambda8$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("CRITICAL TEMP THRESHOLD (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 681604797, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$8;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C153@7761L26,151@7659L392:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(681604797, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:151)");
                            }
                            ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                            KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610512635);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(criticalTempInput$delegate);
                            final MutableState<String> mutableState = criticalTempInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$8, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6695getLambda9$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("TARGET CARB IDLE RPM (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 1633436636, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$11;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C165@8326L27,163@8223L391:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1633436636, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:163)");
                            }
                            ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                            KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610494554);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(targetIdleRpmInput$delegate);
                            final MutableState<String> mutableState = targetIdleRpmInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$11, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6683getLambda10$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("DEFAULT APP STARTUP SCREEN", ComposableLambdaKt.composableLambda($composer2, -1709698821, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv72;
                        String ConfigScreen$lambda$26;
                        String ConfigScreen$lambda$262;
                        String ConfigScreen$lambda$263;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C175@8756L1211:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1709698821, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:175)");
                            }
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            final MutableState<String> mutableState = startupScreen$delegate;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Modifier modifier$iv32 = Modifier.INSTANCE;
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv52 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                            int $changed$iv$iv42 = (48 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv52 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                            int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv72 = factory$iv$iv$iv8;
                                $composer3.createNode(factory$iv$iv$iv72);
                            } else {
                                factory$iv$iv$iv72 = factory$iv$iv$iv8;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42))) {
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                            }
                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i83 = ($changed$iv$iv$iv42 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i93 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u243 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1440211390, "C178@8957L97,177@8876L31,176@8834L338,184@9312L91,183@9236L26,182@9194L327,190@9665L96,189@9585L30,188@9543L406:ConfigScreen.kt#xkugs2");
                            ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                            ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$26, "MAIN_MENU") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293384681);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv12 = $composer3.rememberedValue();
                            if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                                value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$1$1
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
                                        mutableState.setValue("MAIN_MENU");
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv12);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6684getLambda11$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                            ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$262, "TRIP") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293396196);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv13 = $composer3.rememberedValue();
                            if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                                value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$2$1
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
                                        mutableState.setValue("TRIP");
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv13);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6685getLambda12$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$263 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                            ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$263, "ATV_DIAG") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293407368);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$3$1
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
                                        mutableState.setValue("ATV_DIAG");
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableLambdaKt.composableLambda($composer3, 2022375087, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$4
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer4, int $changed3) {
                                    String ConfigScreen$lambda$264;
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer4, "C192@9842L105:ConfigScreen.kt#xkugs2");
                                    if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                        $composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2022375087, $changed3, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:192)");
                                    }
                                    long sp = TextUnitKt.getSp(11);
                                    ConfigScreen$lambda$264 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                    TextKt.m2730Text4IGK_g("ATV Diag", (Modifier) null, Intrinsics.areEqual(ConfigScreen$lambda$264, "ATV_DIAG") ? Color.INSTANCE.m4038getBlack0d7_KjU() : Color.INSTANCE.m4049getWhite0d7_KjU(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3078, 0, 131058);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }), $composer3, 805306374, 492);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 54);
                final MutableState<Boolean> tempMonitoringEnabled$delegate32 = tempMonitoringEnabled$delegate;
                ConfigCard("TEMPERATURE SENSOR PROBE", ComposableLambdaKt.composableLambda($composer2, -757866982, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8
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
                    /* JADX WARN: Removed duplicated region for block: B:27:0x01d4  */
                    /* JADX WARN: Removed duplicated region for block: B:35:0x0325  */
                    /* JADX WARN: Removed duplicated region for block: B:38:0x03a7  */
                    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:41:0x0335  */
                    /* JADX WARN: Removed duplicated region for block: B:44:0x01da  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv72;
                        Function0 factory$iv$iv$iv8;
                        Composer $this$Layout_u24lambda_u240$iv$iv5;
                        boolean ConfigScreen$lambda$29;
                        Object it$iv10;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C198@10105L806:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-757866982, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:198)");
                            }
                            Modifier modifier$iv32 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                            final MutableState<Boolean> mutableState = tempMonitoringEnabled$delegate32;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicy$iv52 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                            int $changed$iv$iv42 = (438 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv52 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv9 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                            int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv72 = factory$iv$iv$iv9;
                                $composer3.createNode(factory$iv$iv$iv72);
                            } else {
                                factory$iv$iv$iv72 = factory$iv$iv$iv9;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42))) {
                                skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i822 = ($changed$iv$iv$iv42 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                                int i922 = ((438 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                                $composer3.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Modifier modifier$iv42 = Modifier.INSTANCE;
                                Arrangement.Vertical verticalArrangement$iv32 = Arrangement.INSTANCE.getTop();
                                Alignment.Horizontal horizontalAlignment$iv32 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv62 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv32, horizontalAlignment$iv32, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                int $changed$iv$iv52 = (0 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv52 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv62 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv102 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv52 = LayoutKt.modifierMaterializerOf(modifier$iv42);
                                int $changed$iv$iv$iv52 = (($changed$iv$iv52 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if (!$composer3.getInserting()) {
                                    factory$iv$iv$iv8 = factory$iv$iv$iv102;
                                    $composer3.createNode(factory$iv$iv$iv8);
                                } else {
                                    factory$iv$iv$iv8 = factory$iv$iv$iv102;
                                    $composer3.useNode();
                                }
                                $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv62, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv62, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv52 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv52))) {
                                    skippableUpdate$iv$iv$iv52.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i10222 = ($changed$iv$iv$iv52 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                                    int i11222 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                    $composer3.startReplaceableGroup(1293443816);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                    it$iv10 = $composer3.rememberedValue();
                                    if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                        value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8$1$2$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                                invoke(bool.booleanValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(boolean it) {
                                                ConfigScreenKt.ConfigScreen$lambda$30(mutableState, it);
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv11);
                                    } else {
                                        value$iv11 = it$iv10;
                                    }
                                    $composer3.endReplaceableGroup();
                                    SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv52));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv52), block$iv$iv$iv52);
                                skippableUpdate$iv$iv$iv52.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i102222 = ($changed$iv$iv$iv52 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance32222 = ColumnScopeInstance.INSTANCE;
                                int i112222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                $composer3.startReplaceableGroup(1293443816);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                }
                            }
                            $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                            $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv42 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
                            int i9222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Modifier modifier$iv422 = Modifier.INSTANCE;
                            Arrangement.Vertical verticalArrangement$iv322 = Arrangement.INSTANCE.getTop();
                            Alignment.Horizontal horizontalAlignment$iv322 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv622 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv322, horizontalAlignment$iv322, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            int $changed$iv$iv522 = (0 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv522 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv622 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv1022 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv522 = LayoutKt.modifierMaterializerOf(modifier$iv422);
                            int $changed$iv$iv$iv522 = (($changed$iv$iv522 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                            }
                            $composer3.startReusableNode();
                            if (!$composer3.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv622, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv622, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv522 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                                skippableUpdate$iv$iv$iv522.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i1022222 = ($changed$iv$iv$iv522 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322222 = ColumnScopeInstance.INSTANCE;
                                int i1122222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                $composer3.startReplaceableGroup(1293443816);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                }
                            }
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv522));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv522), block$iv$iv$iv522);
                            skippableUpdate$iv$iv$iv522.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i10222222 = ($changed$iv$iv$iv522 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222222 = ColumnScopeInstance.INSTANCE;
                            int i11222222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                            $composer3.startReplaceableGroup(1293443816);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                }), $composer2, 54);
                final MutableState<Boolean> voiceEnabled$delegate32 = voiceEnabled$delegate;
                ConfigCard("VOICE ASSISTANT & SPOKEN ALERTS", ComposableLambdaKt.composableLambda($composer2, 193964857, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01b7  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x023b  */
                    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01c9  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv72;
                        boolean ConfigScreen$lambda$232;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C217@11049L604:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(193964857, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:217)");
                            }
                            Modifier modifier$iv32 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                            final MutableState<Boolean> mutableState = voiceEnabled$delegate32;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicy$iv52 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                            int $changed$iv$iv42 = (438 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv52 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                            int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv72 = factory$iv$iv$iv8;
                                $composer3.createNode(factory$iv$iv$iv72);
                            } else {
                                factory$iv$iv$iv72 = factory$iv$iv$iv8;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42))) {
                                skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i822 = ($changed$iv$iv$iv42 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                                int i922 = ((438 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                                $composer3.startReplaceableGroup(1293467839);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                value$iv11 = $composer3.rememberedValue();
                                if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9$1$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                            invoke(bool.booleanValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(boolean it) {
                                            ConfigScreenKt.ConfigScreen$lambda$24(mutableState, it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i8222 = ($changed$iv$iv$iv42 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
                            int i9222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                            $composer3.startReplaceableGroup(1293467839);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            value$iv11 = $composer3.rememberedValue();
                            if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                }), $composer2, 54);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                Modifier modifier$iv32 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Vertical verticalArrangement$iv32 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                $composer2.startReplaceableGroup(-483455358);
                ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                Alignment.Horizontal horizontalAlignment$iv32 = Alignment.INSTANCE.getStart();
                MeasurePolicy measurePolicy$iv52 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv32, horizontalAlignment$iv32, $composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv42 = (54 << 3) & 112;
                $composer2.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv52 = $composer2.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv72 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer2);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i822 = ($changed$iv$iv$iv42 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance322 = ColumnScopeInstance.INSTANCE;
                int i922 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323262708, "C264@13065L39,237@11854L1437,275@13487L48,270@13305L416:ConfigScreen.kt#xkugs2");
                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$1
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
                        String ConfigScreen$lambda$5;
                        String ConfigScreen$lambda$8;
                        String ConfigScreen$lambda$11;
                        VehicleType ConfigScreen$lambda$25;
                        String ConfigScreen$lambda$14;
                        VehicleType ConfigScreen$lambda$26;
                        AppConfig ConfigScreen$lambda$0;
                        boolean ConfigScreen$lambda$232;
                        String ConfigScreen$lambda$262;
                        boolean ConfigScreen$lambda$29;
                        ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                        Double doubleOrNull = StringsKt.toDoubleOrNull(ConfigScreen$lambda$5);
                        double finalTank = doubleOrNull != null ? doubleOrNull.doubleValue() : 2.0d;
                        ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                        Double doubleOrNull2 = StringsKt.toDoubleOrNull(ConfigScreen$lambda$8);
                        double finalTemp = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 115.0d;
                        ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                        Integer intOrNull3 = StringsKt.toIntOrNull(ConfigScreen$lambda$11);
                        int finalRpm = intOrNull3 != null ? intOrNull3.intValue() : 1380;
                        AppConfigManager appConfigManager = AppConfigManager.this;
                        ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate32);
                        ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                        appConfigManager.updateVehicleConfig(ConfigScreen$lambda$25, new VehicleSpecificConfig(finalTank, finalTemp, finalRpm, ConfigScreen$lambda$14));
                        AppConfigManager appConfigManager2 = AppConfigManager.this;
                        ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate32);
                        appConfigManager2.setActiveVehicle(ConfigScreen$lambda$26);
                        AppConfigManager appConfigManager3 = AppConfigManager.this;
                        ConfigScreen$lambda$0 = ConfigScreenKt.ConfigScreen$lambda$0(currentConfig$delegate);
                        ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(voiceEnabled$delegate32);
                        ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(startupScreen$delegate);
                        ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(tempMonitoringEnabled$delegate32);
                        appConfigManager3.updateConfig(AppConfig.copy$default(ConfigScreen$lambda$0, null, ConfigScreen$lambda$232, false, false, ConfigScreen$lambda$262, ConfigScreen$lambda$29, null, 77, null));
                        onBackToMenu.invoke();
                    }
                }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6686getLambda13$app_debug(), $composer2, 805306416, 492);
                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$2
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
                        AppConfigManager.this.resetToDefaults();
                        onBackToMenu.invoke();
                    }
                }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(42)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6687getLambda14$app_debug(), $composer2, 805306416, 492);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
                endRestartGroup = $composer2.endRestartGroup();
                if (endRestartGroup != null) {
                }
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
            skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i42 = ($changed$iv$iv$iv2 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance4 = ColumnScopeInstance.INSTANCE;
            int i52 = ((384 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1332244431, "C62@2851L115,63@2979L102:ConfigScreen.kt#xkugs2");
            TextKt.m2730Text4IGK_g("PER-VEHICLE CONFIG & SPROCKET CALCULATOR", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(17), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
            TextKt.m2730Text4IGK_g("Configuring specs for: " + ConfigScreen$lambda$2(configTargetVehicle$delegate).getDisplayName(), (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3456, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            Modifier modifier$iv22 = ScrollKt.verticalScroll$default(PaddingKt.m830paddingVpY3zN4$default(ColumnScope.weight$default($this$ConfigScreen_u24lambda_u2434, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 1.0f, false, 2, null), 0.0f, Dp.m6360constructorimpl(10), 1, null), ScrollKt.rememberScrollState(0, $composer2, 0, 1), false, null, false, 14, null);
            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
            $composer2.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv42 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer2, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            int $changed$iv$iv32 = (48 << 3) & 112;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv42 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv62 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv32 = LayoutKt.modifierMaterializerOf(modifier$iv22);
            int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i622 = ($changed$iv$iv$iv32 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                int i722 = ((48 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -1331409353, "C75@3443L1695,104@5193L1230,127@6495L441,138@6996L504,150@7560L505,162@8127L501,174@8689L1292,197@10040L885,216@10977L690:ConfigScreen.kt#xkugs2");
                final MutableState<VehicleType> configTargetVehicle$delegate322 = configTargetVehicle$delegate;
                ConfigCard("SELECT VEHICLE TO CONFIGURE", ComposableLambdaKt.composableLambda($composer2, 601583863, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv722;
                        VehicleType ConfigScreen$lambda$25;
                        VehicleType ConfigScreen$lambda$26;
                        VehicleType ConfigScreen$lambda$27;
                        VehicleType ConfigScreen$lambda$28;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C76@3511L1613:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(601583863, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:76)");
                            }
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            final MutableState<VehicleType> mutableState = configTargetVehicle$delegate322;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Modifier modifier$iv322 = Modifier.INSTANCE;
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv522 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                            int $changed$iv$iv422 = (48 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv522 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                            int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv722 = factory$iv$iv$iv8;
                                $composer3.createNode(factory$iv$iv$iv722);
                            } else {
                                factory$iv$iv$iv722 = factory$iv$iv$iv8;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422))) {
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                            }
                            skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i83 = ($changed$iv$iv$iv422 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i93 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u244 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1435020812, "C79@3722L106,78@3631L41,77@3589L354,85@4104L113,84@4007L47,83@3965L369,91@4492L110,90@4398L44,89@4356L364,97@4880L110,96@4784L46,95@4742L364:ConfigScreen.kt#xkugs2");
                            ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(ConfigScreen$lambda$25 == VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293216851);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv12 = $composer3.rememberedValue();
                            if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                                value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$1$1
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
                                        mutableState.setValue(VehicleType.ATV);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv12);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6682getLambda1$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(ConfigScreen$lambda$26 == VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293228889);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv13 = $composer3.rememberedValue();
                            if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                                value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$2$1
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
                                        mutableState.setValue(VehicleType.MOTOCROSS);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv13);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6688getLambda2$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$27 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(ConfigScreen$lambda$27 == VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293241398);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv14 = $composer3.rememberedValue();
                            if (value$iv14 == Composer.INSTANCE.getEmpty()) {
                                value$iv14 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$3$1
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
                                        mutableState.setValue(VehicleType.DAELIM);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv14);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv14, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6689getLambda3$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults4 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$28 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                            ButtonColors m1872buttonColorsro_MJ884 = buttonDefaults4.m1872buttonColorsro_MJ88(ConfigScreen$lambda$28 == VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default4 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293253752);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$4$1
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
                                        mutableState.setValue(VehicleType.APP_TEST);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, weight$default4, false, null, m1872buttonColorsro_MJ884, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6690getLambda4$app_debug(), $composer3, 805306374, 492);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 54);
                ConfigCard("⚙️ SPROCKET TEETH & FINAL DRIVE RATIO (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 2121076576, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x021c  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x02c0  */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x0332  */
                    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:33:0x02d0  */
                    /* JADX WARN: Removed duplicated region for block: B:34:0x022e  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$17;
                        Object it$iv10;
                        Object value$iv11;
                        String ConfigScreen$lambda$20;
                        Object it$iv11;
                        Object value$iv12;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C105@5306L154,106@5477L932:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2121076576, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:105)");
                            }
                            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                            String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(sprocketRatio)}, 1));
                            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                            TextKt.m2730Text4IGK_g("Calculated Ratio: " + format + ":1", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                            final MutableState<String> mutableState = frontSprocketTeeth$delegate;
                            final MutableState<String> mutableState2 = rearSprocketTeeth$delegate;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Modifier modifier$iv322 = Modifier.INSTANCE;
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv522 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                            int $changed$iv$iv422 = (48 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv522 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv722 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                            int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                $composer3.createNode(factory$iv$iv$iv722);
                            } else {
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422))) {
                                skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i8222 = ($changed$iv$iv$iv422 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i9222 = ((48 >> 6) & 112) | 6;
                                RowScope $this$invoke_u24lambda_u24222 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                                ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                                KeyboardOptions keyboardOptions32 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier weight$default32 = RowScope.weight$default($this$invoke_u24lambda_u24222, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293281957);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default32, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions32, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                                ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                                KeyboardOptions keyboardOptions222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                                Modifier weight$default222 = RowScope.weight$default($this$invoke_u24lambda_u24222, Modifier.INSTANCE, 1.0f, false, 2, null);
                                $composer3.startReplaceableGroup(1293295684);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv11 = $composer3.rememberedValue();
                                if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                                    value$iv12 = (Function1) new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$2$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                            invoke2(str);
                                            return Unit.INSTANCE;
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2(String it) {
                                            Intrinsics.checkNotNullParameter(it, "it");
                                            mutableState2.setValue(it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv12);
                                } else {
                                    value$iv12 = it$iv11;
                                }
                                $composer3.endReplaceableGroup();
                                OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                            skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i82222 = ($changed$iv$iv$iv422 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i92222 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u242222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                            ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                            KeyboardOptions keyboardOptions322 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default322 = RowScope.weight$default($this$invoke_u24lambda_u242222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293281957);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default322, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions322, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                            ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                            KeyboardOptions keyboardOptions2222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default2222 = RowScope.weight$default($this$invoke_u24lambda_u242222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293295684);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv11 = $composer3.rememberedValue();
                            if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default2222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions2222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                }), $composer2, 48);
                ConfigCard("ASSIGNED STARTER BATTERY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -1222058881, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$14;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C130@6700L29,128@6595L327:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1222058881, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:128)");
                            }
                            ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610546584);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(assignedBatteryInput$delegate);
                            final MutableState<String> mutableState = assignedBatteryInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$14, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6693getLambda7$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12582912, 0, 8257464);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("FUEL TANK CAPACITY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -270227042, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$5;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C141@7192L26,139@7090L396:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-270227042, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:139)");
                            }
                            ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                            KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610530843);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(tankCapacityInput$delegate);
                            final MutableState<String> mutableState = tankCapacityInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$5, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6694getLambda8$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("CRITICAL TEMP THRESHOLD (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 681604797, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$8;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C153@7761L26,151@7659L392:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(681604797, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:151)");
                            }
                            ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                            KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610512635);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(criticalTempInput$delegate);
                            final MutableState<String> mutableState = criticalTempInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$8, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6695getLambda9$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("TARGET CARB IDLE RPM (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 1633436636, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        String ConfigScreen$lambda$11;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C165@8326L27,163@8223L391:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1633436636, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:163)");
                            }
                            ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                            KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            $composer3.startReplaceableGroup(-1610494554);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            boolean invalid$iv5 = $composer3.changed(targetIdleRpmInput$delegate);
                            final MutableState<String> mutableState = targetIdleRpmInput$delegate;
                            Object it$iv10 = $composer3.rememberedValue();
                            if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$11, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6683getLambda10$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 48);
                ConfigCard("DEFAULT APP STARTUP SCREEN", ComposableLambdaKt.composableLambda($composer2, -1709698821, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv722;
                        String ConfigScreen$lambda$26;
                        String ConfigScreen$lambda$262;
                        String ConfigScreen$lambda$263;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C175@8756L1211:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1709698821, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:175)");
                            }
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            final MutableState<String> mutableState = startupScreen$delegate;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Modifier modifier$iv322 = Modifier.INSTANCE;
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv522 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                            int $changed$iv$iv422 = (48 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv522 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                            int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv722 = factory$iv$iv$iv8;
                                $composer3.createNode(factory$iv$iv$iv722);
                            } else {
                                factory$iv$iv$iv722 = factory$iv$iv$iv8;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422))) {
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                            }
                            skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i83 = ($changed$iv$iv$iv422 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i93 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u243 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1440211390, "C178@8957L97,177@8876L31,176@8834L338,184@9312L91,183@9236L26,182@9194L327,190@9665L96,189@9585L30,188@9543L406:ConfigScreen.kt#xkugs2");
                            ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                            ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$26, "MAIN_MENU") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293384681);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv12 = $composer3.rememberedValue();
                            if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                                value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$1$1
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
                                        mutableState.setValue("MAIN_MENU");
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv12);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6684getLambda11$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                            ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$262, "TRIP") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293396196);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object value$iv13 = $composer3.rememberedValue();
                            if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                                value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$2$1
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
                                        mutableState.setValue("TRIP");
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv13);
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6685getLambda12$app_debug(), $composer3, 805306374, 492);
                            ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                            ConfigScreen$lambda$263 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                            ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$263, "ATV_DIAG") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                            Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293407368);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            Object it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                                value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$3$1
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
                                        mutableState.setValue("ATV_DIAG");
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv11, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableLambdaKt.composableLambda($composer3, 2022375087, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$4
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer4, int $changed3) {
                                    String ConfigScreen$lambda$264;
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer4, "C192@9842L105:ConfigScreen.kt#xkugs2");
                                    if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                        $composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2022375087, $changed3, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:192)");
                                    }
                                    long sp = TextUnitKt.getSp(11);
                                    ConfigScreen$lambda$264 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                    TextKt.m2730Text4IGK_g("ATV Diag", (Modifier) null, Intrinsics.areEqual(ConfigScreen$lambda$264, "ATV_DIAG") ? Color.INSTANCE.m4038getBlack0d7_KjU() : Color.INSTANCE.m4049getWhite0d7_KjU(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3078, 0, 131058);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }), $composer3, 805306374, 492);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer3.skipToGroupEnd();
                    }
                }), $composer2, 54);
                final MutableState<Boolean> tempMonitoringEnabled$delegate322 = tempMonitoringEnabled$delegate;
                ConfigCard("TEMPERATURE SENSOR PROBE", ComposableLambdaKt.composableLambda($composer2, -757866982, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8
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
                    /* JADX WARN: Removed duplicated region for block: B:27:0x01d4  */
                    /* JADX WARN: Removed duplicated region for block: B:35:0x0325  */
                    /* JADX WARN: Removed duplicated region for block: B:38:0x03a7  */
                    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:41:0x0335  */
                    /* JADX WARN: Removed duplicated region for block: B:44:0x01da  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv722;
                        Function0 factory$iv$iv$iv8;
                        Composer $this$Layout_u24lambda_u240$iv$iv5;
                        boolean ConfigScreen$lambda$29;
                        Object it$iv10;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C198@10105L806:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-757866982, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:198)");
                            }
                            Modifier modifier$iv322 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                            final MutableState<Boolean> mutableState = tempMonitoringEnabled$delegate322;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicy$iv522 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                            int $changed$iv$iv422 = (438 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv522 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv9 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                            int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv722 = factory$iv$iv$iv9;
                                $composer3.createNode(factory$iv$iv$iv722);
                            } else {
                                factory$iv$iv$iv722 = factory$iv$iv$iv9;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv522, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422))) {
                                skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i8222 = ($changed$iv$iv$iv422 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
                                int i9222 = ((438 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                                $composer3.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                                Modifier modifier$iv422 = Modifier.INSTANCE;
                                Arrangement.Vertical verticalArrangement$iv322 = Arrangement.INSTANCE.getTop();
                                Alignment.Horizontal horizontalAlignment$iv322 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv622 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv322, horizontalAlignment$iv322, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                int $changed$iv$iv522 = (0 << 3) & 112;
                                $composer3.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv522 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                                CompositionLocalMap localMap$iv$iv622 = $composer3.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv1022 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv522 = LayoutKt.modifierMaterializerOf(modifier$iv422);
                                int $changed$iv$iv$iv522 = (($changed$iv$iv522 << 9) & 7168) | 6;
                                if (!($composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer3.startReusableNode();
                                if (!$composer3.getInserting()) {
                                    factory$iv$iv$iv8 = factory$iv$iv$iv1022;
                                    $composer3.createNode(factory$iv$iv$iv8);
                                } else {
                                    factory$iv$iv$iv8 = factory$iv$iv$iv1022;
                                    $composer3.useNode();
                                }
                                $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv622, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv622, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv522 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv522))) {
                                    skippableUpdate$iv$iv$iv522.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522 >> 3) & 112));
                                    $composer3.startReplaceableGroup(2058660585);
                                    int i10222222 = ($changed$iv$iv$iv522 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance3222222 = ColumnScopeInstance.INSTANCE;
                                    int i11222222 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    ComposerKt.sourceInformationMarkerEnd($composer3);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                    $composer3.startReplaceableGroup(1293443816);
                                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                    it$iv10 = $composer3.rememberedValue();
                                    if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                        value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8$1$2$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                                invoke(bool.booleanValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(boolean it) {
                                                ConfigScreenKt.ConfigScreen$lambda$30(mutableState, it);
                                            }
                                        };
                                        $composer3.updateRememberedValue(value$iv11);
                                    } else {
                                        value$iv11 = it$iv10;
                                    }
                                    $composer3.endReplaceableGroup();
                                    SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                                $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv522));
                                $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv522), block$iv$iv$iv522);
                                skippableUpdate$iv$iv$iv522.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i102222222 = ($changed$iv$iv$iv522 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance32222222 = ColumnScopeInstance.INSTANCE;
                                int i112222222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                $composer3.startReplaceableGroup(1293443816);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                }
                            }
                            $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                            $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                            skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i82222 = ($changed$iv$iv$iv422 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance222 = RowScopeInstance.INSTANCE;
                            int i92222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Modifier modifier$iv4222 = Modifier.INSTANCE;
                            Arrangement.Vertical verticalArrangement$iv3222 = Arrangement.INSTANCE.getTop();
                            Alignment.Horizontal horizontalAlignment$iv3222 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv6222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3222, horizontalAlignment$iv3222, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            int $changed$iv$iv5222 = (0 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv5222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv6222 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv10222 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv5222 = LayoutKt.modifierMaterializerOf(modifier$iv4222);
                            int $changed$iv$iv$iv5222 = (($changed$iv$iv5222 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                            }
                            $composer3.startReusableNode();
                            if (!$composer3.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv6222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv6222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv5222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                                skippableUpdate$iv$iv$iv5222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5222 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i1022222222 = ($changed$iv$iv$iv5222 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance322222222 = ColumnScopeInstance.INSTANCE;
                                int i1122222222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                $composer3.startReplaceableGroup(1293443816);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (!ComposerKt.isTraceInProgress()) {
                                }
                            }
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5222));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv5222), block$iv$iv$iv5222);
                            skippableUpdate$iv$iv$iv5222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i10222222222 = ($changed$iv$iv$iv5222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222222222 = ColumnScopeInstance.INSTANCE;
                            int i11222222222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                            $composer3.startReplaceableGroup(1293443816);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                }), $composer2, 54);
                final MutableState<Boolean> voiceEnabled$delegate322 = voiceEnabled$delegate;
                ConfigCard("VOICE ASSISTANT & SPOKEN ALERTS", ComposableLambdaKt.composableLambda($composer2, 193964857, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                        invoke(columnScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:24:0x01b7  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x023b  */
                    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x01c9  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                        Function0 factory$iv$iv$iv722;
                        boolean ConfigScreen$lambda$232;
                        Object value$iv11;
                        Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                        ComposerKt.sourceInformation($composer3, "C217@11049L604:ConfigScreen.kt#xkugs2");
                        if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(193964857, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:217)");
                            }
                            Modifier modifier$iv322 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                            final MutableState<Boolean> mutableState = voiceEnabled$delegate322;
                            $composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            MeasurePolicy measurePolicy$iv522 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                            int $changed$iv$iv422 = (438 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv522 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                            int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                factory$iv$iv$iv722 = factory$iv$iv$iv8;
                                $composer3.createNode(factory$iv$iv$iv722);
                            } else {
                                factory$iv$iv$iv722 = factory$iv$iv$iv8;
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422))) {
                                skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i8222 = ($changed$iv$iv$iv422 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
                                int i9222 = ((438 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                                $composer3.startReplaceableGroup(1293467839);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                value$iv11 = $composer3.rememberedValue();
                                if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9$1$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                            invoke(bool.booleanValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(boolean it) {
                                            ConfigScreenKt.ConfigScreen$lambda$24(mutableState, it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                            skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i82222 = ($changed$iv$iv$iv422 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance222 = RowScopeInstance.INSTANCE;
                            int i92222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                            $composer3.startReplaceableGroup(1293467839);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            value$iv11 = $composer3.rememberedValue();
                            if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                }), $composer2, 54);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                Modifier modifier$iv322 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Vertical verticalArrangement$iv322 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                $composer2.startReplaceableGroup(-483455358);
                ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                Alignment.Horizontal horizontalAlignment$iv322 = Alignment.INSTANCE.getStart();
                MeasurePolicy measurePolicy$iv522 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv322, horizontalAlignment$iv322, $composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv422 = (54 << 3) & 112;
                $composer2.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv522 = $composer2.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv722 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer2);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv522, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                $composer2.startReplaceableGroup(2058660585);
                int i8222 = ($changed$iv$iv$iv422 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance3222 = ColumnScopeInstance.INSTANCE;
                int i9222 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323262708, "C264@13065L39,237@11854L1437,275@13487L48,270@13305L416:ConfigScreen.kt#xkugs2");
                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$1
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
                        String ConfigScreen$lambda$5;
                        String ConfigScreen$lambda$8;
                        String ConfigScreen$lambda$11;
                        VehicleType ConfigScreen$lambda$25;
                        String ConfigScreen$lambda$14;
                        VehicleType ConfigScreen$lambda$26;
                        AppConfig ConfigScreen$lambda$0;
                        boolean ConfigScreen$lambda$232;
                        String ConfigScreen$lambda$262;
                        boolean ConfigScreen$lambda$29;
                        ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                        Double doubleOrNull = StringsKt.toDoubleOrNull(ConfigScreen$lambda$5);
                        double finalTank = doubleOrNull != null ? doubleOrNull.doubleValue() : 2.0d;
                        ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                        Double doubleOrNull2 = StringsKt.toDoubleOrNull(ConfigScreen$lambda$8);
                        double finalTemp = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 115.0d;
                        ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                        Integer intOrNull3 = StringsKt.toIntOrNull(ConfigScreen$lambda$11);
                        int finalRpm = intOrNull3 != null ? intOrNull3.intValue() : 1380;
                        AppConfigManager appConfigManager = AppConfigManager.this;
                        ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate322);
                        ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                        appConfigManager.updateVehicleConfig(ConfigScreen$lambda$25, new VehicleSpecificConfig(finalTank, finalTemp, finalRpm, ConfigScreen$lambda$14));
                        AppConfigManager appConfigManager2 = AppConfigManager.this;
                        ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate322);
                        appConfigManager2.setActiveVehicle(ConfigScreen$lambda$26);
                        AppConfigManager appConfigManager3 = AppConfigManager.this;
                        ConfigScreen$lambda$0 = ConfigScreenKt.ConfigScreen$lambda$0(currentConfig$delegate);
                        ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(voiceEnabled$delegate322);
                        ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(startupScreen$delegate);
                        ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(tempMonitoringEnabled$delegate322);
                        appConfigManager3.updateConfig(AppConfig.copy$default(ConfigScreen$lambda$0, null, ConfigScreen$lambda$232, false, false, ConfigScreen$lambda$262, ConfigScreen$lambda$29, null, 77, null));
                        onBackToMenu.invoke();
                    }
                }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6686getLambda13$app_debug(), $composer2, 805306416, 492);
                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$2
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
                        AppConfigManager.this.resetToDefaults();
                        onBackToMenu.invoke();
                    }
                }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(42)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6687getLambda14$app_debug(), $composer2, 805306416, 492);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceableGroup();
                $composer2.endNode();
                $composer2.endReplaceableGroup();
                $composer2.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
                endRestartGroup = $composer2.endRestartGroup();
                if (endRestartGroup != null) {
                }
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv32), block$iv$iv$iv32);
            skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i6222 = ($changed$iv$iv$iv32 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
            int i7222 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1331409353, "C75@3443L1695,104@5193L1230,127@6495L441,138@6996L504,150@7560L505,162@8127L501,174@8689L1292,197@10040L885,216@10977L690:ConfigScreen.kt#xkugs2");
            final MutableState<VehicleType> configTargetVehicle$delegate3222 = configTargetVehicle$delegate;
            ConfigCard("SELECT VEHICLE TO CONFIGURE", ComposableLambdaKt.composableLambda($composer2, 601583863, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv7222;
                    VehicleType ConfigScreen$lambda$25;
                    VehicleType ConfigScreen$lambda$26;
                    VehicleType ConfigScreen$lambda$27;
                    VehicleType ConfigScreen$lambda$28;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C76@3511L1613:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(601583863, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:76)");
                        }
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        final MutableState<VehicleType> mutableState = configTargetVehicle$delegate3222;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Modifier modifier$iv3222 = Modifier.INSTANCE;
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv5222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        int $changed$iv$iv4222 = (48 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv5222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
                        int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv8;
                            $composer3.createNode(factory$iv$iv$iv7222);
                        } else {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv8;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4222))) {
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                        }
                        skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i83 = ($changed$iv$iv$iv4222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i93 = ((48 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u244 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1435020812, "C79@3722L106,78@3631L41,77@3589L354,85@4104L113,84@4007L47,83@3965L369,91@4492L110,90@4398L44,89@4356L364,97@4880L110,96@4784L46,95@4742L364:ConfigScreen.kt#xkugs2");
                        ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(ConfigScreen$lambda$25 == VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293216851);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv12 = $composer3.rememberedValue();
                        if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                            value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$1$1
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
                                    mutableState.setValue(VehicleType.ATV);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv12);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6682getLambda1$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(ConfigScreen$lambda$26 == VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293228889);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv13 = $composer3.rememberedValue();
                        if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                            value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$2$1
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
                                    mutableState.setValue(VehicleType.MOTOCROSS);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv13);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6688getLambda2$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$27 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(ConfigScreen$lambda$27 == VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293241398);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv14 = $composer3.rememberedValue();
                        if (value$iv14 == Composer.INSTANCE.getEmpty()) {
                            value$iv14 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$3$1
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
                                    mutableState.setValue(VehicleType.DAELIM);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv14);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv14, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6689getLambda3$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults4 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$28 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ884 = buttonDefaults4.m1872buttonColorsro_MJ88(ConfigScreen$lambda$28 == VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default4 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293253752);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$4$1
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
                                    mutableState.setValue(VehicleType.APP_TEST);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv11, weight$default4, false, null, m1872buttonColorsro_MJ884, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6690getLambda4$app_debug(), $composer3, 805306374, 492);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 54);
            ConfigCard("⚙️ SPROCKET TEETH & FINAL DRIVE RATIO (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 2121076576, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x021c  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x02c0  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x0332  */
                /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:33:0x02d0  */
                /* JADX WARN: Removed duplicated region for block: B:34:0x022e  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$17;
                    Object it$iv10;
                    Object value$iv11;
                    String ConfigScreen$lambda$20;
                    Object it$iv11;
                    Object value$iv12;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C105@5306L154,106@5477L932:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2121076576, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:105)");
                        }
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(sprocketRatio)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                        TextKt.m2730Text4IGK_g("Calculated Ratio: " + format + ":1", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                        final MutableState<String> mutableState = frontSprocketTeeth$delegate;
                        final MutableState<String> mutableState2 = rearSprocketTeeth$delegate;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Modifier modifier$iv3222 = Modifier.INSTANCE;
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv5222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        int $changed$iv$iv4222 = (48 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv5222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv7222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
                        int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            $composer3.createNode(factory$iv$iv$iv7222);
                        } else {
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4222))) {
                            skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i82222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i92222 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u242222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                            ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                            KeyboardOptions keyboardOptions322 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default322 = RowScope.weight$default($this$invoke_u24lambda_u242222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293281957);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default322, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions322, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                            ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                            KeyboardOptions keyboardOptions2222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default2222 = RowScope.weight$default($this$invoke_u24lambda_u242222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293295684);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv11 = $composer3.rememberedValue();
                            if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                                value$iv12 = (Function1) new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$2$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState2.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv12);
                            } else {
                                value$iv12 = it$iv11;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default2222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions2222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                        skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i822222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i922222 = ((48 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u2422222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                        ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                        KeyboardOptions keyboardOptions3222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier weight$default3222 = RowScope.weight$default($this$invoke_u24lambda_u2422222, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293281957);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default3222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions3222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                        ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                        KeyboardOptions keyboardOptions22222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier weight$default22222 = RowScope.weight$default($this$invoke_u24lambda_u2422222, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293295684);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv11 = $composer3.rememberedValue();
                        if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default22222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions22222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
            }), $composer2, 48);
            ConfigCard("ASSIGNED STARTER BATTERY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -1222058881, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$14;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C130@6700L29,128@6595L327:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1222058881, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:128)");
                        }
                        ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610546584);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(assignedBatteryInput$delegate);
                        final MutableState<String> mutableState = assignedBatteryInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$14, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6693getLambda7$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12582912, 0, 8257464);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("FUEL TANK CAPACITY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -270227042, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$5;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C141@7192L26,139@7090L396:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-270227042, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:139)");
                        }
                        ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610530843);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(tankCapacityInput$delegate);
                        final MutableState<String> mutableState = tankCapacityInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$5, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6694getLambda8$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("CRITICAL TEMP THRESHOLD (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 681604797, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$8;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C153@7761L26,151@7659L392:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(681604797, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:151)");
                        }
                        ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610512635);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(criticalTempInput$delegate);
                        final MutableState<String> mutableState = criticalTempInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$8, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6695getLambda9$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("TARGET CARB IDLE RPM (" + ConfigScreen$lambda$2(configTargetVehicle$delegate3222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 1633436636, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$11;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C165@8326L27,163@8223L391:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1633436636, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:163)");
                        }
                        ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610494554);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(targetIdleRpmInput$delegate);
                        final MutableState<String> mutableState = targetIdleRpmInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$11, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6683getLambda10$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("DEFAULT APP STARTUP SCREEN", ComposableLambdaKt.composableLambda($composer2, -1709698821, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv7222;
                    String ConfigScreen$lambda$26;
                    String ConfigScreen$lambda$262;
                    String ConfigScreen$lambda$263;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C175@8756L1211:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1709698821, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:175)");
                        }
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        final MutableState<String> mutableState = startupScreen$delegate;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Modifier modifier$iv3222 = Modifier.INSTANCE;
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv5222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        int $changed$iv$iv4222 = (48 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv5222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
                        int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv8;
                            $composer3.createNode(factory$iv$iv$iv7222);
                        } else {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv8;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4222))) {
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                        }
                        skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i83 = ($changed$iv$iv$iv4222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i93 = ((48 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u243 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1440211390, "C178@8957L97,177@8876L31,176@8834L338,184@9312L91,183@9236L26,182@9194L327,190@9665L96,189@9585L30,188@9543L406:ConfigScreen.kt#xkugs2");
                        ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                        ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$26, "MAIN_MENU") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293384681);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv12 = $composer3.rememberedValue();
                        if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                            value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$1$1
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
                                    mutableState.setValue("MAIN_MENU");
                                }
                            };
                            $composer3.updateRememberedValue(value$iv12);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6684getLambda11$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                        ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$262, "TRIP") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293396196);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv13 = $composer3.rememberedValue();
                        if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                            value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$2$1
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
                                    mutableState.setValue("TRIP");
                                }
                            };
                            $composer3.updateRememberedValue(value$iv13);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6685getLambda12$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$263 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                        ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$263, "ATV_DIAG") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293407368);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$3$1
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
                                    mutableState.setValue("ATV_DIAG");
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv11, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableLambdaKt.composableLambda($composer3, 2022375087, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$4
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer4, int $changed3) {
                                String ConfigScreen$lambda$264;
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer4, "C192@9842L105:ConfigScreen.kt#xkugs2");
                                if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2022375087, $changed3, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:192)");
                                }
                                long sp = TextUnitKt.getSp(11);
                                ConfigScreen$lambda$264 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                TextKt.m2730Text4IGK_g("ATV Diag", (Modifier) null, Intrinsics.areEqual(ConfigScreen$lambda$264, "ATV_DIAG") ? Color.INSTANCE.m4038getBlack0d7_KjU() : Color.INSTANCE.m4049getWhite0d7_KjU(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3078, 0, 131058);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }), $composer3, 805306374, 492);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 54);
            final MutableState<Boolean> tempMonitoringEnabled$delegate3222 = tempMonitoringEnabled$delegate;
            ConfigCard("TEMPERATURE SENSOR PROBE", ComposableLambdaKt.composableLambda($composer2, -757866982, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8
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
                /* JADX WARN: Removed duplicated region for block: B:27:0x01d4  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x0325  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x03a7  */
                /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:41:0x0335  */
                /* JADX WARN: Removed duplicated region for block: B:44:0x01da  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv7222;
                    Function0 factory$iv$iv$iv8;
                    Composer $this$Layout_u24lambda_u240$iv$iv5;
                    boolean ConfigScreen$lambda$29;
                    Object it$iv10;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C198@10105L806:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-757866982, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:198)");
                        }
                        Modifier modifier$iv3222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        final MutableState<Boolean> mutableState = tempMonitoringEnabled$delegate3222;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv5222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                        int $changed$iv$iv4222 = (438 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv5222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv9 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
                        int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv9;
                            $composer3.createNode(factory$iv$iv$iv7222);
                        } else {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv9;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv5222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4222))) {
                            skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i82222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance222 = RowScopeInstance.INSTANCE;
                            int i92222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Modifier modifier$iv4222 = Modifier.INSTANCE;
                            Arrangement.Vertical verticalArrangement$iv3222 = Arrangement.INSTANCE.getTop();
                            Alignment.Horizontal horizontalAlignment$iv3222 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv6222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3222, horizontalAlignment$iv3222, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            int $changed$iv$iv5222 = (0 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv5222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv6222 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv10222 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv5222 = LayoutKt.modifierMaterializerOf(modifier$iv4222);
                            int $changed$iv$iv$iv5222 = (($changed$iv$iv5222 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if (!$composer3.getInserting()) {
                                factory$iv$iv$iv8 = factory$iv$iv$iv10222;
                                $composer3.createNode(factory$iv$iv$iv8);
                            } else {
                                factory$iv$iv$iv8 = factory$iv$iv$iv10222;
                                $composer3.useNode();
                            }
                            $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv6222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv6222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv5222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv5222))) {
                                skippableUpdate$iv$iv$iv5222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5222 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i10222222222 = ($changed$iv$iv$iv5222 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance3222222222 = ColumnScopeInstance.INSTANCE;
                                int i11222222222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                $composer3.startReplaceableGroup(1293443816);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8$1$2$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                            invoke(bool.booleanValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(boolean it) {
                                            ConfigScreenKt.ConfigScreen$lambda$30(mutableState, it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5222));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv5222), block$iv$iv$iv5222);
                            skippableUpdate$iv$iv$iv5222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i102222222222 = ($changed$iv$iv$iv5222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance32222222222 = ColumnScopeInstance.INSTANCE;
                            int i112222222222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                            $composer3.startReplaceableGroup(1293443816);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                        $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                        skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i822222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance2222 = RowScopeInstance.INSTANCE;
                        int i922222 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Modifier modifier$iv42222 = Modifier.INSTANCE;
                        Arrangement.Vertical verticalArrangement$iv32222 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv32222 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv62222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv32222, horizontalAlignment$iv32222, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv52222 = (0 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv52222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv62222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv102222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv52222 = LayoutKt.modifierMaterializerOf(modifier$iv42222);
                        int $changed$iv$iv$iv52222 = (($changed$iv$iv52222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                        }
                        $composer3.startReusableNode();
                        if (!$composer3.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv62222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv62222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv52222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                            skippableUpdate$iv$iv$iv52222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i1022222222222 = ($changed$iv$iv$iv52222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance322222222222 = ColumnScopeInstance.INSTANCE;
                            int i1122222222222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                            $composer3.startReplaceableGroup(1293443816);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv52222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv52222), block$iv$iv$iv52222);
                        skippableUpdate$iv$iv$iv52222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i10222222222222 = ($changed$iv$iv$iv52222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance3222222222222 = ColumnScopeInstance.INSTANCE;
                        int i11222222222222 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                        $composer3.startReplaceableGroup(1293443816);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
            }), $composer2, 54);
            final MutableState<Boolean> voiceEnabled$delegate3222 = voiceEnabled$delegate;
            ConfigCard("VOICE ASSISTANT & SPOKEN ALERTS", ComposableLambdaKt.composableLambda($composer2, 193964857, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01b7  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x023b  */
                /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:30:0x01c9  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv7222;
                    boolean ConfigScreen$lambda$232;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C217@11049L604:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(193964857, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:217)");
                        }
                        Modifier modifier$iv3222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        final MutableState<Boolean> mutableState = voiceEnabled$delegate3222;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv5222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                        int $changed$iv$iv4222 = (438 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv5222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
                        int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv8;
                            $composer3.createNode(factory$iv$iv$iv7222);
                        } else {
                            factory$iv$iv$iv7222 = factory$iv$iv$iv8;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4222))) {
                            skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i82222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance222 = RowScopeInstance.INSTANCE;
                            int i92222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                            $composer3.startReplaceableGroup(1293467839);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            value$iv11 = $composer3.rememberedValue();
                            if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                                value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                        invoke(bool.booleanValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(boolean it) {
                                        ConfigScreenKt.ConfigScreen$lambda$24(mutableState, it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                        skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i822222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance2222 = RowScopeInstance.INSTANCE;
                        int i922222 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                        $composer3.startReplaceableGroup(1293467839);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        value$iv11 = $composer3.rememberedValue();
                        if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
            }), $composer2, 54);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            Modifier modifier$iv3222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Vertical verticalArrangement$iv3222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
            $composer2.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Alignment.Horizontal horizontalAlignment$iv3222 = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv5222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3222, horizontalAlignment$iv3222, $composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv4222 = (54 << 3) & 112;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv5222 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv7222 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
            int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv5222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
            skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i82222 = ($changed$iv$iv$iv4222 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance32222 = ColumnScopeInstance.INSTANCE;
            int i92222 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323262708, "C264@13065L39,237@11854L1437,275@13487L48,270@13305L416:ConfigScreen.kt#xkugs2");
            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$1
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
                    String ConfigScreen$lambda$5;
                    String ConfigScreen$lambda$8;
                    String ConfigScreen$lambda$11;
                    VehicleType ConfigScreen$lambda$25;
                    String ConfigScreen$lambda$14;
                    VehicleType ConfigScreen$lambda$26;
                    AppConfig ConfigScreen$lambda$0;
                    boolean ConfigScreen$lambda$232;
                    String ConfigScreen$lambda$262;
                    boolean ConfigScreen$lambda$29;
                    ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                    Double doubleOrNull = StringsKt.toDoubleOrNull(ConfigScreen$lambda$5);
                    double finalTank = doubleOrNull != null ? doubleOrNull.doubleValue() : 2.0d;
                    ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                    Double doubleOrNull2 = StringsKt.toDoubleOrNull(ConfigScreen$lambda$8);
                    double finalTemp = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 115.0d;
                    ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                    Integer intOrNull3 = StringsKt.toIntOrNull(ConfigScreen$lambda$11);
                    int finalRpm = intOrNull3 != null ? intOrNull3.intValue() : 1380;
                    AppConfigManager appConfigManager = AppConfigManager.this;
                    ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate3222);
                    ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                    appConfigManager.updateVehicleConfig(ConfigScreen$lambda$25, new VehicleSpecificConfig(finalTank, finalTemp, finalRpm, ConfigScreen$lambda$14));
                    AppConfigManager appConfigManager2 = AppConfigManager.this;
                    ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate3222);
                    appConfigManager2.setActiveVehicle(ConfigScreen$lambda$26);
                    AppConfigManager appConfigManager3 = AppConfigManager.this;
                    ConfigScreen$lambda$0 = ConfigScreenKt.ConfigScreen$lambda$0(currentConfig$delegate);
                    ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(voiceEnabled$delegate3222);
                    ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(startupScreen$delegate);
                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(tempMonitoringEnabled$delegate3222);
                    appConfigManager3.updateConfig(AppConfig.copy$default(ConfigScreen$lambda$0, null, ConfigScreen$lambda$232, false, false, ConfigScreen$lambda$262, ConfigScreen$lambda$29, null, 77, null));
                    onBackToMenu.invoke();
                }
            }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6686getLambda13$app_debug(), $composer2, 805306416, 492);
            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$2
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
                    AppConfigManager.this.resetToDefaults();
                    onBackToMenu.invoke();
                }
            }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(42)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6687getLambda14$app_debug(), $composer2, 805306416, 492);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
            endRestartGroup = $composer2.endRestartGroup();
            if (endRestartGroup != null) {
            }
        }
        $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
        $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
        $composer2.startReplaceableGroup(2058660585);
        int i22 = ($changed$iv$iv$iv >> 9) & 14;
        ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
        int i32 = ((438 >> 6) & 112) | 6;
        ColumnScope $this$ConfigScreen_u24lambda_u24342 = ColumnScopeInstance.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer2, 1884679789, "C61@2778L313,71@3276L21,66@3101L8576,233@11713L2018:ConfigScreen.kt#xkugs2");
        Alignment.Horizontal horizontalAlignment$iv4 = Alignment.INSTANCE.getCenterHorizontally();
        $composer2.startReplaceableGroup(-483455358);
        ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
        Modifier modifier$iv4 = Modifier.INSTANCE;
        Arrangement.Vertical verticalArrangement$iv4 = Arrangement.INSTANCE.getTop();
        MeasurePolicy measurePolicy$iv32 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv4, horizontalAlignment$iv4, $composer2, ((384 >> 3) & 14) | ((384 >> 3) & 112));
        int $changed$iv$iv22 = (384 << 3) & 112;
        $composer2.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
        int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
        CompositionLocalMap localMap$iv$iv32 = $composer2.getCurrentCompositionLocalMap();
        Function0 factory$iv$iv$iv52 = ComposeUiNode.INSTANCE.getConstructor();
        Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv4);
        int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
        if (!($composer2.getApplier() instanceof Applier)) {
        }
        $composer2.startReusableNode();
        if ($composer2.getInserting()) {
        }
        $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer2);
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
            skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i422 = ($changed$iv$iv$iv22 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance42 = ColumnScopeInstance.INSTANCE;
            int i522 = ((384 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1332244431, "C62@2851L115,63@2979L102:ConfigScreen.kt#xkugs2");
            TextKt.m2730Text4IGK_g("PER-VEHICLE CONFIG & SPROCKET CALCULATOR", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(17), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
            TextKt.m2730Text4IGK_g("Configuring specs for: " + ConfigScreen$lambda$2(configTargetVehicle$delegate).getDisplayName(), (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3456, 0, 131058);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            Modifier modifier$iv222 = ScrollKt.verticalScroll$default(PaddingKt.m830paddingVpY3zN4$default(ColumnScope.weight$default($this$ConfigScreen_u24lambda_u24342, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 1.0f, false, 2, null), 0.0f, Dp.m6360constructorimpl(10), 1, null), ScrollKt.rememberScrollState(0, $composer2, 0, 1), false, null, false, 14, null);
            Arrangement.Vertical verticalArrangement$iv222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
            $composer2.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Alignment.Horizontal horizontalAlignment$iv222 = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv422 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv222, horizontalAlignment$iv222, $composer2, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            int $changed$iv$iv322 = (48 << 3) & 112;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv322 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv422 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv622 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv322 = LayoutKt.modifierMaterializerOf(modifier$iv222);
            int $changed$iv$iv$iv322 = (($changed$iv$iv322 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv422, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv422, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv322 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv322));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv322), block$iv$iv$iv322);
            skippableUpdate$iv$iv$iv322.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv322 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i62222 = ($changed$iv$iv$iv322 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance22222 = ColumnScopeInstance.INSTANCE;
            int i72222 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1331409353, "C75@3443L1695,104@5193L1230,127@6495L441,138@6996L504,150@7560L505,162@8127L501,174@8689L1292,197@10040L885,216@10977L690:ConfigScreen.kt#xkugs2");
            final MutableState<VehicleType> configTargetVehicle$delegate32222 = configTargetVehicle$delegate;
            ConfigCard("SELECT VEHICLE TO CONFIGURE", ComposableLambdaKt.composableLambda($composer2, 601583863, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv72222;
                    VehicleType ConfigScreen$lambda$25;
                    VehicleType ConfigScreen$lambda$26;
                    VehicleType ConfigScreen$lambda$27;
                    VehicleType ConfigScreen$lambda$28;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C76@3511L1613:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(601583863, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:76)");
                        }
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        final MutableState<VehicleType> mutableState = configTargetVehicle$delegate32222;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Modifier modifier$iv32222 = Modifier.INSTANCE;
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv52222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        int $changed$iv$iv42222 = (48 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv52222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
                        int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv8;
                            $composer3.createNode(factory$iv$iv$iv72222);
                        } else {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv8;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42222))) {
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                        }
                        skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i83 = ($changed$iv$iv$iv42222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i93 = ((48 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u244 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1435020812, "C79@3722L106,78@3631L41,77@3589L354,85@4104L113,84@4007L47,83@3965L369,91@4492L110,90@4398L44,89@4356L364,97@4880L110,96@4784L46,95@4742L364:ConfigScreen.kt#xkugs2");
                        ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(ConfigScreen$lambda$25 == VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293216851);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv12 = $composer3.rememberedValue();
                        if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                            value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$1$1
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
                                    mutableState.setValue(VehicleType.ATV);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv12);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6682getLambda1$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(ConfigScreen$lambda$26 == VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293228889);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv13 = $composer3.rememberedValue();
                        if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                            value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$2$1
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
                                    mutableState.setValue(VehicleType.MOTOCROSS);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv13);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6688getLambda2$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$27 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(ConfigScreen$lambda$27 == VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293241398);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv14 = $composer3.rememberedValue();
                        if (value$iv14 == Composer.INSTANCE.getEmpty()) {
                            value$iv14 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$3$1
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
                                    mutableState.setValue(VehicleType.DAELIM);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv14);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv14, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6689getLambda3$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults4 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$28 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                        ButtonColors m1872buttonColorsro_MJ884 = buttonDefaults4.m1872buttonColorsro_MJ88(ConfigScreen$lambda$28 == VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default4 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293253752);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$4$1
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
                                    mutableState.setValue(VehicleType.APP_TEST);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv11, weight$default4, false, null, m1872buttonColorsro_MJ884, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6690getLambda4$app_debug(), $composer3, 805306374, 492);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 54);
            ConfigCard("⚙️ SPROCKET TEETH & FINAL DRIVE RATIO (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 2121076576, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x021c  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x02c0  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x0332  */
                /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:33:0x02d0  */
                /* JADX WARN: Removed duplicated region for block: B:34:0x022e  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$17;
                    Object it$iv10;
                    Object value$iv11;
                    String ConfigScreen$lambda$20;
                    Object it$iv11;
                    Object value$iv12;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C105@5306L154,106@5477L932:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2121076576, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:105)");
                        }
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(sprocketRatio)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                        TextKt.m2730Text4IGK_g("Calculated Ratio: " + format + ":1", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                        final MutableState<String> mutableState = frontSprocketTeeth$delegate;
                        final MutableState<String> mutableState2 = rearSprocketTeeth$delegate;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Modifier modifier$iv32222 = Modifier.INSTANCE;
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv52222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        int $changed$iv$iv42222 = (48 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv52222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv72222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
                        int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            $composer3.createNode(factory$iv$iv$iv72222);
                        } else {
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42222))) {
                            skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i822222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i922222 = ((48 >> 6) & 112) | 6;
                            RowScope $this$invoke_u24lambda_u2422222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                            ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                            KeyboardOptions keyboardOptions3222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default3222 = RowScope.weight$default($this$invoke_u24lambda_u2422222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293281957);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default3222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions3222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                            ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                            KeyboardOptions keyboardOptions22222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                            Modifier weight$default22222 = RowScope.weight$default($this$invoke_u24lambda_u2422222, Modifier.INSTANCE, 1.0f, false, 2, null);
                            $composer3.startReplaceableGroup(1293295684);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv11 = $composer3.rememberedValue();
                            if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                                value$iv12 = (Function1) new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$2$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                        invoke2(str);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(String it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        mutableState2.setValue(it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv12);
                            } else {
                                value$iv12 = it$iv11;
                            }
                            $composer3.endReplaceableGroup();
                            OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default22222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions22222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                        skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i8222222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i9222222 = ((48 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u24222222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                        ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                        KeyboardOptions keyboardOptions32222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier weight$default32222 = RowScope.weight$default($this$invoke_u24lambda_u24222222, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293281957);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default32222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions32222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                        ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                        KeyboardOptions keyboardOptions222222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier weight$default222222 = RowScope.weight$default($this$invoke_u24lambda_u24222222, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293295684);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv11 = $composer3.rememberedValue();
                        if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default222222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions222222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
            }), $composer2, 48);
            ConfigCard("ASSIGNED STARTER BATTERY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -1222058881, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$14;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C130@6700L29,128@6595L327:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1222058881, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:128)");
                        }
                        ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610546584);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(assignedBatteryInput$delegate);
                        final MutableState<String> mutableState = assignedBatteryInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$14, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6693getLambda7$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12582912, 0, 8257464);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("FUEL TANK CAPACITY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -270227042, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$5;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C141@7192L26,139@7090L396:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-270227042, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:139)");
                        }
                        ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610530843);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(tankCapacityInput$delegate);
                        final MutableState<String> mutableState = tankCapacityInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$5, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6694getLambda8$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("CRITICAL TEMP THRESHOLD (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 681604797, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$8;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C153@7761L26,151@7659L392:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(681604797, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:151)");
                        }
                        ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610512635);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(criticalTempInput$delegate);
                        final MutableState<String> mutableState = criticalTempInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$8, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6695getLambda9$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("TARGET CARB IDLE RPM (" + ConfigScreen$lambda$2(configTargetVehicle$delegate32222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 1633436636, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    String ConfigScreen$lambda$11;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C165@8326L27,163@8223L391:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1633436636, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:163)");
                        }
                        ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        $composer3.startReplaceableGroup(-1610494554);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        boolean invalid$iv5 = $composer3.changed(targetIdleRpmInput$delegate);
                        final MutableState<String> mutableState = targetIdleRpmInput$delegate;
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$11, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6683getLambda10$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 48);
            ConfigCard("DEFAULT APP STARTUP SCREEN", ComposableLambdaKt.composableLambda($composer2, -1709698821, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv72222;
                    String ConfigScreen$lambda$26;
                    String ConfigScreen$lambda$262;
                    String ConfigScreen$lambda$263;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C175@8756L1211:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1709698821, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:175)");
                        }
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        final MutableState<String> mutableState = startupScreen$delegate;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Modifier modifier$iv32222 = Modifier.INSTANCE;
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv52222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        int $changed$iv$iv42222 = (48 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv52222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
                        int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv8;
                            $composer3.createNode(factory$iv$iv$iv72222);
                        } else {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv8;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42222))) {
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                        }
                        skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i83 = ($changed$iv$iv$iv42222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i93 = ((48 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u243 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1440211390, "C178@8957L97,177@8876L31,176@8834L338,184@9312L91,183@9236L26,182@9194L327,190@9665L96,189@9585L30,188@9543L406:ConfigScreen.kt#xkugs2");
                        ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                        ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$26, "MAIN_MENU") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293384681);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv12 = $composer3.rememberedValue();
                        if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                            value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$1$1
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
                                    mutableState.setValue("MAIN_MENU");
                                }
                            };
                            $composer3.updateRememberedValue(value$iv12);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6684getLambda11$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                        ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$262, "TRIP") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293396196);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object value$iv13 = $composer3.rememberedValue();
                        if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                            value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$2$1
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
                                    mutableState.setValue("TRIP");
                                }
                            };
                            $composer3.updateRememberedValue(value$iv13);
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6685getLambda12$app_debug(), $composer3, 805306374, 492);
                        ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                        ConfigScreen$lambda$263 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                        ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$263, "ATV_DIAG") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                        Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293407368);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        Object it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                            value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$3$1
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
                                    mutableState.setValue("ATV_DIAG");
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv11, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableLambdaKt.composableLambda($composer3, 2022375087, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$4
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer4, int $changed3) {
                                String ConfigScreen$lambda$264;
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer4, "C192@9842L105:ConfigScreen.kt#xkugs2");
                                if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2022375087, $changed3, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:192)");
                                }
                                long sp = TextUnitKt.getSp(11);
                                ConfigScreen$lambda$264 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                                TextKt.m2730Text4IGK_g("ATV Diag", (Modifier) null, Intrinsics.areEqual(ConfigScreen$lambda$264, "ATV_DIAG") ? Color.INSTANCE.m4038getBlack0d7_KjU() : Color.INSTANCE.m4049getWhite0d7_KjU(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3078, 0, 131058);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }), $composer3, 805306374, 492);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 54);
            final MutableState<Boolean> tempMonitoringEnabled$delegate32222 = tempMonitoringEnabled$delegate;
            ConfigCard("TEMPERATURE SENSOR PROBE", ComposableLambdaKt.composableLambda($composer2, -757866982, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8
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
                /* JADX WARN: Removed duplicated region for block: B:27:0x01d4  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x0325  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x03a7  */
                /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:41:0x0335  */
                /* JADX WARN: Removed duplicated region for block: B:44:0x01da  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv72222;
                    Function0 factory$iv$iv$iv8;
                    Composer $this$Layout_u24lambda_u240$iv$iv5;
                    boolean ConfigScreen$lambda$29;
                    Object it$iv10;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C198@10105L806:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-757866982, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:198)");
                        }
                        Modifier modifier$iv32222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        final MutableState<Boolean> mutableState = tempMonitoringEnabled$delegate32222;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv52222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                        int $changed$iv$iv42222 = (438 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv52222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv9 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
                        int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv9;
                            $composer3.createNode(factory$iv$iv$iv72222);
                        } else {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv9;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv52222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42222))) {
                            skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i822222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance2222 = RowScopeInstance.INSTANCE;
                            int i922222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                            $composer3.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                            Modifier modifier$iv42222 = Modifier.INSTANCE;
                            Arrangement.Vertical verticalArrangement$iv32222 = Arrangement.INSTANCE.getTop();
                            Alignment.Horizontal horizontalAlignment$iv32222 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv62222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv32222, horizontalAlignment$iv32222, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            int $changed$iv$iv52222 = (0 << 3) & 112;
                            $composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv52222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv62222 = $composer3.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv102222 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv52222 = LayoutKt.modifierMaterializerOf(modifier$iv42222);
                            int $changed$iv$iv$iv52222 = (($changed$iv$iv52222 << 9) & 7168) | 6;
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if (!$composer3.getInserting()) {
                                factory$iv$iv$iv8 = factory$iv$iv$iv102222;
                                $composer3.createNode(factory$iv$iv$iv8);
                            } else {
                                factory$iv$iv$iv8 = factory$iv$iv$iv102222;
                                $composer3.useNode();
                            }
                            $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv62222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv62222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv52222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv52222))) {
                                skippableUpdate$iv$iv$iv52222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52222 >> 3) & 112));
                                $composer3.startReplaceableGroup(2058660585);
                                int i10222222222222 = ($changed$iv$iv$iv52222 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance3222222222222 = ColumnScopeInstance.INSTANCE;
                                int i11222222222222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                                $composer3.startReplaceableGroup(1293443816);
                                ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                                it$iv10 = $composer3.rememberedValue();
                                if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                    value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8$1$2$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                            invoke(bool.booleanValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(boolean it) {
                                            ConfigScreenKt.ConfigScreen$lambda$30(mutableState, it);
                                        }
                                    };
                                    $composer3.updateRememberedValue(value$iv11);
                                } else {
                                    value$iv11 = it$iv10;
                                }
                                $composer3.endReplaceableGroup();
                                SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                            $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv52222));
                            $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv52222), block$iv$iv$iv52222);
                            skippableUpdate$iv$iv$iv52222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv52222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i102222222222222 = ($changed$iv$iv$iv52222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance32222222222222 = ColumnScopeInstance.INSTANCE;
                            int i112222222222222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                            $composer3.startReplaceableGroup(1293443816);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                        $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                        skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i8222222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance22222 = RowScopeInstance.INSTANCE;
                        int i9222222 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Modifier modifier$iv422222 = Modifier.INSTANCE;
                        Arrangement.Vertical verticalArrangement$iv322222 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv322222 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv622222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv322222, horizontalAlignment$iv322222, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv522222 = (0 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv522222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv622222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv1022222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv522222 = LayoutKt.modifierMaterializerOf(modifier$iv422222);
                        int $changed$iv$iv$iv522222 = (($changed$iv$iv522222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                        }
                        $composer3.startReusableNode();
                        if (!$composer3.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv622222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv622222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv522222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                            skippableUpdate$iv$iv$iv522222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i1022222222222222 = ($changed$iv$iv$iv522222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance322222222222222 = ColumnScopeInstance.INSTANCE;
                            int i1122222222222222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                            $composer3.startReplaceableGroup(1293443816);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (!ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv522222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv522222), block$iv$iv$iv522222);
                        skippableUpdate$iv$iv$iv522222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i10222222222222222 = ($changed$iv$iv$iv522222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance3222222222222222 = ColumnScopeInstance.INSTANCE;
                        int i11222222222222222 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                        $composer3.startReplaceableGroup(1293443816);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
            }), $composer2, 54);
            final MutableState<Boolean> voiceEnabled$delegate32222 = voiceEnabled$delegate;
            ConfigCard("VOICE ASSISTANT & SPOKEN ALERTS", ComposableLambdaKt.composableLambda($composer2, 193964857, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                    invoke(columnScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x01b7  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x023b  */
                /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:30:0x01c9  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                    Function0 factory$iv$iv$iv72222;
                    boolean ConfigScreen$lambda$232;
                    Object value$iv11;
                    Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                    ComposerKt.sourceInformation($composer3, "C217@11049L604:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(193964857, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:217)");
                        }
                        Modifier modifier$iv32222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        final MutableState<Boolean> mutableState = voiceEnabled$delegate32222;
                        $composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv52222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                        int $changed$iv$iv42222 = (438 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv52222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
                        int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv8;
                            $composer3.createNode(factory$iv$iv$iv72222);
                        } else {
                            factory$iv$iv$iv72222 = factory$iv$iv$iv8;
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv52222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv42222))) {
                            skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i822222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance2222 = RowScopeInstance.INSTANCE;
                            int i922222 = ((438 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                            $composer3.startReplaceableGroup(1293467839);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            value$iv11 = $composer3.rememberedValue();
                            if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                                value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                        invoke(bool.booleanValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(boolean it) {
                                        ConfigScreenKt.ConfigScreen$lambda$24(mutableState, it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                        skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i8222222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance22222 = RowScopeInstance.INSTANCE;
                        int i9222222 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                        $composer3.startReplaceableGroup(1293467839);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        value$iv11 = $composer3.rememberedValue();
                        if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
            }), $composer2, 54);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            Modifier modifier$iv32222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Vertical verticalArrangement$iv32222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
            $composer2.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Alignment.Horizontal horizontalAlignment$iv32222 = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv52222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv32222, horizontalAlignment$iv32222, $composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv42222 = (54 << 3) & 112;
            $composer2.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv52222 = $composer2.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv72222 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
            int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer2);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv52222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
            skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
            $composer2.startReplaceableGroup(2058660585);
            int i822222 = ($changed$iv$iv$iv42222 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance322222 = ColumnScopeInstance.INSTANCE;
            int i922222 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323262708, "C264@13065L39,237@11854L1437,275@13487L48,270@13305L416:ConfigScreen.kt#xkugs2");
            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$1
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
                    String ConfigScreen$lambda$5;
                    String ConfigScreen$lambda$8;
                    String ConfigScreen$lambda$11;
                    VehicleType ConfigScreen$lambda$25;
                    String ConfigScreen$lambda$14;
                    VehicleType ConfigScreen$lambda$26;
                    AppConfig ConfigScreen$lambda$0;
                    boolean ConfigScreen$lambda$232;
                    String ConfigScreen$lambda$262;
                    boolean ConfigScreen$lambda$29;
                    ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                    Double doubleOrNull = StringsKt.toDoubleOrNull(ConfigScreen$lambda$5);
                    double finalTank = doubleOrNull != null ? doubleOrNull.doubleValue() : 2.0d;
                    ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                    Double doubleOrNull2 = StringsKt.toDoubleOrNull(ConfigScreen$lambda$8);
                    double finalTemp = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 115.0d;
                    ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                    Integer intOrNull3 = StringsKt.toIntOrNull(ConfigScreen$lambda$11);
                    int finalRpm = intOrNull3 != null ? intOrNull3.intValue() : 1380;
                    AppConfigManager appConfigManager = AppConfigManager.this;
                    ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate32222);
                    ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                    appConfigManager.updateVehicleConfig(ConfigScreen$lambda$25, new VehicleSpecificConfig(finalTank, finalTemp, finalRpm, ConfigScreen$lambda$14));
                    AppConfigManager appConfigManager2 = AppConfigManager.this;
                    ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate32222);
                    appConfigManager2.setActiveVehicle(ConfigScreen$lambda$26);
                    AppConfigManager appConfigManager3 = AppConfigManager.this;
                    ConfigScreen$lambda$0 = ConfigScreenKt.ConfigScreen$lambda$0(currentConfig$delegate);
                    ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(voiceEnabled$delegate32222);
                    ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(startupScreen$delegate);
                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(tempMonitoringEnabled$delegate32222);
                    appConfigManager3.updateConfig(AppConfig.copy$default(ConfigScreen$lambda$0, null, ConfigScreen$lambda$232, false, false, ConfigScreen$lambda$262, ConfigScreen$lambda$29, null, 77, null));
                    onBackToMenu.invoke();
                }
            }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6686getLambda13$app_debug(), $composer2, 805306416, 492);
            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$2
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
                    AppConfigManager.this.resetToDefaults();
                    onBackToMenu.invoke();
                }
            }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(42)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6687getLambda14$app_debug(), $composer2, 805306416, 492);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endReplaceableGroup();
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
            endRestartGroup = $composer2.endRestartGroup();
            if (endRestartGroup != null) {
            }
        }
        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
        skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
        $composer2.startReplaceableGroup(2058660585);
        int i4222 = ($changed$iv$iv$iv22 >> 9) & 14;
        ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
        ColumnScopeInstance columnScopeInstance422 = ColumnScopeInstance.INSTANCE;
        int i5222 = ((384 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer2, -1332244431, "C62@2851L115,63@2979L102:ConfigScreen.kt#xkugs2");
        TextKt.m2730Text4IGK_g("PER-VEHICLE CONFIG & SPROCKET CALCULATOR", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(17), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 200070, 0, 131026);
        TextKt.m2730Text4IGK_g("Configuring specs for: " + ConfigScreen$lambda$2(configTargetVehicle$delegate).getDisplayName(), (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 3456, 0, 131058);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        $composer2.endReplaceableGroup();
        $composer2.endNode();
        $composer2.endReplaceableGroup();
        $composer2.endReplaceableGroup();
        Modifier modifier$iv2222 = ScrollKt.verticalScroll$default(PaddingKt.m830paddingVpY3zN4$default(ColumnScope.weight$default($this$ConfigScreen_u24lambda_u24342, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 1.0f, false, 2, null), 0.0f, Dp.m6360constructorimpl(10), 1, null), ScrollKt.rememberScrollState(0, $composer2, 0, 1), false, null, false, 14, null);
        Arrangement.Vertical verticalArrangement$iv2222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(10));
        $composer2.startReplaceableGroup(-483455358);
        ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
        Alignment.Horizontal horizontalAlignment$iv2222 = Alignment.INSTANCE.getStart();
        MeasurePolicy measurePolicy$iv4222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2222, horizontalAlignment$iv2222, $composer2, ((48 >> 3) & 14) | ((48 >> 3) & 112));
        int $changed$iv$iv3222 = (48 << 3) & 112;
        $composer2.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
        int compositeKeyHash$iv$iv3222 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
        CompositionLocalMap localMap$iv$iv4222 = $composer2.getCurrentCompositionLocalMap();
        Function0 factory$iv$iv$iv6222 = ComposeUiNode.INSTANCE.getConstructor();
        Function3 skippableUpdate$iv$iv$iv3222 = LayoutKt.modifierMaterializerOf(modifier$iv2222);
        int $changed$iv$iv$iv3222 = (($changed$iv$iv3222 << 9) & 7168) | 6;
        if (!($composer2.getApplier() instanceof Applier)) {
        }
        $composer2.startReusableNode();
        if ($composer2.getInserting()) {
        }
        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer2);
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2 block$iv$iv$iv3222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
        }
        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3222));
        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3222), block$iv$iv$iv3222);
        skippableUpdate$iv$iv$iv3222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv3222 >> 3) & 112));
        $composer2.startReplaceableGroup(2058660585);
        int i622222 = ($changed$iv$iv$iv3222 >> 9) & 14;
        ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
        ColumnScopeInstance columnScopeInstance222222 = ColumnScopeInstance.INSTANCE;
        int i722222 = ((48 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer2, -1331409353, "C75@3443L1695,104@5193L1230,127@6495L441,138@6996L504,150@7560L505,162@8127L501,174@8689L1292,197@10040L885,216@10977L690:ConfigScreen.kt#xkugs2");
        final MutableState<VehicleType> configTargetVehicle$delegate322222 = configTargetVehicle$delegate;
        ConfigCard("SELECT VEHICLE TO CONFIGURE", ComposableLambdaKt.composableLambda($composer2, 601583863, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                Function0 factory$iv$iv$iv722222;
                VehicleType ConfigScreen$lambda$25;
                VehicleType ConfigScreen$lambda$26;
                VehicleType ConfigScreen$lambda$27;
                VehicleType ConfigScreen$lambda$28;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C76@3511L1613:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(601583863, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:76)");
                    }
                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                    final MutableState<VehicleType> mutableState = configTargetVehicle$delegate322222;
                    $composer3.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Modifier modifier$iv322222 = Modifier.INSTANCE;
                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv522222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                    int $changed$iv$iv422222 = (48 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv522222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv322222);
                    int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv8;
                        $composer3.createNode(factory$iv$iv$iv722222);
                    } else {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv8;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422222))) {
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                    }
                    skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i83 = ($changed$iv$iv$iv422222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i93 = ((48 >> 6) & 112) | 6;
                    RowScope $this$invoke_u24lambda_u244 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1435020812, "C79@3722L106,78@3631L41,77@3589L354,85@4104L113,84@4007L47,83@3965L369,91@4492L110,90@4398L44,89@4356L364,97@4880L110,96@4784L46,95@4742L364:ConfigScreen.kt#xkugs2");
                    ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                    ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                    ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(ConfigScreen$lambda$25 == VehicleType.ATV ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                    Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293216851);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    Object value$iv12 = $composer3.rememberedValue();
                    if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                        value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$1$1
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
                                mutableState.setValue(VehicleType.ATV);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv12);
                    }
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6682getLambda1$app_debug(), $composer3, 805306374, 492);
                    ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                    ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                    ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(ConfigScreen$lambda$26 == VehicleType.MOTOCROSS ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                    Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293228889);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    Object value$iv13 = $composer3.rememberedValue();
                    if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                        value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$2$1
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
                                mutableState.setValue(VehicleType.MOTOCROSS);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv13);
                    }
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6688getLambda2$app_debug(), $composer3, 805306374, 492);
                    ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                    ConfigScreen$lambda$27 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                    ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(ConfigScreen$lambda$27 == VehicleType.DAELIM ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                    Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293241398);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    Object value$iv14 = $composer3.rememberedValue();
                    if (value$iv14 == Composer.INSTANCE.getEmpty()) {
                        value$iv14 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$3$1
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
                                mutableState.setValue(VehicleType.DAELIM);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv14);
                    }
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv14, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6689getLambda3$app_debug(), $composer3, 805306374, 492);
                    ButtonDefaults buttonDefaults4 = ButtonDefaults.INSTANCE;
                    ConfigScreen$lambda$28 = ConfigScreenKt.ConfigScreen$lambda$2(mutableState);
                    ButtonColors m1872buttonColorsro_MJ884 = buttonDefaults4.m1872buttonColorsro_MJ88(ConfigScreen$lambda$28 == VehicleType.APP_TEST ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                    Modifier weight$default4 = RowScope.weight$default($this$invoke_u24lambda_u244, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293253752);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    Object it$iv10 = $composer3.rememberedValue();
                    if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$1$1$4$1
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
                                mutableState.setValue(VehicleType.APP_TEST);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv11);
                    } else {
                        value$iv11 = it$iv10;
                    }
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv11, weight$default4, false, null, m1872buttonColorsro_MJ884, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6690getLambda4$app_debug(), $composer3, 805306374, 492);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer3.skipToGroupEnd();
            }
        }), $composer2, 54);
        ConfigCard("⚙️ SPROCKET TEETH & FINAL DRIVE RATIO (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 2121076576, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x021c  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x02c0  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x0332  */
            /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:33:0x02d0  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x022e  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                String ConfigScreen$lambda$17;
                Object it$iv10;
                Object value$iv11;
                String ConfigScreen$lambda$20;
                Object it$iv11;
                Object value$iv12;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C105@5306L154,106@5477L932:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2121076576, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:105)");
                    }
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(sprocketRatio)}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                    TextKt.m2730Text4IGK_g("Calculated Ratio: " + format + ":1", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 200064, 0, 131026);
                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
                    final MutableState<String> mutableState = frontSprocketTeeth$delegate;
                    final MutableState<String> mutableState2 = rearSprocketTeeth$delegate;
                    $composer3.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Modifier modifier$iv322222 = Modifier.INSTANCE;
                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv522222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                    int $changed$iv$iv422222 = (48 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv522222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv722222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv322222);
                    int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        $composer3.createNode(factory$iv$iv$iv722222);
                    } else {
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422222))) {
                        skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i8222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i9222222 = ((48 >> 6) & 112) | 6;
                        RowScope $this$invoke_u24lambda_u24222222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                        ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                        KeyboardOptions keyboardOptions32222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier weight$default32222 = RowScope.weight$default($this$invoke_u24lambda_u24222222, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293281957);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                            value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        } else {
                            value$iv11 = it$iv10;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default32222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions32222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                        ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                        KeyboardOptions keyboardOptions222222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                        Modifier weight$default222222 = RowScope.weight$default($this$invoke_u24lambda_u24222222, Modifier.INSTANCE, 1.0f, false, 2, null);
                        $composer3.startReplaceableGroup(1293295684);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv11 = $composer3.rememberedValue();
                        if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                            value$iv12 = (Function1) new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$2$1$2$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                    invoke2(str);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(String it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    mutableState2.setValue(it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv12);
                        } else {
                            value$iv12 = it$iv11;
                        }
                        $composer3.endReplaceableGroup();
                        OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default222222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions222222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                    skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i82222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i92222222 = ((48 >> 6) & 112) | 6;
                    RowScope $this$invoke_u24lambda_u242222222 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1436949973, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2");
                    ConfigScreen$lambda$17 = ConfigScreenKt.ConfigScreen$lambda$17(mutableState);
                    KeyboardOptions keyboardOptions322222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                    Modifier weight$default322222 = RowScope.weight$default($this$invoke_u24lambda_u242222222, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293281957);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    it$iv10 = $composer3.rememberedValue();
                    if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                    }
                    $composer3.endReplaceableGroup();
                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$17, (Function1<? super String, Unit>) value$iv11, weight$default322222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6691getLambda5$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions322222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
                    ConfigScreen$lambda$20 = ConfigScreenKt.ConfigScreen$lambda$20(mutableState2);
                    KeyboardOptions keyboardOptions2222222 = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                    Modifier weight$default2222222 = RowScope.weight$default($this$invoke_u24lambda_u242222222, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293295684);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    it$iv11 = $composer3.rememberedValue();
                    if (it$iv11 != Composer.INSTANCE.getEmpty()) {
                    }
                    $composer3.endReplaceableGroup();
                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$20, (Function1<? super String, Unit>) value$iv12, weight$default2222222, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6692getLambda6$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions2222222, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1572912, 12779520, 0, 8224696);
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
        }), $composer2, 48);
        ConfigCard("ASSIGNED STARTER BATTERY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -1222058881, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                String ConfigScreen$lambda$14;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C130@6700L29,128@6595L327:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1222058881, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:128)");
                    }
                    ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                    Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    $composer3.startReplaceableGroup(-1610546584);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    boolean invalid$iv5 = $composer3.changed(assignedBatteryInput$delegate);
                    final MutableState<String> mutableState = assignedBatteryInput$delegate;
                    Object it$iv10 = $composer3.rememberedValue();
                    if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                        value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$3$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                invoke2(str);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(String it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                mutableState.setValue(it);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv11);
                    } else {
                        value$iv11 = it$iv10;
                    }
                    $composer3.endReplaceableGroup();
                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$14, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6693getLambda7$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12582912, 0, 8257464);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer3.skipToGroupEnd();
            }
        }), $composer2, 48);
        ConfigCard("FUEL TANK CAPACITY (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, -270227042, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                String ConfigScreen$lambda$5;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C141@7192L26,139@7090L396:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-270227042, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:139)");
                    }
                    ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                    KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                    Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    $composer3.startReplaceableGroup(-1610530843);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    boolean invalid$iv5 = $composer3.changed(tankCapacityInput$delegate);
                    final MutableState<String> mutableState = tankCapacityInput$delegate;
                    Object it$iv10 = $composer3.rememberedValue();
                    if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                        value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$4$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                invoke2(str);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(String it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                mutableState.setValue(it);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv11);
                    } else {
                        value$iv11 = it$iv10;
                    }
                    $composer3.endReplaceableGroup();
                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$5, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6694getLambda8$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer3.skipToGroupEnd();
            }
        }), $composer2, 48);
        ConfigCard("CRITICAL TEMP THRESHOLD (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 681604797, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                String ConfigScreen$lambda$8;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C153@7761L26,151@7659L392:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(681604797, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:151)");
                    }
                    ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                    KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                    Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    $composer3.startReplaceableGroup(-1610512635);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    boolean invalid$iv5 = $composer3.changed(criticalTempInput$delegate);
                    final MutableState<String> mutableState = criticalTempInput$delegate;
                    Object it$iv10 = $composer3.rememberedValue();
                    if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                        value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$5$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                invoke2(str);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(String it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                mutableState.setValue(it);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv11);
                    } else {
                        value$iv11 = it$iv10;
                    }
                    $composer3.endReplaceableGroup();
                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$8, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6695getLambda9$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer3.skipToGroupEnd();
            }
        }), $composer2, 48);
        ConfigCard("TARGET CARB IDLE RPM (" + ConfigScreen$lambda$2(configTargetVehicle$delegate322222).getShortName() + ")", ComposableLambdaKt.composableLambda($composer2, 1633436636, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                String ConfigScreen$lambda$11;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C165@8326L27,163@8223L391:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1633436636, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:163)");
                    }
                    ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                    KeyboardOptions keyboardOptions = new KeyboardOptions(0, false, KeyboardType.INSTANCE.m6064getNumberPjHm6EE(), 0, null, 27, null);
                    Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    $composer3.startReplaceableGroup(-1610494554);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    boolean invalid$iv5 = $composer3.changed(targetIdleRpmInput$delegate);
                    final MutableState<String> mutableState = targetIdleRpmInput$delegate;
                    Object it$iv10 = $composer3.rememberedValue();
                    if (invalid$iv5 || it$iv10 == Composer.INSTANCE.getEmpty()) {
                        value$iv11 = new Function1<String, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$6$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                invoke2(str);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(String it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                mutableState.setValue(it);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv11);
                    } else {
                        value$iv11 = it$iv10;
                    }
                    $composer3.endReplaceableGroup();
                    OutlinedTextFieldKt.OutlinedTextField(ConfigScreen$lambda$11, (Function1<? super String, Unit>) value$iv11, fillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$ConfigScreenKt.INSTANCE.m6683getLambda10$app_debug(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, keyboardOptions, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, $composer3, 1573248, 12779520, 0, 8224696);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer3.skipToGroupEnd();
            }
        }), $composer2, 48);
        ConfigCard("DEFAULT APP STARTUP SCREEN", ComposableLambdaKt.composableLambda($composer2, -1709698821, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                Function0 factory$iv$iv$iv722222;
                String ConfigScreen$lambda$26;
                String ConfigScreen$lambda$262;
                String ConfigScreen$lambda$263;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C175@8756L1211:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1709698821, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:175)");
                    }
                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                    final MutableState<String> mutableState = startupScreen$delegate;
                    $composer3.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Modifier modifier$iv322222 = Modifier.INSTANCE;
                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv522222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                    int $changed$iv$iv422222 = (48 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv522222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv322222);
                    int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv8;
                        $composer3.createNode(factory$iv$iv$iv722222);
                    } else {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv8;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv5.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422222))) {
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                    }
                    skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i83 = ($changed$iv$iv$iv422222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i93 = ((48 >> 6) & 112) | 6;
                    RowScope $this$invoke_u24lambda_u243 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1440211390, "C178@8957L97,177@8876L31,176@8834L338,184@9312L91,183@9236L26,182@9194L327,190@9665L96,189@9585L30,188@9543L406:ConfigScreen.kt#xkugs2");
                    ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                    ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                    ButtonColors m1872buttonColorsro_MJ88 = buttonDefaults.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$26, "MAIN_MENU") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                    Modifier weight$default = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293384681);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    Object value$iv12 = $composer3.rememberedValue();
                    if (value$iv12 == Composer.INSTANCE.getEmpty()) {
                        value$iv12 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$1$1
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
                                mutableState.setValue("MAIN_MENU");
                            }
                        };
                        $composer3.updateRememberedValue(value$iv12);
                    }
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv12, weight$default, false, null, m1872buttonColorsro_MJ88, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6684getLambda11$app_debug(), $composer3, 805306374, 492);
                    ButtonDefaults buttonDefaults2 = ButtonDefaults.INSTANCE;
                    ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                    ButtonColors m1872buttonColorsro_MJ882 = buttonDefaults2.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$262, "TRIP") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                    Modifier weight$default2 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293396196);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    Object value$iv13 = $composer3.rememberedValue();
                    if (value$iv13 == Composer.INSTANCE.getEmpty()) {
                        value$iv13 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$2$1
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
                                mutableState.setValue("TRIP");
                            }
                        };
                        $composer3.updateRememberedValue(value$iv13);
                    }
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv13, weight$default2, false, null, m1872buttonColorsro_MJ882, null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6685getLambda12$app_debug(), $composer3, 805306374, 492);
                    ButtonDefaults buttonDefaults3 = ButtonDefaults.INSTANCE;
                    ConfigScreen$lambda$263 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                    ButtonColors m1872buttonColorsro_MJ883 = buttonDefaults3.m1872buttonColorsro_MJ88(Intrinsics.areEqual(ConfigScreen$lambda$263, "ATV_DIAG") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer3, ButtonDefaults.$stable << 12, 14);
                    Modifier weight$default3 = RowScope.weight$default($this$invoke_u24lambda_u243, Modifier.INSTANCE, 1.0f, false, 2, null);
                    $composer3.startReplaceableGroup(1293407368);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    Object it$iv10 = $composer3.rememberedValue();
                    if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                        value$iv11 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$3$1
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
                                mutableState.setValue("ATV_DIAG");
                            }
                        };
                        $composer3.updateRememberedValue(value$iv11);
                    } else {
                        value$iv11 = it$iv10;
                    }
                    $composer3.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv11, weight$default3, false, null, m1872buttonColorsro_MJ883, null, null, null, null, ComposableLambdaKt.composableLambda($composer3, 2022375087, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$7$1$4
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                            invoke(rowScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RowScope Button, Composer $composer4, int $changed3) {
                            String ConfigScreen$lambda$264;
                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                            ComposerKt.sourceInformation($composer4, "C192@9842L105:ConfigScreen.kt#xkugs2");
                            if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                $composer4.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2022375087, $changed3, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:192)");
                            }
                            long sp = TextUnitKt.getSp(11);
                            ConfigScreen$lambda$264 = ConfigScreenKt.ConfigScreen$lambda$26(mutableState);
                            TextKt.m2730Text4IGK_g("ATV Diag", (Modifier) null, Intrinsics.areEqual(ConfigScreen$lambda$264, "ATV_DIAG") ? Color.INSTANCE.m4038getBlack0d7_KjU() : Color.INSTANCE.m4049getWhite0d7_KjU(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3078, 0, 131058);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }), $composer3, 805306374, 492);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer3.skipToGroupEnd();
            }
        }), $composer2, 54);
        final MutableState<Boolean> tempMonitoringEnabled$delegate322222 = tempMonitoringEnabled$delegate;
        ConfigCard("TEMPERATURE SENSOR PROBE", ComposableLambdaKt.composableLambda($composer2, -757866982, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8
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
            /* JADX WARN: Removed duplicated region for block: B:27:0x01d4  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x0325  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x03a7  */
            /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:41:0x0335  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x01da  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                Function0 factory$iv$iv$iv722222;
                Function0 factory$iv$iv$iv8;
                Composer $this$Layout_u24lambda_u240$iv$iv5;
                boolean ConfigScreen$lambda$29;
                Object it$iv10;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C198@10105L806:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-757866982, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:198)");
                    }
                    Modifier modifier$iv322222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                    final MutableState<Boolean> mutableState = tempMonitoringEnabled$delegate322222;
                    $composer3.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicy$iv522222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                    int $changed$iv$iv422222 = (438 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv522222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv9 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv322222);
                    int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv9;
                        $composer3.createNode(factory$iv$iv$iv722222);
                    } else {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv9;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv6 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, measurePolicy$iv522222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv6, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv6.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv6.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422222))) {
                        skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i8222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance22222 = RowScopeInstance.INSTANCE;
                        int i9222222 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Modifier modifier$iv422222 = Modifier.INSTANCE;
                        Arrangement.Vertical verticalArrangement$iv322222 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv322222 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv622222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv322222, horizontalAlignment$iv322222, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv522222 = (0 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv522222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv622222 = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv1022222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv522222 = LayoutKt.modifierMaterializerOf(modifier$iv422222);
                        int $changed$iv$iv$iv522222 = (($changed$iv$iv522222 << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if (!$composer3.getInserting()) {
                            factory$iv$iv$iv8 = factory$iv$iv$iv1022222;
                            $composer3.createNode(factory$iv$iv$iv8);
                        } else {
                            factory$iv$iv$iv8 = factory$iv$iv$iv1022222;
                            $composer3.useNode();
                        }
                        $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv622222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv622222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv522222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv522222))) {
                            skippableUpdate$iv$iv$iv522222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522222 >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i10222222222222222 = ($changed$iv$iv$iv522222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3222222222222222 = ColumnScopeInstance.INSTANCE;
                            int i11222222222222222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                            $composer3.startReplaceableGroup(1293443816);
                            ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                            it$iv10 = $composer3.rememberedValue();
                            if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                                value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$8$1$2$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                        invoke(bool.booleanValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(boolean it) {
                                        ConfigScreenKt.ConfigScreen$lambda$30(mutableState, it);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv11);
                            } else {
                                value$iv11 = it$iv10;
                            }
                            $composer3.endReplaceableGroup();
                            SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv522222));
                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv522222), block$iv$iv$iv522222);
                        skippableUpdate$iv$iv$iv522222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv522222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i102222222222222222 = ($changed$iv$iv$iv522222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance32222222222222222 = ColumnScopeInstance.INSTANCE;
                        int i112222222222222222 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                        $composer3.startReplaceableGroup(1293443816);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    }
                    $this$Layout_u24lambda_u240$iv$iv6.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                    $this$Layout_u24lambda_u240$iv$iv6.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                    skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i82222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance222222 = RowScopeInstance.INSTANCE;
                    int i92222222 = ((438 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1441690803, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2");
                    $composer3.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                    Modifier modifier$iv4222222 = Modifier.INSTANCE;
                    Arrangement.Vertical verticalArrangement$iv3222222 = Arrangement.INSTANCE.getTop();
                    Alignment.Horizontal horizontalAlignment$iv3222222 = Alignment.INSTANCE.getStart();
                    MeasurePolicy measurePolicy$iv6222222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3222222, horizontalAlignment$iv3222222, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                    int $changed$iv$iv5222222 = (0 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv5222222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv6222222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv10222222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv5222222 = LayoutKt.modifierMaterializerOf(modifier$iv4222222);
                    int $changed$iv$iv$iv5222222 = (($changed$iv$iv5222222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                    }
                    $composer3.startReusableNode();
                    if (!$composer3.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv6222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv6222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv5222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting()) {
                        skippableUpdate$iv$iv$iv5222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5222222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i1022222222222222222 = ($changed$iv$iv$iv5222222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance322222222222222222 = ColumnScopeInstance.INSTANCE;
                        int i1122222222222222222 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                        $composer3.startReplaceableGroup(1293443816);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        it$iv10 = $composer3.rememberedValue();
                        if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                        }
                        $composer3.endReplaceableGroup();
                        SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    }
                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5222222));
                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv5222222), block$iv$iv$iv5222222);
                    skippableUpdate$iv$iv$iv5222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv5222222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i10222222222222222222 = ($changed$iv$iv$iv5222222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance3222222222222222222 = ColumnScopeInstance.INSTANCE;
                    int i11222222222222222222 = ((0 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1471350484, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("Enable Temperature Monitoring", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                    TextKt.m2730Text4IGK_g("Turn OFF if no physical probe is installed", (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(mutableState);
                    $composer3.startReplaceableGroup(1293443816);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    it$iv10 = $composer3.rememberedValue();
                    if (it$iv10 != Composer.INSTANCE.getEmpty()) {
                    }
                    $composer3.endReplaceableGroup();
                    SwitchKt.Switch(ConfigScreen$lambda$29, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
        }), $composer2, 54);
        final MutableState<Boolean> voiceEnabled$delegate322222 = voiceEnabled$delegate;
        ConfigCard("VOICE ASSISTANT & SPOKEN ALERTS", ComposableLambdaKt.composableLambda($composer2, 193964857, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer, Integer num) {
                invoke(columnScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x01b7  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x023b  */
            /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:30:0x01c9  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void invoke(ColumnScope ConfigCard, Composer $composer3, int $changed2) {
                Function0 factory$iv$iv$iv722222;
                boolean ConfigScreen$lambda$232;
                Object value$iv11;
                Intrinsics.checkNotNullParameter(ConfigCard, "$this$ConfigCard");
                ComposerKt.sourceInformation($composer3, "C217@11049L604:ConfigScreen.kt#xkugs2");
                if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(193964857, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:217)");
                    }
                    Modifier modifier$iv322222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                    final MutableState<Boolean> mutableState = voiceEnabled$delegate322222;
                    $composer3.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicy$iv522222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                    int $changed$iv$iv422222 = (438 << 3) & 112;
                    $composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv522222 = $composer3.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv322222);
                    int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv8;
                        $composer3.createNode(factory$iv$iv$iv722222);
                    } else {
                        factory$iv$iv$iv722222 = factory$iv$iv$iv8;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer3);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv522222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv422222))) {
                        skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i8222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance22222 = RowScopeInstance.INSTANCE;
                        int i9222222 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                        ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                        $composer3.startReplaceableGroup(1293467839);
                        ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                        value$iv11 = $composer3.rememberedValue();
                        if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                            value$iv11 = (Function1) new Function1<Boolean, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$2$9$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                    invoke(bool.booleanValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(boolean it) {
                                    ConfigScreenKt.ConfigScreen$lambda$24(mutableState, it);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv11);
                        }
                        $composer3.endReplaceableGroup();
                        SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                    skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                    $composer3.startReplaceableGroup(2058660585);
                    int i82222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance222222 = RowScopeInstance.INSTANCE;
                    int i92222222 = ((438 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 1442620989, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("Spoken Audio Alerts", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, 3462, 0, 131058);
                    ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(mutableState);
                    $composer3.startReplaceableGroup(1293467839);
                    ComposerKt.sourceInformation($composer3, "CC(remember):ConfigScreen.kt#9igjgp");
                    value$iv11 = $composer3.rememberedValue();
                    if (value$iv11 != Composer.INSTANCE.getEmpty()) {
                    }
                    $composer3.endReplaceableGroup();
                    SwitchKt.Switch(ConfigScreen$lambda$232, (Function1) value$iv11, null, null, false, SwitchDefaults.INSTANCE.m2613colorsV1nXRL4(ColorKt.getCgsAccent(), ColorKt.getCgsGreen(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 54, SwitchDefaults.$stable << 18, 65532), null, $composer3, 48, 92);
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
        }), $composer2, 54);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        $composer2.endReplaceableGroup();
        $composer2.endNode();
        $composer2.endReplaceableGroup();
        $composer2.endReplaceableGroup();
        Modifier modifier$iv322222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
        Arrangement.Vertical verticalArrangement$iv322222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8));
        $composer2.startReplaceableGroup(-483455358);
        ComposerKt.sourceInformation($composer2, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
        Alignment.Horizontal horizontalAlignment$iv322222 = Alignment.INSTANCE.getStart();
        MeasurePolicy measurePolicy$iv522222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv322222, horizontalAlignment$iv322222, $composer2, ((54 >> 3) & 14) | ((54 >> 3) & 112));
        int $changed$iv$iv422222 = (54 << 3) & 112;
        $composer2.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
        int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
        CompositionLocalMap localMap$iv$iv522222 = $composer2.getCurrentCompositionLocalMap();
        Function0 factory$iv$iv$iv722222 = ComposeUiNode.INSTANCE.getConstructor();
        Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv322222);
        int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
        if (!($composer2.getApplier() instanceof Applier)) {
        }
        $composer2.startReusableNode();
        if ($composer2.getInserting()) {
        }
        $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer2);
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv522222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
        }
        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
        skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
        $composer2.startReplaceableGroup(2058660585);
        int i8222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
        ComposerKt.sourceInformationMarkerStart($composer2, 276693656, "C79@3979L9:Column.kt#2w3rfo");
        ColumnScopeInstance columnScopeInstance3222222 = ColumnScopeInstance.INSTANCE;
        int i9222222 = ((54 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer2, -1323262708, "C264@13065L39,237@11854L1437,275@13487L48,270@13305L416:ConfigScreen.kt#xkugs2");
        ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$1
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
                String ConfigScreen$lambda$5;
                String ConfigScreen$lambda$8;
                String ConfigScreen$lambda$11;
                VehicleType ConfigScreen$lambda$25;
                String ConfigScreen$lambda$14;
                VehicleType ConfigScreen$lambda$26;
                AppConfig ConfigScreen$lambda$0;
                boolean ConfigScreen$lambda$232;
                String ConfigScreen$lambda$262;
                boolean ConfigScreen$lambda$29;
                ConfigScreen$lambda$5 = ConfigScreenKt.ConfigScreen$lambda$5(tankCapacityInput$delegate);
                Double doubleOrNull = StringsKt.toDoubleOrNull(ConfigScreen$lambda$5);
                double finalTank = doubleOrNull != null ? doubleOrNull.doubleValue() : 2.0d;
                ConfigScreen$lambda$8 = ConfigScreenKt.ConfigScreen$lambda$8(criticalTempInput$delegate);
                Double doubleOrNull2 = StringsKt.toDoubleOrNull(ConfigScreen$lambda$8);
                double finalTemp = doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 115.0d;
                ConfigScreen$lambda$11 = ConfigScreenKt.ConfigScreen$lambda$11(targetIdleRpmInput$delegate);
                Integer intOrNull3 = StringsKt.toIntOrNull(ConfigScreen$lambda$11);
                int finalRpm = intOrNull3 != null ? intOrNull3.intValue() : 1380;
                AppConfigManager appConfigManager = AppConfigManager.this;
                ConfigScreen$lambda$25 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate322222);
                ConfigScreen$lambda$14 = ConfigScreenKt.ConfigScreen$lambda$14(assignedBatteryInput$delegate);
                appConfigManager.updateVehicleConfig(ConfigScreen$lambda$25, new VehicleSpecificConfig(finalTank, finalTemp, finalRpm, ConfigScreen$lambda$14));
                AppConfigManager appConfigManager2 = AppConfigManager.this;
                ConfigScreen$lambda$26 = ConfigScreenKt.ConfigScreen$lambda$2(configTargetVehicle$delegate322222);
                appConfigManager2.setActiveVehicle(ConfigScreen$lambda$26);
                AppConfigManager appConfigManager3 = AppConfigManager.this;
                ConfigScreen$lambda$0 = ConfigScreenKt.ConfigScreen$lambda$0(currentConfig$delegate);
                ConfigScreen$lambda$232 = ConfigScreenKt.ConfigScreen$lambda$23(voiceEnabled$delegate322222);
                ConfigScreen$lambda$262 = ConfigScreenKt.ConfigScreen$lambda$26(startupScreen$delegate);
                ConfigScreen$lambda$29 = ConfigScreenKt.ConfigScreen$lambda$29(tempMonitoringEnabled$delegate322222);
                appConfigManager3.updateConfig(AppConfig.copy$default(ConfigScreen$lambda$0, null, ConfigScreen$lambda$232, false, false, ConfigScreen$lambda$262, ConfigScreen$lambda$29, null, 77, null));
                onBackToMenu.invoke();
            }
        }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(50)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsGreen(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6686getLambda13$app_debug(), $composer2, 805306416, 492);
        ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigScreen$1$3$2
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
                AppConfigManager.this.resetToDefaults();
                onBackToMenu.invoke();
            }
        }, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(42)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$ConfigScreenKt.INSTANCE.m6687getLambda14$app_debug(), $composer2, 805306416, 492);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        $composer2.endReplaceableGroup();
        $composer2.endNode();
        $composer2.endReplaceableGroup();
        $composer2.endReplaceableGroup();
        ComposerKt.sourceInformationMarkerEnd($composer2);
        ComposerKt.sourceInformationMarkerEnd($composer2);
        $composer2.endReplaceableGroup();
        $composer2.endNode();
        $composer2.endReplaceableGroup();
        $composer2.endReplaceableGroup();
        if (ComposerKt.isTraceInProgress()) {
        }
        endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AppConfig ConfigScreen$lambda$0(State<AppConfig> state) {
        Object thisObj$iv = state.getValue();
        return (AppConfig) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VehicleType ConfigScreen$lambda$2(MutableState<VehicleType> mutableState) {
        MutableState<VehicleType> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ConfigScreen$lambda$5(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ConfigScreen$lambda$8(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ConfigScreen$lambda$11(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ConfigScreen$lambda$14(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ConfigScreen$lambda$17(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ConfigScreen$lambda$20(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ConfigScreen$lambda$23(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ConfigScreen$lambda$24(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String ConfigScreen$lambda$26(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ConfigScreen$lambda$29(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ConfigScreen$lambda$30(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ConfigCard(final String title, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-347498768);
        ComposerKt.sourceInformation($composer3, "C(ConfigCard)P(1)287@13878L39,286@13842L442:ConfigScreen.kt#xkugs2");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(title) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(function3) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-347498768, $dirty2, -1, "com.cgs.atvobserver.ui.screens.ConfigCard (ConfigScreen.kt:285)");
            }
            $composer2 = $composer3;
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer2, 264517182, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigCard$1
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

                public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C291@14020L258:ConfigScreen.kt#xkugs2");
                    if (($changed2 & 81) != 16 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(264517182, $changed2, -1, "com.cgs.atvobserver.ui.screens.ConfigCard.<anonymous> (ConfigScreen.kt:291)");
                        }
                        Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10));
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                        String str = title;
                        Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                        $composer4.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
                        int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            $composer4.createNode(factory$iv$iv$iv);
                        } else {
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                        }
                        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScope $this$invoke_u24lambda_u240 = ColumnScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1674153496, "C295@14161L85,296@14259L9:ConfigScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g(str, (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200064, 0, 131026);
                        function32.invoke($this$invoke_u24lambda_u240, $composer4, Integer.valueOf((((54 >> 6) & 112) | 6) & 14));
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }), $composer2, 196614, 24);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.ConfigScreenKt$ConfigCard$2
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

                public final void invoke(Composer composer, int i) {
                    ConfigScreenKt.ConfigCard(title, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
