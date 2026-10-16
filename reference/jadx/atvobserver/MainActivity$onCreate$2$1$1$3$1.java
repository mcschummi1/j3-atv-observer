package com.cgs.atvobserver;

import androidx.compose.runtime.MutableDoubleState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.State;
import com.cgs.atvobserver.data.config.AppConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$3$1", f = "MainActivity.kt", i = {}, l = {168}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class MainActivity$onCreate$2$1$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<AppConfig> $configState$delegate;
    final /* synthetic */ MutableDoubleState $testDistance$delegate;
    final /* synthetic */ MutableIntState $testRpm$delegate;
    final /* synthetic */ MutableDoubleState $testSpeed$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivity$onCreate$2$1$1$3$1(State<AppConfig> state, MutableDoubleState mutableDoubleState, MutableDoubleState mutableDoubleState2, MutableIntState mutableIntState, Continuation<? super MainActivity$onCreate$2$1$1$3$1> continuation) {
        super(2, continuation);
        this.$configState$delegate = state;
        this.$testDistance$delegate = mutableDoubleState;
        this.$testSpeed$delegate = mutableDoubleState2;
        this.$testRpm$delegate = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivity$onCreate$2$1$1$3$1(this.$configState$delegate, this.$testDistance$delegate, this.$testSpeed$delegate, this.$testRpm$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MainActivity$onCreate$2$1$1$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003e A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x003c -> B:7:0x003f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r13.label
            switch(r1) {
                case 0: goto L16;
                case 1: goto L11;
                default: goto L9;
            }
        L9:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L11:
            r1 = r13
            kotlin.ResultKt.throwOnFailure(r14)
            goto L3f
        L16:
            kotlin.ResultKt.throwOnFailure(r14)
            r1 = r13
            androidx.compose.runtime.State<com.cgs.atvobserver.data.config.AppConfig> r2 = r1.$configState$delegate
            com.cgs.atvobserver.data.config.AppConfig r2 = com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$0(r2)
            com.cgs.atvobserver.data.model.VehicleType r2 = r2.getActiveVehicle()
            com.cgs.atvobserver.data.model.VehicleType r3 = com.cgs.atvobserver.data.model.VehicleType.APP_TEST
            if (r2 != r3) goto L8f
            androidx.compose.runtime.MutableDoubleState r2 = r1.$testDistance$delegate
            r3 = 0
            com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$24(r2, r3)
        L2f:
            r2 = r1
            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
            r3 = 1
            r1.label = r3
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r2 = kotlinx.coroutines.DelayKt.delay(r3, r2)
            if (r2 != r0) goto L3f
            return r0
        L3f:
            androidx.compose.runtime.MutableDoubleState r2 = r1.$testSpeed$delegate
            kotlin.random.Random$Default r3 = kotlin.random.Random.INSTANCE
            r4 = -4611686018427387904(0xc000000000000000, double:-2.0)
            r6 = 4613937818241073152(0x4008000000000000, double:3.0)
            double r3 = r3.nextDouble(r4, r6)
            r5 = 4629700416936869888(0x4040000000000000, double:32.0)
            double r7 = r3 + r5
            r9 = 0
            r11 = 4634274385308418048(0x4050400000000000, double:65.0)
            double r3 = kotlin.ranges.RangesKt.coerceIn(r7, r9, r11)
            com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$18(r2, r3)
            androidx.compose.runtime.MutableIntState r2 = r1.$testRpm$delegate
            kotlin.random.Random$Default r3 = kotlin.random.Random.INSTANCE
            r4 = -100
            r5 = 150(0x96, float:2.1E-43)
            int r3 = r3.nextInt(r4, r5)
            int r3 = r3 + 3200
            r4 = 1300(0x514, float:1.822E-42)
            r5 = 7500(0x1d4c, float:1.051E-41)
            int r3 = kotlin.ranges.RangesKt.coerceIn(r3, r4, r5)
            com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$21(r2, r3)
            androidx.compose.runtime.MutableDoubleState r2 = r1.$testDistance$delegate
            androidx.compose.runtime.MutableDoubleState r3 = r1.$testDistance$delegate
            double r3 = com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$23(r3)
            androidx.compose.runtime.MutableDoubleState r5 = r1.$testSpeed$delegate
            double r5 = com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$17(r5)
            r7 = 4660134898793709568(0x40ac200000000000, double:3600.0)
            double r5 = r5 / r7
            double r3 = r3 + r5
            com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$24(r2, r3)
            goto L2f
        L8f:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cgs.atvobserver.MainActivity$onCreate$2$1$1$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
