.class public final Lcom/cgs/atvobserver/domain/DaelimOdometerManager;
.super Ljava/lang/Object;
.source "DaelimOdometerManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0007H\u0002J\"\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0011R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cgs/atvobserver/domain/DaelimOdometerManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_odometerState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/domain/DaelimOdometerState;",
        "odometerState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getOdometerState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "addGpsRideDistance",
        "",
        "gpsKm",
        "",
        "loadOdometerState",
        "recalibrateWithMechanicalReading",
        "currentMechanicalKm",
        "riddenWithoutPhoneIfKnown",
        "",
        "unrecordedMilesKm",
        "setInitialPhysicalOdometer",
        "km",
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
.field private final _odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/domain/DaelimOdometerState;",
            ">;"
        }
    .end annotation
.end field

.field private final odometerState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/domain/DaelimOdometerState;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "cgs_daelim_odometer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    .line 30
    invoke-direct {p0}, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->loadOdometerState()Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->odometerState:Lkotlinx/coroutines/flow/StateFlow;

    .line 26
    return-void
.end method

.method private final loadOdometerState()Lcom/cgs/atvobserver/domain/DaelimOdometerState;
    .locals 19

    .line 34
    move-object/from16 v0, p0

    new-instance v14, Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    .line 35
    iget-object v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "initial_physical_km"

    const v3, 0x468fe800    # 18420.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v4, v1

    .line 36
    iget-object v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "total_gps_km"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v7, v1

    .line 37
    iget-object v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "manual_adj_km"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v9, v1

    .line 38
    iget-object v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "correction_factor"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v11, v1

    .line 39
    iget-object v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "last_physical_check_km"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    .line 40
    iget-object v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "last_check_time"

    move-wide v15, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 34
    move-object v1, v14

    move-wide v2, v4

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v10, v15

    move-wide/from16 v12, v17

    invoke-direct/range {v1 .. v13}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;-><init>(DDDDDJ)V

    return-object v14
.end method

.method public static synthetic recalibrateWithMechanicalReading$default(Lcom/cgs/atvobserver/domain/DaelimOdometerManager;DZDILjava/lang/Object;)D
    .locals 6

    .line 69
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 71
    const/4 p3, 0x0

    move v3, p3

    goto :goto_0

    .line 69
    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    .line 72
    const-wide/16 p4, 0x0

    move-wide v4, p4

    goto :goto_1

    .line 69
    :cond_1
    move-wide v4, p4

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->recalibrateWithMechanicalReading(DZD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final addGpsRideDistance(D)V
    .locals 23
    .param p1, "gpsKm"    # D

    .line 58
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    .line 59
    .local v1, "current":Lcom/cgs/atvobserver/domain/DaelimOdometerState;
    invoke-virtual {v1}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getTotalGpsKmSinceSetup()D

    move-result-wide v2

    add-double v13, v2, p1

    .line 60
    .local v13, "newGpsTotal":D
    iget-object v2, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "total_gps_km"

    double-to-float v4, v13

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    iget-object v15, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v16, 0x3d

    const/16 v17, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v18, 0x0

    move-object v2, v1

    move-wide v5, v13

    move-wide/from16 v20, v13

    .end local v13    # "newGpsTotal":D
    .local v20, "newGpsTotal":D
    move-wide/from16 v13, v18

    move-object/from16 v22, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v2 .. v16}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->copy$default(Lcom/cgs/atvobserver/domain/DaelimOdometerState;DDDDDJILjava/lang/Object;)Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final getOdometerState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/domain/DaelimOdometerState;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->odometerState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final recalibrateWithMechanicalReading(DZD)D
    .locals 18
    .param p1, "currentMechanicalKm"    # D
    .param p3, "riddenWithoutPhoneIfKnown"    # Z
    .param p4, "unrecordedMilesKm"    # D

    .line 74
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    .line 75
    .local v3, "current":Lcom/cgs/atvobserver/domain/DaelimOdometerState;
    invoke-virtual {v3}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getLastPhysicalCheckKm()D

    move-result-wide v4

    sub-double v4, v1, v4

    .line 77
    .local v4, "physicalDeltaKm":D
    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    invoke-virtual {v3}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getDistanceCorrectionFactor()D

    move-result-wide v6

    return-wide v6

    .line 79
    :cond_0
    if-eqz p3, :cond_1

    cmpl-double v6, p4, v6

    if-lez v6, :cond_1

    .line 81
    invoke-virtual {v3}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getManualAdjustmentKm()D

    move-result-wide v6

    add-double v6, v6, p4

    .line 82
    .local v6, "newAdj":D
    iget-object v8, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "manual_adj_km"

    double-to-float v10, v6

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .end local v6    # "newAdj":D
    goto :goto_0

    .line 83
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v3}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getTotalGpsKmSinceSetup()D

    move-result-wide v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 85
    invoke-virtual {v3}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getTotalGpsKmSinceSetup()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getDistanceCorrectionFactor()D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double v6, v4, v6

    .line 87
    .local v6, "rawFactor":D
    invoke-virtual {v3}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getDistanceCorrectionFactor()D

    move-result-wide v8

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    .line 88
    .local v8, "smoothFactor":D
    const-wide v14, 0x3feb333333333333L    # 0.85

    const-wide v16, 0x3ff2666666666666L    # 1.15

    move-wide v12, v8

    invoke-static/range {v12 .. v17}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v10

    .line 90
    .local v10, "clampedFactor":D
    iget-object v12, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "correction_factor"

    double-to-float v14, v10

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    .end local v6    # "rawFactor":D
    .end local v8    # "smoothFactor":D
    .end local v10    # "clampedFactor":D
    :cond_2
    :goto_0
    iget-object v6, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .local v6, "$this$recalibrateWithMechanicalReading_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    const/4 v7, 0x0

    .line 94
    .local v7, "$i$a$-apply-DaelimOdometerManager$recalibrateWithMechanicalReading$1":I
    const-string v8, "last_physical_check_km"

    double-to-float v9, v1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v8, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    nop

    .line 93
    .end local v6    # "$this$recalibrateWithMechanicalReading_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "$i$a$-apply-DaelimOdometerManager$recalibrateWithMechanicalReading$1":I
    nop

    .line 99
    iget-object v6, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-direct/range {p0 .. p0}, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->loadOdometerState()Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 100
    iget-object v6, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    invoke-virtual {v6}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->getDistanceCorrectionFactor()D

    move-result-wide v6

    return-wide v6
.end method

.method public final setInitialPhysicalOdometer(D)V
    .locals 5
    .param p1, "km"    # D

    .line 45
    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "$this$setInitialPhysicalOdometer_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-apply-DaelimOdometerManager$setInitialPhysicalOdometer$1":I
    const-string v2, "initial_physical_km"

    double-to-float v3, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v2, "last_physical_check_km"

    double-to-float v3, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string v2, "total_gps_km"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 49
    const-string v2, "manual_adj_km"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 50
    const-string v2, "correction_factor"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string v2, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    nop

    .line 45
    .end local v0    # "$this$setInitialPhysicalOdometer_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "$i$a$-apply-DaelimOdometerManager$setInitialPhysicalOdometer$1":I
    nop

    .line 54
    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->_odometerState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-direct {p0}, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->loadOdometerState()Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
