.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;
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
    c = "com.cgs.atvobserver.ui.screens.TestTrackScreenKt$TestTrackScreen$2$1"
    f = "TestTrackScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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

.field final synthetic $sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 78
    iget v0, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 79
    .local v0, "this":Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$isTestRunning$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$7(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 80
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$7(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 81
    .local v1, "estimatedPasses":I
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$22(Landroidx/compose/runtime/MutableIntState;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 82
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$2$1;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {v2, v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$23(Landroidx/compose/runtime/MutableIntState;I)V

    .line 85
    .end local v1    # "estimatedPasses":I
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
