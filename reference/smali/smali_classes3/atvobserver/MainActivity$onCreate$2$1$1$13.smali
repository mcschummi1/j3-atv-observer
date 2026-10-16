.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Double;",
        "Ljava/lang/Long;",
        "Ljava/lang/Double;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "distance",
        "",
        "duration",
        "",
        "fuelUsed",
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
.field final synthetic $configState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/MainActivity;",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iput-object p2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->$configState$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 247
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->invoke(DJD)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(DJD)V
    .locals 14
    .param p1, "distance"    # D
    .param p3, "duration"    # J
    .param p5, "fuelUsed"    # D

    .line 255
    move-object v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->this$0:Lcom/cgs/atvobserver/MainActivity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;

    iget-object v4, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iget-object v5, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v12, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->$configState$delegate:Landroidx/compose/runtime/State;

    const/4 v13, 0x0

    move-object v3, v1

    move-wide/from16 v6, p3

    move-wide v8, p1

    move-wide/from16 v10, p5

    invoke-direct/range {v3 .. v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;-><init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;JDDLandroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 289
    return-void
.end method
