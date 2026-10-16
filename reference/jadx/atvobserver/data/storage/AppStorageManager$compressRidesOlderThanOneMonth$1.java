package com.cgs.atvobserver.data.storage;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: AppStorageManager.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.data.storage.AppStorageManager", f = "AppStorageManager.kt", i = {0, 0, 1, 1, 1}, l = {68, 75}, m = "compressRidesOlderThanOneMonth", n = {"this", "rideDao", "this", "rideDao", "count"}, s = {"L$0", "L$1", "L$0", "L$1", "I$0"})
/* loaded from: classes11.dex */
final class AppStorageManager$compressRidesOlderThanOneMonth$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AppStorageManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppStorageManager$compressRidesOlderThanOneMonth$1(AppStorageManager appStorageManager, Continuation<? super AppStorageManager$compressRidesOlderThanOneMonth$1> continuation) {
        super(continuation);
        this.this$0 = appStorageManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.compressRidesOlderThanOneMonth(null, this);
    }
}
