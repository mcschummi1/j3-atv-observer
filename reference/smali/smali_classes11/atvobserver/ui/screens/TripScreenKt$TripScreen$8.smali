.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

.field final synthetic $aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

.field final synthetic $audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

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

.field final synthetic $onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tankCapacityL:D

.field final synthetic $temperatureCelsius:D


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "D",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            "D",
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
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-wide p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$tankCapacityL:D

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-wide p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$temperatureCelsius:D

    iput-object p9, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$onEndRide:Lkotlin/jvm/functions/Function4;

    iput-object p10, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iput-object p11, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iput p12, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$$changed:I

    iput p13, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$$default:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iget-wide v2, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$tankCapacityL:D

    iget-object v4, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v5, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-wide v7, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$temperatureCelsius:D

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$onEndRide:Lkotlin/jvm/functions/Function4;

    iget-object v10, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iget-object v11, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iget v12, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$$changed:I

    or-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    iget v14, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$8;->$$default:I

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v14}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->TripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
