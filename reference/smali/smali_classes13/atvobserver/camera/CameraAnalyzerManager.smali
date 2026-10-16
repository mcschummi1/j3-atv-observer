.class public final Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;
.super Ljava/lang/Object;
.source "CameraAnalyzerManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0012R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_detectedSurface",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
        "cameraExecutor",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "detectedSurface",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getDetectedSurface",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "lastAnalysisTimestamp",
        "",
        "analyzeImageFrame",
        "",
        "imageProxy",
        "Landroidx/camera/core/ImageProxy;",
        "startCameraAnalysis",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "stopCameraAnalysis",
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
.field private final _detectedSurface:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraExecutor:Ljava/util/concurrent/ExecutorService;

.field private final context:Landroid/content/Context;

.field private final detectedSurface:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnalysisTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$ApnK2lxKNdIC4sSTcNSi0lN0uyw(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->startCameraAnalysis$lambda$1(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$reKIIbQJFJmPmqUVwRwHYXnG9_c(Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->startCameraAnalysis$lambda$1$lambda$0(Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->context:Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->_detectedSurface:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 26
    iget-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->_detectedSurface:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->detectedSurface:Lkotlinx/coroutines/flow/StateFlow;

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    .line 23
    return-void
.end method

.method private final analyzeImageFrame(Landroidx/camera/core/ImageProxy;)V
    .locals 16
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;

    .line 57
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    .local v2, "now":J
    iget-wide v4, v1, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->lastAnalysisTimestamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 60
    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 61
    return-void

    .line 63
    :cond_0
    iput-wide v2, v1, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->lastAnalysisTimestamp:J

    .line 65
    nop

    .line 66
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 67
    .local v0, "plane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v6, "getBuffer(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 69
    .local v6, "bytes":[B
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 72
    const-wide/16 v7, 0x0

    .line 73
    .local v7, "totalLuma":J
    array-length v9, v6

    div-int/lit16 v9, v9, 0xc8

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 74
    .local v9, "sampleStep":I
    const/4 v11, 0x0

    .line 76
    .local v11, "sampleCount":I
    array-length v12, v6

    add-int/lit8 v12, v12, -0x1

    if-lez v9, :cond_6

    const/4 v13, 0x0

    .local v13, "i":I
    invoke-static {v4, v12, v9}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v4

    if-gt v13, v4, :cond_1

    .line 77
    :goto_0
    aget-byte v12, v6, v13

    and-int/lit16 v12, v12, 0xff

    int-to-long v14, v12

    add-long/2addr v7, v14

    .line 78
    add-int/2addr v11, v10

    .line 76
    if-eq v13, v4, :cond_1

    add-int/2addr v13, v9

    goto :goto_0

    .line 81
    .end local v13    # "i":I
    :cond_1
    if-lez v11, :cond_2

    int-to-long v12, v11

    div-long v12, v7, v12

    goto :goto_1

    :cond_2
    const-wide/16 v12, 0x80

    .line 84
    .local v12, "avgLuma":J
    :goto_1
    nop

    .line 85
    const-wide/16 v14, 0x4b

    cmp-long v4, v12, v14

    if-gez v4, :cond_3

    sget-object v4, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->MUD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    goto :goto_2

    .line 86
    :cond_3
    const-wide/16 v14, 0x64

    cmp-long v4, v12, v14

    if-gez v4, :cond_4

    sget-object v4, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->DIRT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    goto :goto_2

    .line 87
    :cond_4
    const-wide/16 v14, 0x82

    cmp-long v4, v12, v14

    if-gez v4, :cond_5

    sget-object v4, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->GRAVEL:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    goto :goto_2

    .line 88
    :cond_5
    sget-object v4, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 84
    :goto_2
    nop

    .line 91
    .local v4, "surface":Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    iget-object v10, v1, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->_detectedSurface:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .end local v0    # "plane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .end local v4    # "surface":Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "bytes":[B
    .end local v7    # "totalLuma":J
    .end local v9    # "sampleStep":I
    .end local v11    # "sampleCount":I
    .end local v12    # "avgLuma":J
    goto :goto_3

    .line 76
    .restart local v0    # "plane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "bytes":[B
    .restart local v7    # "totalLuma":J
    .restart local v9    # "sampleStep":I
    .restart local v11    # "sampleCount":I
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Step must be positive, was: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "now":J
    .end local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "plane":Landroidx/camera/core/ImageProxy$PlaneProxy;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "bytes":[B
    .end local v7    # "totalLuma":J
    .end local v9    # "sampleStep":I
    .end local v11    # "sampleCount":I
    .restart local v2    # "now":J
    .restart local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :catchall_0
    move-exception v0

    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/ImageProxy;->close()V

    throw v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 95
    nop

    .line 96
    return-void
.end method

.method private static final startCameraAnalysis$lambda$1(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6
    .param p0, "$cameraProviderFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "this$0"    # Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;
    .param p2, "$lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "$cameraProviderFuture"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 35
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 36
    .local v0, "cameraProvider":Landroidx/camera/lifecycle/ProcessCameraProvider;
    sget-object v1, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    const-string v2, "DEFAULT_BACK_CAMERA"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .local v1, "cameraSelector":Landroidx/camera/core/CameraSelector;
    new-instance v2, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v2}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v2

    const-string v4, "build(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    nop

    .line 42
    .local v2, "imageAnalysis":Landroidx/camera/core/ImageAnalysis;
    iget-object v4, p1, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda0;-><init>(Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;)V

    invoke-virtual {v2, v4, v5}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 46
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    const/4 v4, 0x1

    new-array v4, v4, [Landroidx/camera/core/UseCase;

    aput-object v2, v4, v3

    .line 47
    invoke-virtual {v0, p2, v1, v4}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0    # "cameraProvider":Landroidx/camera/lifecycle/ProcessCameraProvider;
    .end local v1    # "cameraSelector":Landroidx/camera/core/CameraSelector;
    .end local v2    # "imageAnalysis":Landroidx/camera/core/ImageAnalysis;
    :catch_0
    move-exception v0

    .line 53
    :goto_0
    return-void
.end method

.method private static final startCameraAnalysis$lambda$1$lambda$0(Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p0, "this$0"    # Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->analyzeImageFrame(Landroidx/camera/core/ImageProxy;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final getDetectedSurface()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->detectedSurface:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final startCameraAnalysis(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .local v0, "cameraProviderFuture":Lcom/google/common/util/concurrent/ListenableFuture;
    new-instance v1, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0, p1}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/lifecycle/LifecycleOwner;)V

    .line 53
    iget-object v2, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 54
    return-void
.end method

.method public final stopCameraAnalysis()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 100
    return-void
.end method
