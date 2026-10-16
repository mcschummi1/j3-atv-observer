.class public final Lcom/cgs/atvobserver/data/config/AppConfigManager;
.super Ljava/lang/Object;
.source "AppConfigManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/data/config/AppConfigManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u0007H\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0007J\u0016\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/config/AppConfigManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_configState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/data/config/AppConfig;",
        "configState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getConfigState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "loadConfig",
        "resetToDefaults",
        "",
        "setActiveVehicle",
        "vehicle",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        "updateConfig",
        "newConfig",
        "updateVehicleConfig",
        "specificConfig",
        "Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;",
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
.field private final _configState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final configState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "cgs_atv_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    .line 42
    invoke-direct {p0}, Lcom/cgs/atvobserver/data/config/AppConfigManager;->loadConfig()Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 43
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->configState:Lkotlinx/coroutines/flow/StateFlow;

    .line 38
    return-void
.end method

.method private final loadConfig()Lcom/cgs/atvobserver/data/config/AppConfig;
    .locals 23

    .line 46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "active_vehicle"

    const-string v3, "ATV"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    move-object v1, v3

    .line 47
    .local v1, "vehicleStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    goto :goto_2

    :sswitch_0
    const-string v2, "DAELIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    sget-object v2, Lcom/cgs/atvobserver/data/model/VehicleType;->DAELIM:Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object v4, v2

    goto :goto_3

    .line 47
    :sswitch_1
    const-string v2, "APP_TEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 50
    :cond_2
    sget-object v2, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object v4, v2

    goto :goto_3

    .line 47
    :sswitch_2
    const-string v2, "MOTOCROSS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 48
    :cond_3
    sget-object v2, Lcom/cgs/atvobserver/data/model/VehicleType;->MOTOCROSS:Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object v4, v2

    goto :goto_3

    .line 51
    :goto_2
    sget-object v2, Lcom/cgs/atvobserver/data/model/VehicleType;->ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object v4, v2

    .line 47
    :goto_3
    nop

    .line 55
    .local v4, "vehicle":Lcom/cgs/atvobserver/data/model/VehicleType;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 56
    .local v2, "configs":Ljava/util/Map;
    invoke-static {}, Lcom/cgs/atvobserver/data/model/VehicleType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cgs/atvobserver/data/model/VehicleType;

    .line 57
    .local v5, "v":Lcom/cgs/atvobserver/data/model/VehicleType;
    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/model/VehicleType;->name()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "toLowerCase(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .local v6, "prefix":Ljava/lang/String;
    sget-object v7, Lcom/cgs/atvobserver/data/config/AppConfigManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/model/VehicleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    packed-switch v7, :pswitch_data_0

    .line 61
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    goto :goto_5

    .line 60
    :pswitch_0
    goto :goto_5

    .line 59
    :pswitch_1
    nop

    .line 58
    :goto_5
    move-wide v7, v8

    .line 63
    .local v7, "defaultTank":D
    sget-object v9, Lcom/cgs/atvobserver/data/config/AppConfigManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/model/VehicleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 67
    const-wide v9, 0x405cc00000000000L    # 115.0

    goto :goto_6

    .line 64
    :pswitch_2
    const-wide v9, 0x4060400000000000L    # 130.0

    goto :goto_6

    .line 65
    :pswitch_3
    const-wide v9, 0x4062c00000000000L    # 150.0

    goto :goto_6

    .line 66
    :pswitch_4
    const-wide v9, 0x405b800000000000L    # 110.0

    .line 63
    :goto_6
    nop

    .line 69
    .local v9, "defaultTemp":D
    sget-object v11, Lcom/cgs/atvobserver/data/config/AppConfigManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/model/VehicleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_2

    .line 72
    const-string v11, "Elektra EB10L-BP (11Ah)"

    goto :goto_7

    .line 71
    :pswitch_5
    const-string v11, "None (Kick Start)"

    goto :goto_7

    .line 70
    :pswitch_6
    const-string v11, "Fulbat 8.4Ah AGM"

    .line 69
    :goto_7
    nop

    .line 75
    .local v11, "defaultBattery":Ljava/lang/String;
    new-instance v15, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    .line 76
    iget-object v12, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_tank"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    double-to-float v14, v7

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v12

    float-to-double v13, v12

    .line 77
    iget-object v12, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v19, v1

    .end local v1    # "vehicleStr":Ljava/lang/String;
    .local v19, "vehicleStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v20, v3

    const-string v3, "_temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    double-to-float v3, v9

    invoke-interface {v12, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    move-wide/from16 v21, v7

    .end local v7    # "defaultTank":D
    .local v21, "defaultTank":D
    float-to-double v7, v1

    .line 78
    iget-object v1, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "_rpm"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x564

    invoke-interface {v1, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 79
    iget-object v1, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "_batt"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object/from16 v18, v11

    goto :goto_8

    :cond_4
    move-object/from16 v18, v1

    .line 75
    :goto_8
    move-object v12, v15

    move-object v1, v15

    move-wide v15, v7

    invoke-direct/range {v12 .. v18}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;-><init>(DDILjava/lang/String;)V

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    goto/16 :goto_4

    .line 83
    .end local v5    # "v":Lcom/cgs/atvobserver/data/model/VehicleType;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v9    # "defaultTemp":D
    .end local v11    # "defaultBattery":Ljava/lang/String;
    .end local v19    # "vehicleStr":Ljava/lang/String;
    .end local v21    # "defaultTank":D
    .restart local v1    # "vehicleStr":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v1

    .end local v1    # "vehicleStr":Ljava/lang/String;
    .restart local v19    # "vehicleStr":Ljava/lang/String;
    new-instance v1, Lcom/cgs/atvobserver/data/config/AppConfig;

    .line 84
    nop

    .line 85
    iget-object v3, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "voice_enabled"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 86
    iget-object v3, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "speak_auto_start"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 87
    iget-object v3, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "use_metric"

    invoke-interface {v3, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 88
    iget-object v3, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "startup_screen"

    const-string v10, "MAIN_MENU"

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_9

    :cond_6
    move-object v10, v3

    .line 89
    :goto_9
    iget-object v3, v0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "temp_monitoring_enabled"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 90
    nop

    .line 83
    move-object v3, v1

    move v6, v7

    move v7, v9

    move-object v8, v10

    move v9, v11

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/cgs/atvobserver/data/config/AppConfig;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;ZZZLjava/lang/String;ZLjava/util/Map;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x72bcd95d -> :sswitch_2
        0x76049010 -> :sswitch_1
        0x77be0608 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final getConfigState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->configState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final resetToDefaults()V
    .locals 12

    .line 127
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v11, Lcom/cgs/atvobserver/data/config/AppConfig;

    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/cgs/atvobserver/data/config/AppConfig;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;ZZZLjava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public final setActiveVehicle(Lcom/cgs/atvobserver/data/model/VehicleType;)V
    .locals 12
    .param p1, "vehicle"    # Lcom/cgs/atvobserver/data/model/VehicleType;

    const-string v0, "vehicle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "active_vehicle"

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/model/VehicleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/cgs/atvobserver/data/config/AppConfig;

    const/16 v10, 0x7e

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v11}, Lcom/cgs/atvobserver/data/config/AppConfig;->copy$default(Lcom/cgs/atvobserver/data/config/AppConfig;Lcom/cgs/atvobserver/data/model/VehicleType;ZZZLjava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public final updateConfig(Lcom/cgs/atvobserver/data/config/AppConfig;)V
    .locals 4
    .param p1, "newConfig"    # Lcom/cgs/atvobserver/data/config/AppConfig;

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "$this$updateConfig_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 110
    .local v1, "$i$a$-apply-AppConfigManager$updateConfig$1":I
    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/model/VehicleType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "active_vehicle"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v2, "voice_enabled"

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getVoiceAssistantEnabled()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v2, "speak_auto_start"

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getSpeakStatusAutoOnStart()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v2, "use_metric"

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getUseMetricUnits()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v2, "startup_screen"

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getStartupScreen()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v2, "temp_monitoring_enabled"

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getTemperatureMonitoringEnabled()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    nop

    .line 109
    .end local v0    # "$this$updateConfig_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "$i$a$-apply-AppConfigManager$updateConfig$1":I
    nop

    .line 118
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public final updateVehicleConfig(Lcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;)V
    .locals 13
    .param p1, "vehicle"    # Lcom/cgs/atvobserver/data/model/VehicleType;
    .param p2, "specificConfig"    # Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    const-string v0, "vehicle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specificConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/model/VehicleType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "$this$updateVehicleConfig_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$a$-apply-AppConfigManager$updateVehicleConfig$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_tank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->getTankCapacityL()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->getCriticalTempC()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_rpm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->getTargetIdleRpm()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_batt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->getAssignedBattery()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    nop

    .line 96
    .end local v1    # "$this$updateVehicleConfig_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "$i$a$-apply-AppConfigManager$updateVehicleConfig$1":I
    nop

    .line 103
    iget-object v1, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cgs/atvobserver/data/config/AppConfig;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getVehicleConfigs()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 104
    .local v1, "currentConfigs":Ljava/util/Map;
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v12, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/cgs/atvobserver/data/config/AppConfigManager;->_configState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cgs/atvobserver/data/config/AppConfig;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-static/range {v2 .. v11}, Lcom/cgs/atvobserver/data/config/AppConfig;->copy$default(Lcom/cgs/atvobserver/data/config/AppConfig;Lcom/cgs/atvobserver/data/model/VehicleType;ZZZLjava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-interface {v12, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
