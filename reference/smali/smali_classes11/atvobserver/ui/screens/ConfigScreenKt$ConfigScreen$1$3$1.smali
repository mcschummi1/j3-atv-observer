.class final Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfigScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->ConfigScreen(Lcom/cgs/atvobserver/data/config/AppConfigManager;Lcom/cgs/atvobserver/domain/DaelimOdometerManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $assignedBatteryInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $configManager:Lcom/cgs/atvobserver/data/config/AppConfigManager;

.field final synthetic $configTargetVehicle$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $criticalTempInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentConfig$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onBackToMenu:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startupScreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tankCapacityInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetIdleRpmInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tempMonitoringEnabled$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $voiceEnabled$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/config/AppConfigManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/config/AppConfigManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$configManager:Lcom/cgs/atvobserver/data/config/AppConfigManager;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$tankCapacityInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$criticalTempInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$targetIdleRpmInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$configTargetVehicle$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$assignedBatteryInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$currentConfig$delegate:Landroidx/compose/runtime/State;

    iput-object p9, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$voiceEnabled$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$startupScreen$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$tempMonitoringEnabled$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 19

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$tankCapacityInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    :goto_0
    move-wide v4, v1

    .line 241
    .local v4, "finalTank":D
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$criticalTempInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$8(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide v1, 0x405cc00000000000L    # 115.0

    :goto_1
    move-wide v6, v1

    .line 242
    .local v6, "finalTemp":D
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$targetIdleRpmInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x564

    :goto_2
    move v8, v1

    .line 244
    .local v8, "finalRpm":I
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$configManager:Lcom/cgs/atvobserver/data/config/AppConfigManager;

    .line 245
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$configTargetVehicle$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    .line 246
    new-instance v10, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$assignedBatteryInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$14(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v9

    .line 246
    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;-><init>(DDILjava/lang/String;)V

    .line 244
    invoke-virtual {v1, v2, v10}, Lcom/cgs/atvobserver/data/config/AppConfigManager;->updateVehicleConfig(Lcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;)V

    .line 254
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$configManager:Lcom/cgs/atvobserver/data/config/AppConfigManager;

    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$configTargetVehicle$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cgs/atvobserver/data/config/AppConfigManager;->setActiveVehicle(Lcom/cgs/atvobserver/data/model/VehicleType;)V

    .line 256
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$configManager:Lcom/cgs/atvobserver/data/config/AppConfigManager;

    .line 257
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$currentConfig$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v9

    .line 258
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$voiceEnabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$23(Landroidx/compose/runtime/MutableState;)Z

    move-result v11

    .line 257
    nop

    .line 259
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$startupScreen$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$26(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v14

    .line 260
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$tempMonitoringEnabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$29(Landroidx/compose/runtime/MutableState;)Z

    move-result v15

    .line 257
    const/16 v17, 0x4d

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v18}, Lcom/cgs/atvobserver/data/config/AppConfig;->copy$default(Lcom/cgs/atvobserver/data/config/AppConfig;Lcom/cgs/atvobserver/data/model/VehicleType;ZZZLjava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Lcom/cgs/atvobserver/data/config/AppConfigManager;->updateConfig(Lcom/cgs/atvobserver/data/config/AppConfig;)V

    .line 263
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$3$1;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 264
    return-void
.end method
