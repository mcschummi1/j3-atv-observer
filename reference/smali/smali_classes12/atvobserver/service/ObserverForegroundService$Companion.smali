.class public final Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;
.super Ljava/lang/Object;
.source "ObserverForegroundService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cgs/atvobserver/service/ObserverForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;",
        "",
        "()V",
        "CHANNEL_ID",
        "",
        "NOTIFICATION_ID",
        "",
        "_isServiceRunning",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "isServiceRunning",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "startService",
        "",
        "context",
        "Landroid/content/Context;",
        "statusText",
        "stopService",
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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;-><init>()V

    return-void
.end method

.method public static synthetic startService$default(Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 61
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "Observer Active - Tracking Ride"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;->startService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isServiceRunning()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->access$isServiceRunning$cp()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public final startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusText"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cgs/atvobserver/service/ObserverForegroundService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$startService_u24lambda_u240":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$a$-apply-ObserverForegroundService$Companion$startService$intent$1":I
    const-string v3, "status_text"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    nop

    .line 62
    .end local v1    # "$this$startService_u24lambda_u240":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-ObserverForegroundService$Companion$startService$intent$1":I
    nop

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method

.method public final stopService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cgs/atvobserver/service/ObserverForegroundService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 75
    return-void
.end method
