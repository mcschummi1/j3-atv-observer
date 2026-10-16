.class public final Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;
.super Ljava/lang/Object;
.source "SmartwatchSensorReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;",
        "",
        "()V",
        "ACTION_WATCH_SENSOR_EVENT",
        "",
        "_watchData",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/wear/WatchSensorData;",
        "watchData",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getWatchData",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "simulateWatchInput",
        "",
        "heartRate",
        "",
        "bezelDelta",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWatchData()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/wear/WatchSensorData;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->access$getWatchData$cp()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public final simulateWatchInput(IF)V
    .locals 8
    .param p1, "heartRate"    # I
    .param p2, "bezelDelta"    # F

    .line 32
    invoke-static {}, Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;->access$get_watchData$cp()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v7, Lcom/cgs/atvobserver/wear/WatchSensorData;

    .line 33
    nop

    .line 34
    nop

    .line 35
    nop

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 32
    const/4 v4, 0x1

    move-object v1, v7

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/cgs/atvobserver/wear/WatchSensorData;-><init>(IFZJ)V

    invoke-interface {v0, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
