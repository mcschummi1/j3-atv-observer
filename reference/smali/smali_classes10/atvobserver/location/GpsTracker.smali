.class public final Lcom/cgs/atvobserver/location/GpsTracker;
.super Ljava/lang/Object;
.source "GpsTracker.kt"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J$\u0010\u001b\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0017J\u0006\u0010 \u001a\u00020\u0015J\u0008\u0010!\u001a\u00020\u0015H\u0007J\u0006\u0010\"\u001a\u00020\u0015R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cgs/atvobserver/location/GpsTracker;",
        "Landroid/location/LocationListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_gpsData",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/location/GpsData;",
        "gpsData",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getGpsData",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "lastLocation",
        "Landroid/location/Location;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "maxSpeedMps",
        "",
        "totalDistanceMeters",
        "",
        "onLocationChanged",
        "",
        "location",
        "onProviderDisabled",
        "provider",
        "",
        "onProviderEnabled",
        "onStatusChanged",
        "status",
        "",
        "extras",
        "Landroid/os/Bundle;",
        "resetTrip",
        "startTracking",
        "stopTracking",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final _gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/location/GpsData;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final gpsData:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/location/GpsData;",
            ">;"
        }
    .end annotation
.end field

.field private lastLocation:Landroid/location/Location;

.field private final locationManager:Landroid/location/LocationManager;

.field private maxSpeedMps:F

