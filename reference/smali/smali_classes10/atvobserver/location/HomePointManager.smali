.class public final Lcom/cgs/atvobserver/location/HomePointManager;
.super Ljava/lang/Object;
.source "HomePointManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0007H\u0002J\u0016\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cgs/atvobserver/location/HomePointManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_homePoint",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/location/HomePoint;",
        "homePoint",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getHomePoint",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "calculateGuidance",
        "Lcom/cgs/atvobserver/location/HomeGuidance;",
        "currentLat",
        "",
        "currentLon",
        "clearHomePoint",
        "",
        "loadHomePoint",
        "setHomePoint",
        "latitude",
        "longitude",
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
.field private final _homePoint:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/location/HomePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final homePoint:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/location/HomePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/location/HomePointManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "cgs_home_point"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/location/HomePointManager;->prefs:Landroid/content/SharedPreferences;

    .line 31
    invoke-direct {p0}, Lcom/cgs/atvobserver/location/HomePointManager;->loadHomePoint()Lcom/cgs/atvobserver/location/HomePoint;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/location/HomePointManager;->_homePoint:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 32
    iget-object v0, p0, Lcom/cgs/atvobserver/location/HomePointManager;->_homePoint:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/location/HomePointManager;->homePoint:Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    return-void
.end method

.method private final loadHomePoint()Lcom/cgs/atvobserver/location/HomePoint;
    .locals 17

    .line 35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/location/HomePointManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "is_set"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    .local v1, "isSet":Z
    iget-object v2, v0, Lcom/cgs/atvobserver/location/HomePointManager;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "lat"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    .line 37
    .local v2, "lat":D
    iget-object v5, v0, Lcom/cgs/atvobserver/location/HomePointManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "lon"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    float-to-double v12, v4

    .line 38
    .local v12, "lon":D
    iget-object v4, v0, Lcom/cgs/atvobserver/location/HomePointManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 39
    .local v14, "time":J
    new-instance v16, Lcom/cgs/atvobserver/location/HomePoint;

    move-object/from16 v4, v16

    move-wide v5, v2

    move-wide v7, v12

    move v9, v1

    move-wide v10, v14

    invoke-direct/range {v4 .. v11}, Lcom/cgs/atvobserver/location/HomePoint;-><init>(DDZJ)V

    return-object v16
.end method


