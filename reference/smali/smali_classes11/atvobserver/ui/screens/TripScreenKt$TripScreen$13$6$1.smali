.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->TripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "actualRemainingL",
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
.field final synthetic $activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $onBackToMenu:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onEndRide:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $remainingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

.field final synthetic $showPostRideCalibDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function4;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableLongState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableLongState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$onEndRide:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$showPostRideCalibDialog$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$remainingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .line 411
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->invoke(D)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(D)V
    .locals 7
    .param p1, "actualRemainingL"    # D

    .line 412
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$showPostRideCalibDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$26(Landroidx/compose/runtime/MutableState;Z)V

    .line 413
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$remainingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$13(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v0

    sub-double/2addr v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v0

    .line 414
    .local v0, "actualUsedL":D
    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$onEndRide:Lkotlin/jvm/functions/Function4;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v3}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-interface {v2, v3, v4, v5, v6}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$6$1;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 416
    return-void
.end method
