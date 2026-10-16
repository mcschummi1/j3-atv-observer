.class public final Lcom/cgs/atvobserver/data/db/RideLogEntity;
.super Ljava/lang/Object;
.source "EntitiesAndDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008G\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00fd\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0014\u00a2\u0006\u0002\u0010 J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u000eH\u00c6\u0003J\t\u0010?\u001a\u00020\u000eH\u00c6\u0003J\t\u0010@\u001a\u00020\u000eH\u00c6\u0003J\t\u0010A\u001a\u00020\u0012H\u00c6\u0003J\t\u0010B\u001a\u00020\u0014H\u00c6\u0003J\t\u0010C\u001a\u00020\tH\u00c6\u0003J\t\u0010D\u001a\u00020\tH\u00c6\u0003J\t\u0010E\u001a\u00020\tH\u00c6\u0003J\t\u0010F\u001a\u00020\tH\u00c6\u0003J\t\u0010G\u001a\u00020\tH\u00c6\u0003J\t\u0010H\u001a\u00020\u0003H\u00c6\u0003J\t\u0010I\u001a\u00020\tH\u00c6\u0003J\t\u0010J\u001a\u00020\tH\u00c6\u0003J\t\u0010K\u001a\u00020\u0012H\u00c6\u0003J\t\u0010L\u001a\u00020\tH\u00c6\u0003J\t\u0010M\u001a\u00020\u000eH\u00c6\u0003J\t\u0010N\u001a\u00020\u0014H\u00c6\u0003J\t\u0010O\u001a\u00020\u0003H\u00c6\u0003J\t\u0010P\u001a\u00020\u0003H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0003H\u00c6\u0003J\t\u0010R\u001a\u00020\tH\u00c6\u0003J\t\u0010S\u001a\u00020\tH\u00c6\u0003J\t\u0010T\u001a\u00020\tH\u00c6\u0003J\t\u0010U\u001a\u00020\tH\u00c6\u0003J\u0083\u0002\u0010V\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001d\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0014H\u00c6\u0001J\u0013\u0010W\u001a\u00020\u00142\u0008\u0010X\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010Y\u001a\u00020\u0012H\u00d6\u0001J\t\u0010Z\u001a\u00020\u000eH\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\"R\u0011\u0010\u001a\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\"R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010%R\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\"R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010%R\u0011\u0010\u001f\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010+R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010+R\u0011\u0010\u001d\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\"R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\"R\u0011\u0010\u0017\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\"R\u0011\u0010\u0018\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\"R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010%R\u0011\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u0010\u001b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\"R\u0011\u0010\u001c\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0011\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\"R\u0011\u0010\u0016\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010%R\u0011\u0010\u001e\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00102R\u0011\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u00102R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u00105R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u00102\u00a8\u0006["
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
        "",
        "id",
        "",
        "startTime",
        "midTime",
        "endTime",
        "durationSeconds",
        "distanceKm",
        "",
        "maxSpeedKmh",
        "avgSpeedKmh",
        "estimatedFuelUsedL",
        "weatherCondition",
        "",
        "mode",
        "vehicleType",
        "warningCount",
        "",
        "isFinished",
        "",
        "startLat",
        "startLon",
        "midLat",
        "midLon",
        "endLat",
        "endLon",
        "peakGForce",
        "smoothnessScore",
        "launchAccelTimeSec",
        "terrainSummary",
        "isCompressed",
        "(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)V",
        "getAvgSpeedKmh",
        "()D",
        "getDistanceKm",
        "getDurationSeconds",
        "()J",
        "getEndLat",
        "getEndLon",
        "getEndTime",
        "getEstimatedFuelUsedL",
        "getId",
        "()Z",
        "getLaunchAccelTimeSec",
        "getMaxSpeedKmh",
        "getMidLat",
        "getMidLon",
        "getMidTime",
        "getMode",
        "()Ljava/lang/String;",
        "getPeakGForce",
        "getSmoothnessScore",
        "()I",
        "getStartLat",
        "getStartLon",
        "getStartTime",
        "getTerrainSummary",
        "getVehicleType",
        "getWarningCount",
        "getWeatherCondition",
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
.field private final avgSpeedKmh:D

.field private final distanceKm:D

.field private final durationSeconds:J

.field private final endLat:D

.field private final endLon:D

.field private final endTime:J

.field private final estimatedFuelUsedL:D

.field private final id:J

.field private final isCompressed:Z

.field private final isFinished:Z

.field private final launchAccelTimeSec:D

.field private final maxSpeedKmh:D

.field private final midLat:D

.field private final midLon:D

.field private final midTime:J

.field private final mode:Ljava/lang/String;

.field private final peakGForce:D

.field private final smoothnessScore:I

