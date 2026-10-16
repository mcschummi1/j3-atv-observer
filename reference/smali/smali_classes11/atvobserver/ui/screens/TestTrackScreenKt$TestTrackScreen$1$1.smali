.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TestTrackScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->TestTrackScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cgs.atvobserver.ui.screens.TestTrackScreenKt$TestTrackScreen$1$1"
    f = "TestTrackScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $isPullActive$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isTestRunning$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pullStartTimeMs$delegate:Landroidx/compose/runtime/MutableLongState;

.field final synthetic $pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field label:I


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/location/GpsData;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableDoubleState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$pullStartTimeMs$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$pullStartTimeMs$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v5, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;-><init>(Lcom/cgs/atvobserver/location/GpsData;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableDoubleState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 63
    iget v0, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 64
    .local v0, "this":Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v1

    .line 66
    .local v1, "spd":D
    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    cmpg-double v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v3, :cond_0

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    cmpg-double v3, v1, v6

    if-gtz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    .end local v1    # "spd":D
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$pullStartTimeMs$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$14(Landroidx/compose/runtime/MutableLongState;J)V

    .line 68
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_1

    .line 69
    .restart local v1    # "spd":D
    :cond_1
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_2

    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    .end local v1    # "spd":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$pullStartTimeMs$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$13(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 71
    .local v1, "elapsedMs":J
    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    long-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v3, v6, v7}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$17(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 72
    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$1$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3, v5}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 75
    .end local v1    # "elapsedMs":J
    :cond_2
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
