.class public final Lcom/cgs/atvobserver/ai/ObserverAiOutput;
.super Ljava/lang/Object;
.source "ObserverAiEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008=\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0093\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010$\u001a\u00020%\u00a2\u0006\u0002\u0010&J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\t\u0010C\u001a\u00020\u0010H\u00c6\u0003J\t\u0010D\u001a\u00020\u0010H\u00c6\u0003J\t\u0010E\u001a\u00020\u0010H\u00c6\u0003J\t\u0010F\u001a\u00020\u0016H\u00c6\u0003J\t\u0010G\u001a\u00020\rH\u00c6\u0003J\t\u0010H\u001a\u00020\rH\u00c6\u0003J\t\u0010I\u001a\u00020\u0016H\u00c6\u0003J\t\u0010J\u001a\u00020\rH\u00c6\u0003J\t\u0010K\u001a\u00020\rH\u00c6\u0003J\t\u0010L\u001a\u00020\u0016H\u00c6\u0003J\t\u0010M\u001a\u00020\u0005H\u00c6\u0003J\t\u0010N\u001a\u00020\u0016H\u00c6\u0003J\t\u0010O\u001a\u00020\rH\u00c6\u0003J\t\u0010P\u001a\u00020\u0010H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0010H\u00c6\u0003J\t\u0010R\u001a\u00020\u0010H\u00c6\u0003J\t\u0010S\u001a\u00020\u0010H\u00c6\u0003J\t\u0010T\u001a\u00020\rH\u00c6\u0003J\t\u0010U\u001a\u00020%H\u00c6\u0003J\t\u0010V\u001a\u00020\u0007H\u00c6\u0003J\t\u0010W\u001a\u00020\tH\u00c6\u0003J\t\u0010X\u001a\u00020\u000bH\u00c6\u0003J\t\u0010Y\u001a\u00020\rH\u00c6\u0003J\t\u0010Z\u001a\u00020\rH\u00c6\u0003J\t\u0010[\u001a\u00020\u0010H\u00c6\u0003J\t\u0010\\\u001a\u00020\u0010H\u00c6\u0003J\u0097\u0002\u0010]\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001a\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00102\u0008\u0008\u0002\u0010 \u001a\u00020\u00102\u0008\u0008\u0002\u0010!\u001a\u00020\u00102\u0008\u0008\u0002\u0010\"\u001a\u00020\u00102\u0008\u0008\u0002\u0010#\u001a\u00020\r2\u0008\u0008\u0002\u0010$\u001a\u00020%H\u00c6\u0001J\u0013\u0010^\u001a\u00020\u00102\u0008\u0010_\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010`\u001a\u00020\rH\u00d6\u0001J\t\u0010a\u001a\u00020%H\u00d6\u0001R\u0011\u0010$\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0011\u0010\u0017\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00100R\u0011\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010*R\u0011\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010*R\u0011\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00100R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u00105R\u0011\u0010 \u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u00105R\u0011\u0010\"\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u00105R\u0011\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u00105R\u0011\u0010\u001f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u00105R\u0011\u0010\u0014\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u00105R\u0011\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u00105R\u0011\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u00105R\u0011\u0010!\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u00105R\u0011\u0010#\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00100R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0011\u0010\u001e\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00100R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=R\u0011\u0010\u0018\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u00100R\u0011\u0010\u001a\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u00100R\u0011\u0010\u001b\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u00100R\u0011\u0010\u001d\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010*\u00a8\u0006b"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
        "",
        "operatingMode",
        "Lcom/cgs/atvobserver/ai/AppOperatingMode;",
        "rideState",
        "Lcom/cgs/atvobserver/ai/RideStateClass;",
        "roadSurface",
        "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
        "engineLoad",
        "Lcom/cgs/atvobserver/ai/EngineLoadState;",
        "clutchType",
        "Lcom/cgs/atvobserver/ai/ClutchType;",
        "estimatedGear",
        "",
        "gearConfidencePct",
        "isCentrifugalClutchSlipping",
        "",
        "isWheelSpinDetected",
        "isTirePressureLowOrDragDetected",
        "isPocketModeActive",
        "isTerrainSelfCalibrated",
        "climbGradePercent",
        "",
        "fusedRpm",
        "rpmConfidencePct",
        "fusedSpeedKmh",
        "speedConfidencePct",
        "systemConfidencePct",
        "gForceMagnitude",
        "vibrationIntensity",
        "recommendedMotionFps",
        "isSpeechDetected",
        "isDataRepaired",
        "isZRamOffloadActive",
        "isEmergencyCrashActive",
        "memoryUsageMb",
        "activeDeviceTier",
        "",
        "(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)V",
        "getActiveDeviceTier",
        "()Ljava/lang/String;",
        "getClimbGradePercent",
        "()D",
        "getClutchType",
        "()Lcom/cgs/atvobserver/ai/ClutchType;",
        "getEngineLoad",
        "()Lcom/cgs/atvobserver/ai/EngineLoadState;",
        "getEstimatedGear",
        "()I",
        "getFusedRpm",
        "getFusedSpeedKmh",
        "getGForceMagnitude",
        "getGearConfidencePct",
        "()Z",
        "getMemoryUsageMb",
        "getOperatingMode",
        "()Lcom/cgs/atvobserver/ai/AppOperatingMode;",
        "getRecommendedMotionFps",
        "getRideState",
        "()Lcom/cgs/atvobserver/ai/RideStateClass;",
        "getRoadSurface",
        "()Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
        "getRpmConfidencePct",
        "getSpeedConfidencePct",
        "getSystemConfidencePct",
        "getVibrationIntensity",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final activeDeviceTier:Ljava/lang/String;