.field private final startLat:D

.field private final startLon:D

.field private final startTime:J

.field private final terrainSummary:Ljava/lang/String;

.field private final vehicleType:Ljava/lang/String;

.field private final warningCount:I

.field private final weatherCondition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)V
    .locals 16
    .param p1, "id"    # J
    .param p3, "startTime"    # J
    .param p5, "midTime"    # J
    .param p7, "endTime"    # J
    .param p9, "durationSeconds"    # J
    .param p11, "distanceKm"    # D
    .param p13, "maxSpeedKmh"    # D
    .param p15, "avgSpeedKmh"    # D
    .param p17, "estimatedFuelUsedL"    # D
    .param p19, "weatherCondition"    # Ljava/lang/String;
    .param p20, "mode"    # Ljava/lang/String;
    .param p21, "vehicleType"    # Ljava/lang/String;
    .param p22, "warningCount"    # I
    .param p23, "isFinished"    # Z
    .param p24, "startLat"    # D
    .param p26, "startLon"    # D
    .param p28, "midLat"    # D
    .param p30, "midLon"    # D
    .param p32, "endLat"    # D
    .param p34, "endLon"    # D
    .param p36, "peakGForce"    # D
    .param p38, "smoothnessScore"    # I
    .param p39, "launchAccelTimeSec"    # D
    .param p41, "terrainSummary"    # Ljava/lang/String;
    .param p42, "isCompressed"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    move-object/from16 v3, p21

    move-object/from16 v4, p41

    const-string v5, "weatherCondition"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mode"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "vehicleType"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "terrainSummary"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    move-wide/from16 v5, p1

    iput-wide v5, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    .line 19
    move-wide/from16 v7, p3

    iput-wide v7, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    .line 20
    move-wide/from16 v9, p5

    iput-wide v9, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    .line 21
    move-wide/from16 v11, p7

    iput-wide v11, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    .line 22
    move-wide/from16 v13, p9

    iput-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    .line 23
    move-wide/from16 v5, p11

    iput-wide v5, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    .line 24
    move-wide/from16 v5, p13

    iput-wide v5, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    .line 25
    move-wide/from16 v5, p15

    iput-wide v5, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    .line 26
    move-wide/from16 v5, p17

    iput-wide v5, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    .line 27
    iput-object v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    .line 28
    iput-object v2, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    .line 29
    iput-object v3, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    .line 30
    move/from16 v15, p22

    iput v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    .line 31
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    .line 34
    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    .line 35
    move-wide/from16 v1, p26

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    .line 36
    move-wide/from16 v1, p28

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    .line 37
    move-wide/from16 v1, p30

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    .line 38
    move-wide/from16 v1, p32

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    .line 39
    move-wide/from16 v1, p34

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    .line 42
    move-wide/from16 v1, p36

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    .line 43
    move/from16 v1, p38

    iput v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    .line 44
    move-wide/from16 v1, p39

    iput-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    .line 47
    iput-object v4, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    .line 50
    move/from16 v1, p42

    iput-boolean v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 47

    .line 17
    move/from16 v0, p43

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 18
    move-wide v5, v2

    goto :goto_0

    .line 17
    :cond_0
    move-wide/from16 v5, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 20
    move-wide v9, v2

    goto :goto_1

    .line 17
    :cond_1
    move-wide/from16 v9, p5

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 21
    move-wide v11, v2

    goto :goto_2

    .line 17
    :cond_2
    move-wide/from16 v11, p7

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 22
    move-wide v13, v2

    goto :goto_3

    .line 17
    :cond_3
    move-wide/from16 v13, p9

    :goto_3
    and-int/lit8 v1, v0, 0x20

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    .line 23
    move-wide v15, v2

    goto :goto_4

    .line 17
    :cond_4
    move-wide/from16 v15, p11

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    .line 24
    move-wide/from16 v17, v2

    goto :goto_5

    .line 17
    :cond_5
    move-wide/from16 v17, p13

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    .line 25
    move-wide/from16 v19, v2

    goto :goto_6

    .line 17
    :cond_6
    move-wide/from16 v19, p15

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    .line 26
    move-wide/from16 v21, v2

    goto :goto_7

    .line 17
    :cond_7
    move-wide/from16 v21, p17

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    .line 27
    const-string v1, "Normal Dry"

    move-object/from16 v23, v1

    goto :goto_8

    .line 17
    :cond_8
    move-object/from16 v23, p19

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    .line 28
    const-string v1, "TRIP"

    move-object/from16 v24, v1

    goto :goto_9

    .line 17
    :cond_9
    move-object/from16 v24, p20

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    .line 29
    const-string v1, "ATV"

    move-object/from16 v25, v1

    goto :goto_a

    .line 17
    :cond_a
    move-object/from16 v25, p21

    :goto_a
    and-int/lit16 v1, v0, 0x1000

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    .line 30
    move/from16 v26, v4

    goto :goto_b

    .line 17
    :cond_b
    move/from16 v26, p22

    :goto_b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    .line 31
    move/from16 v27, v4

    goto :goto_c

    .line 17
    :cond_c
    move/from16 v27, p23

    :goto_c
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    .line 34
    move-wide/from16 v28, v2

    goto :goto_d

    .line 17
    :cond_d
    move-wide/from16 v28, p24

    :goto_d
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 35
    move-wide/from16 v30, v2

    goto :goto_e

    .line 17
    :cond_e
    move-wide/from16 v30, p26

    :goto_e
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 36
    move-wide/from16 v32, v2

    goto :goto_f

    .line 17
    :cond_f
    move-wide/from16 v32, p28

    :goto_f
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 37
    move-wide/from16 v34, v2

    goto :goto_10

    .line 17
    :cond_10
    move-wide/from16 v34, p30

    :goto_10
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 38
    move-wide/from16 v36, v2

    goto :goto_11

    .line 17
    :cond_11
    move-wide/from16 v36, p32

    :goto_11
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 39
    move-wide/from16 v38, v2

    goto :goto_12

    .line 17
    :cond_12
    move-wide/from16 v38, p34

    :goto_12
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 42
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v40, v7

    goto :goto_13

    .line 17
    :cond_13
    move-wide/from16 v40, p36

    :goto_13
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 43
    const/16 v1, 0x5f

    move/from16 v42, v1

    goto :goto_14

    .line 17
    :cond_14
    move/from16 v42, p38

    :goto_14
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    .line 44
    move-wide/from16 v43, v2

    goto :goto_15

    .line 17
    :cond_15
    move-wide/from16 v43, p39

    :goto_15
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 47
    const-string v1, "Asphalt: 75% | Gravel: 25%"

    move-object/from16 v45, v1

    goto :goto_16

    .line 17
    :cond_16
    move-object/from16 v45, p41

    :goto_16
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 50
    move/from16 v46, v4

    goto :goto_17

    .line 17
    :cond_17
    move/from16 v46, p42

    :goto_17
    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    invoke-direct/range {v4 .. v46}, Lcom/cgs/atvobserver/data/db/RideLogEntity;-><init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/data/db/RideLogEntity;JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;ZILjava/lang/Object;)Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p43

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    goto :goto_7

    :cond_7
    move-wide/from16 v14, p15

    :goto_7
    move-wide/from16 p15, v14

    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_8

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    goto :goto_8

    :cond_8
    move-wide/from16 v14, p17

    :goto_8
    move-wide/from16 p17, v14

    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p19

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p20

    :goto_a
    move-object/from16 p20, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p21

    :goto_b
    move-object/from16 p21, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    goto :goto_c

    :cond_c
    move/from16 v15, p22

    :goto_c
    move/from16 p22, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p23

    :goto_d
    move/from16 p23, v15

    and-int/lit16 v15, v1, 0x4000

    move-object/from16 p19, v14

    if-eqz v15, :cond_e

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    goto :goto_e

    :cond_e
    move-wide/from16 v14, p24

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-wide/from16 p24, v14

    if-eqz v16, :cond_f

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p26

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p26, v14

    if-eqz v16, :cond_10

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    goto :goto_10

    :cond_10
    move-wide/from16 v14, p28

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-wide/from16 p28, v14

    if-eqz v16, :cond_11

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    goto :goto_11

    :cond_11
    move-wide/from16 v14, p30

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-wide/from16 p30, v14

    if-eqz v16, :cond_12

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    goto :goto_12

    :cond_12
    move-wide/from16 v14, p32

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-wide/from16 p32, v14

    if-eqz v16, :cond_13

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    goto :goto_13

    :cond_13
    move-wide/from16 v14, p34

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p34, v14

    if-eqz v16, :cond_14

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    goto :goto_14

    :cond_14
    move-wide/from16 v14, p36

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-wide/from16 p36, v14

    if-eqz v16, :cond_15

    iget v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    goto :goto_15

    :cond_15
    move/from16 v14, p38

    :goto_15
    const/high16 v15, 0x400000

    and-int/2addr v15, v1

    move/from16 p38, v14

    if-eqz v15, :cond_16

    iget-wide v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    goto :goto_16

    :cond_16
    move-wide/from16 v14, p39

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-wide/from16 p39, v14

    if-eqz v16, :cond_17

    iget-object v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v14, p41

    :goto_17
    const/high16 v15, 0x1000000

    and-int/2addr v1, v15

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    goto :goto_18

    :cond_18
    move/from16 v1, p42

    :goto_18
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move-object/from16 p41, v14

    move/from16 p42, v1

    invoke-virtual/range {p0 .. p42}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->copy(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)Lcom/cgs/atvobserver/data/db/RideLogEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    return v0
