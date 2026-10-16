.class public final Lcom/cgs/atvobserver/thermal/ThermalGuardian;
.super Ljava/lang/Object;
.source "ThermalGuardian.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cgs/atvobserver/thermal/ThermalGuardian;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_thermalStatus",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/thermal/ThermalStatus;",
        "thermalStatus",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getThermalStatus",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "checkThermalStatus",
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
.field private final _thermalStatus:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/thermal/ThermalStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final thermalStatus:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/thermal/ThermalStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->context:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->checkThermalStatus()Lcom/cgs/atvobserver/thermal/ThermalStatus;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->_thermalStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 32
    iget-object v0, p0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->_thermalStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->thermalStatus:Lkotlinx/coroutines/flow/StateFlow;

    .line 29
    return-void
.end method


# virtual methods
.method public final checkThermalStatus()Lcom/cgs/atvobserver/thermal/ThermalStatus;
    .locals 7

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, "batteryIntent":Landroid/content/Intent;
    const/16 v2, 0xfa

    if-eqz v1, :cond_0

    const-string v3, "temperature"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 39
    .local v2, "tempTenthsCelsius":I
    :cond_0
    int-to-float v3, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 41
    .local v3, "tempCelsius":F
    nop

    .line 42
    const/high16 v4, 0x42400000    # 48.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    sget-object v4, Lcom/cgs/atvobserver/thermal/ThermalState;->CRITICAL:Lcom/cgs/atvobserver/thermal/ThermalState;

    goto :goto_0

    .line 43
    :cond_1
    const/high16 v4, 0x42280000    # 42.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    sget-object v4, Lcom/cgs/atvobserver/thermal/ThermalState;->HOT:Lcom/cgs/atvobserver/thermal/ThermalState;

    goto :goto_0

    .line 44
    :cond_2
    const/high16 v4, 0x42140000    # 37.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3

    sget-object v4, Lcom/cgs/atvobserver/thermal/ThermalState;->WARM:Lcom/cgs/atvobserver/thermal/ThermalState;

    goto :goto_0

    .line 45
    :cond_3
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    sget-object v4, Lcom/cgs/atvobserver/thermal/ThermalState;->COOL:Lcom/cgs/atvobserver/thermal/ThermalState;

    goto :goto_0

    .line 46
    :cond_4
    sget-object v4, Lcom/cgs/atvobserver/thermal/ThermalState;->NORMAL:Lcom/cgs/atvobserver/thermal/ThermalState;

    .line 41
    :goto_0
    nop

    .line 49
    .local v4, "state":Lcom/cgs/atvobserver/thermal/ThermalState;
    new-instance v5, Lcom/cgs/atvobserver/thermal/ThermalStatus;

    invoke-direct {v5, v3, v4}, Lcom/cgs/atvobserver/thermal/ThermalStatus;-><init>(FLcom/cgs/atvobserver/thermal/ThermalState;)V

    .line 50
    .local v5, "status":Lcom/cgs/atvobserver/thermal/ThermalStatus;
    iget-object v6, p0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->_thermalStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 51
    return-object v5
.end method

.method public final getThermalStatus()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/thermal/ThermalStatus;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/cgs/atvobserver/thermal/ThermalGuardian;->thermalStatus:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
