.class final Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RideHistoryScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt;->RideHistoryScreen(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $rideDao:Lcom/cgs/atvobserver/data/db/RideDao;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/cgs/atvobserver/data/db/RideDao;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2;->$rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2;->$rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$2$1;-><init>(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 128
    return-void
.end method