.end method

.method public final component15()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    return-wide v0
.end method

.method public final component16()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    return-wide v0
.end method

.method public final component17()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    return-wide v0
.end method

.method public final component18()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    return-wide v0
.end method

.method public final component19()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    return-wide v0
.end method

.method public final component20()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    return-wide v0
.end method

.method public final component21()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    return-wide v0
.end method

.method public final component22()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    return v0
.end method

.method public final component23()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    return-wide v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    return-wide v0
.end method

.method public final component6()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    return-wide v0
.end method

.method public final component7()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    return-wide v0
.end method

.method public final component8()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    return-wide v0
.end method

.method public final component9()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    return-wide v0
.end method

.method public final copy(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .locals 46

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-wide/from16 v24, p24

    move-wide/from16 v26, p26

    move-wide/from16 v28, p28

    move-wide/from16 v30, p30

    move-wide/from16 v32, p32

    move-wide/from16 v34, p34

    move-wide/from16 v36, p36

    move/from16 v38, p38

    move-wide/from16 v39, p39

    move-object/from16 v41, p41

    move/from16 v42, p42

    const-string v0, "weatherCondition"

    move-wide/from16 v43, v1

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    move-object/from16 v2, p20

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vehicleType"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terrainSummary"

    move-object/from16 v1, p41

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v45, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    move-object/from16 v0, v45

    move-wide/from16 v1, v43

    invoke-direct/range {v0 .. v42}, Lcom/cgs/atvobserver/data/db/RideLogEntity;-><init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)V

    return-object v45
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    iget v4, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    if-eq v3, v4, :cond_e

    return v2

    :cond_e
    iget-boolean v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_16

    return v2

    :cond_16
    iget v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    iget v4, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    if-eq v3, v4, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    return v2

    :cond_19
    iget-boolean v3, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    iget-boolean v1, v1, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    if-eq v3, v1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getAvgSpeedKmh()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    return-wide v0
