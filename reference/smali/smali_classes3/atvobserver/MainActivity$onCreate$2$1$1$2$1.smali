.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$2$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x93
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $currentScreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-direct {v0, v1, v2, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 144
    .restart local v1    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRIP"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POCKET"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 145
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$14(Landroidx/compose/runtime/MutableLongState;J)V

    .line 146
    :goto_1
    nop

    .line 147
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 143
    return-object v0

    .line 148
    :cond_2
    :goto_2
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$13(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v2

    iget-object v4, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-static {v4, v2, v3}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$14(Landroidx/compose/runtime/MutableLongState;J)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
