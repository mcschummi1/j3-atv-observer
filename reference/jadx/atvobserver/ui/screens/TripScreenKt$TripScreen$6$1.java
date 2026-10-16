package com.cgs.atvobserver.ui.screens;

import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.data.model.WeatherCondition;
import com.cgs.atvobserver.location.GpsData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: TripScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$6$1", f = "TripScreen.kt", i = {}, l = {178}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TripScreenKt$TripScreen$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ VehicleType $activeVehicle;
    final /* synthetic */ MutableState<Boolean> $checklistStepDone$delegate;
    final /* synthetic */ MutableState<Boolean> $fuelStepDone$delegate;
    final /* synthetic */ GpsData $gpsData;
    final /* synthetic */ MutableState<Boolean> $isPitStopPaused$delegate;
    final /* synthetic */ MutableLongState $lastFlushTimeSeconds$delegate;
    final /* synthetic */ long $linearFlushIntervalSec;
    final /* synthetic */ Function3<Double, Long, Double, Unit> $onPeriodicFlushToStorage;
    final /* synthetic */ MutableLongState $rideDurationSeconds$delegate;
    final /* synthetic */ MutableState<WeatherCondition> $selectedWeather$delegate;
    final /* synthetic */ MutableState<Boolean> $weatherStepDone$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TripScreenKt$TripScreen$6$1(long j, GpsData gpsData, VehicleType vehicleType, Function3<? super Double, ? super Long, ? super Double, Unit> function3, MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, MutableState<Boolean> mutableState3, MutableState<Boolean> mutableState4, MutableLongState mutableLongState, MutableLongState mutableLongState2, MutableState<WeatherCondition> mutableState5, Continuation<? super TripScreenKt$TripScreen$6$1> continuation) {
        super(2, continuation);
        this.$linearFlushIntervalSec = j;
        this.$gpsData = gpsData;
        this.$activeVehicle = vehicleType;
        this.$onPeriodicFlushToStorage = function3;
        this.$checklistStepDone$delegate = mutableState;
        this.$weatherStepDone$delegate = mutableState2;
        this.$fuelStepDone$delegate = mutableState3;
        this.$isPitStopPaused$delegate = mutableState4;
        this.$rideDurationSeconds$delegate = mutableLongState;
        this.$lastFlushTimeSeconds$delegate = mutableLongState2;
        this.$selectedWeather$delegate = mutableState5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TripScreenKt$TripScreen$6$1(this.$linearFlushIntervalSec, this.$gpsData, this.$activeVehicle, this.$onPeriodicFlushToStorage, this.$checklistStepDone$delegate, this.$weatherStepDone$delegate, this.$fuelStepDone$delegate, this.$isPitStopPaused$delegate, this.$rideDurationSeconds$delegate, this.$lastFlushTimeSeconds$delegate, this.$selectedWeather$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TripScreenKt$TripScreen$6$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0073  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004f -> B:7:0x0052). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r28) {
        /*
            r27 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            r1 = r27
            int r2 = r1.label
            switch(r2) {
                case 0: goto L1b;
                case 1: goto L13;
                default: goto Lb;
            }
        Lb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L13:
            r2 = r27
            r3 = r28
            kotlin.ResultKt.throwOnFailure(r3)
            goto L52
        L1b:
            kotlin.ResultKt.throwOnFailure(r28)
            r2 = r27
            r3 = r28
            androidx.compose.runtime.MutableState<java.lang.Boolean> r4 = r2.$checklistStepDone$delegate
            boolean r4 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$1(r4)
            if (r4 == 0) goto Leb
            androidx.compose.runtime.MutableState<java.lang.Boolean> r4 = r2.$weatherStepDone$delegate
            boolean r4 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$4(r4)
            if (r4 == 0) goto Leb
            androidx.compose.runtime.MutableState<java.lang.Boolean> r4 = r2.$fuelStepDone$delegate
            boolean r4 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$10(r4)
            if (r4 == 0) goto Leb
            androidx.compose.runtime.MutableState<java.lang.Boolean> r4 = r2.$isPitStopPaused$delegate
            boolean r4 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$28(r4)
            if (r4 != 0) goto Leb
        L42:
        L43:
            r4 = r2
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r5 = 1
            r2.label = r5
            r5 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r4 = kotlinx.coroutines.DelayKt.delay(r5, r4)
            if (r4 != r0) goto L52
            return r0
        L52:
            androidx.compose.runtime.MutableLongState r4 = r2.$rideDurationSeconds$delegate
            long r4 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$16(r4)
            androidx.compose.runtime.MutableLongState r6 = r2.$rideDurationSeconds$delegate
            r7 = 1
            long r4 = r4 + r7
            com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$17(r6, r4)
            androidx.compose.runtime.MutableLongState r4 = r2.$rideDurationSeconds$delegate
            long r4 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$16(r4)
            androidx.compose.runtime.MutableLongState r6 = r2.$lastFlushTimeSeconds$delegate
            long r6 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$19(r6)
            long r4 = r4 - r6
            long r6 = r2.$linearFlushIntervalSec
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 < 0) goto L42
            androidx.compose.runtime.MutableLongState r4 = r2.$lastFlushTimeSeconds$delegate
            androidx.compose.runtime.MutableLongState r5 = r2.$rideDurationSeconds$delegate
            long r5 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$16(r5)
            com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$20(r4, r5)
            com.cgs.atvobserver.domain.FuelEstimator r7 = com.cgs.atvobserver.domain.FuelEstimator.INSTANCE
            com.cgs.atvobserver.location.GpsData r4 = r2.$gpsData
            double r8 = r4.getDistanceKm()
            androidx.compose.runtime.MutableLongState r4 = r2.$rideDurationSeconds$delegate
            long r10 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$16(r4)
            androidx.compose.runtime.MutableLongState r4 = r2.$rideDurationSeconds$delegate
            long r4 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$16(r4)
            r12 = 0
            int r4 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r4 <= 0) goto Lad
            com.cgs.atvobserver.location.GpsData r4 = r2.$gpsData
            double r4 = r4.getDistanceKm()
            androidx.compose.runtime.MutableLongState r6 = r2.$rideDurationSeconds$delegate
            long r12 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$16(r6)
            double r12 = (double) r12
            r14 = 4660134898793709568(0x40ac200000000000, double:3600.0)
            double r12 = r12 / r14
            double r4 = r4 / r12
            goto Laf
        Lad:
            r4 = 0
        Laf:
            r12 = r4
            com.cgs.atvobserver.data.model.VehicleType r14 = r2.$activeVehicle
            androidx.compose.runtime.MutableState<com.cgs.atvobserver.data.model.WeatherCondition> r4 = r2.$selectedWeather$delegate
            com.cgs.atvobserver.data.model.WeatherCondition r15 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$7(r4)
            r25 = 2016(0x7e0, float:2.825E-42)
            r26 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r20 = 0
            r22 = 0
            r23 = 0
            double r4 = com.cgs.atvobserver.domain.FuelEstimator.estimateFuelConsumption$default(r7, r8, r10, r12, r14, r15, r16, r17, r18, r20, r22, r23, r25, r26)
            kotlin.jvm.functions.Function3<java.lang.Double, java.lang.Long, java.lang.Double, kotlin.Unit> r6 = r2.$onPeriodicFlushToStorage
            com.cgs.atvobserver.location.GpsData r7 = r2.$gpsData
            double r7 = r7.getDistanceKm()
            java.lang.Double r7 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r7)
            androidx.compose.runtime.MutableLongState r8 = r2.$rideDurationSeconds$delegate
            long r8 = com.cgs.atvobserver.ui.screens.TripScreenKt.access$TripScreen$lambda$16(r8)
            java.lang.Long r8 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r8)
            java.lang.Double r9 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r4)
            r6.invoke(r7, r8, r9)
            goto L42
        Leb:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$6$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
