.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;
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
    c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$3$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xa8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $configState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $testDistance$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $testRpm$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $testSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$configState$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testDistance$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p4, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testRpm$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$configState$delegate:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testDistance$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v4, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testRpm$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 165
    .restart local v1    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$configState$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    sget-object v3, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v2, v3, :cond_1

    .line 166
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testDistance$delegate:Landroidx/compose/runtime/MutableDoubleState;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$24(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 167
    :goto_0
    nop

    .line 168
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 164
    return-object v0

    .line 169
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-virtual {v3, v4, v5, v6, v7}, Lkotlin/random/Random$Default;->nextDouble(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    add-double v7, v3, v5

    const-wide/16 v9, 0x0

    const-wide v11, 0x4050400000000000L    # 65.0

    invoke-static/range {v7 .. v12}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$18(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 170
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testRpm$delegate:Landroidx/compose/runtime/MutableIntState;

    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v4, -0x64

    const/16 v5, 0x96

    invoke-virtual {v3, v4, v5}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v3

    add-int/lit16 v3, v3, 0xc80

    const/16 v4, 0x514

    const/16 v5, 0x1d4c

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    invoke-static {v2, v3}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$21(Landroidx/compose/runtime/MutableIntState;I)V

    .line 171
    iget-object v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testDistance$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v3, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testDistance$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v3}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$23(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v3

    iget-object v5, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;->$testSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$17(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v5

    const-wide v7, 0x40ac200000000000L    # 3600.0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$24(Landroidx/compose/runtime/MutableDoubleState;D)V

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
