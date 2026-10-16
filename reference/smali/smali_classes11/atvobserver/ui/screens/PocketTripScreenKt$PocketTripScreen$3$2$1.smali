.class final Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PocketTripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function4;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableLongState;)V
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
            "Landroidx/compose/runtime/MutableLongState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$onEndRide:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$onEndRide:Lkotlin/jvm/functions/Function4;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide v3, 0x3fc999999999999aL    # 0.2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-interface {v0, v1, v2, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 109
    return-void
.end method
