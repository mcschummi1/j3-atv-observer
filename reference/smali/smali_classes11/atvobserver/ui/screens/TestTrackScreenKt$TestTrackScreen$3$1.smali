.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;
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
    c = "com.cgs.atvobserver.ui.screens.TestTrackScreenKt$TestTrackScreen$3$1"
    f = "TestTrackScreen.kt"
    i = {}
    l = {
        0x60
    }
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

.field final synthetic $passCount$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

.field label:I


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/location/GpsData;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v5, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v6, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v7, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v8, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;-><init>(Lcom/cgs/atvobserver/location/GpsData;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/coroutines/Continuation;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 88
    .restart local v1    # "this":Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$5(Landroidx/compose/runtime/MutableLongState;J)V

    .line 90
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$8(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 91
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$11(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 92
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$23(Landroidx/compose/runtime/MutableIntState;I)V

    .line 93
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$17(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 94
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2, v5}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 95
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 87
    return-object v0

    .line 97
    :cond_1
    :goto_1
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$4(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v2

    iget-object v4, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-static {v4, v2, v3}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$5(Landroidx/compose/runtime/MutableLongState;J)V

    .line 98
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v3, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v3}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$8(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 99
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v2

    iget-object v4, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$10(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 100
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v3, v1, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$3$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v3}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$11(Landroidx/compose/runtime/MutableDoubleState;D)V

    goto :goto_0

    .line 104
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
