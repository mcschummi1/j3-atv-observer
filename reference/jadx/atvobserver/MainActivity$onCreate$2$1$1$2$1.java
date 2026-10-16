package com.cgs.atvobserver;

import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$2$1", f = "MainActivity.kt", i = {}, l = {147}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class MainActivity$onCreate$2$1$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<String> $currentScreen$delegate;
    final /* synthetic */ MutableLongState $rideSeconds$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivity$onCreate$2$1$1$2$1(MutableState<String> mutableState, MutableLongState mutableLongState, Continuation<? super MainActivity$onCreate$2$1$1$2$1> continuation) {
        super(2, continuation);
        this.$currentScreen$delegate = mutableState;
        this.$rideSeconds$delegate = mutableLongState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivity$onCreate$2$1$1$2$1(this.$currentScreen$delegate, this.$rideSeconds$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MainActivity$onCreate$2$1$1$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x004e -> B:7:0x0051). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            switch(r1) {
                case 0: goto L16;
                case 1: goto L11;
                default: goto L9;
            }
        L9:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L11:
            r1 = r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L51
        L16:
            kotlin.ResultKt.throwOnFailure(r8)
            r1 = r7
            androidx.compose.runtime.MutableState<java.lang.String> r2 = r1.$currentScreen$delegate
            java.lang.String r2 = com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$2(r2)
            java.lang.String r3 = "TRIP"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 != 0) goto L3a
            androidx.compose.runtime.MutableState<java.lang.String> r2 = r1.$currentScreen$delegate
            java.lang.String r2 = com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$2(r2)
            java.lang.String r3 = "POCKET"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L37
            goto L3a
        L37:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        L3a:
            androidx.compose.runtime.MutableLongState r2 = r1.$rideSeconds$delegate
            r3 = 0
            com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$14(r2, r3)
        L41:
            r2 = r1
            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
            r3 = 1
            r1.label = r3
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r2 = kotlinx.coroutines.DelayKt.delay(r3, r2)
            if (r2 != r0) goto L51
            return r0
        L51:
            androidx.compose.runtime.MutableLongState r2 = r1.$rideSeconds$delegate
            long r2 = com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$13(r2)
            androidx.compose.runtime.MutableLongState r4 = r1.$rideSeconds$delegate
            r5 = 1
            long r2 = r2 + r5
            com.cgs.atvobserver.MainActivity$onCreate$2.AnonymousClass1.C00801.access$invoke$lambda$14(r4, r2)
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cgs.atvobserver.MainActivity$onCreate$2$1$1$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