.end method

.method public final getDistanceKm()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    return-wide v0
.end method

.method public final getDurationSeconds()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    return-wide v0
.end method

.method public final getEndLat()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    return-wide v0
.end method

.method public final getEndLon()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    return-wide v0
.end method

.method public final getEndTime()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    return-wide v0
.end method

.method public final getEstimatedFuelUsedL()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    return-wide v0
.end method

.method public final getLaunchAccelTimeSec()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    return-wide v0
.end method

.method public final getMaxSpeedKmh()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    return-wide v0
.end method

.method public final getMidLat()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    return-wide v0
.end method

.method public final getMidLon()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    return-wide v0
.end method

.method public final getMidTime()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    return-wide v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeakGForce()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    return-wide v0
.end method

.method public final getSmoothnessScore()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    return v0
.end method

.method public final getStartLat()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    return-wide v0
.end method

.method public final getStartLon()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    return-wide v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    return-wide v0
.end method

.method public final getTerrainSummary()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final getVehicleType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public final getWarningCount()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    return v0
.end method

.method public final getWeatherCondition()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isCompressed()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 44

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->id:J

    iget-wide v3, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startTime:J

    iget-wide v5, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midTime:J

    iget-wide v7, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endTime:J

    iget-wide v9, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->durationSeconds:J

    iget-wide v11, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->distanceKm:D

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->maxSpeedKmh:D

    move-wide v15, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->avgSpeedKmh:D

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->estimatedFuelUsedL:D

    move-wide/from16 v19, v15

    iget-object v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->weatherCondition:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->mode:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->vehicleType:Ljava/lang/String;

    move-object/from16 v22, v15

    iget v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->warningCount:I

    move/from16 v23, v15

    iget-boolean v15, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished:Z

    move-wide/from16 v24, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLat:D

    move-wide/from16 v26, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->startLon:D

    move-wide/from16 v28, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLat:D

    move-wide/from16 v30, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->midLon:D

    move-wide/from16 v32, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLat:D

    move-wide/from16 v34, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->endLon:D

    move-wide/from16 v36, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->peakGForce:D

    move-wide/from16 v38, v13

    iget v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->smoothnessScore:I

    move/from16 v40, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->launchAccelTimeSec:D

    move-wide/from16 v41, v13

    iget-object v13, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->terrainSummary:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v43, v14

    const-string v14, "RideLogEntity(id="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", midTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distanceKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estimatedFuelUsedL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vehicleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warningCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", midLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", midLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peakGForce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smoothnessScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", launchAccelTimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", terrainSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCompressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
