.class final Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "RideHistoryScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRideHistoryScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RideHistoryScreen.kt\ncom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3\n+ 2 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,255:1\n139#2,12:256\n*S KotlinDebug\n*F\n+ 1 RideHistoryScreen.kt\ncom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3\n*L\n153#1:256,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
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

.field final synthetic $filteredRides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rideDao:Lcom/cgs/atvobserver/data/db/RideDao;


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lcom/cgs/atvobserver/data/db/RideDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/cgs/atvobserver/data/db/RideDao;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;->$filteredRides:Ljava/util/List;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;->$rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 146
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, v0}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 10
    .param p1, "$this$LazyColumn"    # Landroidx/compose/foundation/lazy/LazyListScope;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;->$filteredRides:Ljava/util/List;

    .local v0, "items$iv":Ljava/util/List;
    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3;->$rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    move-object v3, p1

    .line 256
    .local v3, "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    nop

    .line 258
    const/4 v4, 0x0

    .line 256
    .local v4, "key$iv":Lkotlin/jvm/functions/Function1;
    nop

    .line 259
    sget-object v5, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$1;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 256
    .local v5, "contentType$iv":Lkotlin/jvm/functions/Function1;
    const/4 v6, 0x0

    .line 261
    .local v6, "$i$f$items":I
    nop

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 263
    nop

    .line 261
    new-instance v8, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$3;

    invoke-direct {v8, v5, v0}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 265
    new-instance v9, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$4;

    invoke-direct {v9, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$3$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lcom/cgs/atvobserver/data/db/RideDao;)V

    const v1, -0x25b7f321

    const/4 v2, 0x1

    invoke-static {v1, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function4;

    .line 261
    const/4 v2, 0x0

    invoke-interface {v3, v7, v2, v8, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 267
    nop

    .line 163
    .end local v0    # "items$iv":Ljava/util/List;
    .end local v3    # "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    .end local v4    # "key$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "contentType$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "$i$f$items":I
    return-void
.end method
