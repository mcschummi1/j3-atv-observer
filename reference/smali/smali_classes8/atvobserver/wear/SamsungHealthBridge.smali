.class public final Lcom/cgs/atvobserver/wear/SamsungHealthBridge;
.super Ljava/lang/Object;
.source "SamsungHealthBridge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cgs/atvobserver/wear/SamsungHealthBridge;",
        "",
        "()V",
        "startSamsungHealthWorkoutSession",
        "",
        "context",
        "Landroid/content/Context;",
        "vehicleName",
        "",
        "stopSamsungHealthWorkoutSession",
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

.field public static final INSTANCE:Lcom/cgs/atvobserver/wear/SamsungHealthBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/wear/SamsungHealthBridge;

    invoke-direct {v0}, Lcom/cgs/atvobserver/wear/SamsungHealthBridge;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/wear/SamsungHealthBridge;->INSTANCE:Lcom/cgs/atvobserver/wear/SamsungHealthBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startSamsungHealthWorkoutSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicleName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vehicleName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    nop

    .line 18
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.shealth.ACTION_TRACKER_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$startSamsungHealthWorkoutSession_u24lambda_u240":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 19
    .local v2, "$i$a$-apply-SamsungHealthBridge$startSamsungHealthWorkoutSession$intent$1":I
    const-string v3, "com.sec.android.app.shealth.tracker.EXERCISE_TYPE"

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const-string v3, "com.sec.android.app.shealth.tracker.TITLE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CGS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Observer Ride"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    nop

    .line 18
    .end local v1    # "$this$startSamsungHealthWorkoutSession_u24lambda_u240":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-SamsungHealthBridge$startSamsungHealthWorkoutSession$intent$1":I
    nop

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 27
    :goto_0
    return-void
.end method

.method public final stopSamsungHealthWorkoutSession(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.shealth.ACTION_TRACKER_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$stopSamsungHealthWorkoutSession_u24lambda_u241":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 32
    .local v2, "$i$a$-apply-SamsungHealthBridge$stopSamsungHealthWorkoutSession$intent$1":I
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    nop

    .line 31
    .end local v1    # "$this$stopSamsungHealthWorkoutSession_u24lambda_u241":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-SamsungHealthBridge$stopSamsungHealthWorkoutSession$intent$1":I
    nop

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    :goto_0
    return-void
.end method