# virtual methods
.method public final calculateGuidance(DD)Lcom/cgs/atvobserver/location/HomeGuidance;
    .locals 16
    .param p1, "currentLat"    # D
    .param p3, "currentLon"    # D

    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/location/HomePointManager;->_homePoint:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cgs/atvobserver/location/HomePoint;

    .line 61
    .local v1, "home":Lcom/cgs/atvobserver/location/HomePoint;
    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/HomePoint;->isSet()Z

    move-result v2

    if-eqz v2, :cond_11

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v4, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    move v4, v14

    :goto_0
    if-eqz v4, :cond_2

    cmpg-double v2, p3, v2

    if-nez v2, :cond_1

    move v2, v13

    goto :goto_1

    :cond_1
    move v2, v14

    :goto_1
    if-eqz v2, :cond_2

    goto/16 :goto_a

    .line 65
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 66
    .local v2, "results":[F
    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/HomePoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/HomePoint;->getLongitude()D

    move-result-wide v10

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v12, v2

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 68
    aget v3, v2, v14

    .line 69
    .local v3, "distanceMeters":F
    aget v4, v2, v13

    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v4, v5

    rem-float/2addr v4, v5

    .line 71
    .local v4, "bearing":F
    nop

    .line 72
    const/high16 v5, 0x41b40000    # 22.5f

    cmpg-float v5, v5, v4

    const/high16 v6, 0x42870000    # 67.5f

    if-gtz v5, :cond_3

    cmpg-float v5, v4, v6

    if-gtz v5, :cond_3

    move v5, v13

    goto :goto_2

    :cond_3
    move v5, v14

    :goto_2
    if-eqz v5, :cond_4

    const-string v5, "NE"

    goto/16 :goto_9

    .line 73
    :cond_4
    cmpg-float v5, v6, v4

    const/high16 v6, 0x42e10000    # 112.5f

    if-gtz v5, :cond_5

    cmpg-float v5, v4, v6

    if-gtz v5, :cond_5

    move v5, v13

    goto :goto_3

    :cond_5
    move v5, v14

    :goto_3
    if-eqz v5, :cond_6

    const-string v5, "E"

    goto/16 :goto_9

    .line 74
    :cond_6
    cmpg-float v5, v6, v4

    const v6, 0x431d8000    # 157.5f

    if-gtz v5, :cond_7

    cmpg-float v5, v4, v6

    if-gtz v5, :cond_7

    move v5, v13

    goto :goto_4

    :cond_7
    move v5, v14

    :goto_4
    if-eqz v5, :cond_8

    const-string v5, "SE"

    goto :goto_9

    .line 75
    :cond_8
    cmpg-float v5, v6, v4

    const v6, 0x434a8000    # 202.5f

    if-gtz v5, :cond_9

    cmpg-float v5, v4, v6

    if-gtz v5, :cond_9

    move v5, v13

    goto :goto_5

    :cond_9
    move v5, v14

    :goto_5
    if-eqz v5, :cond_a

    const-string v5, "S"

    goto :goto_9

    .line 76
    :cond_a
    cmpg-float v5, v6, v4

    const v6, 0x43778000    # 247.5f

    if-gtz v5, :cond_b

    cmpg-float v5, v4, v6

    if-gtz v5, :cond_b

    move v5, v13

    goto :goto_6

    :cond_b
    move v5, v14

    :goto_6
    if-eqz v5, :cond_c

    const-string v5, "SW"

    goto :goto_9

    .line 77
    :cond_c
    cmpg-float v5, v6, v4

    if-gtz v5, :cond_d

    const v5, 0x43924000    # 292.5f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_d

    move v5, v13

    goto :goto_7

    :cond_d
    move v5, v14

    :goto_7
    if-eqz v5, :cond_e

    const-string v5, "W"

    goto :goto_9

    .line 78
    :cond_e
    cmpg-float v5, v6, v4

    if-gtz v5, :cond_f

    const v5, 0x43a8c000    # 337.5f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_f

    goto :goto_8

    :cond_f
    move v13, v14

    :goto_8
    if-eqz v13, :cond_10

    const-string v5, "NW"

    goto :goto_9

    .line 79
    :cond_10
    const-string v5, "N"

    .line 71
    :goto_9
    nop

    .line 82
    .local v5, "cardinal":Ljava/lang/String;
    new-instance v6, Lcom/cgs/atvobserver/location/HomeGuidance;

    .line 83
    float-to-double v7, v3

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    .line 84
    nop

    .line 85
    nop

    .line 82
    invoke-direct {v6, v7, v8, v4, v5}, Lcom/cgs/atvobserver/location/HomeGuidance;-><init>(DFLjava/lang/String;)V

    return-object v6

    .line 62
    .end local v2    # "results":[F
    .end local v3    # "distanceMeters":F
    .end local v4    # "bearing":F
    .end local v5    # "cardinal":Ljava/lang/String;
    :cond_11
    :goto_a
    new-instance v2, Lcom/cgs/atvobserver/location/HomeGuidance;

    const/4 v14, 0x7

    const/4 v15, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/cgs/atvobserver/location/HomeGuidance;-><init>(DFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final clearHomePoint()V
    .locals 12

    .line 55
    iget-object v0, p0, Lcom/cgs/atvobserver/location/HomePointManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    iget-object v0, p0, Lcom/cgs/atvobserver/location/HomePointManager;->_homePoint:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v11, Lcom/cgs/atvobserver/location/HomePoint;

    const/16 v9, 0xf

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/cgs/atvobserver/location/HomePoint;-><init>(DDZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public final getHomePoint()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/location/HomePoint;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/cgs/atvobserver/location/HomePointManager;->homePoint:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final setHomePoint(DD)V
    .locals 16
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 43
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 44
    .local v9, "now":J
    iget-object v1, v0, Lcom/cgs/atvobserver/location/HomePointManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "$this$setHomePoint_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-apply-HomePointManager$setHomePoint$1":I
    const-string v3, "is_set"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v3, "lat"

    move-wide/from16 v11, p1

    double-to-float v4, v11

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v3, "lon"

    move-wide/from16 v13, p3

    double-to-float v4, v13

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string v3, "time"

    invoke-interface {v1, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    nop

    .line 44
    .end local v1    # "$this$setHomePoint_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "$i$a$-apply-HomePointManager$setHomePoint$1":I
    nop

    .line 51
    iget-object v15, v0, Lcom/cgs/atvobserver/location/HomePointManager;->_homePoint:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v7, Lcom/cgs/atvobserver/location/HomePoint;

    const/4 v6, 0x1

    move-object v1, v7

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v0, v7

    move-wide v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/cgs/atvobserver/location/HomePoint;-><init>(DDZJ)V

    invoke-interface {v15, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
