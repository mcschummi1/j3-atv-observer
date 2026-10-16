.class public final Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartwatchSensorReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
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
.field public static final $stable:I = 0x0

.field public static final ACTION_WATCH_SENSOR_EVENT:Ljava/lang/String; = "com.cgs.atvobserver.WATCH_SENSOR_EVENT"

.field public static final Companion:Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;

.field private static final _watchData:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/wear/WatchSensorData;",
            ">;"
        }
    .end annotation
.end field

.field private static final watchData:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/wear/WatchSensorData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->Companion:Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;

    .line 28
    new-instance v0, Lcom/cgs/atvobserver/wear/WatchSensorData;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/cgs/atvobserver/wear/WatchSensorData;-><init>(IFZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->_watchData:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    sget-object v0, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->_watchData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->watchData:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWatchData$cp()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 23
    sget-object v0, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->watchData:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_watchData$cp()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1

    .line 23
    sget-object v0, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->_watchData:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.cgs.atvobserver.WATCH_SENSOR_EVENT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "heart_rate"

    const/16 v1, 0x48

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "hr":I
    const-string v1, "bezel_delta"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 46
    .local v1, "bezel":F
    sget-object v8, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->_watchData:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v9, Lcom/cgs/atvobserver/wear/WatchSensorData;

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 46
    const/4 v5, 0x1

    move-object v2, v9

    move v3, v0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/cgs/atvobserver/wear/WatchSensorData;-><init>(IFZJ)V

    invoke-interface {v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 53
    .end local v0    # "hr":I
    .end local v1    # "bezel":F
    :cond_1
    return-void
.end method
