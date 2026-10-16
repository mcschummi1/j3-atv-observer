.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


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
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/Double;",
        "Ljava/lang/Long;",
        "Ljava/lang/Double;",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "distance",
        "",
        "duration",
        "",
        "fuelUsed",
        "vehicleType",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
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
.field final synthetic $effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/sensor/MotionSensorData;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iput-object p2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 331
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

    move-object v8, p4

    check-cast v8, Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->invoke(DJDLcom/cgs/atvobserver/data/model/VehicleType;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(DJDLcom/cgs/atvobserver/data/model/VehicleType;)V
    .locals 16
    .param p1, "distance"    # D
    .param p3, "duration"    # J
    .param p5, "fuelUsed"    # D
    .param p7, "vehicleType"    # Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object/from16 v0, p0

    const-string v1, "vehicleType"

    move-object/from16 v14, p7

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v1, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->this$0:Lcom/cgs/atvobserver/MainActivity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v15, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;

    iget-object v5, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iget-object v8, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v12, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/4 v13, 0x0

    move-object v2, v15

    move-wide/from16 v3, p3

    move-wide/from16 v6, p1

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    invoke-direct/range {v2 .. v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;-><init>(JLcom/cgs/atvobserver/MainActivity;DLcom/cgs/atvobserver/location/GpsData;DLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lkotlin/coroutines/Continuation;)V

    move-object v5, v15

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 369
    return-void
.end method
