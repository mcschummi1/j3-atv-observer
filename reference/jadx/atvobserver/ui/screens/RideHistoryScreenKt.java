package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.widget.Toast;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
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
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
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
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
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
import com.cgs.atvobserver.data.db.RideDao;
import com.cgs.atvobserver.data.db.RideLogEntity;
import com.cgs.atvobserver.data.export.CSVExporter;
import com.cgs.atvobserver.ui.theme.ColorKt;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RideHistoryScreen.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0003¢\u0006\u0002\u0010\u0007\u001a#\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\fH\u0007¢\u0006\u0002\u0010\r¨\u0006\u000e²\u0006\n\u0010\u000f\u001a\u00020\u0010X\u008a\u008e\u0002²\u0006\u0010\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012X\u008a\u0084\u0002"}, d2 = {"DetailedRideBenchmarkCard", "", "ride", "Lcom/cgs/atvobserver/data/db/RideLogEntity;", "onDeleteRide", "Lkotlin/Function1;", "", "(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "RideHistoryScreen", "rideDao", "Lcom/cgs/atvobserver/data/db/RideDao;", "onBackToMenu", "Lkotlin/Function0;", "(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "app_debug", "selectedFilter", "", "allRides", ""}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class RideHistoryScreenKt {
    /* JADX WARN: Removed duplicated region for block: B:100:0x09f5  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0a5e  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0b35  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0b41  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0b74  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0d0a  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0f95  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0eab  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0b8a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0b45  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0a6c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x09fa  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x09b1  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x093d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0904  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0890  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0857  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x07e2  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x07a8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x06b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0658  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x069d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0798  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x07dd  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x088b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0938  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x09a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void RideHistoryScreen(final RideDao rideDao, final Function0<Unit> onBackToMenu, Composer $composer, final int $changed) {
        Object value$iv;
        Object value$iv$iv$iv;
        Object value$iv2;
        final List filteredRides;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        CompositionLocalMap localMap$iv$iv;
        Function0 factory$iv$iv$iv;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        Function0 factory$iv$iv$iv2;
        Composer $this$Layout_u24lambda_u240$iv$iv3;
        Object value$iv3;
        Object it$iv;
        Object value$iv4;
        Object it$iv2;
        Object value$iv5;
        Object it$iv3;
        Object value$iv6;
        Object it$iv4;
        Object value$iv7;
        Composer $this$Layout_u24lambda_u240$iv$iv4;
        Composer $composer2;
        Composer $composer3;
        Intrinsics.checkNotNullParameter(rideDao, "rideDao");
        Intrinsics.checkNotNullParameter(onBackToMenu, "onBackToMenu");
        Composer $composer4 = $composer.startRestartGroup(-821848358);
        ComposerKt.sourceInformation($composer4, "C(RideHistoryScreen)P(1)30@1051L34,31@1111L24,32@1167L7,34@1218L37,36@1281L397,46@1684L5936:RideHistoryScreen.kt#xkugs2");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer4.changed(rideDao) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer4.changedInstance(onBackToMenu) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) == 18 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            $composer3 = $composer4;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-821848358, $dirty2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen (RideHistoryScreen.kt:29)");
            }
            $composer4.startReplaceableGroup(-23650550);
            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
            Object it$iv5 = $composer4.rememberedValue();
            if (it$iv5 == Composer.INSTANCE.getEmpty()) {
                value$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("ALL", null, 2, null);
                $composer4.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv5;
            }
            final MutableState selectedFilter$delegate = (MutableState) value$iv;
            $composer4.endReplaceableGroup();
            $composer4.startReplaceableGroup(773894976);
            ComposerKt.sourceInformation($composer4, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp");
            $composer4.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation($composer4, "CC(remember):Composables.kt#9igjgp");
            Object it$iv$iv$iv = $composer4.rememberedValue();
            if (it$iv$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv$iv = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer4));
                $composer4.updateRememberedValue(value$iv$iv$iv);
            } else {
                value$iv$iv$iv = it$iv$iv$iv;
            }
            $composer4.endReplaceableGroup();
            CompositionScopedCoroutineScopeCanceller wrapper$iv = (CompositionScopedCoroutineScopeCanceller) value$iv$iv$iv;
            final CoroutineScope coroutineScope = wrapper$iv.getCoroutineScope();
            $composer4.endReplaceableGroup();
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = $composer4.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            final Context context = (Context) consume;
            State allRides$delegate = SnapshotStateKt.collectAsState(rideDao.getAllRides(), CollectionsKt.emptyList(), null, $composer4, 56, 2);
            List<RideLogEntity> RideHistoryScreen$lambda$3 = RideHistoryScreen$lambda$3(allRides$delegate);
            String RideHistoryScreen$lambda$1 = RideHistoryScreen$lambda$1(selectedFilter$delegate);
            $composer4.startReplaceableGroup(-23642827);
            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
            boolean invalid$iv = $composer4.changed(RideHistoryScreen$lambda$3) | $composer4.changed(RideHistoryScreen$lambda$1);
            Object it$iv6 = $composer4.rememberedValue();
            if (!invalid$iv && it$iv6 != Composer.INSTANCE.getEmpty()) {
                value$iv2 = it$iv6;
                filteredRides = (List) value$iv2;
                $composer4.endReplaceableGroup();
                Modifier m828padding3ABfNKs = PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(12));
                Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
                Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                $composer4.startReplaceableGroup(-483455358);
                ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(spaceBetween, centerHorizontally, $composer4, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                int $changed$iv$iv = (438 << 3) & 112;
                $composer4.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv3 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(m828padding3ABfNKs);
                int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                if (!($composer4.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer4.startReusableNode();
                if ($composer4.getInserting()) {
                    $composer4.useNode();
                } else {
                    $composer4.createNode(factory$iv$iv$iv3);
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer4);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                    localMap$iv$iv = localMap$iv$iv2;
                    if (Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        int i2 = ((438 >> 6) & 112) | 6;
                        ColumnScope $this$RideHistoryScreen_u24lambda_u2418 = ColumnScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, -2089844104, "C54@1946L4339,167@7398L48,165@7318L296:RideHistoryScreen.kt#xkugs2");
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getCenterHorizontally();
                        $composer4.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                        Modifier modifier$iv = Modifier.INSTANCE;
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        int $changed$iv = ((384 >> 3) & 14) | ((384 >> 3) & 112);
                        MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, $changed$iv);
                        int $changed$iv$iv2 = (384 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv);
                        int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv = factory$iv$iv$iv4;
                            $composer4.createNode(factory$iv$iv$iv);
                        } else {
                            factory$iv$iv$iv = factory$iv$iv$iv4;
                            $composer4.useNode();
                        }
                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                            skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i3 = ($changed$iv$iv$iv2 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                            int i4 = ((384 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, -416959811, "C55@2019L102,56@2134L87,58@2235L40,61@2316L2387,101@4717L40,104@4821L1454:RideHistoryScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("RIDE LOGS & BENCHMARKS", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                            TextKt.m2730Text4IGK_g("Logged Rides: " + filteredRides.size(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                            Modifier modifier$iv2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                            $composer4.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv3 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv3 = (54 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv4 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                            int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                                factory$iv$iv$iv2 = factory$iv$iv$iv5;
                                $composer4.createNode(factory$iv$iv$iv2);
                            } else {
                                factory$iv$iv$iv2 = factory$iv$iv$iv5;
                                $composer4.useNode();
                            }
                            $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i5 = ($changed$iv$iv$iv3 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i6 = ((54 >> 6) & 112) | 6;
                                RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer4, 132566549, "C67@2582L92,66@2510L26,65@2472L407,74@3007L91,73@2935L26,72@2897L409,81@3440L98,80@3362L32,79@3324L424,88@3879L95,87@3804L29,86@3766L494,95@4389L91,94@4316L27,93@4278L411:RideHistoryScreen.kt#xkugs2");
                                ButtonColors m1872buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ALL") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                PaddingValues m822PaddingValuesYgX7TsA = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                                $composer4.startReplaceableGroup(1943938015);
                                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                                value$iv3 = $composer4.rememberedValue();
                                if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                                    value$iv3 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$1$1
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
                                            selectedFilter$delegate.setValue("ALL");
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv3);
                                }
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs, false, null, m1872buttonColorsro_MJ88, null, null, m822PaddingValuesYgX7TsA, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6712getLambda1$app_debug(), $composer4, 817889286, 364);
                                ButtonColors m1872buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ATV") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                PaddingValues m822PaddingValuesYgX7TsA2 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs2 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                                $composer4.startReplaceableGroup(1943951615);
                                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                                it$iv = $composer4.rememberedValue();
                                if (it$iv == Composer.INSTANCE.getEmpty()) {
                                    value$iv4 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$2$1
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
                                            selectedFilter$delegate.setValue("ATV");
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv4);
                                } else {
                                    value$iv4 = it$iv;
                                }
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv4, m863height3ABfNKs2, false, null, m1872buttonColorsro_MJ882, null, null, m822PaddingValuesYgX7TsA2, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6713getLambda2$app_debug(), $composer4, 817889286, 364);
                                ButtonColors m1872buttonColorsro_MJ883 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "MOTOCROSS") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                PaddingValues m822PaddingValuesYgX7TsA3 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs3 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                                $composer4.startReplaceableGroup(1943965285);
                                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                                it$iv2 = $composer4.rememberedValue();
                                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                                    value$iv5 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$3$1
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
                                            selectedFilter$delegate.setValue("MOTOCROSS");
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv5);
                                } else {
                                    value$iv5 = it$iv2;
                                }
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv5, m863height3ABfNKs3, false, null, m1872buttonColorsro_MJ883, null, null, m822PaddingValuesYgX7TsA3, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6714getLambda3$app_debug(), $composer4, 817889286, 364);
                                ButtonColors m1872buttonColorsro_MJ884 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "DAELIM") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                PaddingValues m822PaddingValuesYgX7TsA4 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs4 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                                $composer4.startReplaceableGroup(1943979426);
                                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                                it$iv3 = $composer4.rememberedValue();
                                if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                                    value$iv6 = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$4$1
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
                                            selectedFilter$delegate.setValue("DAELIM");
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv6);
                                } else {
                                    value$iv6 = it$iv3;
                                }
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv6, m863height3ABfNKs4, false, null, m1872buttonColorsro_MJ884, null, null, m822PaddingValuesYgX7TsA4, null, ComposableLambdaKt.composableLambda($composer4, 1426491027, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$5
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                        invoke(rowScope, composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(RowScope Button, Composer $composer5, int $changed2) {
                                        String RideHistoryScreen$lambda$12;
                                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                        ComposerKt.sourceInformation($composer5, "C91@4149L109:RideHistoryScreen.kt#xkugs2");
                                        if (($changed2 & 81) == 16 && $composer5.getSkipping()) {
                                            $composer5.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1426491027, $changed2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RideHistoryScreen.kt:91)");
                                        }
                                        long sp = TextUnitKt.getSp(9);
                                        RideHistoryScreen$lambda$12 = RideHistoryScreenKt.RideHistoryScreen$lambda$1(selectedFilter$delegate);
                                        TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, Intrinsics.areEqual(RideHistoryScreen$lambda$12, "DAELIM") ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 3078, 0, 131058);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }
                                }), $composer4, 817889286, 364);
                                ButtonColors m1872buttonColorsro_MJ885 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "TEST") ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                                PaddingValues m822PaddingValuesYgX7TsA5 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs5 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                                $composer4.startReplaceableGroup(1943995808);
                                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                                it$iv4 = $composer4.rememberedValue();
                                if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                                    value$iv7 = new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$6$1
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
                                            selectedFilter$delegate.setValue("TEST");
                                        }
                                    };
                                    $composer4.updateRememberedValue(value$iv7);
                                } else {
                                    value$iv7 = it$iv4;
                                }
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs5, false, null, m1872buttonColorsro_MJ885, null, null, m822PaddingValuesYgX7TsA5, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6715getLambda4$app_debug(), $composer4, 817889286, 364);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer4, 6);
                                Modifier modifier$iv3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                                $composer4.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv4 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv4 = (54 << 3) & 112;
                                $composer4.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv5 = $composer4.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv6 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                if (!($composer4.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                    $composer4.createNode(factory$iv$iv$iv6);
                                } else {
                                    $composer4.useNode();
                                }
                                $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i7 = ($changed$iv$iv$iv4 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    int i8 = ((54 >> 6) & 112) | 6;
                                    RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415 = RowScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                                    ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                                            File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                                            if (csvFile != null) {
                                                Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                                                return;
                                            }
                                            Toast.makeText(context, "No rides to export.", 0).show();
                                        }
                                    }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                                    ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(0);
                                        }

                                        @Override // kotlin.jvm.functions.Function0
                                        public /* bridge */ /* synthetic */ Unit invoke() {
                                            invoke2();
                                            return Unit.INSTANCE;
                                        }

                                        /* compiled from: RideHistoryScreen.kt */
                                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                        @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                                        /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                                        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                            final /* synthetic */ RideDao $rideDao;
                                            int label;

                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                                                super(2, continuation);
                                                this.$rideDao = rideDao;
                                            }

                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                return new AnonymousClass1(this.$rideDao, continuation);
                                            }

                                            @Override // kotlin.jvm.functions.Function2
                                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                            }

                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                            public final Object invokeSuspend(Object $result) {
                                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                switch (this.label) {
                                                    case 0:
                                                        ResultKt.throwOnFailure($result);
                                                        this.label = 1;
                                                        if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                                            break;
                                                        } else {
                                                            return coroutine_suspended;
                                                        }
                                                    case 1:
                                                        ResultKt.throwOnFailure($result);
                                                        break;
                                                    default:
                                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                }
                                                return Unit.INSTANCE;
                                            }
                                        }

                                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                        public final void invoke2() {
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                                        }
                                    }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                                    if (filteredRides.isEmpty()) {
                                        $composer2 = $composer4;
                                        $composer2.startReplaceableGroup(-2085667413);
                                        ComposerKt.sourceInformation($composer2, "136@6338L280");
                                        Modifier modifier$iv4 = ColumnScope.weight$default($this$RideHistoryScreen_u24lambda_u2418, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 1.0f, false, 2, null);
                                        Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
                                        $composer2.startReplaceableGroup(733328855);
                                        ComposerKt.sourceInformation($composer2, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                                        MeasurePolicy measurePolicy$iv5 = BoxKt.rememberBoxMeasurePolicy(contentAlignment$iv, false, $composer2, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                                        int $changed$iv$iv5 = (48 << 3) & 112;
                                        $composer2.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation($composer2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv5 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                                        CompositionLocalMap localMap$iv$iv6 = $composer2.getCurrentCompositionLocalMap();
                                        Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3 skippableUpdate$iv$iv$iv5 = LayoutKt.modifierMaterializerOf(modifier$iv4);
                                        int $changed$iv$iv$iv5 = (($changed$iv$iv5 << 9) & 7168) | 6;
                                        if (!($composer2.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        $composer2.startReusableNode();
                                        if ($composer2.getInserting()) {
                                            $composer2.createNode(factory$iv$iv$iv7);
                                        } else {
                                            $composer2.useNode();
                                        }
                                        Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer2);
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv6, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2 block$iv$iv$iv5 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv5))) {
                                            skippableUpdate$iv$iv$iv5.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112));
                                            $composer2.startReplaceableGroup(2058660585);
                                            int i9 = ($changed$iv$iv$iv5 >> 9) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer2, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            int i10 = ((48 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer2, -412612619, "C142@6532L72:RideHistoryScreen.kt#xkugs2");
                                            TextKt.m2730Text4IGK_g("No " + RideHistoryScreen$lambda$1(selectedFilter$delegate) + " rides recorded yet.", (Modifier) null, ColorKt.getCgsTextSecondary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 384, 0, 131066);
                                            ComposerKt.sourceInformationMarkerEnd($composer2);
                                            ComposerKt.sourceInformationMarkerEnd($composer2);
                                            $composer2.endReplaceableGroup();
                                            $composer2.endNode();
                                            $composer2.endReplaceableGroup();
                                            $composer2.endReplaceableGroup();
                                            $composer2.endReplaceableGroup();
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5));
                                        $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv5), block$iv$iv$iv5);
                                        skippableUpdate$iv$iv$iv5.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer2)), $composer2, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112));
                                        $composer2.startReplaceableGroup(2058660585);
                                        int i92 = ($changed$iv$iv$iv5 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer2, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                                        int i102 = ((48 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer2, -412612619, "C142@6532L72:RideHistoryScreen.kt#xkugs2");
                                        TextKt.m2730Text4IGK_g("No " + RideHistoryScreen$lambda$1(selectedFilter$delegate) + " rides recorded yet.", (Modifier) null, ColorKt.getCgsTextSecondary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer2, 384, 0, 131066);
                                        ComposerKt.sourceInformationMarkerEnd($composer2);
                                        ComposerKt.sourceInformationMarkerEnd($composer2);
                                        $composer2.endReplaceableGroup();
                                        $composer2.endNode();
                                        $composer2.endReplaceableGroup();
                                        $composer2.endReplaceableGroup();
                                        $composer2.endReplaceableGroup();
                                    } else {
                                        $composer2 = $composer4;
                                        $composer2.startReplaceableGroup(-2085348423);
                                        ComposerKt.sourceInformation($composer2, "145@6648L650");
                                        LazyDslKt.LazyColumn(PaddingKt.m830paddingVpY3zN4$default(ColumnScope.weight$default($this$RideHistoryScreen_u24lambda_u2418, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 1.0f, false, 2, null), 0.0f, Dp.m6360constructorimpl(6), 1, null), null, null, false, Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(8)), null, null, false, new Function1<LazyListScope, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$3
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(LazyListScope lazyListScope) {
                                                invoke2(lazyListScope);
                                                return Unit.INSTANCE;
                                            }

                                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                            public final void invoke2(LazyListScope LazyColumn) {
                                                Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
                                                final List items$iv = filteredRides;
                                                final CoroutineScope coroutineScope2 = coroutineScope;
                                                final RideDao rideDao2 = rideDao;
                                                final Function1 contentType$iv = new Function1() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                        return invoke((RideLogEntity) p1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Void invoke(RideLogEntity rideLogEntity) {
                                                        return null;
                                                    }
                                                };
                                                LazyColumn.items(items$iv.size(), null, new Function1<Integer, Object>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$3
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                                                        return invoke(num.intValue());
                                                    }

                                                    public final Object invoke(int index) {
                                                        return Function1.this.invoke(items$iv.get(index));
                                                    }
                                                }, ComposableLambdaKt.composableLambdaInstance(-632812321, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$4
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(4);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function4
                                                    public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                                                        invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                                                        return Unit.INSTANCE;
                                                    }

                                                    public final void invoke(LazyItemScope $this$items, int it, Composer $composer5, int $changed2) {
                                                        ComposerKt.sourceInformation($composer5, "C148@6730L22:LazyDsl.kt#428nma");
                                                        int $dirty3 = $changed2;
                                                        if (($changed2 & 14) == 0) {
                                                            $dirty3 |= $composer5.changed($this$items) ? 4 : 2;
                                                        }
                                                        if (($changed2 & 112) == 0) {
                                                            $dirty3 |= $composer5.changed(it) ? 32 : 16;
                                                        }
                                                        if (($dirty3 & 731) == 146 && $composer5.getSkipping()) {
                                                            $composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-632812321, $dirty3, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:148)");
                                                        }
                                                        RideLogEntity ride = (RideLogEntity) items$iv.get(it);
                                                        $composer5.startReplaceableGroup(136958443);
                                                        ComposerKt.sourceInformation($composer5, "C*153@6959L307:RideHistoryScreen.kt#xkugs2");
                                                        final CoroutineScope coroutineScope3 = coroutineScope2;
                                                        final RideDao rideDao3 = rideDao2;
                                                        RideHistoryScreenKt.DetailedRideBenchmarkCard(ride, new Function1<Long, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$3$1$1
                                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                            {
                                                                super(1);
                                                            }

                                                            @Override // kotlin.jvm.functions.Function1
                                                            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                                                invoke(l.longValue());
                                                                return Unit.INSTANCE;
                                                            }

                                                            /* compiled from: RideHistoryScreen.kt */
                                                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                                            @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$3$1$1$1", f = "RideHistoryScreen.kt", i = {}, l = {158}, m = "invokeSuspend", n = {}, s = {})
                                                            /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$3$1$1$1, reason: invalid class name */
                                                            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                                final /* synthetic */ RideDao $rideDao;
                                                                final /* synthetic */ long $rideId;
                                                                int label;

                                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                AnonymousClass1(RideDao rideDao, long j, Continuation<? super AnonymousClass1> continuation) {
                                                                    super(2, continuation);
                                                                    this.$rideDao = rideDao;
                                                                    this.$rideId = j;
                                                                }

                                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                                    return new AnonymousClass1(this.$rideDao, this.$rideId, continuation);
                                                                }

                                                                @Override // kotlin.jvm.functions.Function2
                                                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                                }

                                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                public final Object invokeSuspend(Object $result) {
                                                                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                                    switch (this.label) {
                                                                        case 0:
                                                                            ResultKt.throwOnFailure($result);
                                                                            this.label = 1;
                                                                            if (this.$rideDao.deleteRideById(this.$rideId, this) != coroutine_suspended) {
                                                                                break;
                                                                            } else {
                                                                                return coroutine_suspended;
                                                                            }
                                                                        case 1:
                                                                            ResultKt.throwOnFailure($result);
                                                                            break;
                                                                        default:
                                                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                                    }
                                                                    return Unit.INSTANCE;
                                                                }
                                                            }

                                                            public final void invoke(long rideId) {
                                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao3, rideId, null), 3, null);
                                                            }
                                                        }, $composer5, (($dirty3 & 14) >> 3) & 14);
                                                        $composer5.endReplaceableGroup();
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }
                                                }));
                                            }
                                        }, $composer2, 24576, 238);
                                        $composer2.endReplaceableGroup();
                                    }
                                    $composer3 = $composer4;
                                    ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                                    ComposerKt.sourceInformationMarkerEnd($composer2);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer3.endReplaceableGroup();
                                    $composer3.endNode();
                                    $composer3.endReplaceableGroup();
                                    $composer3.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                                $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i72 = ($changed$iv$iv$iv4 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i82 = ((54 >> 6) & 112) | 6;
                                RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                                        File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                                        if (csvFile != null) {
                                            Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                                            return;
                                        }
                                        Toast.makeText(context, "No rides to export.", 0).show();
                                    }
                                }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Unit invoke() {
                                        invoke2();
                                        return Unit.INSTANCE;
                                    }

                                    /* compiled from: RideHistoryScreen.kt */
                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                    @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                                    /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                        final /* synthetic */ RideDao $rideDao;
                                        int label;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                                            super(2, continuation);
                                            this.$rideDao = rideDao;
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                            return new AnonymousClass1(this.$rideDao, continuation);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Object invokeSuspend(Object $result) {
                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                            switch (this.label) {
                                                case 0:
                                                    ResultKt.throwOnFailure($result);
                                                    this.label = 1;
                                                    if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                                        break;
                                                    } else {
                                                        return coroutine_suspended;
                                                    }
                                                case 1:
                                                    ResultKt.throwOnFailure($result);
                                                    break;
                                                default:
                                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                            }
                                            return Unit.INSTANCE;
                                        }
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2() {
                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                                    }
                                }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                                if (filteredRides.isEmpty()) {
                                }
                                $composer3 = $composer4;
                                ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                            skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i52 = ($changed$iv$iv$iv3 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i62 = ((54 >> 6) & 112) | 6;
                            RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, 132566549, "C67@2582L92,66@2510L26,65@2472L407,74@3007L91,73@2935L26,72@2897L409,81@3440L98,80@3362L32,79@3324L424,88@3879L95,87@3804L29,86@3766L494,95@4389L91,94@4316L27,93@4278L411:RideHistoryScreen.kt#xkugs2");
                            ButtonColors m1872buttonColorsro_MJ886 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ALL") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA6 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs6 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943938015);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            value$iv3 = $composer4.rememberedValue();
                            if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs6, false, null, m1872buttonColorsro_MJ886, null, null, m822PaddingValuesYgX7TsA6, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6712getLambda1$app_debug(), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ8822 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ATV") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA22 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs22 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943951615);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv = $composer4.rememberedValue();
                            if (it$iv == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv4, m863height3ABfNKs22, false, null, m1872buttonColorsro_MJ8822, null, null, m822PaddingValuesYgX7TsA22, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6713getLambda2$app_debug(), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ8832 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "MOTOCROSS") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA32 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs32 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943965285);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv2 = $composer4.rememberedValue();
                            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv5, m863height3ABfNKs32, false, null, m1872buttonColorsro_MJ8832, null, null, m822PaddingValuesYgX7TsA32, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6714getLambda3$app_debug(), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ8842 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "DAELIM") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA42 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs42 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943979426);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv3 = $composer4.rememberedValue();
                            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv6, m863height3ABfNKs42, false, null, m1872buttonColorsro_MJ8842, null, null, m822PaddingValuesYgX7TsA42, null, ComposableLambdaKt.composableLambda($composer4, 1426491027, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$5
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed2) {
                                    String RideHistoryScreen$lambda$12;
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C91@4149L109:RideHistoryScreen.kt#xkugs2");
                                    if (($changed2 & 81) == 16 && $composer5.getSkipping()) {
                                        $composer5.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1426491027, $changed2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RideHistoryScreen.kt:91)");
                                    }
                                    long sp = TextUnitKt.getSp(9);
                                    RideHistoryScreen$lambda$12 = RideHistoryScreenKt.RideHistoryScreen$lambda$1(selectedFilter$delegate);
                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, Intrinsics.areEqual(RideHistoryScreen$lambda$12, "DAELIM") ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 3078, 0, 131058);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ8852 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "TEST") ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA52 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs52 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943995808);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv4 = $composer4.rememberedValue();
                            if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs52, false, null, m1872buttonColorsro_MJ8852, null, null, m822PaddingValuesYgX7TsA52, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6715getLambda4$app_debug(), $composer4, 817889286, 364);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer4, 6);
                            Modifier modifier$iv32 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv22 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            $composer4.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv22 = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv42 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22, verticalAlignment$iv22, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv42 = (54 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv52 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv62 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                            int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                                skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i722 = ($changed$iv$iv$iv42 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                int i822 = ((54 >> 6) & 112) | 6;
                                RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522 = RowScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                                        File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                                        if (csvFile != null) {
                                            Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                                            return;
                                        }
                                        Toast.makeText(context, "No rides to export.", 0).show();
                                    }
                                }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Unit invoke() {
                                        invoke2();
                                        return Unit.INSTANCE;
                                    }

                                    /* compiled from: RideHistoryScreen.kt */
                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                    @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                                    /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                        final /* synthetic */ RideDao $rideDao;
                                        int label;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                                            super(2, continuation);
                                            this.$rideDao = rideDao;
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                            return new AnonymousClass1(this.$rideDao, continuation);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Object invokeSuspend(Object $result) {
                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                            switch (this.label) {
                                                case 0:
                                                    ResultKt.throwOnFailure($result);
                                                    this.label = 1;
                                                    if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                                        break;
                                                    } else {
                                                        return coroutine_suspended;
                                                    }
                                                case 1:
                                                    ResultKt.throwOnFailure($result);
                                                    break;
                                                default:
                                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                            }
                                            return Unit.INSTANCE;
                                        }
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2() {
                                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                                    }
                                }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                                if (filteredRides.isEmpty()) {
                                }
                                $composer3 = $composer4;
                                ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer3.endReplaceableGroup();
                                $composer3.endNode();
                                $composer3.endReplaceableGroup();
                                $composer3.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                            skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i7222 = ($changed$iv$iv$iv42 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i8222 = ((54 >> 6) & 112) | 6;
                            RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                                    File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                                    if (csvFile != null) {
                                        Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                                        return;
                                    }
                                    Toast.makeText(context, "No rides to export.", 0).show();
                                }
                            }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Unit invoke() {
                                    invoke2();
                                    return Unit.INSTANCE;
                                }

                                /* compiled from: RideHistoryScreen.kt */
                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                                /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                    final /* synthetic */ RideDao $rideDao;
                                    int label;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                                        super(2, continuation);
                                        this.$rideDao = rideDao;
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                        return new AnonymousClass1(this.$rideDao, continuation);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object invokeSuspend(Object $result) {
                                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                        switch (this.label) {
                                            case 0:
                                                ResultKt.throwOnFailure($result);
                                                this.label = 1;
                                                if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                                    break;
                                                } else {
                                                    return coroutine_suspended;
                                                }
                                            case 1:
                                                ResultKt.throwOnFailure($result);
                                                break;
                                            default:
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2() {
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                                }
                            }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                            if (filteredRides.isEmpty()) {
                            }
                            $composer3 = $composer4;
                            ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                        skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i32 = ($changed$iv$iv$iv2 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        int i42 = ((384 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -416959811, "C55@2019L102,56@2134L87,58@2235L40,61@2316L2387,101@4717L40,104@4821L1454:RideHistoryScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("RIDE LOGS & BENCHMARKS", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                        TextKt.m2730Text4IGK_g("Logged Rides: " + filteredRides.size(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                        Modifier modifier$iv22 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv3 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                        $composer4.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv3 = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv32 = RowKt.rowMeasurePolicy(horizontalArrangement$iv3, verticalAlignment$iv3, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv32 = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv42 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv52 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv32 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                        int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                            skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i522 = ($changed$iv$iv$iv32 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i622 = ((54 >> 6) & 112) | 6;
                            RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, 132566549, "C67@2582L92,66@2510L26,65@2472L407,74@3007L91,73@2935L26,72@2897L409,81@3440L98,80@3362L32,79@3324L424,88@3879L95,87@3804L29,86@3766L494,95@4389L91,94@4316L27,93@4278L411:RideHistoryScreen.kt#xkugs2");
                            ButtonColors m1872buttonColorsro_MJ8862 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ALL") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA62 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs62 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943938015);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            value$iv3 = $composer4.rememberedValue();
                            if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs62, false, null, m1872buttonColorsro_MJ8862, null, null, m822PaddingValuesYgX7TsA62, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6712getLambda1$app_debug(), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ88222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ATV") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943951615);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv = $composer4.rememberedValue();
                            if (it$iv == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv4, m863height3ABfNKs222, false, null, m1872buttonColorsro_MJ88222, null, null, m822PaddingValuesYgX7TsA222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6713getLambda2$app_debug(), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ88322 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "MOTOCROSS") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA322 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs322 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943965285);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv2 = $composer4.rememberedValue();
                            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv5, m863height3ABfNKs322, false, null, m1872buttonColorsro_MJ88322, null, null, m822PaddingValuesYgX7TsA322, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6714getLambda3$app_debug(), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ88422 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "DAELIM") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA422 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs422 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943979426);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv3 = $composer4.rememberedValue();
                            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv6, m863height3ABfNKs422, false, null, m1872buttonColorsro_MJ88422, null, null, m822PaddingValuesYgX7TsA422, null, ComposableLambdaKt.composableLambda($composer4, 1426491027, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$5
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                    invoke(rowScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(RowScope Button, Composer $composer5, int $changed2) {
                                    String RideHistoryScreen$lambda$12;
                                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                    ComposerKt.sourceInformation($composer5, "C91@4149L109:RideHistoryScreen.kt#xkugs2");
                                    if (($changed2 & 81) == 16 && $composer5.getSkipping()) {
                                        $composer5.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1426491027, $changed2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RideHistoryScreen.kt:91)");
                                    }
                                    long sp = TextUnitKt.getSp(9);
                                    RideHistoryScreen$lambda$12 = RideHistoryScreenKt.RideHistoryScreen$lambda$1(selectedFilter$delegate);
                                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, Intrinsics.areEqual(RideHistoryScreen$lambda$12, "DAELIM") ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 3078, 0, 131058);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }), $composer4, 817889286, 364);
                            ButtonColors m1872buttonColorsro_MJ88522 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "TEST") ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                            PaddingValues m822PaddingValuesYgX7TsA522 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                            Modifier m863height3ABfNKs522 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                            $composer4.startReplaceableGroup(1943995808);
                            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                            it$iv4 = $composer4.rememberedValue();
                            if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                            }
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs522, false, null, m1872buttonColorsro_MJ88522, null, null, m822PaddingValuesYgX7TsA522, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6715getLambda4$app_debug(), $composer4, 817889286, 364);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer4, 6);
                            Modifier modifier$iv322 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                            $composer4.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv222 = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv422 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222, verticalAlignment$iv222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv422 = (54 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv522 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv622 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                            int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv422, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                            skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i72222 = ($changed$iv$iv$iv422 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            int i82222 = ((54 >> 6) & 112) | 6;
                            RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152222 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                                    File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                                    if (csvFile != null) {
                                        Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                                        return;
                                    }
                                    Toast.makeText(context, "No rides to export.", 0).show();
                                }
                            }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Unit invoke() {
                                    invoke2();
                                    return Unit.INSTANCE;
                                }

                                /* compiled from: RideHistoryScreen.kt */
                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                                @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                                /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                    final /* synthetic */ RideDao $rideDao;
                                    int label;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                                        super(2, continuation);
                                        this.$rideDao = rideDao;
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                        return new AnonymousClass1(this.$rideDao, continuation);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object invokeSuspend(Object $result) {
                                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                        switch (this.label) {
                                            case 0:
                                                ResultKt.throwOnFailure($result);
                                                this.label = 1;
                                                if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                                    break;
                                                } else {
                                                    return coroutine_suspended;
                                                }
                                            case 1:
                                                ResultKt.throwOnFailure($result);
                                                break;
                                            default:
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2() {
                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                                }
                            }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                            if (filteredRides.isEmpty()) {
                            }
                            $composer3 = $composer4;
                            ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv32), block$iv$iv$iv32);
                        skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i5222 = ($changed$iv$iv$iv32 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i6222 = ((54 >> 6) & 112) | 6;
                        RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, 132566549, "C67@2582L92,66@2510L26,65@2472L407,74@3007L91,73@2935L26,72@2897L409,81@3440L98,80@3362L32,79@3324L424,88@3879L95,87@3804L29,86@3766L494,95@4389L91,94@4316L27,93@4278L411:RideHistoryScreen.kt#xkugs2");
                        ButtonColors m1872buttonColorsro_MJ88622 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ALL") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        PaddingValues m822PaddingValuesYgX7TsA622 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs622 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                        $composer4.startReplaceableGroup(1943938015);
                        ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                        value$iv3 = $composer4.rememberedValue();
                        if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                        }
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs622, false, null, m1872buttonColorsro_MJ88622, null, null, m822PaddingValuesYgX7TsA622, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6712getLambda1$app_debug(), $composer4, 817889286, 364);
                        ButtonColors m1872buttonColorsro_MJ882222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ATV") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        PaddingValues m822PaddingValuesYgX7TsA2222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs2222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                        $composer4.startReplaceableGroup(1943951615);
                        ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                        it$iv = $composer4.rememberedValue();
                        if (it$iv == Composer.INSTANCE.getEmpty()) {
                        }
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv4, m863height3ABfNKs2222, false, null, m1872buttonColorsro_MJ882222, null, null, m822PaddingValuesYgX7TsA2222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6713getLambda2$app_debug(), $composer4, 817889286, 364);
                        ButtonColors m1872buttonColorsro_MJ883222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "MOTOCROSS") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        PaddingValues m822PaddingValuesYgX7TsA3222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs3222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                        $composer4.startReplaceableGroup(1943965285);
                        ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                        it$iv2 = $composer4.rememberedValue();
                        if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                        }
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv5, m863height3ABfNKs3222, false, null, m1872buttonColorsro_MJ883222, null, null, m822PaddingValuesYgX7TsA3222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6714getLambda3$app_debug(), $composer4, 817889286, 364);
                        ButtonColors m1872buttonColorsro_MJ884222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "DAELIM") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        PaddingValues m822PaddingValuesYgX7TsA4222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs4222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                        $composer4.startReplaceableGroup(1943979426);
                        ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                        it$iv3 = $composer4.rememberedValue();
                        if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                        }
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv6, m863height3ABfNKs4222, false, null, m1872buttonColorsro_MJ884222, null, null, m822PaddingValuesYgX7TsA4222, null, ComposableLambdaKt.composableLambda($composer4, 1426491027, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$5
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                                invoke(rowScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope Button, Composer $composer5, int $changed2) {
                                String RideHistoryScreen$lambda$12;
                                Intrinsics.checkNotNullParameter(Button, "$this$Button");
                                ComposerKt.sourceInformation($composer5, "C91@4149L109:RideHistoryScreen.kt#xkugs2");
                                if (($changed2 & 81) == 16 && $composer5.getSkipping()) {
                                    $composer5.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1426491027, $changed2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RideHistoryScreen.kt:91)");
                                }
                                long sp = TextUnitKt.getSp(9);
                                RideHistoryScreen$lambda$12 = RideHistoryScreenKt.RideHistoryScreen$lambda$1(selectedFilter$delegate);
                                TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, Intrinsics.areEqual(RideHistoryScreen$lambda$12, "DAELIM") ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 3078, 0, 131058);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }), $composer4, 817889286, 364);
                        ButtonColors m1872buttonColorsro_MJ885222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "TEST") ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                        PaddingValues m822PaddingValuesYgX7TsA5222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs5222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                        $composer4.startReplaceableGroup(1943995808);
                        ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                        it$iv4 = $composer4.rememberedValue();
                        if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                        }
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs5222, false, null, m1872buttonColorsro_MJ885222, null, null, m822PaddingValuesYgX7TsA5222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6715getLambda4$app_debug(), $composer4, 817889286, 364);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer4, 6);
                        Modifier modifier$iv3222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv2222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                        $composer4.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv2222 = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv4222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222, verticalAlignment$iv2222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv4222 = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv5222 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv6222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
                        int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv4222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                        $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                        skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i722222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        int i822222 = ((54 >> 6) & 112) | 6;
                        RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522222 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                        ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                                File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                                if (csvFile != null) {
                                    Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                                    return;
                                }
                                Toast.makeText(context, "No rides to export.", 0).show();
                            }
                        }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                        ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* compiled from: RideHistoryScreen.kt */
                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                            @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                            /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                final /* synthetic */ RideDao $rideDao;
                                int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                                    super(2, continuation);
                                    this.$rideDao = rideDao;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                    return new AnonymousClass1(this.$rideDao, continuation);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object $result) {
                                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                    switch (this.label) {
                                        case 0:
                                            ResultKt.throwOnFailure($result);
                                            this.label = 1;
                                            if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                                break;
                                            } else {
                                                return coroutine_suspended;
                                            }
                                        case 1:
                                            ResultKt.throwOnFailure($result);
                                            break;
                                        default:
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    return Unit.INSTANCE;
                                }
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                            }
                        }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                        if (filteredRides.isEmpty()) {
                        }
                        $composer3 = $composer4;
                        ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                } else {
                    localMap$iv$iv = localMap$iv$iv2;
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                $composer4.startReplaceableGroup(2058660585);
                int i11 = ($changed$iv$iv$iv >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                int i22 = ((438 >> 6) & 112) | 6;
                ColumnScope $this$RideHistoryScreen_u24lambda_u24182 = ColumnScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer4, -2089844104, "C54@1946L4339,167@7398L48,165@7318L296:RideHistoryScreen.kt#xkugs2");
                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getCenterHorizontally();
                $composer4.startReplaceableGroup(-483455358);
                ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                Modifier modifier$iv5 = Modifier.INSTANCE;
                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                int $changed$iv2 = ((384 >> 3) & 14) | ((384 >> 3) & 112);
                MeasurePolicy measurePolicy$iv22 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer4, $changed$iv2);
                int $changed$iv$iv22 = (384 << 3) & 112;
                $composer4.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                CompositionLocalMap localMap$iv$iv32 = $composer4.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv42 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv5);
                int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
                if (!($composer4.getApplier() instanceof Applier)) {
                }
                $composer4.startReusableNode();
                if ($composer4.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                    skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i322 = ($changed$iv$iv$iv22 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                    int i422 = ((384 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, -416959811, "C55@2019L102,56@2134L87,58@2235L40,61@2316L2387,101@4717L40,104@4821L1454:RideHistoryScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("RIDE LOGS & BENCHMARKS", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                    TextKt.m2730Text4IGK_g("Logged Rides: " + filteredRides.size(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                    Modifier modifier$iv222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv32 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                    $composer4.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Alignment.Vertical verticalAlignment$iv32 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv322 = RowKt.rowMeasurePolicy(horizontalArrangement$iv32, verticalAlignment$iv32, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv322 = (54 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv322 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv422 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv522 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv322 = LayoutKt.modifierMaterializerOf(modifier$iv222);
                    int $changed$iv$iv$iv322 = (($changed$iv$iv322 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv322, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv422, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv322 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv322));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv322), block$iv$iv$iv322);
                    skippableUpdate$iv$iv$iv322.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv322 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i52222 = ($changed$iv$iv$iv322 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i62222 = ((54 >> 6) & 112) | 6;
                    RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142222 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer4, 132566549, "C67@2582L92,66@2510L26,65@2472L407,74@3007L91,73@2935L26,72@2897L409,81@3440L98,80@3362L32,79@3324L424,88@3879L95,87@3804L29,86@3766L494,95@4389L91,94@4316L27,93@4278L411:RideHistoryScreen.kt#xkugs2");
                    ButtonColors m1872buttonColorsro_MJ886222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ALL") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    PaddingValues m822PaddingValuesYgX7TsA6222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs6222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                    $composer4.startReplaceableGroup(1943938015);
                    ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                    value$iv3 = $composer4.rememberedValue();
                    if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                    }
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs6222, false, null, m1872buttonColorsro_MJ886222, null, null, m822PaddingValuesYgX7TsA6222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6712getLambda1$app_debug(), $composer4, 817889286, 364);
                    ButtonColors m1872buttonColorsro_MJ8822222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ATV") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    PaddingValues m822PaddingValuesYgX7TsA22222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs22222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                    $composer4.startReplaceableGroup(1943951615);
                    ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                    it$iv = $composer4.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                    }
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv4, m863height3ABfNKs22222, false, null, m1872buttonColorsro_MJ8822222, null, null, m822PaddingValuesYgX7TsA22222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6713getLambda2$app_debug(), $composer4, 817889286, 364);
                    ButtonColors m1872buttonColorsro_MJ8832222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "MOTOCROSS") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    PaddingValues m822PaddingValuesYgX7TsA32222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs32222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                    $composer4.startReplaceableGroup(1943965285);
                    ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                    it$iv2 = $composer4.rememberedValue();
                    if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                    }
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv5, m863height3ABfNKs32222, false, null, m1872buttonColorsro_MJ8832222, null, null, m822PaddingValuesYgX7TsA32222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6714getLambda3$app_debug(), $composer4, 817889286, 364);
                    ButtonColors m1872buttonColorsro_MJ8842222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "DAELIM") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    PaddingValues m822PaddingValuesYgX7TsA42222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs42222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                    $composer4.startReplaceableGroup(1943979426);
                    ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                    it$iv3 = $composer4.rememberedValue();
                    if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                    }
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv6, m863height3ABfNKs42222, false, null, m1872buttonColorsro_MJ8842222, null, null, m822PaddingValuesYgX7TsA42222, null, ComposableLambdaKt.composableLambda($composer4, 1426491027, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                            invoke(rowScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RowScope Button, Composer $composer5, int $changed2) {
                            String RideHistoryScreen$lambda$12;
                            Intrinsics.checkNotNullParameter(Button, "$this$Button");
                            ComposerKt.sourceInformation($composer5, "C91@4149L109:RideHistoryScreen.kt#xkugs2");
                            if (($changed2 & 81) == 16 && $composer5.getSkipping()) {
                                $composer5.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1426491027, $changed2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RideHistoryScreen.kt:91)");
                            }
                            long sp = TextUnitKt.getSp(9);
                            RideHistoryScreen$lambda$12 = RideHistoryScreenKt.RideHistoryScreen$lambda$1(selectedFilter$delegate);
                            TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, Intrinsics.areEqual(RideHistoryScreen$lambda$12, "DAELIM") ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 3078, 0, 131058);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }), $composer4, 817889286, 364);
                    ButtonColors m1872buttonColorsro_MJ8852222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "TEST") ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                    PaddingValues m822PaddingValuesYgX7TsA52222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs52222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24142222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                    $composer4.startReplaceableGroup(1943995808);
                    ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                    it$iv4 = $composer4.rememberedValue();
                    if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                    }
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs52222, false, null, m1872buttonColorsro_MJ8852222, null, null, m822PaddingValuesYgX7TsA52222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6715getLambda4$app_debug(), $composer4, 817889286, 364);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer4, 6);
                    Modifier modifier$iv32222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv22222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                    $composer4.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Alignment.Vertical verticalAlignment$iv22222 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv42222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22222, verticalAlignment$iv22222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv42222 = (54 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv52222 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv62222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
                    int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv42222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                    skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i7222222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    int i8222222 = ((54 >> 6) & 112) | 6;
                    RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415222222 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                    ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                            File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                            if (csvFile != null) {
                                Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                                return;
                            }
                            Toast.makeText(context, "No rides to export.", 0).show();
                        }
                    }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                    ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* compiled from: RideHistoryScreen.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                        @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                        /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ RideDao $rideDao;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                                super(2, continuation);
                                this.$rideDao = rideDao;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new AnonymousClass1(this.$rideDao, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object $result) {
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                switch (this.label) {
                                    case 0:
                                        ResultKt.throwOnFailure($result);
                                        this.label = 1;
                                        if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                            break;
                                        } else {
                                            return coroutine_suspended;
                                        }
                                    case 1:
                                        ResultKt.throwOnFailure($result);
                                        break;
                                    default:
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                return Unit.INSTANCE;
                            }
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                        }
                    }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2415222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                    if (filteredRides.isEmpty()) {
                    }
                    $composer3 = $composer4;
                    ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer3.endReplaceableGroup();
                    $composer3.endNode();
                    $composer3.endReplaceableGroup();
                    $composer3.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
                skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                $composer4.startReplaceableGroup(2058660585);
                int i3222 = ($changed$iv$iv$iv22 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                int i4222 = ((384 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer4, -416959811, "C55@2019L102,56@2134L87,58@2235L40,61@2316L2387,101@4717L40,104@4821L1454:RideHistoryScreen.kt#xkugs2");
                TextKt.m2730Text4IGK_g("RIDE LOGS & BENCHMARKS", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                TextKt.m2730Text4IGK_g("Logged Rides: " + filteredRides.size(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
                Modifier modifier$iv2222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalArrangement$iv322 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
                $composer4.startReplaceableGroup(693286680);
                ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                Alignment.Vertical verticalAlignment$iv322 = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv3222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv322, verticalAlignment$iv322, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv3222 = (54 << 3) & 112;
                $composer4.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv3222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                CompositionLocalMap localMap$iv$iv4222 = $composer4.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv5222 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv3222 = LayoutKt.modifierMaterializerOf(modifier$iv2222);
                int $changed$iv$iv$iv3222 = (($changed$iv$iv3222 << 9) & 7168) | 6;
                if (!($composer4.getApplier() instanceof Applier)) {
                }
                $composer4.startReusableNode();
                if ($composer4.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv3222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3222));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3222), block$iv$iv$iv3222);
                skippableUpdate$iv$iv$iv3222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3222 >> 3) & 112));
                $composer4.startReplaceableGroup(2058660585);
                int i522222 = ($changed$iv$iv$iv3222 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                int i622222 = ((54 >> 6) & 112) | 6;
                RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422222 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer4, 132566549, "C67@2582L92,66@2510L26,65@2472L407,74@3007L91,73@2935L26,72@2897L409,81@3440L98,80@3362L32,79@3324L424,88@3879L95,87@3804L29,86@3766L494,95@4389L91,94@4316L27,93@4278L411:RideHistoryScreen.kt#xkugs2");
                ButtonColors m1872buttonColorsro_MJ8862222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ALL") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                PaddingValues m822PaddingValuesYgX7TsA62222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                Modifier m863height3ABfNKs62222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                $composer4.startReplaceableGroup(1943938015);
                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                value$iv3 = $composer4.rememberedValue();
                if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                }
                $composer4.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs62222, false, null, m1872buttonColorsro_MJ8862222, null, null, m822PaddingValuesYgX7TsA62222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6712getLambda1$app_debug(), $composer4, 817889286, 364);
                ButtonColors m1872buttonColorsro_MJ88222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ATV") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                PaddingValues m822PaddingValuesYgX7TsA222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                Modifier m863height3ABfNKs222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                $composer4.startReplaceableGroup(1943951615);
                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                it$iv = $composer4.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                }
                $composer4.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv4, m863height3ABfNKs222222, false, null, m1872buttonColorsro_MJ88222222, null, null, m822PaddingValuesYgX7TsA222222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6713getLambda2$app_debug(), $composer4, 817889286, 364);
                ButtonColors m1872buttonColorsro_MJ88322222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "MOTOCROSS") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                PaddingValues m822PaddingValuesYgX7TsA322222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                Modifier m863height3ABfNKs322222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                $composer4.startReplaceableGroup(1943965285);
                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                it$iv2 = $composer4.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                $composer4.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv5, m863height3ABfNKs322222, false, null, m1872buttonColorsro_MJ88322222, null, null, m822PaddingValuesYgX7TsA322222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6714getLambda3$app_debug(), $composer4, 817889286, 364);
                ButtonColors m1872buttonColorsro_MJ88422222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "DAELIM") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                PaddingValues m822PaddingValuesYgX7TsA422222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                Modifier m863height3ABfNKs422222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                $composer4.startReplaceableGroup(1943979426);
                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                it$iv3 = $composer4.rememberedValue();
                if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                }
                $composer4.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv6, m863height3ABfNKs422222, false, null, m1872buttonColorsro_MJ88422222, null, null, m822PaddingValuesYgX7TsA422222, null, ComposableLambdaKt.composableLambda($composer4, 1426491027, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$5
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                        invoke(rowScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RowScope Button, Composer $composer5, int $changed2) {
                        String RideHistoryScreen$lambda$12;
                        Intrinsics.checkNotNullParameter(Button, "$this$Button");
                        ComposerKt.sourceInformation($composer5, "C91@4149L109:RideHistoryScreen.kt#xkugs2");
                        if (($changed2 & 81) == 16 && $composer5.getSkipping()) {
                            $composer5.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1426491027, $changed2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RideHistoryScreen.kt:91)");
                        }
                        long sp = TextUnitKt.getSp(9);
                        RideHistoryScreen$lambda$12 = RideHistoryScreenKt.RideHistoryScreen$lambda$1(selectedFilter$delegate);
                        TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, Intrinsics.areEqual(RideHistoryScreen$lambda$12, "DAELIM") ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 3078, 0, 131058);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }), $composer4, 817889286, 364);
                ButtonColors m1872buttonColorsro_MJ88522222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "TEST") ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
                PaddingValues m822PaddingValuesYgX7TsA522222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
                Modifier m863height3ABfNKs522222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241422222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
                $composer4.startReplaceableGroup(1943995808);
                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                it$iv4 = $composer4.rememberedValue();
                if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                }
                $composer4.endReplaceableGroup();
                ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs522222, false, null, m1872buttonColorsro_MJ88522222, null, null, m822PaddingValuesYgX7TsA522222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6715getLambda4$app_debug(), $composer4, 817889286, 364);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                $composer4.endReplaceableGroup();
                $composer4.endNode();
                $composer4.endReplaceableGroup();
                $composer4.endReplaceableGroup();
                SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer4, 6);
                Modifier modifier$iv322222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalArrangement$iv222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
                $composer4.startReplaceableGroup(693286680);
                ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                Alignment.Vertical verticalAlignment$iv222222 = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv422222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222222, verticalAlignment$iv222222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                int $changed$iv$iv422222 = (54 << 3) & 112;
                $composer4.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                CompositionLocalMap localMap$iv$iv522222 = $composer4.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv$iv622222 = ComposeUiNode.INSTANCE.getConstructor();
                Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv322222);
                int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                if (!($composer4.getApplier() instanceof Applier)) {
                }
                $composer4.startReusableNode();
                if ($composer4.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv422222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                $composer4.startReplaceableGroup(2058660585);
                int i72222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                int i82222222 = ((54 >> 6) & 112) | 6;
                RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152222222 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                        File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                        if (csvFile != null) {
                            Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                            return;
                        }
                        Toast.makeText(context, "No rides to export.", 0).show();
                    }
                }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
                ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* compiled from: RideHistoryScreen.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ RideDao $rideDao;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$rideDao = rideDao;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$rideDao, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object $result) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            switch (this.label) {
                                case 0:
                                    ResultKt.throwOnFailure($result);
                                    this.label = 1;
                                    if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                        break;
                                    } else {
                                        return coroutine_suspended;
                                    }
                                case 1:
                                    ResultKt.throwOnFailure($result);
                                    break;
                                default:
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                    }
                }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u24152222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
                if (filteredRides.isEmpty()) {
                }
                $composer3 = $composer4;
                ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                $composer3.endReplaceableGroup();
                $composer3.endNode();
                $composer3.endReplaceableGroup();
                $composer3.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            String RideHistoryScreen$lambda$12 = RideHistoryScreen$lambda$1(selectedFilter$delegate);
            switch (RideHistoryScreen$lambda$12.hashCode()) {
                case -1924979037:
                    if (RideHistoryScreen$lambda$12.equals("MOTOCROSS")) {
                        Iterable $this$filter$iv = RideHistoryScreen$lambda$3(allRides$delegate);
                        int $i$f$filter = 0;
                        Collection destination$iv$iv = new ArrayList();
                        for (Object element$iv$iv : $this$filter$iv) {
                            Iterable $this$filter$iv2 = $this$filter$iv;
                            RideLogEntity it = (RideLogEntity) element$iv$iv;
                            int $i$f$filter2 = $i$f$filter;
                            if (Intrinsics.areEqual(it.getVehicleType(), "MOTOCROSS")) {
                                destination$iv$iv.add(element$iv$iv);
                            }
                            $this$filter$iv = $this$filter$iv2;
                            $i$f$filter = $i$f$filter2;
                        }
                        value$iv2 = (List) destination$iv$iv;
                        break;
                    }
                    value$iv2 = RideHistoryScreen$lambda$3(allRides$delegate);
                    break;
                case 65155:
                    if (RideHistoryScreen$lambda$12.equals("ATV")) {
                        Iterable $this$filter$iv3 = RideHistoryScreen$lambda$3(allRides$delegate);
                        int $i$f$filter3 = 0;
                        Collection destination$iv$iv2 = new ArrayList();
                        for (Object element$iv$iv2 : $this$filter$iv3) {
                            Iterable $this$filter$iv4 = $this$filter$iv3;
                            RideLogEntity it2 = (RideLogEntity) element$iv$iv2;
                            int $i$f$filter4 = $i$f$filter3;
                            if (Intrinsics.areEqual(it2.getVehicleType(), "ATV")) {
                                destination$iv$iv2.add(element$iv$iv2);
                            }
                            $this$filter$iv3 = $this$filter$iv4;
                            $i$f$filter3 = $i$f$filter4;
                        }
                        value$iv2 = (List) destination$iv$iv2;
                        break;
                    }
                    value$iv2 = RideHistoryScreen$lambda$3(allRides$delegate);
                    break;
                case 2571410:
                    if (RideHistoryScreen$lambda$12.equals("TEST")) {
                        Iterable $this$filter$iv5 = RideHistoryScreen$lambda$3(allRides$delegate);
                        int $i$f$filter5 = 0;
                        Collection destination$iv$iv3 = new ArrayList();
                        for (Object element$iv$iv3 : $this$filter$iv5) {
                            Iterable $this$filter$iv6 = $this$filter$iv5;
                            RideLogEntity it3 = (RideLogEntity) element$iv$iv3;
                            int $i$f$filter6 = $i$f$filter5;
                            if (Intrinsics.areEqual(it3.getVehicleType(), "APP_TEST")) {
                                destination$iv$iv3.add(element$iv$iv3);
                            }
                            $this$filter$iv5 = $this$filter$iv6;
                            $i$f$filter5 = $i$f$filter6;
                        }
                        value$iv2 = (List) destination$iv$iv3;
                        break;
                    }
                    value$iv2 = RideHistoryScreen$lambda$3(allRides$delegate);
                    break;
                case 2008942088:
                    if (RideHistoryScreen$lambda$12.equals("DAELIM")) {
                        Iterable $this$filter$iv7 = RideHistoryScreen$lambda$3(allRides$delegate);
                        Collection destination$iv$iv4 = new ArrayList();
                        for (Object element$iv$iv4 : $this$filter$iv7) {
                            Iterable $this$filter$iv8 = $this$filter$iv7;
                            RideLogEntity it4 = (RideLogEntity) element$iv$iv4;
                            if (Intrinsics.areEqual(it4.getVehicleType(), "DAELIM")) {
                                destination$iv$iv4.add(element$iv$iv4);
                            }
                            $this$filter$iv7 = $this$filter$iv8;
                        }
                        value$iv2 = (List) destination$iv$iv4;
                        break;
                    } else {
                        value$iv2 = RideHistoryScreen$lambda$3(allRides$delegate);
                        break;
                    }
                default:
                    value$iv2 = RideHistoryScreen$lambda$3(allRides$delegate);
                    break;
            }
            $composer4.updateRememberedValue(value$iv2);
            filteredRides = (List) value$iv2;
            $composer4.endReplaceableGroup();
            Modifier m828padding3ABfNKs2 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m476backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsBackground(), null, 2, null), Dp.m6360constructorimpl(12));
            Alignment.Horizontal centerHorizontally2 = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.HorizontalOrVertical spaceBetween2 = Arrangement.INSTANCE.getSpaceBetween();
            $composer4.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv6 = ColumnKt.columnMeasurePolicy(spaceBetween2, centerHorizontally2, $composer4, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            int $changed$iv$iv6 = (438 << 3) & 112;
            $composer4.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv6 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
            CompositionLocalMap localMap$iv$iv22 = $composer4.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv32 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv6 = LayoutKt.modifierMaterializerOf(m828padding3ABfNKs2);
            int $changed$iv$iv$iv6 = (($changed$iv$iv6 << 9) & 7168) | 6;
            if (!($composer4.getApplier() instanceof Applier)) {
            }
            $composer4.startReusableNode();
            if ($composer4.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer4);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv6, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv6 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv6));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv6), block$iv$iv$iv6);
            skippableUpdate$iv$iv$iv6.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv6 >> 3) & 112));
            $composer4.startReplaceableGroup(2058660585);
            int i112 = ($changed$iv$iv$iv6 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            int i222 = ((438 >> 6) & 112) | 6;
            ColumnScope $this$RideHistoryScreen_u24lambda_u241822 = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer4, -2089844104, "C54@1946L4339,167@7398L48,165@7318L296:RideHistoryScreen.kt#xkugs2");
            Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getCenterHorizontally();
            $composer4.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
            Modifier modifier$iv52 = Modifier.INSTANCE;
            Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.getTop();
            int $changed$iv22 = ((384 >> 3) & 14) | ((384 >> 3) & 112);
            MeasurePolicy measurePolicy$iv222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer4, $changed$iv22);
            int $changed$iv$iv222 = (384 << 3) & 112;
            $composer4.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
            CompositionLocalMap localMap$iv$iv322 = $composer4.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv422 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv222 = LayoutKt.modifierMaterializerOf(modifier$iv52);
            int $changed$iv$iv$iv222 = (($changed$iv$iv222 << 9) & 7168) | 6;
            if (!($composer4.getApplier() instanceof Applier)) {
            }
            $composer4.startReusableNode();
            if ($composer4.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv322, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv222));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv222), block$iv$iv$iv222);
            skippableUpdate$iv$iv$iv222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv222 >> 3) & 112));
            $composer4.startReplaceableGroup(2058660585);
            int i32222 = ($changed$iv$iv$iv222 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
            int i42222 = ((384 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer4, -416959811, "C55@2019L102,56@2134L87,58@2235L40,61@2316L2387,101@4717L40,104@4821L1454:RideHistoryScreen.kt#xkugs2");
            TextKt.m2730Text4IGK_g("RIDE LOGS & BENCHMARKS", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
            TextKt.m2730Text4IGK_g("Logged Rides: " + filteredRides.size(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(6)), $composer4, 6);
            Modifier modifier$iv22222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalArrangement$iv3222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(3));
            $composer4.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
            Alignment.Vertical verticalAlignment$iv3222 = Alignment.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv32222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv3222, verticalAlignment$iv3222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv32222 = (54 << 3) & 112;
            $composer4.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv32222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
            CompositionLocalMap localMap$iv$iv42222 = $composer4.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv52222 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv32222 = LayoutKt.modifierMaterializerOf(modifier$iv22222);
            int $changed$iv$iv$iv32222 = (($changed$iv$iv32222 << 9) & 7168) | 6;
            if (!($composer4.getApplier() instanceof Applier)) {
            }
            $composer4.startReusableNode();
            if ($composer4.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv32222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv42222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv32222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32222));
            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv32222), block$iv$iv$iv32222);
            skippableUpdate$iv$iv$iv32222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32222 >> 3) & 112));
            $composer4.startReplaceableGroup(2058660585);
            int i5222222 = ($changed$iv$iv$iv32222 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
            int i6222222 = ((54 >> 6) & 112) | 6;
            RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222222 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer4, 132566549, "C67@2582L92,66@2510L26,65@2472L407,74@3007L91,73@2935L26,72@2897L409,81@3440L98,80@3362L32,79@3324L424,88@3879L95,87@3804L29,86@3766L494,95@4389L91,94@4316L27,93@4278L411:RideHistoryScreen.kt#xkugs2");
            ButtonColors m1872buttonColorsro_MJ88622222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ALL") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
            PaddingValues m822PaddingValuesYgX7TsA622222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
            Modifier m863height3ABfNKs622222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
            $composer4.startReplaceableGroup(1943938015);
            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
            value$iv3 = $composer4.rememberedValue();
            if (value$iv3 == Composer.INSTANCE.getEmpty()) {
            }
            $composer4.endReplaceableGroup();
            ButtonKt.Button((Function0) value$iv3, m863height3ABfNKs622222, false, null, m1872buttonColorsro_MJ88622222, null, null, m822PaddingValuesYgX7TsA622222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6712getLambda1$app_debug(), $composer4, 817889286, 364);
            ButtonColors m1872buttonColorsro_MJ882222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "ATV") ? ColorKt.getCgsGreen() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
            PaddingValues m822PaddingValuesYgX7TsA2222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
            Modifier m863height3ABfNKs2222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
            $composer4.startReplaceableGroup(1943951615);
            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
            it$iv = $composer4.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
            }
            $composer4.endReplaceableGroup();
            ButtonKt.Button((Function0) value$iv4, m863height3ABfNKs2222222, false, null, m1872buttonColorsro_MJ882222222, null, null, m822PaddingValuesYgX7TsA2222222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6713getLambda2$app_debug(), $composer4, 817889286, 364);
            ButtonColors m1872buttonColorsro_MJ883222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "MOTOCROSS") ? ColorKt.getCgsAccent() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
            PaddingValues m822PaddingValuesYgX7TsA3222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
            Modifier m863height3ABfNKs3222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
            $composer4.startReplaceableGroup(1943965285);
            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
            it$iv2 = $composer4.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
            }
            $composer4.endReplaceableGroup();
            ButtonKt.Button((Function0) value$iv5, m863height3ABfNKs3222222, false, null, m1872buttonColorsro_MJ883222222, null, null, m822PaddingValuesYgX7TsA3222222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6714getLambda3$app_debug(), $composer4, 817889286, 364);
            ButtonColors m1872buttonColorsro_MJ884222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "DAELIM") ? ColorKt.getCgsYellow() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
            PaddingValues m822PaddingValuesYgX7TsA4222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
            Modifier m863height3ABfNKs4222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
            $composer4.startReplaceableGroup(1943979426);
            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
            it$iv3 = $composer4.rememberedValue();
            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
            }
            $composer4.endReplaceableGroup();
            ButtonKt.Button((Function0) value$iv6, m863height3ABfNKs4222222, false, null, m1872buttonColorsro_MJ884222222, null, null, m822PaddingValuesYgX7TsA4222222, null, ComposableLambdaKt.composableLambda($composer4, 1426491027, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$1$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                    invoke(rowScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope Button, Composer $composer5, int $changed2) {
                    String RideHistoryScreen$lambda$122;
                    Intrinsics.checkNotNullParameter(Button, "$this$Button");
                    ComposerKt.sourceInformation($composer5, "C91@4149L109:RideHistoryScreen.kt#xkugs2");
                    if (($changed2 & 81) == 16 && $composer5.getSkipping()) {
                        $composer5.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1426491027, $changed2, -1, "com.cgs.atvobserver.ui.screens.RideHistoryScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RideHistoryScreen.kt:91)");
                    }
                    long sp = TextUnitKt.getSp(9);
                    RideHistoryScreen$lambda$122 = RideHistoryScreenKt.RideHistoryScreen$lambda$1(selectedFilter$delegate);
                    TextKt.m2730Text4IGK_g("🛵 DAELIM", (Modifier) null, Intrinsics.areEqual(RideHistoryScreen$lambda$122, "DAELIM") ? Color.INSTANCE.m4038getBlack0d7_KjU() : ColorKt.getCgsTextSecondary(), sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 3078, 0, 131058);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }), $composer4, 817889286, 364);
            ButtonColors m1872buttonColorsro_MJ885222222 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(Intrinsics.areEqual(RideHistoryScreen$lambda$1(selectedFilter$delegate), "TEST") ? ColorKt.getCgsPink() : ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, ButtonDefaults.$stable << 12, 14);
            PaddingValues m822PaddingValuesYgX7TsA5222222 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(2), Dp.m6360constructorimpl(2));
            Modifier m863height3ABfNKs5222222 = SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u2414222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34));
            $composer4.startReplaceableGroup(1943995808);
            ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
            it$iv4 = $composer4.rememberedValue();
            if (it$iv4 == Composer.INSTANCE.getEmpty()) {
            }
            $composer4.endReplaceableGroup();
            ButtonKt.Button((Function0) value$iv7, m863height3ABfNKs5222222, false, null, m1872buttonColorsro_MJ885222222, null, null, m822PaddingValuesYgX7TsA5222222, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6715getLambda4$app_debug(), $composer4, 817889286, 364);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            $composer4.endReplaceableGroup();
            $composer4.endNode();
            $composer4.endReplaceableGroup();
            $composer4.endReplaceableGroup();
            SpacerKt.Spacer(SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(4)), $composer4, 6);
            Modifier modifier$iv3222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalArrangement$iv2222222 = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(6));
            $composer4.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
            Alignment.Vertical verticalAlignment$iv2222222 = Alignment.INSTANCE.getTop();
            MeasurePolicy measurePolicy$iv4222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222222, verticalAlignment$iv2222222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            int $changed$iv$iv4222222 = (54 << 3) & 112;
            $composer4.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv4222222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
            CompositionLocalMap localMap$iv$iv5222222 = $composer4.getCurrentCompositionLocalMap();
            Function0 factory$iv$iv$iv6222222 = ComposeUiNode.INSTANCE.getConstructor();
            Function3 skippableUpdate$iv$iv$iv4222222 = LayoutKt.modifierMaterializerOf(modifier$iv3222222);
            int $changed$iv$iv$iv4222222 = (($changed$iv$iv4222222 << 9) & 7168) | 6;
            if (!($composer4.getApplier() instanceof Applier)) {
            }
            $composer4.startReusableNode();
            if ($composer4.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv4222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2 block$iv$iv$iv4222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222222));
            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4222222), block$iv$iv$iv4222222);
            skippableUpdate$iv$iv$iv4222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4222222 >> 3) & 112));
            $composer4.startReplaceableGroup(2058660585);
            int i722222222 = ($changed$iv$iv$iv4222222 >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
            int i822222222 = ((54 >> 6) & 112) | 6;
            RowScope $this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522222222 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer4, 135022586, "C117@5504L40,108@4977L779,128@6007L37,122@5774L487:RideHistoryScreen.kt#xkugs2");
            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$1
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
                    File csvFile = CSVExporter.INSTANCE.exportRidesToCsv(context, filteredRides);
                    if (csvFile != null) {
                        Toast.makeText(context, "Exported: " + csvFile.getName() + " to Downloads!", 1).show();
                        return;
                    }
                    Toast.makeText(context, "No rides to export.", 0).show();
                }
            }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsAccent(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6716getLambda5$app_debug(), $composer4, 805306368, 484);
            ButtonKt.Button(new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* compiled from: RideHistoryScreen.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1", f = "RideHistoryScreen.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1, reason: invalid class name */
                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ RideDao $rideDao;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(RideDao rideDao, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$rideDao = rideDao;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$rideDao, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object $result) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        switch (this.label) {
                            case 0:
                                ResultKt.throwOnFailure($result);
                                this.label = 1;
                                if (this.$rideDao.clearAllRides(this) != coroutine_suspended) {
                                    break;
                                } else {
                                    return coroutine_suspended;
                                }
                            case 1:
                                ResultKt.throwOnFailure($result);
                                break;
                            default:
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        return Unit.INSTANCE;
                    }
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rideDao, null), 3, null);
                }
            }, SizeKt.m863height3ABfNKs(RowScope.weight$default($this$RideHistoryScreen_u24lambda_u2418_u24lambda_u2416_u24lambda_u241522222222, Modifier.INSTANCE, 1.0f, false, 2, null), Dp.m6360constructorimpl(34)), false, RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(6)), ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsRed(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6717getLambda6$app_debug(), $composer4, 805306368, 484);
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
            if (filteredRides.isEmpty()) {
            }
            $composer3 = $composer4;
            ButtonKt.Button(onBackToMenu, SizeKt.m863height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m6360constructorimpl(44)), false, null, ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer2, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6718getLambda7$app_debug(), $composer2, (($dirty2 >> 3) & 14) | 805306416, 492);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            $composer3.endReplaceableGroup();
            $composer3.endNode();
            $composer3.endReplaceableGroup();
            $composer3.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        ScopeUpdateScope endRestartGroup = $composer3.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$RideHistoryScreen$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i12) {
                    RideHistoryScreenKt.RideHistoryScreen(RideDao.this, onBackToMenu, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String RideHistoryScreen$lambda$1(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    private static final List<RideLogEntity> RideHistoryScreen$lambda$3(State<? extends List<RideLogEntity>> state) {
        Object thisObj$iv = state.getValue();
        return (List) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void DetailedRideBenchmarkCard(final RideLogEntity ride, final Function1<? super Long, Unit> function1, Composer $composer, final int $changed) {
        final String icon;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-272860979);
        ComposerKt.sourceInformation($composer3, "C(DetailedRideBenchmarkCard)P(1)192@8170L39,191@8134L2906:RideHistoryScreen.kt#xkugs2");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(ride) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(function1) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) == 18 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-272860979, $dirty2, -1, "com.cgs.atvobserver.ui.screens.DetailedRideBenchmarkCard (RideHistoryScreen.kt:179)");
            }
            final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault());
            final String startDateStr = dateFormat.format(new Date(ride.getStartTime()));
            final String endDateStr = ride.getEndTime() > 0 ? dateFormat.format(new Date(ride.getEndTime())) : "IN PROGRESS";
            String vehicleType = ride.getVehicleType();
            switch (vehicleType.hashCode()) {
                case -1924979037:
                    if (vehicleType.equals("MOTOCROSS")) {
                        icon = "🏍️";
                        break;
                    }
                    icon = "🚜";
                    break;
                case 1980010512:
                    if (vehicleType.equals("APP_TEST")) {
                        icon = "🧪";
                        break;
                    }
                    icon = "🚜";
                    break;
                case 2008942088:
                    if (vehicleType.equals("DAELIM")) {
                        icon = "🛵";
                        break;
                    }
                    icon = "🚜";
                    break;
                default:
                    icon = "🚜";
                    break;
            }
            $composer2 = $composer3;
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(8)), CardDefaults.INSTANCE.m1893cardColorsro_MJ88(ColorKt.getCgsSurface(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.composableLambda($composer3, 38189247, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$DetailedRideBenchmarkCard$1
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

                /* JADX WARN: Removed duplicated region for block: B:24:0x01f8  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x0204  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x023d  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x0377  */
                /* JADX WARN: Removed duplicated region for block: B:40:0x04b1  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x04bd  */
                /* JADX WARN: Removed duplicated region for block: B:46:0x04f6  */
                /* JADX WARN: Removed duplicated region for block: B:51:0x0605  */
                /* JADX WARN: Removed duplicated region for block: B:54:0x072d  */
                /* JADX WARN: Removed duplicated region for block: B:57:0x0739  */
                /* JADX WARN: Removed duplicated region for block: B:60:0x076c  */
                /* JADX WARN: Removed duplicated region for block: B:65:0x0926  */
                /* JADX WARN: Removed duplicated region for block: B:68:0x0932  */
                /* JADX WARN: Removed duplicated region for block: B:71:0x0965  */
                /* JADX WARN: Removed duplicated region for block: B:76:0x0b13  */
                /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:80:0x097b A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:81:0x0936  */
                /* JADX WARN: Removed duplicated region for block: B:83:0x0782 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:84:0x073d  */
                /* JADX WARN: Removed duplicated region for block: B:85:0x065d  */
                /* JADX WARN: Removed duplicated region for block: B:87:0x050c A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:88:0x04c3  */
                /* JADX WARN: Removed duplicated region for block: B:90:0x0384 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:92:0x0253  */
                /* JADX WARN: Removed duplicated region for block: B:93:0x020a  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(ColumnScope Card, Composer $composer4, int $changed2) {
                    Function0 factory$iv$iv$iv;
                    Function0 factory$iv$iv$iv2;
                    Composer $this$Layout_u24lambda_u240$iv$iv;
                    String str;
                    boolean invalid$iv;
                    Object it$iv;
                    Object value$iv;
                    Function0 factory$iv$iv$iv3;
                    Composer $this$Layout_u24lambda_u240$iv$iv2;
                    Composer $this$Layout_u24lambda_u240$iv$iv3;
                    Composer $this$Layout_u24lambda_u240$iv$iv4;
                    Intrinsics.checkNotNullParameter(Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C196@8312L2722:RideHistoryScreen.kt#xkugs2");
                    if (($changed2 & 81) == 16 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(38189247, $changed2, -1, "com.cgs.atvobserver.ui.screens.DetailedRideBenchmarkCard.<anonymous> (RideHistoryScreen.kt:196)");
                    }
                    Modifier modifier$iv = PaddingKt.m828padding3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(10));
                    Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.m737spacedBy0680j_4(Dp.m6360constructorimpl(4));
                    String str2 = startDateStr;
                    final RideLogEntity rideLogEntity = ride;
                    String str3 = icon;
                    final Function1<Long, Unit> function12 = function1;
                    SimpleDateFormat simpleDateFormat = dateFormat;
                    String str4 = endDateStr;
                    $composer4.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer4, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo");
                    Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                    MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv = (54 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv4 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
                    int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                        factory$iv$iv$iv = factory$iv$iv$iv4;
                        $composer4.createNode(factory$iv$iv$iv);
                    } else {
                        factory$iv$iv$iv = factory$iv$iv$iv4;
                        $composer4.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv5 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv5, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv5.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv5.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        int i2 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 754713493, "C200@8453L791,217@9258L62,220@9399L709,234@10122L403,242@10539L388,250@10941L83:RideHistoryScreen.kt#xkugs2");
                        Modifier modifier$iv2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        $composer4.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv2 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                        int $changed$iv$iv2 = (438 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv5 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv2 = LayoutKt.modifierMaterializerOf(modifier$iv2);
                        int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            factory$iv$iv$iv2 = factory$iv$iv$iv5;
                            $composer4.useNode();
                        } else {
                            factory$iv$iv$iv2 = factory$iv$iv$iv5;
                            $composer4.createNode(factory$iv$iv$iv2);
                        }
                        $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                            str = "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo";
                            if (Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i3 = ($changed$iv$iv$iv2 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                int i4 = ((438 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, 299235090, "C205@8671L115,209@8929L48,208@8858L25,207@8820L410:RideHistoryScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g(str3 + " " + rideLogEntity.getMode() + " (" + rideLogEntity.getVehicleType() + ")", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200064, 0, 131026);
                                ButtonColors m1872buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14);
                                PaddingValues m822PaddingValuesYgX7TsA = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(6), Dp.m6360constructorimpl(2));
                                Modifier m863height3ABfNKs = SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(28));
                                $composer4.startReplaceableGroup(286752859);
                                ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                                invalid$iv = $composer4.changed(function12) | $composer4.changed(rideLogEntity);
                                it$iv = $composer4.rememberedValue();
                                if (invalid$iv && it$iv != Composer.INSTANCE.getEmpty()) {
                                    value$iv = it$iv;
                                    $composer4.endReplaceableGroup();
                                    ButtonKt.Button((Function0) value$iv, m863height3ABfNKs, false, null, m1872buttonColorsro_MJ88, null, null, m822PaddingValuesYgX7TsA, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6719getLambda8$app_debug(), $composer4, 817889328, 364);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    long sp = TextUnitKt.getSp(10);
                                    long cgsTextSecondary = ColorKt.getCgsTextSecondary();
                                    Intrinsics.checkNotNull(str2);
                                    TextKt.m2730Text4IGK_g(str2, (Modifier) null, cgsTextSecondary, sp, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    Modifier modifier$iv3 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m475backgroundbw27NRU(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsSurfaceVariant(), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(4))), Dp.m6360constructorimpl(6));
                                    $composer4.startReplaceableGroup(-483455358);
                                    ComposerKt.sourceInformation($composer4, str);
                                    Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                                    Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv3 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                    int $changed$iv$iv3 = (0 << 3) & 112;
                                    $composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                    CompositionLocalMap localMap$iv$iv3 = $composer4.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv6 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv3 = LayoutKt.modifierMaterializerOf(modifier$iv3);
                                    int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 9) & 7168) | 6;
                                    if (!($composer4.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer4.startReusableNode();
                                    if ($composer4.getInserting()) {
                                        factory$iv$iv$iv3 = factory$iv$iv$iv6;
                                        $composer4.createNode(factory$iv$iv$iv3);
                                    } else {
                                        factory$iv$iv$iv3 = factory$iv$iv$iv6;
                                        $composer4.useNode();
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                                        skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                        $composer4.startReplaceableGroup(2058660585);
                                        int i5 = ($changed$iv$iv$iv3 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                                        int i6 = ((0 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 300184434, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2");
                                        TextKt.m2730Text4IGK_g("TRIP MILESTONES & GPS TRACE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                        TextKt.m2730Text4IGK_g("🟢 START: " + str2, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        $composer4.startReplaceableGroup(286784423);
                                        ComposerKt.sourceInformation($composer4, "229@9884L103");
                                        if (rideLogEntity.getMidTime() > 0) {
                                            TextKt.m2730Text4IGK_g("🟡 MIDPOINT: " + simpleDateFormat.format(new Date(rideLogEntity.getMidTime())), (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        }
                                        $composer4.endReplaceableGroup();
                                        TextKt.m2730Text4IGK_g("🏁 FINISH: " + str4, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        Modifier modifier$iv4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                        Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.getSpaceBetween();
                                        $composer4.startReplaceableGroup(693286680);
                                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                        Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                                        MeasurePolicy measurePolicy$iv4 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                        int $changed$iv$iv4 = (54 << 3) & 112;
                                        $composer4.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                        CompositionLocalMap localMap$iv$iv4 = $composer4.getCurrentCompositionLocalMap();
                                        Function0 factory$iv$iv$iv7 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3 skippableUpdate$iv$iv$iv4 = LayoutKt.modifierMaterializerOf(modifier$iv4);
                                        int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 9) & 7168) | 6;
                                        if (!($composer4.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        $composer4.startReusableNode();
                                        if ($composer4.getInserting()) {
                                            $composer4.createNode(factory$iv$iv$iv7);
                                        } else {
                                            $composer4.useNode();
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2 block$iv$iv$iv4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                            skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                            $composer4.startReplaceableGroup(2058660585);
                                            int i7 = ($changed$iv$iv$iv4 >> 9) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                                            int i8 = ((54 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                                            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                                            String format = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                                            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                                            TextKt.m2730Text4IGK_g("Distance: " + format + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            Modifier modifier$iv5 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                            Arrangement.Horizontal horizontalArrangement$iv3 = Arrangement.INSTANCE.getSpaceBetween();
                                            $composer4.startReplaceableGroup(693286680);
                                            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                            Alignment.Vertical verticalAlignment$iv3 = Alignment.INSTANCE.getTop();
                                            MeasurePolicy measurePolicy$iv5 = RowKt.rowMeasurePolicy(horizontalArrangement$iv3, verticalAlignment$iv3, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                            int $changed$iv$iv5 = (54 << 3) & 112;
                                            $composer4.startReplaceableGroup(-1323940314);
                                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                            int compositeKeyHash$iv$iv5 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                            CompositionLocalMap localMap$iv$iv5 = $composer4.getCurrentCompositionLocalMap();
                                            Function0 factory$iv$iv$iv8 = ComposeUiNode.INSTANCE.getConstructor();
                                            Function3 skippableUpdate$iv$iv$iv5 = LayoutKt.modifierMaterializerOf(modifier$iv5);
                                            int $changed$iv$iv$iv5 = (($changed$iv$iv5 << 9) & 7168) | 6;
                                            if (!($composer4.getApplier() instanceof Applier)) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            $composer4.startReusableNode();
                                            if ($composer4.getInserting()) {
                                                $composer4.createNode(factory$iv$iv$iv8);
                                            } else {
                                                $composer4.useNode();
                                            }
                                            $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                            Function2 block$iv$iv$iv5 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() && Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv5))) {
                                                skippableUpdate$iv$iv$iv5.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112));
                                                $composer4.startReplaceableGroup(2058660585);
                                                int i9 = ($changed$iv$iv$iv5 >> 9) & 14;
                                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                                RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                                                int i10 = ((54 >> 6) & 112) | 6;
                                                ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                                                String format2 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                                Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                                                TextKt.m2730Text4IGK_g("Peak G-Force: " + format2 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                                TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                                $composer4.endReplaceableGroup();
                                                $composer4.endNode();
                                                $composer4.endReplaceableGroup();
                                                $composer4.endReplaceableGroup();
                                                TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
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
                                            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5));
                                            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv5), block$iv$iv$iv5);
                                            skippableUpdate$iv$iv$iv5.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv5 >> 3) & 112));
                                            $composer4.startReplaceableGroup(2058660585);
                                            int i92 = ($changed$iv$iv$iv5 >> 9) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                            RowScopeInstance rowScopeInstance32 = RowScopeInstance.INSTANCE;
                                            int i102 = ((54 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                            StringCompanionObject stringCompanionObject22 = StringCompanionObject.INSTANCE;
                                            String format22 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                            Intrinsics.checkNotNullExpressionValue(format22, "format(...)");
                                            TextKt.m2730Text4IGK_g("Peak G-Force: " + format22 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv4), block$iv$iv$iv4);
                                        skippableUpdate$iv$iv$iv4.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4 >> 3) & 112));
                                        $composer4.startReplaceableGroup(2058660585);
                                        int i72 = ($changed$iv$iv$iv4 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
                                        int i82 = ((54 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                                        StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                                        String format3 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                                        Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
                                        TextKt.m2730Text4IGK_g("Distance: " + format3 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        Modifier modifier$iv52 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                        Arrangement.Horizontal horizontalArrangement$iv32 = Arrangement.INSTANCE.getSpaceBetween();
                                        $composer4.startReplaceableGroup(693286680);
                                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                        Alignment.Vertical verticalAlignment$iv32 = Alignment.INSTANCE.getTop();
                                        MeasurePolicy measurePolicy$iv52 = RowKt.rowMeasurePolicy(horizontalArrangement$iv32, verticalAlignment$iv32, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                        int $changed$iv$iv52 = (54 << 3) & 112;
                                        $composer4.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv52 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                        CompositionLocalMap localMap$iv$iv52 = $composer4.getCurrentCompositionLocalMap();
                                        Function0 factory$iv$iv$iv82 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3 skippableUpdate$iv$iv$iv52 = LayoutKt.modifierMaterializerOf(modifier$iv52);
                                        int $changed$iv$iv$iv52 = (($changed$iv$iv52 << 9) & 7168) | 6;
                                        if (!($composer4.getApplier() instanceof Applier)) {
                                        }
                                        $composer4.startReusableNode();
                                        if ($composer4.getInserting()) {
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv52, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv52, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2 block$iv$iv$iv52 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                                            skippableUpdate$iv$iv$iv52.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv52 >> 3) & 112));
                                            $composer4.startReplaceableGroup(2058660585);
                                            int i922 = ($changed$iv$iv$iv52 >> 9) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                            RowScopeInstance rowScopeInstance322 = RowScopeInstance.INSTANCE;
                                            int i1022 = ((54 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                            StringCompanionObject stringCompanionObject222 = StringCompanionObject.INSTANCE;
                                            String format222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                            Intrinsics.checkNotNullExpressionValue(format222, "format(...)");
                                            TextKt.m2730Text4IGK_g("Peak G-Force: " + format222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endReplaceableGroup();
                                            $composer4.endNode();
                                            $composer4.endReplaceableGroup();
                                            $composer4.endReplaceableGroup();
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv52));
                                        $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv52), block$iv$iv$iv52);
                                        skippableUpdate$iv$iv$iv52.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv52 >> 3) & 112));
                                        $composer4.startReplaceableGroup(2058660585);
                                        int i9222 = ($changed$iv$iv$iv52 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        RowScopeInstance rowScopeInstance3222 = RowScopeInstance.INSTANCE;
                                        int i10222 = ((54 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                        StringCompanionObject stringCompanionObject2222 = StringCompanionObject.INSTANCE;
                                        String format2222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                        Intrinsics.checkNotNullExpressionValue(format2222, "format(...)");
                                        TextKt.m2730Text4IGK_g("Peak G-Force: " + format2222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3), block$iv$iv$iv3);
                                    skippableUpdate$iv$iv$iv3.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i52 = ($changed$iv$iv$iv3 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                                    int i62 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 300184434, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("TRIP MILESTONES & GPS TRACE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                    TextKt.m2730Text4IGK_g("🟢 START: " + str2, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    $composer4.startReplaceableGroup(286784423);
                                    ComposerKt.sourceInformation($composer4, "229@9884L103");
                                    if (rideLogEntity.getMidTime() > 0) {
                                    }
                                    $composer4.endReplaceableGroup();
                                    TextKt.m2730Text4IGK_g("🏁 FINISH: " + str4, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    Modifier modifier$iv42 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                    Arrangement.Horizontal horizontalArrangement$iv22 = Arrangement.INSTANCE.getSpaceBetween();
                                    $composer4.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                    Alignment.Vertical verticalAlignment$iv22 = Alignment.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv42 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22, verticalAlignment$iv22, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv42 = (54 << 3) & 112;
                                    $composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv42 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                    CompositionLocalMap localMap$iv$iv42 = $composer4.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv72 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv42 = LayoutKt.modifierMaterializerOf(modifier$iv42);
                                    int $changed$iv$iv$iv42 = (($changed$iv$iv42 << 9) & 7168) | 6;
                                    if (!($composer4.getApplier() instanceof Applier)) {
                                    }
                                    $composer4.startReusableNode();
                                    if ($composer4.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                                        skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                        $composer4.startReplaceableGroup(2058660585);
                                        int i722 = ($changed$iv$iv$iv42 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        RowScopeInstance rowScopeInstance222 = RowScopeInstance.INSTANCE;
                                        int i822 = ((54 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                                        StringCompanionObject stringCompanionObject32 = StringCompanionObject.INSTANCE;
                                        String format32 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                                        Intrinsics.checkNotNullExpressionValue(format32, "format(...)");
                                        TextKt.m2730Text4IGK_g("Distance: " + format32 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        Modifier modifier$iv522 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                        Arrangement.Horizontal horizontalArrangement$iv322 = Arrangement.INSTANCE.getSpaceBetween();
                                        $composer4.startReplaceableGroup(693286680);
                                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                        Alignment.Vertical verticalAlignment$iv322 = Alignment.INSTANCE.getTop();
                                        MeasurePolicy measurePolicy$iv522 = RowKt.rowMeasurePolicy(horizontalArrangement$iv322, verticalAlignment$iv322, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                        int $changed$iv$iv522 = (54 << 3) & 112;
                                        $composer4.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                        int compositeKeyHash$iv$iv522 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                        CompositionLocalMap localMap$iv$iv522 = $composer4.getCurrentCompositionLocalMap();
                                        Function0 factory$iv$iv$iv822 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3 skippableUpdate$iv$iv$iv522 = LayoutKt.modifierMaterializerOf(modifier$iv522);
                                        int $changed$iv$iv$iv522 = (($changed$iv$iv522 << 9) & 7168) | 6;
                                        if (!($composer4.getApplier() instanceof Applier)) {
                                        }
                                        $composer4.startReusableNode();
                                        if ($composer4.getInserting()) {
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv522, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv522, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                        Function2 block$iv$iv$iv522 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                        if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                                        }
                                        $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv522));
                                        $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv522), block$iv$iv$iv522);
                                        skippableUpdate$iv$iv$iv522.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv522 >> 3) & 112));
                                        $composer4.startReplaceableGroup(2058660585);
                                        int i92222 = ($changed$iv$iv$iv522 >> 9) & 14;
                                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                        RowScopeInstance rowScopeInstance32222 = RowScopeInstance.INSTANCE;
                                        int i102222 = ((54 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                        StringCompanionObject stringCompanionObject22222 = StringCompanionObject.INSTANCE;
                                        String format22222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                        Intrinsics.checkNotNullExpressionValue(format22222, "format(...)");
                                        TextKt.m2730Text4IGK_g("Peak G-Force: " + format22222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        ComposerKt.sourceInformationMarkerEnd($composer4);
                                        $composer4.endReplaceableGroup();
                                        $composer4.endNode();
                                        $composer4.endReplaceableGroup();
                                        $composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42));
                                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv42), block$iv$iv$iv42);
                                    skippableUpdate$iv$iv$iv42.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i7222 = ($changed$iv$iv$iv42 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance2222 = RowScopeInstance.INSTANCE;
                                    int i8222 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                                    StringCompanionObject stringCompanionObject322 = StringCompanionObject.INSTANCE;
                                    String format322 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format322, "format(...)");
                                    TextKt.m2730Text4IGK_g("Distance: " + format322 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    Modifier modifier$iv5222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                    Arrangement.Horizontal horizontalArrangement$iv3222 = Arrangement.INSTANCE.getSpaceBetween();
                                    $composer4.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                    Alignment.Vertical verticalAlignment$iv3222 = Alignment.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv5222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv3222, verticalAlignment$iv3222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv5222 = (54 << 3) & 112;
                                    $composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv5222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                    CompositionLocalMap localMap$iv$iv5222 = $composer4.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv8222 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv5222 = LayoutKt.modifierMaterializerOf(modifier$iv5222);
                                    int $changed$iv$iv$iv5222 = (($changed$iv$iv5222 << 9) & 7168) | 6;
                                    if (!($composer4.getApplier() instanceof Applier)) {
                                    }
                                    $composer4.startReusableNode();
                                    if ($composer4.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv5222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5222));
                                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv5222), block$iv$iv$iv5222);
                                    skippableUpdate$iv$iv$iv5222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv5222 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i922222 = ($changed$iv$iv$iv5222 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance322222 = RowScopeInstance.INSTANCE;
                                    int i1022222 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                    StringCompanionObject stringCompanionObject222222 = StringCompanionObject.INSTANCE;
                                    String format222222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format222222, "format(...)");
                                    TextKt.m2730Text4IGK_g("Peak G-Force: " + format222222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                value$iv = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1$1
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
                                        function12.invoke(Long.valueOf(rideLogEntity.getId()));
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv);
                                $composer4.endReplaceableGroup();
                                ButtonKt.Button((Function0) value$iv, m863height3ABfNKs, false, null, m1872buttonColorsro_MJ88, null, null, m822PaddingValuesYgX7TsA, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6719getLambda8$app_debug(), $composer4, 817889328, 364);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                long sp2 = TextUnitKt.getSp(10);
                                long cgsTextSecondary2 = ColorKt.getCgsTextSecondary();
                                Intrinsics.checkNotNull(str2);
                                TextKt.m2730Text4IGK_g(str2, (Modifier) null, cgsTextSecondary2, sp2, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                Modifier modifier$iv32 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m475backgroundbw27NRU(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsSurfaceVariant(), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(4))), Dp.m6360constructorimpl(6));
                                $composer4.startReplaceableGroup(-483455358);
                                ComposerKt.sourceInformation($composer4, str);
                                Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.getTop();
                                Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv32 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                int $changed$iv$iv32 = (0 << 3) & 112;
                                $composer4.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv32 = $composer4.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv62 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv32 = LayoutKt.modifierMaterializerOf(modifier$iv32);
                                int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 9) & 7168) | 6;
                                if (!($composer4.getApplier() instanceof Applier)) {
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                    skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i522 = ($changed$iv$iv$iv32 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                                    int i622 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 300184434, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2");
                                    TextKt.m2730Text4IGK_g("TRIP MILESTONES & GPS TRACE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                    TextKt.m2730Text4IGK_g("🟢 START: " + str2, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    $composer4.startReplaceableGroup(286784423);
                                    ComposerKt.sourceInformation($composer4, "229@9884L103");
                                    if (rideLogEntity.getMidTime() > 0) {
                                    }
                                    $composer4.endReplaceableGroup();
                                    TextKt.m2730Text4IGK_g("🏁 FINISH: " + str4, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    Modifier modifier$iv422 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                    Arrangement.Horizontal horizontalArrangement$iv222 = Arrangement.INSTANCE.getSpaceBetween();
                                    $composer4.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                    Alignment.Vertical verticalAlignment$iv222 = Alignment.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv422 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222, verticalAlignment$iv222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv422 = (54 << 3) & 112;
                                    $composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv422 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                    CompositionLocalMap localMap$iv$iv422 = $composer4.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv722 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv422 = LayoutKt.modifierMaterializerOf(modifier$iv422);
                                    int $changed$iv$iv$iv422 = (($changed$iv$iv422 << 9) & 7168) | 6;
                                    if (!($composer4.getApplier() instanceof Applier)) {
                                    }
                                    $composer4.startReusableNode();
                                    if ($composer4.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv422, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv422, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422));
                                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv422), block$iv$iv$iv422);
                                    skippableUpdate$iv$iv$iv422.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv422 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i72222 = ($changed$iv$iv$iv422 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance22222 = RowScopeInstance.INSTANCE;
                                    int i82222 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                                    StringCompanionObject stringCompanionObject3222 = StringCompanionObject.INSTANCE;
                                    String format3222 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format3222, "format(...)");
                                    TextKt.m2730Text4IGK_g("Distance: " + format3222 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    Modifier modifier$iv52222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                    Arrangement.Horizontal horizontalArrangement$iv32222 = Arrangement.INSTANCE.getSpaceBetween();
                                    $composer4.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                    Alignment.Vertical verticalAlignment$iv32222 = Alignment.INSTANCE.getTop();
                                    MeasurePolicy measurePolicy$iv52222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv32222, verticalAlignment$iv32222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                    int $changed$iv$iv52222 = (54 << 3) & 112;
                                    $composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv52222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                    CompositionLocalMap localMap$iv$iv52222 = $composer4.getCurrentCompositionLocalMap();
                                    Function0 factory$iv$iv$iv82222 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3 skippableUpdate$iv$iv$iv52222 = LayoutKt.modifierMaterializerOf(modifier$iv52222);
                                    int $changed$iv$iv$iv52222 = (($changed$iv$iv52222 << 9) & 7168) | 6;
                                    if (!($composer4.getApplier() instanceof Applier)) {
                                    }
                                    $composer4.startReusableNode();
                                    if ($composer4.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv52222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv52222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2 block$iv$iv$iv52222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                                    }
                                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv52222));
                                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv52222), block$iv$iv$iv52222);
                                    skippableUpdate$iv$iv$iv52222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv52222 >> 3) & 112));
                                    $composer4.startReplaceableGroup(2058660585);
                                    int i9222222 = ($changed$iv$iv$iv52222 >> 9) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance3222222 = RowScopeInstance.INSTANCE;
                                    int i10222222 = ((54 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                    StringCompanionObject stringCompanionObject2222222 = StringCompanionObject.INSTANCE;
                                    String format2222222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format2222222, "format(...)");
                                    TextKt.m2730Text4IGK_g("Peak G-Force: " + format2222222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    $composer4.endReplaceableGroup();
                                    $composer4.endNode();
                                    $composer4.endReplaceableGroup();
                                    $composer4.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv32), block$iv$iv$iv32);
                                skippableUpdate$iv$iv$iv32.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i5222 = ($changed$iv$iv$iv32 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
                                int i6222 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, 300184434, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2");
                                TextKt.m2730Text4IGK_g("TRIP MILESTONES & GPS TRACE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                                TextKt.m2730Text4IGK_g("🟢 START: " + str2, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                $composer4.startReplaceableGroup(286784423);
                                ComposerKt.sourceInformation($composer4, "229@9884L103");
                                if (rideLogEntity.getMidTime() > 0) {
                                }
                                $composer4.endReplaceableGroup();
                                TextKt.m2730Text4IGK_g("🏁 FINISH: " + str4, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                Modifier modifier$iv4222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                Arrangement.Horizontal horizontalArrangement$iv2222 = Arrangement.INSTANCE.getSpaceBetween();
                                $composer4.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Alignment.Vertical verticalAlignment$iv2222 = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv4222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222, verticalAlignment$iv2222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv4222 = (54 << 3) & 112;
                                $composer4.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv4222 = $composer4.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv7222 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv4222 = LayoutKt.modifierMaterializerOf(modifier$iv4222);
                                int $changed$iv$iv$iv4222 = (($changed$iv$iv4222 << 9) & 7168) | 6;
                                if (!($composer4.getApplier() instanceof Applier)) {
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv4222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv4222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222));
                                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv4222), block$iv$iv$iv4222);
                                skippableUpdate$iv$iv$iv4222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4222 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i722222 = ($changed$iv$iv$iv4222 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance222222 = RowScopeInstance.INSTANCE;
                                int i822222 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                                StringCompanionObject stringCompanionObject32222 = StringCompanionObject.INSTANCE;
                                String format32222 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format32222, "format(...)");
                                TextKt.m2730Text4IGK_g("Distance: " + format32222 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                Modifier modifier$iv522222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                                Arrangement.Horizontal horizontalArrangement$iv322222 = Arrangement.INSTANCE.getSpaceBetween();
                                $composer4.startReplaceableGroup(693286680);
                                ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                                Alignment.Vertical verticalAlignment$iv322222 = Alignment.INSTANCE.getTop();
                                MeasurePolicy measurePolicy$iv522222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv322222, verticalAlignment$iv322222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                                int $changed$iv$iv522222 = (54 << 3) & 112;
                                $composer4.startReplaceableGroup(-1323940314);
                                ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv522222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv522222 = $composer4.getCurrentCompositionLocalMap();
                                Function0 factory$iv$iv$iv822222 = ComposeUiNode.INSTANCE.getConstructor();
                                Function3 skippableUpdate$iv$iv$iv522222 = LayoutKt.modifierMaterializerOf(modifier$iv522222);
                                int $changed$iv$iv$iv522222 = (($changed$iv$iv522222 << 9) & 7168) | 6;
                                if (!($composer4.getApplier() instanceof Applier)) {
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv522222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv522222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2 block$iv$iv$iv522222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                                }
                                $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv522222));
                                $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv522222), block$iv$iv$iv522222);
                                skippableUpdate$iv$iv$iv522222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv522222 >> 3) & 112));
                                $composer4.startReplaceableGroup(2058660585);
                                int i92222222 = ($changed$iv$iv$iv522222 >> 9) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance32222222 = RowScopeInstance.INSTANCE;
                                int i102222222 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                                StringCompanionObject stringCompanionObject22222222 = StringCompanionObject.INSTANCE;
                                String format22222222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                                Intrinsics.checkNotNullExpressionValue(format22222222, "format(...)");
                                TextKt.m2730Text4IGK_g("Peak G-Force: " + format22222222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endReplaceableGroup();
                                $composer4.endNode();
                                $composer4.endReplaceableGroup();
                                $composer4.endReplaceableGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                        } else {
                            str = "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo";
                        }
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv2), block$iv$iv$iv2);
                        skippableUpdate$iv$iv$iv2.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv2 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i32 = ($changed$iv$iv$iv2 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                        int i42 = ((438 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 299235090, "C205@8671L115,209@8929L48,208@8858L25,207@8820L410:RideHistoryScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g(str3 + " " + rideLogEntity.getMode() + " (" + rideLogEntity.getVehicleType() + ")", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200064, 0, 131026);
                        ButtonColors m1872buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14);
                        PaddingValues m822PaddingValuesYgX7TsA2 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(6), Dp.m6360constructorimpl(2));
                        Modifier m863height3ABfNKs2 = SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(28));
                        $composer4.startReplaceableGroup(286752859);
                        ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                        invalid$iv = $composer4.changed(function12) | $composer4.changed(rideLogEntity);
                        it$iv = $composer4.rememberedValue();
                        if (invalid$iv) {
                            value$iv = it$iv;
                            $composer4.endReplaceableGroup();
                            ButtonKt.Button((Function0) value$iv, m863height3ABfNKs2, false, null, m1872buttonColorsro_MJ882, null, null, m822PaddingValuesYgX7TsA2, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6719getLambda8$app_debug(), $composer4, 817889328, 364);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            long sp22 = TextUnitKt.getSp(10);
                            long cgsTextSecondary22 = ColorKt.getCgsTextSecondary();
                            Intrinsics.checkNotNull(str2);
                            TextKt.m2730Text4IGK_g(str2, (Modifier) null, cgsTextSecondary22, sp22, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            Modifier modifier$iv322 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m475backgroundbw27NRU(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsSurfaceVariant(), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(4))), Dp.m6360constructorimpl(6));
                            $composer4.startReplaceableGroup(-483455358);
                            ComposerKt.sourceInformation($composer4, str);
                            Arrangement.Vertical verticalArrangement$iv222 = Arrangement.INSTANCE.getTop();
                            Alignment.Horizontal horizontalAlignment$iv222 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv322 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv222, horizontalAlignment$iv222, $composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            int $changed$iv$iv322 = (0 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv322 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv322 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv622 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv322 = LayoutKt.modifierMaterializerOf(modifier$iv322);
                            int $changed$iv$iv$iv322 = (($changed$iv$iv322 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv322, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv322, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv322 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv322));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv322), block$iv$iv$iv322);
                            skippableUpdate$iv$iv$iv322.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv322 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i52222 = ($changed$iv$iv$iv322 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance22222 = ColumnScopeInstance.INSTANCE;
                            int i62222 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, 300184434, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2");
                            TextKt.m2730Text4IGK_g("TRIP MILESTONES & GPS TRACE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                            TextKt.m2730Text4IGK_g("🟢 START: " + str2, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            $composer4.startReplaceableGroup(286784423);
                            ComposerKt.sourceInformation($composer4, "229@9884L103");
                            if (rideLogEntity.getMidTime() > 0) {
                            }
                            $composer4.endReplaceableGroup();
                            TextKt.m2730Text4IGK_g("🏁 FINISH: " + str4, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            Modifier modifier$iv42222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv22222 = Arrangement.INSTANCE.getSpaceBetween();
                            $composer4.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv22222 = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv42222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22222, verticalAlignment$iv22222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv42222 = (54 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv42222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv42222 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv72222 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv42222 = LayoutKt.modifierMaterializerOf(modifier$iv42222);
                            int $changed$iv$iv$iv42222 = (($changed$iv$iv42222 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv42222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv42222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv42222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv42222));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv42222), block$iv$iv$iv42222);
                            skippableUpdate$iv$iv$iv42222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv42222 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i7222222 = ($changed$iv$iv$iv42222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance2222222 = RowScopeInstance.INSTANCE;
                            int i8222222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                            StringCompanionObject stringCompanionObject322222 = StringCompanionObject.INSTANCE;
                            String format322222 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format322222, "format(...)");
                            TextKt.m2730Text4IGK_g("Distance: " + format322222 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            Modifier modifier$iv5222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.Horizontal horizontalArrangement$iv3222222 = Arrangement.INSTANCE.getSpaceBetween();
                            $composer4.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                            Alignment.Vertical verticalAlignment$iv3222222 = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv5222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv3222222, verticalAlignment$iv3222222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                            int $changed$iv$iv5222222 = (54 << 3) & 112;
                            $composer4.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv5222222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                            CompositionLocalMap localMap$iv$iv5222222 = $composer4.getCurrentCompositionLocalMap();
                            Function0 factory$iv$iv$iv8222222 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3 skippableUpdate$iv$iv$iv5222222 = LayoutKt.modifierMaterializerOf(modifier$iv5222222);
                            int $changed$iv$iv$iv5222222 = (($changed$iv$iv5222222 << 9) & 7168) | 6;
                            if (!($composer4.getApplier() instanceof Applier)) {
                            }
                            $composer4.startReusableNode();
                            if ($composer4.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2 block$iv$iv$iv5222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                            }
                            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv5222222));
                            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv5222222), block$iv$iv$iv5222222);
                            skippableUpdate$iv$iv$iv5222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv5222222 >> 3) & 112));
                            $composer4.startReplaceableGroup(2058660585);
                            int i922222222 = ($changed$iv$iv$iv5222222 >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance322222222 = RowScopeInstance.INSTANCE;
                            int i1022222222 = ((54 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                            StringCompanionObject stringCompanionObject222222222 = StringCompanionObject.INSTANCE;
                            String format222222222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                            Intrinsics.checkNotNullExpressionValue(format222222222, "format(...)");
                            TextKt.m2730Text4IGK_g("Peak G-Force: " + format222222222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endReplaceableGroup();
                            $composer4.endNode();
                            $composer4.endReplaceableGroup();
                            $composer4.endReplaceableGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                        value$iv = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1$1
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
                                function12.invoke(Long.valueOf(rideLogEntity.getId()));
                            }
                        };
                        $composer4.updateRememberedValue(value$iv);
                        $composer4.endReplaceableGroup();
                        ButtonKt.Button((Function0) value$iv, m863height3ABfNKs2, false, null, m1872buttonColorsro_MJ882, null, null, m822PaddingValuesYgX7TsA2, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6719getLambda8$app_debug(), $composer4, 817889328, 364);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        long sp222 = TextUnitKt.getSp(10);
                        long cgsTextSecondary222 = ColorKt.getCgsTextSecondary();
                        Intrinsics.checkNotNull(str2);
                        TextKt.m2730Text4IGK_g(str2, (Modifier) null, cgsTextSecondary222, sp222, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        Modifier modifier$iv3222 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m475backgroundbw27NRU(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsSurfaceVariant(), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(4))), Dp.m6360constructorimpl(6));
                        $composer4.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer4, str);
                        Arrangement.Vertical verticalArrangement$iv2222 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv2222 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv3222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2222, horizontalAlignment$iv2222, $composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv3222 = (0 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv3222 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv6222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv3222 = LayoutKt.modifierMaterializerOf(modifier$iv3222);
                        int $changed$iv$iv$iv3222 = (($changed$iv$iv3222 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv3222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv3222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3222));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3222), block$iv$iv$iv3222);
                        skippableUpdate$iv$iv$iv3222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv3222 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i522222 = ($changed$iv$iv$iv3222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance222222 = ColumnScopeInstance.INSTANCE;
                        int i622222 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 300184434, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2");
                        TextKt.m2730Text4IGK_g("TRIP MILESTONES & GPS TRACE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                        TextKt.m2730Text4IGK_g("🟢 START: " + str2, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        $composer4.startReplaceableGroup(286784423);
                        ComposerKt.sourceInformation($composer4, "229@9884L103");
                        if (rideLogEntity.getMidTime() > 0) {
                        }
                        $composer4.endReplaceableGroup();
                        TextKt.m2730Text4IGK_g("🏁 FINISH: " + str4, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        Modifier modifier$iv422222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv222222 = Arrangement.INSTANCE.getSpaceBetween();
                        $composer4.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv222222 = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv422222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222222, verticalAlignment$iv222222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv422222 = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv422222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv422222 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv722222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv422222 = LayoutKt.modifierMaterializerOf(modifier$iv422222);
                        int $changed$iv$iv$iv422222 = (($changed$iv$iv422222 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv422222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv422222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv422222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv422222));
                        $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv422222), block$iv$iv$iv422222);
                        skippableUpdate$iv$iv$iv422222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv422222 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i72222222 = ($changed$iv$iv$iv422222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance22222222 = RowScopeInstance.INSTANCE;
                        int i82222222 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                        StringCompanionObject stringCompanionObject3222222 = StringCompanionObject.INSTANCE;
                        String format3222222 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format3222222, "format(...)");
                        TextKt.m2730Text4IGK_g("Distance: " + format3222222 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        Modifier modifier$iv52222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Arrangement.Horizontal horizontalArrangement$iv32222222 = Arrangement.INSTANCE.getSpaceBetween();
                        $composer4.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                        Alignment.Vertical verticalAlignment$iv32222222 = Alignment.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv52222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv32222222, verticalAlignment$iv32222222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                        int $changed$iv$iv52222222 = (54 << 3) & 112;
                        $composer4.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv52222222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv52222222 = $composer4.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv82222222 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv52222222 = LayoutKt.modifierMaterializerOf(modifier$iv52222222);
                        int $changed$iv$iv$iv52222222 = (($changed$iv$iv52222222 << 9) & 7168) | 6;
                        if (!($composer4.getApplier() instanceof Applier)) {
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv52222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv52222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv52222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                        }
                        $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv52222222));
                        $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv52222222), block$iv$iv$iv52222222);
                        skippableUpdate$iv$iv$iv52222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv52222222 >> 3) & 112));
                        $composer4.startReplaceableGroup(2058660585);
                        int i9222222222 = ($changed$iv$iv$iv52222222 >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance3222222222 = RowScopeInstance.INSTANCE;
                        int i10222222222 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                        StringCompanionObject stringCompanionObject2222222222 = StringCompanionObject.INSTANCE;
                        String format2222222222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                        Intrinsics.checkNotNullExpressionValue(format2222222222, "format(...)");
                        TextKt.m2730Text4IGK_g("Peak G-Force: " + format2222222222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endReplaceableGroup();
                        $composer4.endNode();
                        $composer4.endReplaceableGroup();
                        $composer4.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    $this$Layout_u24lambda_u240$iv$iv5.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv5.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                    skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i11 = ($changed$iv$iv$iv >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                    int i22 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, 754713493, "C200@8453L791,217@9258L62,220@9399L709,234@10122L403,242@10539L388,250@10941L83:RideHistoryScreen.kt#xkugs2");
                    Modifier modifier$iv22 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv4 = Arrangement.INSTANCE.getSpaceBetween();
                    Alignment.Vertical verticalAlignment$iv4 = Alignment.INSTANCE.getCenterVertically();
                    $composer4.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicy$iv22 = RowKt.rowMeasurePolicy(horizontalArrangement$iv4, verticalAlignment$iv4, $composer4, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                    int $changed$iv$iv22 = (438 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv22 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv52 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv22 = LayoutKt.modifierMaterializerOf(modifier$iv22);
                    int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv22), block$iv$iv$iv22);
                    skippableUpdate$iv$iv$iv22.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv22 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i322 = ($changed$iv$iv$iv22 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance42 = RowScopeInstance.INSTANCE;
                    int i422 = ((438 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, 299235090, "C205@8671L115,209@8929L48,208@8858L25,207@8820L410:RideHistoryScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g(str3 + " " + rideLogEntity.getMode() + " (" + rideLogEntity.getVehicleType() + ")", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200064, 0, 131026);
                    ButtonColors m1872buttonColorsro_MJ8822 = ButtonDefaults.INSTANCE.m1872buttonColorsro_MJ88(ColorKt.getCgsSurfaceVariant(), 0L, 0L, 0L, $composer4, (ButtonDefaults.$stable << 12) | 6, 14);
                    PaddingValues m822PaddingValuesYgX7TsA22 = PaddingKt.m822PaddingValuesYgX7TsA(Dp.m6360constructorimpl(6), Dp.m6360constructorimpl(2));
                    Modifier m863height3ABfNKs22 = SizeKt.m863height3ABfNKs(Modifier.INSTANCE, Dp.m6360constructorimpl(28));
                    $composer4.startReplaceableGroup(286752859);
                    ComposerKt.sourceInformation($composer4, "CC(remember):RideHistoryScreen.kt#9igjgp");
                    invalid$iv = $composer4.changed(function12) | $composer4.changed(rideLogEntity);
                    it$iv = $composer4.rememberedValue();
                    if (invalid$iv) {
                    }
                    value$iv = (Function0) new Function0<Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1$1
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
                            function12.invoke(Long.valueOf(rideLogEntity.getId()));
                        }
                    };
                    $composer4.updateRememberedValue(value$iv);
                    $composer4.endReplaceableGroup();
                    ButtonKt.Button((Function0) value$iv, m863height3ABfNKs22, false, null, m1872buttonColorsro_MJ8822, null, null, m822PaddingValuesYgX7TsA22, null, ComposableSingletons$RideHistoryScreenKt.INSTANCE.m6719getLambda8$app_debug(), $composer4, 817889328, 364);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    long sp2222 = TextUnitKt.getSp(10);
                    long cgsTextSecondary2222 = ColorKt.getCgsTextSecondary();
                    Intrinsics.checkNotNull(str2);
                    TextKt.m2730Text4IGK_g(str2, (Modifier) null, cgsTextSecondary2222, sp2222, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    Modifier modifier$iv32222 = PaddingKt.m828padding3ABfNKs(BackgroundKt.m475backgroundbw27NRU(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), ColorKt.getCgsSurfaceVariant(), RoundedCornerShapeKt.m1098RoundedCornerShape0680j_4(Dp.m6360constructorimpl(4))), Dp.m6360constructorimpl(6));
                    $composer4.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation($composer4, str);
                    Arrangement.Vertical verticalArrangement$iv22222 = Arrangement.INSTANCE.getTop();
                    Alignment.Horizontal horizontalAlignment$iv22222 = Alignment.INSTANCE.getStart();
                    MeasurePolicy measurePolicy$iv32222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22222, horizontalAlignment$iv22222, $composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                    int $changed$iv$iv32222 = (0 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv32222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv32222 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv62222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv32222 = LayoutKt.modifierMaterializerOf(modifier$iv32222);
                    int $changed$iv$iv$iv32222 = (($changed$iv$iv32222 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv32222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv32222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv32222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32222));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv32222), block$iv$iv$iv32222);
                    skippableUpdate$iv$iv$iv32222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv32222 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i5222222 = ($changed$iv$iv$iv32222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, 276693656, "C79@3979L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance2222222 = ColumnScopeInstance.INSTANCE;
                    int i6222222 = ((0 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, 300184434, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2");
                    TextKt.m2730Text4IGK_g("TRIP MILESTONES & GPS TRACE", (Modifier) null, ColorKt.getCgsYellow(), TextUnitKt.getSp(10), (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 200070, 0, 131026);
                    TextKt.m2730Text4IGK_g("🟢 START: " + str2, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    $composer4.startReplaceableGroup(286784423);
                    ComposerKt.sourceInformation($composer4, "229@9884L103");
                    if (rideLogEntity.getMidTime() > 0) {
                    }
                    $composer4.endReplaceableGroup();
                    TextKt.m2730Text4IGK_g("🏁 FINISH: " + str4, (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    Modifier modifier$iv4222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv2222222 = Arrangement.INSTANCE.getSpaceBetween();
                    $composer4.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Alignment.Vertical verticalAlignment$iv2222222 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv4222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2222222, verticalAlignment$iv2222222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv4222222 = (54 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv4222222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv4222222 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv7222222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv4222222 = LayoutKt.modifierMaterializerOf(modifier$iv4222222);
                    int $changed$iv$iv$iv4222222 = (($changed$iv$iv4222222 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv4222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv4222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv4222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4222222));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv4222222), block$iv$iv$iv4222222);
                    skippableUpdate$iv$iv$iv4222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv4222222 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i722222222 = ($changed$iv$iv$iv4222222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance222222222 = RowScopeInstance.INSTANCE;
                    int i822222222 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, 300817206, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2");
                    StringCompanionObject stringCompanionObject32222222 = StringCompanionObject.INSTANCE;
                    String format32222222 = String.format(Locale.getDefault(), "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getDistanceKm())}, 1));
                    Intrinsics.checkNotNullExpressionValue(format32222222, "format(...)");
                    TextKt.m2730Text4IGK_g("Distance: " + format32222222 + " km", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    TextKt.m2730Text4IGK_g("Max Speed: " + ((int) rideLogEntity.getMaxSpeedKmh()) + " km/h", (Modifier) null, ColorKt.getCgsTextPrimary(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    Modifier modifier$iv522222222 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Arrangement.Horizontal horizontalArrangement$iv322222222 = Arrangement.INSTANCE.getSpaceBetween();
                    $composer4.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo");
                    Alignment.Vertical verticalAlignment$iv322222222 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv522222222 = RowKt.rowMeasurePolicy(horizontalArrangement$iv322222222, verticalAlignment$iv322222222, $composer4, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                    int $changed$iv$iv522222222 = (54 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv522222222 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv522222222 = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv822222222 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv522222222 = LayoutKt.modifierMaterializerOf(modifier$iv522222222);
                    int $changed$iv$iv$iv522222222 = (($changed$iv$iv522222222 << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3542constructorimpl($composer4);
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv522222222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3549setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv522222222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv522222222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv522222222));
                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv522222222), block$iv$iv$iv522222222);
                    skippableUpdate$iv$iv$iv522222222.invoke(SkippableUpdater.m3533boximpl(SkippableUpdater.m3534constructorimpl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv522222222 >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i92222222222 = ($changed$iv$iv$iv522222222 >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -326681643, "C92@4661L9:Row.kt#2w3rfo");
                    RowScopeInstance rowScopeInstance32222222222 = RowScopeInstance.INSTANCE;
                    int i102222222222 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, 301230405, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2");
                    StringCompanionObject stringCompanionObject22222222222 = StringCompanionObject.INSTANCE;
                    String format22222222222 = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(rideLogEntity.getPeakGForce())}, 1));
                    Intrinsics.checkNotNullExpressionValue(format22222222222, "format(...)");
                    TextKt.m2730Text4IGK_g("Peak G-Force: " + format22222222222 + " G", (Modifier) null, ColorKt.getCgsAccent(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    TextKt.m2730Text4IGK_g("Smoothness: " + rideLogEntity.getSmoothnessScore() + "%", (Modifier) null, ColorKt.getCgsGreen(), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    TextKt.m2730Text4IGK_g("Terrain: " + rideLogEntity.getTerrainSummary(), (Modifier) null, ColorKt.getCgsTextSecondary(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 3456, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            }), $composer2, 196614, 24);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.cgs.atvobserver.ui.screens.RideHistoryScreenKt$DetailedRideBenchmarkCard$2
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
                    RideHistoryScreenKt.DetailedRideBenchmarkCard(RideLogEntity.this, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
