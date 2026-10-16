.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->WeatherSelectionStep(Lcom/cgs/atvobserver/data/model/VehicleType;Landroid/content/Context;DDLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $gpsLat:D

.field final synthetic $gpsLon:D

.field final synthetic $onWeatherSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/model/VehicleType;Landroid/content/Context;DDLkotlin/jvm/functions/Function1;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Landroid/content/Context;",
            "DD",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$gpsLat:D

    iput-wide p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$gpsLon:D

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$onWeatherSelected:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$$changed:I

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

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$gpsLat:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$gpsLon:D

    iget-object v6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$onWeatherSelected:Lkotlin/jvm/functions/Function1;

    iget v7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$3;->$$changed:I

    or-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$WeatherSelectionStep(Lcom/cgs/atvobserver/data/model/VehicleType;Landroid/content/Context;DDLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