.field private final climbGradePercent:D

.field private final clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

.field private final engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

.field private final estimatedGear:I

.field private final fusedRpm:I

.field private final fusedSpeedKmh:D

.field private final gForceMagnitude:D

.field private final gearConfidencePct:I

.field private final isCentrifugalClutchSlipping:Z

.field private final isDataRepaired:Z

.field private final isEmergencyCrashActive:Z

.field private final isPocketModeActive:Z

.field private final isSpeechDetected:Z

.field private final isTerrainSelfCalibrated:Z

.field private final isTirePressureLowOrDragDetected:Z

.field private final isWheelSpinDetected:Z

.field private final isZRamOffloadActive:Z

.field private final memoryUsageMb:I

.field private final operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

.field private final recommendedMotionFps:I

.field private final rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

.field private final roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field private final rpmConfidencePct:I

.field private final speedConfidencePct:I

.field private final systemConfidencePct:I

.field private final vibrationIntensity:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 34

    move-object/from16 v0, p0

    const v32, 0x7ffffff

    const/16 v33, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v0 .. v33}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;-><init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)V
    .locals 16
    .param p1, "operatingMode"    # Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .param p2, "rideState"    # Lcom/cgs/atvobserver/ai/RideStateClass;
    .param p3, "roadSurface"    # Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .param p4, "engineLoad"    # Lcom/cgs/atvobserver/ai/EngineLoadState;
    .param p5, "clutchType"    # Lcom/cgs/atvobserver/ai/ClutchType;
    .param p6, "estimatedGear"    # I
    .param p7, "gearConfidencePct"    # I
    .param p8, "isCentrifugalClutchSlipping"    # Z
    .param p9, "isWheelSpinDetected"    # Z
    .param p10, "isTirePressureLowOrDragDetected"    # Z
    .param p11, "isPocketModeActive"    # Z
    .param p12, "isTerrainSelfCalibrated"    # Z
    .param p13, "climbGradePercent"    # D
    .param p15, "fusedRpm"    # I
    .param p16, "rpmConfidencePct"    # I
    .param p17, "fusedSpeedKmh"    # D
    .param p19, "speedConfidencePct"    # I
    .param p20, "systemConfidencePct"    # I
    .param p21, "gForceMagnitude"    # D
    .param p23, "vibrationIntensity"    # D
    .param p25, "recommendedMotionFps"    # I
    .param p26, "isSpeechDetected"    # Z
    .param p27, "isDataRepaired"    # Z
    .param p28, "isZRamOffloadActive"    # Z
    .param p29, "isEmergencyCrashActive"    # Z
    .param p30, "memoryUsageMb"    # I
    .param p31, "activeDeviceTier"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p31

    const-string v7, "operatingMode"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "rideState"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "roadSurface"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "engineLoad"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "clutchType"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "activeDeviceTier"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    .line 66
    iput-object v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 67
    iput-object v3, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 68
    iput-object v4, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 69
    iput-object v5, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    .line 70
    move/from16 v7, p6

    iput v7, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    .line 71
    move/from16 v8, p7

    iput v8, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    .line 72
    move/from16 v9, p8

    iput-boolean v9, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    .line 73
    move/from16 v10, p9

    iput-boolean v10, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    .line 74
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    .line 75
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    .line 76
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    .line 77
    move-wide/from16 v14, p13

    iput-wide v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    .line 78
    move/from16 v1, p15

    iput v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    .line 79
    move/from16 v1, p16

    iput v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    .line 80
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    .line 81
    move/from16 v1, p19

    iput v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    .line 82
    move/from16 v2, p20

    iput v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    .line 83
    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    .line 84
    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    .line 85
    move/from16 v1, p25

    iput v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    .line 86
    move/from16 v2, p26

    iput-boolean v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    .line 87
    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    .line 88
    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    .line 89
    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    .line 90
    move/from16 v1, p30

    iput v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    .line 91
    iput-object v6, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public synthetic constructor <init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 32

    .line 64
    move/from16 v0, p32

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/cgs/atvobserver/ai/AppOperatingMode;->STANDARD_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    goto :goto_0

    .line 64
    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 66
    sget-object v2, Lcom/cgs/atvobserver/ai/RideStateClass;->STOPPED:Lcom/cgs/atvobserver/ai/RideStateClass;

    goto :goto_1

    .line 64
    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 67
    sget-object v3, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    goto :goto_2

    .line 64
    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 68
    sget-object v4, Lcom/cgs/atvobserver/ai/EngineLoadState;->IDLE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    goto :goto_3

    .line 64
    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 69
    sget-object v5, Lcom/cgs/atvobserver/ai/ClutchType;->CENTRIFUGAL:Lcom/cgs/atvobserver/ai/ClutchType;

    goto :goto_4

    .line 64
    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 70
    const/4 v6, 0x1

    goto :goto_5

    .line 64
    :cond_5
    move/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 71
    const/16 v7, 0x55

    goto :goto_6

    .line 64
    :cond_6
    move/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 72
    const/4 v8, 0x0

    goto :goto_7

    .line 64
    :cond_7
    move/from16 v8, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 73
    const/4 v10, 0x0

    goto :goto_8

    .line 64
    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 74
    const/4 v11, 0x0

    goto :goto_9

    .line 64
    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 75
    const/4 v12, 0x0

    goto :goto_a

    .line 64
    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 76
    const/4 v13, 0x0

    goto :goto_b

    .line 64
    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_c

    .line 77
    move-wide/from16 v17, v15

    goto :goto_c

    .line 64
    :cond_c
    move-wide/from16 v17, p13

    :goto_c
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_d

    .line 78
    const/4 v14, 0x0

    goto :goto_d

    .line 64
    :cond_d
    move/from16 v14, p15

    :goto_d
    and-int/lit16 v9, v0, 0x4000

    const/16 v19, 0x64

    if-eqz v9, :cond_e

    .line 79
    move/from16 v9, v19

    goto :goto_e

    .line 64
    :cond_e
    move/from16 v9, p16

    :goto_e
    const v20, 0x8000

    and-int v20, v0, v20

    if-eqz v20, :cond_f

    .line 80
    move-wide/from16 v20, v15

    goto :goto_f

    .line 64
    :cond_f
    move-wide/from16 v20, p17

    :goto_f
    const/high16 v22, 0x10000

    and-int v22, v0, v22

    if-eqz v22, :cond_10

    .line 81
    goto :goto_10

    .line 64
    :cond_10
    move/from16 v19, p19

    :goto_10
    const/high16 v22, 0x20000

    and-int v22, v0, v22

    if-eqz v22, :cond_11

    .line 82
    const/16 v22, 0x5f

    goto :goto_11

    .line 64
    :cond_11
    move/from16 v22, p20

    :goto_11
    const/high16 v23, 0x40000

    and-int v23, v0, v23

    if-eqz v23, :cond_12

    .line 83
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    goto :goto_12

    .line 64
    :cond_12
    move-wide/from16 v23, p21

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    .line 84
    goto :goto_13

    .line 64
    :cond_13
    move-wide/from16 v15, p23

    :goto_13
    const/high16 v25, 0x100000

    and-int v25, v0, v25

    if-eqz v25, :cond_14

    .line 85
    const/16 v25, 0x1e

    goto :goto_14

    .line 64
    :cond_14
    move/from16 v25, p25

    :goto_14
    const/high16 v26, 0x200000

    and-int v26, v0, v26

    if-eqz v26, :cond_15

    .line 86
    const/16 v26, 0x0

    goto :goto_15

    .line 64
    :cond_15
    move/from16 v26, p26

    :goto_15
    const/high16 v27, 0x400000

    and-int v27, v0, v27

    if-eqz v27, :cond_16

    .line 87
    const/16 v27, 0x0

    goto :goto_16

    .line 64
    :cond_16
    move/from16 v27, p27

    :goto_16
    const/high16 v28, 0x800000

    and-int v28, v0, v28

    if-eqz v28, :cond_17

    .line 88
    const/16 v28, 0x0

    goto :goto_17

    .line 64
    :cond_17
    move/from16 v28, p28

    :goto_17
    const/high16 v29, 0x1000000

    and-int v29, v0, v29

    if-eqz v29, :cond_18

    .line 89
    const/16 v29, 0x0

    goto :goto_18

    .line 64
    :cond_18
    move/from16 v29, p29

    :goto_18
    const/high16 v30, 0x2000000

    and-int v30, v0, v30

    if-eqz v30, :cond_19

    .line 90
    const/16 v30, 0x118

    goto :goto_19

    .line 64
    :cond_19
    move/from16 v30, p30

    :goto_19
    const/high16 v31, 0x4000000

    and-int v0, v0, v31

    if-eqz v0, :cond_1a

    .line 91
    const-string v0, "J3_LITE"

    goto :goto_1a

    .line 64
    :cond_1a
    move-object/from16 v0, p31

    :goto_1a
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move-wide/from16 p14, v17

    move/from16 p16, v14

    move/from16 p17, v9

    move-wide/from16 p18, v20

    move/from16 p20, v19

    move/from16 p21, v22

    move-wide/from16 p22, v23

    move-wide/from16 p24, v15

    move/from16 p26, v25

    move/from16 p27, v26

    move/from16 p28, v27

    move/from16 p29, v28

    move/from16 p30, v29

    move/from16 p31, v30

    move-object/from16 p32, v0

    invoke-direct/range {p1 .. p32}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;-><init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/ai/ObserverAiOutput;Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;ILjava/lang/Object;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p32

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-wide v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p13

    :goto_c
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    goto :goto_d

    :cond_d
    move/from16 v14, p15

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    goto :goto_e

    :cond_e
    move/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v14

    move/from16 p16, v15

    if-eqz v16, :cond_f

    iget-wide v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p17, v14

    if-eqz v16, :cond_10

    iget v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    goto :goto_10

    :cond_10
    move/from16 v14, p19

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    goto :goto_11

    :cond_11
    move/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p19, v14

    move/from16 p20, v15

    if-eqz v16, :cond_12

    iget-wide v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    goto :goto_12

    :cond_12
    move-wide/from16 v14, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-wide/from16 p21, v14

    if-eqz v16, :cond_13

    iget-wide v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    goto :goto_13

    :cond_13
    move-wide/from16 v14, p23

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p23, v14

    if-eqz v16, :cond_14

    iget v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    goto :goto_14

    :cond_14
    move/from16 v14, p25

    :goto_14
    const/high16 v15, 0x200000

    and-int/2addr v15, v1

    if-eqz v15, :cond_15

    iget-boolean v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    goto :goto_15

    :cond_15
    move/from16 v15, p26

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_16

    iget-boolean v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    goto :goto_16

    :cond_16
    move/from16 v15, p27

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_17

    iget-boolean v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    goto :goto_17

    :cond_17
    move/from16 v15, p28

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p28, v15

    if-eqz v16, :cond_18

    iget-boolean v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    goto :goto_18

    :cond_18
    move/from16 v15, p29

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_19

    iget v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    goto :goto_19

    :cond_19
    move/from16 v15, p30

    :goto_19
    const/high16 v16, 0x4000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p31

    :goto_1a
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p25, v14

    move/from16 p30, v15

    move-object/from16 p31, v1

    invoke-virtual/range {p0 .. p31}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->copy(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    return v0
.end method

.method public final component13()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    return-wide v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    return v0
.end method

.method public final component16()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    return-wide v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    return v0
.end method

.method public final component18()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    return v0
.end method

.method public final component19()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    return-wide v0
.end method

.method public final component2()Lcom/cgs/atvobserver/ai/RideStateClass;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    return-object v0
.end method

.method public final component20()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    return-wide v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    return v0
.end method

.method public final component22()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    return v0
.end method

.method public final component23()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    return v0
.end method

.method public final component24()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    return v0
.end method

.method public final component25()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    return v0
.end method

.method public final component26()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    return v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    return-object v0
.end method

.method public final component4()Lcom/cgs/atvobserver/ai/EngineLoadState;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    return-object v0
.end method

.method public final component5()Lcom/cgs/atvobserver/ai/ClutchType;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    return v0
.end method

.method public final copy(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .locals 34

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-wide/from16 v17, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move-object/from16 v31, p31

    const-string v0, "operatingMode"

    move-object/from16 v32, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rideState"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roadSurface"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineLoad"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clutchType"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeDeviceTier"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v33, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct/range {v0 .. v31}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;-><init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)V

    return-object v33
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-object v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    iget-object v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    iget-object v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    iget-object v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    iget-object v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    iget-object v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_e

    return v2

    :cond_e
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    if-eq v3, v4, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_11

    return v2

    :cond_11
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    if-eq v3, v4, :cond_12

    return v2

    :cond_12
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    if-eq v3, v4, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_15

    return v2

    :cond_15
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    if-eq v3, v4, :cond_16

    return v2

    :cond_16
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    if-eq v3, v4, :cond_17

    return v2

    :cond_17
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    if-eq v3, v4, :cond_18

    return v2

    :cond_18
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    if-eq v3, v4, :cond_19

    return v2

    :cond_19
    iget-boolean v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    if-eq v3, v4, :cond_1a

    return v2

    :cond_1a
    iget v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    if-eq v3, v4, :cond_1b

    return v2

    :cond_1b
    iget-object v3, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    iget-object v1, v1, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final getActiveDeviceTier()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    return-object v0
.end method

.method public final getClimbGradePercent()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    return-wide v0
.end method

.method public final getClutchType()Lcom/cgs/atvobserver/ai/ClutchType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    return-object v0
.end method

.method public final getEngineLoad()Lcom/cgs/atvobserver/ai/EngineLoadState;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    return-object v0
.end method

.method public final getEstimatedGear()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    return v0
.end method

.method public final getFusedRpm()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    return v0
.end method

.method public final getFusedSpeedKmh()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    return-wide v0
.end method

.method public final getGForceMagnitude()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    return-wide v0
.end method

.method public final getGearConfidencePct()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    return v0
.end method

.method public final getMemoryUsageMb()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    return v0
.end method

.method public final getOperatingMode()Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    return-object v0
.end method

.method public final getRecommendedMotionFps()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    return v0
.end method

.method public final getRideState()Lcom/cgs/atvobserver/ai/RideStateClass;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    return-object v0
.end method

.method public final getRoadSurface()Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    return-object v0
.end method

.method public final getRpmConfidencePct()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    return v0
.end method

.method public final getSpeedConfidencePct()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    return v0
.end method

.method public final getSystemConfidencePct()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    return v0
.end method

.method public final getVibrationIntensity()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/ai/AppOperatingMode;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/ai/RideStateClass;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/ai/EngineLoadState;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/ai/ClutchType;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isCentrifugalClutchSlipping()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    return v0
.end method

.method public final isDataRepaired()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    return v0
.end method

.method public final isEmergencyCrashActive()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    return v0
.end method

.method public final isPocketModeActive()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    return v0
.end method

.method public final isSpeechDetected()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    return v0
.end method

.method public final isTerrainSelfCalibrated()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    return v0
.end method

.method public final isTirePressureLowOrDragDetected()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    return v0
.end method

.method public final isWheelSpinDetected()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    return v0
.end method

.method public final isZRamOffloadActive()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->operatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    iget-object v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rideState:Lcom/cgs/atvobserver/ai/RideStateClass;

    iget-object v3, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->roadSurface:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    iget-object v4, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->engineLoad:Lcom/cgs/atvobserver/ai/EngineLoadState;

    iget-object v5, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->clutchType:Lcom/cgs/atvobserver/ai/ClutchType;

    iget v6, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->estimatedGear:I

    iget v7, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gearConfidencePct:I

    iget-boolean v8, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isCentrifugalClutchSlipping:Z

    iget-boolean v9, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isWheelSpinDetected:Z

    iget-boolean v10, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTirePressureLowOrDragDetected:Z

    iget-boolean v11, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isPocketModeActive:Z

    iget-boolean v12, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isTerrainSelfCalibrated:Z

    iget-wide v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->climbGradePercent:D

    iget v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedRpm:I

    move/from16 v16, v15

    iget v15, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->rpmConfidencePct:I

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->fusedSpeedKmh:D

    move-wide/from16 v19, v13

    iget v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->speedConfidencePct:I

    iget v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->systemConfidencePct:I

    move/from16 v21, v13

    move/from16 v22, v14

    iget-wide v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->gForceMagnitude:D

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->vibrationIntensity:D

    move-wide/from16 v25, v13

    iget v13, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->recommendedMotionFps:I

    iget-boolean v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isSpeechDetected:Z

    move/from16 v27, v14

    iget-boolean v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isDataRepaired:Z

    move/from16 v28, v14

    iget-boolean v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isZRamOffloadActive:Z

    move/from16 v29, v14

    iget-boolean v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive:Z

    move/from16 v30, v14

    iget v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->memoryUsageMb:I

    move/from16 v31, v14

    iget-object v14, v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->activeDeviceTier:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v14

    const-string v14, "ObserverAiOutput(operatingMode="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rideState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roadSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", engineLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clutchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estimatedGear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gearConfidencePct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCentrifugalClutchSlipping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWheelSpinDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTirePressureLowOrDragDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPocketModeActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTerrainSelfCalibrated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", climbGradePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fusedRpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rpmConfidencePct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fusedSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speedConfidencePct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemConfidencePct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gForceMagnitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibrationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommendedMotionFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSpeechDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDataRepaired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isZRamOffloadActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEmergencyCrashActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryUsageMb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDeviceTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
