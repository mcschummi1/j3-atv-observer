.class public final Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;
.super Ljava/lang/Object;
.source "AppConfigManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;",
        "",
        "tankCapacityL",
        "",
        "criticalTempC",
        "targetIdleRpm",
        "",
        "assignedBattery",
        "",
        "(DDILjava/lang/String;)V",
        "getAssignedBattery",
        "()Ljava/lang/String;",
        "getCriticalTempC",
        "()D",
        "getTankCapacityL",
        "getTargetIdleRpm",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final assignedBattery:Ljava/lang/String;

.field private final criticalTempC:D

.field private final tankCapacityL:D

.field private final targetIdleRpm:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;-><init>(DDILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDILjava/lang/String;)V
    .locals 1
    .param p1, "tankCapacityL"    # D
    .param p3, "criticalTempC"    # D
    .param p5, "targetIdleRpm"    # I
    .param p6, "assignedBattery"    # Ljava/lang/String;

    const-string v0, "assignedBattery"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    .line 12
    iput-wide p3, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    .line 13
    iput p5, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    .line 14
    iput-object p6, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public synthetic constructor <init>(DDILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 10
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 11
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    move-wide v1, p1

    goto :goto_0

    .line 10
    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 12
    const-wide p3, 0x405cc00000000000L    # 115.0

    move-wide v3, p3

    goto :goto_1

    .line 10
    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 13
    const/16 p5, 0x564

    move v5, p5

    goto :goto_2

    .line 10
    :cond_2
    move v5, p5

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 14
    const-string p6, "None"

    move-object v6, p6

    goto :goto_3

    .line 10
    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;-><init>(DDILjava/lang/String;)V

    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;DDILjava/lang/String;ILjava/lang/Object;)Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget p5, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    :cond_2
    move v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p6, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->copy(DDILjava/lang/String;)Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(DDILjava/lang/String;)Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;
    .locals 8

    const-string v0, "assignedBattery"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;-><init>(DDILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    iget-wide v3, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    iget v4, v1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    iget-object v1, v1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAssignedBattery()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    return-object v0
.end method

.method public final getCriticalTempC()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    return-wide v0
.end method

.method public final getTankCapacityL()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    return-wide v0
.end method

.method public final getTargetIdleRpm()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->tankCapacityL:D

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->criticalTempC:D

    iget v4, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->targetIdleRpm:I

    iget-object v5, p0, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->assignedBattery:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VehicleSpecificConfig(tankCapacityL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", criticalTempC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetIdleRpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assignedBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
