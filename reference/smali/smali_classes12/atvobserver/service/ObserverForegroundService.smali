.class public final Lcom/cgs/atvobserver/service/ObserverForegroundService;
.super Landroid/app/Service;
.source "ObserverForegroundService.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;,
        Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0002/0B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010#\u001a\u00020$H\u0002J\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0008\u0010)\u001a\u00020$H\u0016J\u0008\u0010*\u001a\u00020$H\u0016J\"\u0010+\u001a\u00020,2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,H\u0016R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\r\u001a\u00060\u000eR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u001f@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u00061"
    }
    d2 = {
        "Lcom/cgs/atvobserver/service/ObserverForegroundService;",
        "Landroid/app/Service;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "()V",
        "<set-?>",
        "Lcom/cgs/atvobserver/ai/ObserverAiEngine;",
        "aiEngine",
        "getAiEngine",
        "()Lcom/cgs/atvobserver/ai/ObserverAiEngine;",
        "Lcom/cgs/atvobserver/audio/EngineAudioProcessor;",
        "audioProcessor",
        "getAudioProcessor",
        "()Lcom/cgs/atvobserver/audio/EngineAudioProcessor;",
        "binder",
        "Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;",
        "Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;",
        "cameraAnalyzerManager",
        "getCameraAnalyzerManager",
        "()Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;",
        "Lcom/cgs/atvobserver/location/GpsTracker;",
        "gpsTracker",
        "getGpsTracker",
        "()Lcom/cgs/atvobserver/location/GpsTracker;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "getLifecycle",
        "()Landroidx/lifecycle/Lifecycle;",
        "lifecycleRegistry",
        "Landroidx/lifecycle/LifecycleRegistry;",
        "serviceScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lcom/cgs/atvobserver/sensor/UniversalSensorManager;",
        "universalSensorManager",
        "getUniversalSensorManager",
        "()Lcom/cgs/atvobserver/sensor/UniversalSensorManager;",
        "createNotificationChannel",
        "",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "Companion",
        "LocalBinder",
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

.field public static final CHANNEL_ID:Ljava/lang/String; = "cgs_observer_foreground_channel"

.field public static final Companion:Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;

.field public static final NOTIFICATION_ID:I = 0x3e9

.field private static final _isServiceRunning:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final isServiceRunning:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aiEngine:Lcom/cgs/atvobserver/ai/ObserverAiEngine;

.field private audioProcessor:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

.field private final binder:Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;

.field private cameraAnalyzerManager:Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

.field private gpsTracker:Lcom/cgs/atvobserver/location/GpsTracker;

.field private final lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private final serviceScope:Lkotlinx/coroutines/CoroutineScope;

.field private universalSensorManager:Lcom/cgs/atvobserver/sensor/UniversalSensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->Companion:Lcom/cgs/atvobserver/service/ObserverForegroundService$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->$stable:I

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->_isServiceRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 59
    sget-object v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->_isServiceRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->isServiceRunning:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 36
    new-instance v0, Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;-><init>(Lcom/cgs/atvobserver/service/ObserverForegroundService;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->binder:Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    return-void
.end method

.method public static final synthetic access$isServiceRunning$cp()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 31
    sget-object v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->isServiceRunning:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 142
    nop

    .line 143
    new-instance v0, Landroid/app/NotificationChannel;

    .line 144
    nop

    .line 145
    const-string v1, "CGS Observer Foreground Service"

    check-cast v1, Ljava/lang/CharSequence;

    .line 146
    nop

    .line 143
    const-string v2, "cgs_observer_foreground_channel"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 147
    move-object v1, v0

    .local v1, "$this$createNotificationChannel_u24lambda_u240":Landroid/app/NotificationChannel;
    const/4 v2, 0x0

    .line 148
    .local v2, "$i$a$-apply-ObserverForegroundService$createNotificationChannel$channel$1":I
    const-string v3, "Keeps J3 Observer running with highest Android process priority"

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 149
    nop

    .line 147
    .end local v1    # "$this$createNotificationChannel_u24lambda_u240":Landroid/app/NotificationChannel;
    .end local v2    # "$i$a$-apply-ObserverForegroundService$createNotificationChannel$channel$1":I
    nop

    .line 143
    nop

    .line 150
    .local v0, "channel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 151
    .local v1, "manager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 153
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "manager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAiEngine()Lcom/cgs/atvobserver/ai/ObserverAiEngine;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->aiEngine:Lcom/cgs/atvobserver/ai/ObserverAiEngine;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "aiEngine"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAudioProcessor()Lcom/cgs/atvobserver/audio/EngineAudioProcessor;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->audioProcessor:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "audioProcessor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCameraAnalyzerManager()Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->cameraAnalyzerManager:Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "cameraAnalyzerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGpsTracker()Lcom/cgs/atvobserver/location/GpsTracker;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->gpsTracker:Lcom/cgs/atvobserver/location/GpsTracker;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "gpsTracker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public final getUniversalSensorManager()Lcom/cgs/atvobserver/sensor/UniversalSensorManager;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->universalSensorManager:Lcom/cgs/atvobserver/sensor/UniversalSensorManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "universalSensorManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->binder:Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 81
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 82
    invoke-direct {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->createNotificationChannel()V

    .line 84
    new-instance v0, Lcom/cgs/atvobserver/location/GpsTracker;

    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cgs/atvobserver/location/GpsTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->gpsTracker:Lcom/cgs/atvobserver/location/GpsTracker;

    .line 85
    new-instance v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-direct {v0}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;-><init>()V

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->audioProcessor:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    .line 86
    new-instance v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;

    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->universalSensorManager:Lcom/cgs/atvobserver/sensor/UniversalSensorManager;

    .line 87
    new-instance v0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->cameraAnalyzerManager:Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    .line 88
    new-instance v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;

    invoke-direct {v0}, Lcom/cgs/atvobserver/ai/ObserverAiEngine;-><init>()V

    iput-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->aiEngine:Lcom/cgs/atvobserver/ai/ObserverAiEngine;

    .line 91
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getGpsTracker()Lcom/cgs/atvobserver/location/GpsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cgs/atvobserver/location/GpsTracker;->startTracking()V

    .line 92
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getAudioProcessor()Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->startListening(Lkotlinx/coroutines/CoroutineScope;)V

    .line 93
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getUniversalSensorManager()Lcom/cgs/atvobserver/sensor/UniversalSensorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->startListeningAllSensors()V

    .line 94
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getCameraAnalyzerManager()Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->startCameraAnalysis(Landroidx/lifecycle/LifecycleOwner;)V

    .line 96
    sget-object v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->_isServiceRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 130
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 132
    sget-object v0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->_isServiceRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getGpsTracker()Lcom/cgs/atvobserver/location/GpsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cgs/atvobserver/location/GpsTracker;->stopTracking()V

    .line 135
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getAudioProcessor()Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->stopListening()V

    .line 136
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getUniversalSensorManager()Lcom/cgs/atvobserver/sensor/UniversalSensorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->stopListening()V

    .line 137
    invoke-virtual {p0}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->getCameraAnalyzerManager()Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->stopCameraAnalysis()V

    .line 138
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 100
    if-eqz p1, :cond_0

    const-string v0, "status_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Observer Active - Telemetry Running"

    .line 102
    .local v0, "statusText":Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/cgs/atvobserver/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, "notificationIntent":Landroid/content/Intent;
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 103
    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 110
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const-string v5, "cgs_observer_foreground_channel"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    const-string v4, "J3 VEHICLE OBSERVER"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 112
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 113
    sget v4, Lcom/cgs/atvobserver/R$drawable;->ic_launcher_foreground:I

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 115
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 116
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 117
    const-string v5, "service"

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const-string v5, "build(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    nop

    .line 120
    .local v3, "notification":Landroid/app/Notification;
    const/16 v5, 0x3e9

    invoke-virtual {p0, v5, v3}, Lcom/cgs/atvobserver/service/ObserverForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 122
    return v4
.end method
