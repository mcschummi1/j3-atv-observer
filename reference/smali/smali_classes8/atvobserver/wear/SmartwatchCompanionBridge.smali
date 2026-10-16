.class public final Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;
.super Ljava/lang/Object;
.source "SmartwatchCompanionBridge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;",
        "",
        "()V",
        "ACTION_WATCH_TELEMETRY_UPDATE",
        "",
        "broadcastWristHudUpdate",
        "",
        "context",
        "Landroid/content/Context;",
        "gpsData",
        "Lcom/cgs/atvobserver/location/GpsData;",
        "aiOutput",
        "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
        "fuelRemainingL",
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


# static fields
.field public static final $stable:I = 0x0

.field public static final ACTION_WATCH_TELEMETRY_UPDATE:Ljava/lang/String; = "com.cgs.atvobserver.WATCH_TELEMETRY_UPDATE"

.field public static final INSTANCE:Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;

    invoke-direct {v0}, Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;->INSTANCE:Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final broadcastWristHudUpdate(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;D)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpsData"    # Lcom/cgs/atvobserver/location/GpsData;
    .param p3, "aiOutput"    # Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .param p4, "fuelRemainingL"    # D

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gpsData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiOutput"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cgs.atvobserver.WATCH_TELEMETRY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$broadcastWristHudUpdate_u24lambda_u240":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-apply-SmartwatchCompanionBridge$broadcastWristHudUpdate$intent$1":I
    invoke-virtual {p2}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v3

    double-to-int v3, v3

    const-string v4, "speed_kmh"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    const-string v3, "rpm"

    invoke-virtual {p3}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getFusedRpm()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    const-string v3, "gear"

    invoke-virtual {p3}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getEstimatedGear()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v3, "fuel_litres"

    double-to-float v4, p4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 29
    const-string v3, "confidence_pct"

    invoke-virtual {p3}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getSystemConfidencePct()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p3}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getRideState()Lcom/cgs/atvobserver/ai/RideStateClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cgs/atvobserver/ai/RideStateClass;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ride_state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    nop

    .line 24
    .end local v1    # "$this$broadcastWristHudUpdate_u24lambda_u240":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-SmartwatchCompanionBridge$broadcastWristHudUpdate$intent$1":I
    nop

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
