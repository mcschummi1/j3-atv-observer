.class public final Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
.super Ljava/lang/Object;
.source "EntitiesAndDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/db/FuelRecordEntity;",
        "",
        "id",
        "",
        "timestamp",
        "fuelLitres",
        "",
        "entryType",
        "",
        "vehicleType",
        "(JJDLjava/lang/String;Ljava/lang/String;)V",
        "getEntryType",
        "()Ljava/lang/String;",
        "getFuelLitres",
        "()D",
        "getId",
        "()J",
        "getTimestamp",
        "getVehicleType",
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
        "",
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
.field private final entryType:Ljava/lang/String;

.field private final fuelLitres:D

.field private final id:J

.field private final timestamp:J

.field private final vehicleType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "timestamp"    # J
    .param p5, "fuelLitres"    # D
    .param p7, "entryType"    # Ljava/lang/String;
    .param p8, "vehicleType"    # Ljava/lang/String;

    const-string v0, "entryType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vehicleType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    .line 56
    iput-wide p3, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    .line 57
    iput-wide p5, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    .line 58
    iput-object p7, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    .line 59
    iput-object p8, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public synthetic constructor <init>(JJDLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    .line 54
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    .line 55
    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    .line 54
    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_1

    .line 54
    :cond_1
    move-wide v5, p3

    :goto_1
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "ATV"

    move-object v10, v0

    goto :goto_2

    .line 54
    :cond_2
    move-object/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;-><init>(JJDLjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/data/db/FuelRecordEntity;JJDLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p7

    :goto_3
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->copy(JJDLjava/lang/String;Ljava/lang/String;)Lcom/cgs/atvobserver/data/db/FuelRecordEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJDLjava/lang/String;Ljava/lang/String;)Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    .locals 12

    const-string v0, "entryType"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vehicleType"

    move-object/from16 v11, p8

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;-><init>(JJDLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;

    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    iget-object v1, v1, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getEntryType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    return-object v0
.end method

.method public final getFuelLitres()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    return-wide v0
.end method

.method public final getVehicleType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->id:J

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->timestamp:J

    iget-wide v4, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->fuelLitres:D

    iget-object v6, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->entryType:Ljava/lang/String;

    iget-object v7, p0, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;->vehicleType:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FuelRecordEntity(id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fuelLitres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vehicleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