.field private totalDistanceMeters:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/location/GpsTracker;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->context:Landroid/content/Context;

    .line 26
    iget-object v2, v0, Lcom/cgs/atvobserver/location/GpsTracker;->context:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, v0, Lcom/cgs/atvobserver/location/GpsTracker;->locationManager:Landroid/location/LocationManager;

    .line 28
    new-instance v2, Lcom/cgs/atvobserver/location/GpsData;

    const/16 v16, 0x7f

    const/16 v17, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v17}, Lcom/cgs/atvobserver/location/GpsData;-><init>(DDDZDDFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    iget-object v2, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/location/GpsTracker;->gpsData:Lkotlinx/coroutines/flow/StateFlow;

    .line 24
    return-void
.end method


# virtual methods
.method public final getGpsData()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/location/GpsData;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/cgs/atvobserver/location/GpsTracker;->gpsData:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 21
    .param p1, "location"    # Landroid/location/Location;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "location"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    .line 71
    .local v2, "rawSpeedMps":F
    float-to-double v3, v2

    const-wide v5, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v3, v5

    .line 73
    .local v3, "rawSpeedKmh":D
    const-wide v7, 0x4055400000000000L    # 85.0

    cmpl-double v7, v3, v7

    if-lez v7, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    iget v7, v0, Lcom/cgs/atvobserver/location/GpsTracker;->maxSpeedMps:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1

    .line 79
    iput v2, v0, Lcom/cgs/atvobserver/location/GpsTracker;->maxSpeedMps:F

    .line 82
    :cond_1
    iget-object v7, v0, Lcom/cgs/atvobserver/location/GpsTracker;->lastLocation:Landroid/location/Location;

    if-eqz v7, :cond_3

    .local v7, "prev":Landroid/location/Location;
    const/4 v8, 0x0

    .line 83
    .local v8, "$i$a$-let-GpsTracker$onLocationChanged$1":I
    invoke-virtual {v7, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v9

    .line 84
    .local v9, "dist":F
    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    const/high16 v11, 0x41c80000    # 25.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 85
    iget-wide v10, v0, Lcom/cgs/atvobserver/location/GpsTracker;->totalDistanceMeters:D

    float-to-double v12, v9

    add-double/2addr v10, v12

    iput-wide v10, v0, Lcom/cgs/atvobserver/location/GpsTracker;->totalDistanceMeters:D

    .line 87
    :cond_2
    nop

    .line 82
    .end local v7    # "prev":Landroid/location/Location;
    .end local v8    # "$i$a$-let-GpsTracker$onLocationChanged$1":I
    .end local v9    # "dist":F
    nop

    .line 88
    :cond_3
    iput-object v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->lastLocation:Landroid/location/Location;

    .line 90
    iget-object v15, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/cgs/atvobserver/location/GpsData;

    .line 91
    nop

    .line 92
    iget v7, v0, Lcom/cgs/atvobserver/location/GpsTracker;->maxSpeedMps:F

    float-to-double v7, v7

    mul-double v10, v7, v5

    .line 93
    iget-wide v5, v0, Lcom/cgs/atvobserver/location/GpsTracker;->totalDistanceMeters:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double v12, v5, v7

    .line 94
    nop

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v17

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v19

    .line 90
    const/16 v16, 0x1

    move-object v7, v14

    move-wide v8, v3

    move-object v0, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move-wide v15, v5

    invoke-direct/range {v7 .. v19}, Lcom/cgs/atvobserver/location/GpsData;-><init>(DDDZDDF)V

    move-object/from16 v5, v20

    invoke-interface {v5, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 19
    .param p1, "provider"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "provider"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/cgs/atvobserver/location/GpsData;

    const/16 v17, 0x77

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Lcom/cgs/atvobserver/location/GpsData;->copy$default(Lcom/cgs/atvobserver/location/GpsData;DDDZDDFILjava/lang/Object;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 19
    .param p1, "provider"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "provider"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/cgs/atvobserver/location/GpsData;

    const/16 v17, 0x77

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Lcom/cgs/atvobserver/location/GpsData;->copy$default(Lcom/cgs/atvobserver/location/GpsData;DDDZDDFILjava/lang/Object;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in API 29"
    .end annotation

    .line 110
    return-void
.end method

.method public final resetTrip()V
    .locals 19

    .line 62
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->lastLocation:Landroid/location/Location;

    .line 63
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->totalDistanceMeters:D

    .line 64
    const/4 v1, 0x0

    iput v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->maxSpeedMps:F

    .line 65
    iget-object v1, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v15, Lcom/cgs/atvobserver/location/GpsData;

    iget-object v2, v0, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable()Z

    move-result v9

    const/16 v16, 0x77

    const/16 v17, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v2, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/cgs/atvobserver/location/GpsData;-><init>(DDDZDDFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final startTracking()V
    .locals 19

    .line 37
    move-object/from16 v1, p0

    .line 38
    :try_start_0
    iget-object v0, v1, Lcom/cgs/atvobserver/location/GpsTracker;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 39
    .local v0, "isGpsEnabled":Z
    if-eqz v0, :cond_0

    .line 40
    iget-object v2, v1, Lcom/cgs/atvobserver/location/GpsTracker;->locationManager:Landroid/location/LocationManager;

    .line 41
    const-string v3, "gps"

    .line 42
    nop

    .line 43
    nop

    .line 44
    move-object v7, v1

    check-cast v7, Landroid/location/LocationListener;

    .line 40
    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 46
    iget-object v2, v1, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/cgs/atvobserver/location/GpsData;

    const/16 v17, 0x77

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Lcom/cgs/atvobserver/location/GpsData;->copy$default(Lcom/cgs/atvobserver/location/GpsData;DDDZDDFILjava/lang/Object;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, v1, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/cgs/atvobserver/location/GpsData;

    const/16 v17, 0x77

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Lcom/cgs/atvobserver/location/GpsData;->copy$default(Lcom/cgs/atvobserver/location/GpsData;DDDZDDFILjava/lang/Object;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "isGpsEnabled":Z
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/cgs/atvobserver/location/GpsTracker;->_gpsData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/cgs/atvobserver/location/GpsData;

    const/16 v17, 0x77

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Lcom/cgs/atvobserver/location/GpsData;->copy$default(Lcom/cgs/atvobserver/location/GpsData;DDDZDDFILjava/lang/Object;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public final stopTracking()V
    .locals 2

    .line 56
    nop

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/cgs/atvobserver/location/GpsTracker;->locationManager:Landroid/location/LocationManager;

    move-object v1, p0

    check-cast v1, Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :goto_0
    return-void
.end method
