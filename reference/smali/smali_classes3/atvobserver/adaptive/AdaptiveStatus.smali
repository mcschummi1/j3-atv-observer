.class public final Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;
.super Ljava/lang/Object;
.source "AdaptiveEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;",
        "",
        "cpuLoadPct",
        "",
        "freeRamMb",
        "",
        "zramUsedMb",
        "zone",
        "Lcom/cgs/atvobserver/adaptive/AdaptiveZone;",
        "targetOperatingMode",
        "Lcom/cgs/atvobserver/ai/AppOperatingMode;",
        "smoothedModeAlpha",
        "(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)V",
        "getCpuLoadPct",
        "()F",
        "getFreeRamMb",
        "()J",
        "getSmoothedModeAlpha",
        "getTargetOperatingMode",
        "()Lcom/cgs/atvobserver/ai/AppOperatingMode;",
        "getZone",
        "()Lcom/cgs/atvobserver/adaptive/AdaptiveZone;",
        "getZramUsedMb",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final $stable:I


# instance fields
.field private final cpuLoadPct:F

.field private final freeRamMb:J

.field private final smoothedModeAlpha:F

.field private final targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

.field private final zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

.field private final zramUsedMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;-><init>(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)V
    .locals 1
    .param p1, "cpuLoadPct"    # F
    .param p2, "freeRamMb"    # J
    .param p4, "zramUsedMb"    # J
    .param p6, "zone"    # Lcom/cgs/atvobserver/adaptive/AdaptiveZone;
    .param p7, "targetOperatingMode"    # Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .param p8, "smoothedModeAlpha"    # F

    const-string v0, "zone"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetOperatingMode"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    .line 22
    iput-wide p2, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    .line 23
    iput-wide p4, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    .line 24
    iput-object p6, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    .line 25
    iput-object p7, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    .line 26
    iput p8, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    .line 20
    return-void
.end method

.method public synthetic constructor <init>(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    .line 20
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_1

    .line 22
    const-wide/16 v1, 0x190

    goto :goto_1

    .line 20
    :cond_1
    move-wide v1, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    .line 23
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 20
    :cond_2
    move-wide v3, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    .line 24
    sget-object v5, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->NOMINAL:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    goto :goto_3

    .line 20
    :cond_3
    move-object v5, p6

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    .line 25
    sget-object v6, Lcom/cgs/atvobserver/ai/AppOperatingMode;->STANDARD_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    goto :goto_4

    .line 20
    :cond_4
    move-object v6, p7

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    .line 26
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    .line 20
    :cond_5
    move/from16 v7, p8

    :goto_5
    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide p5, v3

    move-object p7, v5

    move-object/from16 p8, v6

    move/from16 p9, v7

    invoke-direct/range {p1 .. p9}, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;-><init>(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)V

    .line 27
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;FILjava/lang/Object;)Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    goto :goto_5

    :cond_5
    move/from16 v8, p8

    :goto_5
    move p1, v1

    move-wide p2, v2

    move-wide p4, v4

    move-object p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->copy(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    return-wide v0
.end method

.method public final component4()Lcom/cgs/atvobserver/adaptive/AdaptiveZone;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    return-object v0
.end method

.method public final component5()Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    return-object v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    return v0
.end method

.method public final copy(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;
    .locals 12

    const-string v0, "zone"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetOperatingMode"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;-><init>(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;

    iget v3, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    iget v4, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    iget-object v4, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    iget-object v4, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    iget v1, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCpuLoadPct()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    return v0
.end method

.method public final getFreeRamMb()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    return-wide v0
.end method

.method public final getSmoothedModeAlpha()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    return v0
.end method

.method public final getTargetOperatingMode()Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    return-object v0
.end method

.method public final getZone()Lcom/cgs/atvobserver/adaptive/AdaptiveZone;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    return-object v0
.end method

.method public final getZramUsedMb()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/ai/AppOperatingMode;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->cpuLoadPct:F

    iget-wide v1, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->freeRamMb:J

    iget-wide v3, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zramUsedMb:J

    iget-object v5, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->zone:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    iget-object v6, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->targetOperatingMode:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    iget v7, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;->smoothedModeAlpha:F

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptiveStatus(cpuLoadPct="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", freeRamMb="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zramUsedMb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetOperatingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smoothedModeAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
