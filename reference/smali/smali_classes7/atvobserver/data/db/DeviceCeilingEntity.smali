.class public final Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;
.super Ljava/lang/Object;
.source "DeviceCeilingEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\nH\u00c6\u0003J;\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;",
        "",
        "deviceModel",
        "",
        "learnedCeilingFactor",
        "",
        "maxFps",
        "",
        "aiRatePerSec",
        "lastUpdated",
        "",
        "(Ljava/lang/String;FIFJ)V",
        "getAiRatePerSec",
        "()F",
        "getDeviceModel",
        "()Ljava/lang/String;",
        "getLastUpdated",
        "()J",
        "getLearnedCeilingFactor",
        "getMaxFps",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
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
.field private final aiRatePerSec:F

.field private final deviceModel:Ljava/lang/String;

.field private final lastUpdated:J

.field private final learnedCeilingFactor:F

.field private final maxFps:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FIFJ)V
    .locals 1
    .param p1, "deviceModel"    # Ljava/lang/String;
    .param p2, "learnedCeilingFactor"    # F
    .param p3, "maxFps"    # I
    .param p4, "aiRatePerSec"    # F
    .param p5, "lastUpdated"    # J

    const-string v0, "deviceModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    .line 10
    iput p3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    .line 11
    iput p4, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    .line 12
    iput-wide p5, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    .line 7
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FIFJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 7
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 9
    const/high16 p2, 0x3f800000    # 1.0f

    move v2, p2

    goto :goto_0

    .line 7
    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    .line 10
    const/16 p3, 0x3c

    move v3, p3

    goto :goto_1

    .line 7
    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    .line 11
    const/high16 p4, 0x41200000    # 10.0f

    move v4, p4

    goto :goto_2

    .line 7
    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    move-wide v5, p5

    goto :goto_3

    .line 7
    :cond_3
    move-wide v5, p5

    :goto_3
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;-><init>(Ljava/lang/String;FIFJ)V

    .line 13
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;Ljava/lang/String;FIFJILjava/lang/Object;)Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->copy(Ljava/lang/String;FIFJ)Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;FIFJ)Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;
    .locals 8

    const-string v0, "deviceModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;-><init>(Ljava/lang/String;FIFJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;

    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    iget v4, v1, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    iget v4, v1, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    iget v4, v1, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAiRatePerSec()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    return v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUpdated()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    return-wide v0
.end method

.method public final getLearnedCeilingFactor()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    return v0
.end method

.method public final getMaxFps()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->deviceModel:Ljava/lang/String;

    iget v1, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->learnedCeilingFactor:F

    iget v2, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->maxFps:I

    iget v3, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->aiRatePerSec:F

    iget-wide v4, p0, Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;->lastUpdated:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceCeilingEntity(deviceModel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", learnedCeilingFactor="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aiRatePerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
