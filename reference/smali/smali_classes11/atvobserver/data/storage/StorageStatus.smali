.class public final Lcom/cgs/atvobserver/data/storage/StorageStatus;
.super Ljava/lang/Object;
.source "AppStorageManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\tH\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/storage/StorageStatus;",
        "",
        "freeSpaceMb",
        "",
        "totalSpaceMb",
        "isStorageLow",
        "",
        "isAutoPruneActive",
        "compressedRideCount",
        "",
        "(JJZZI)V",
        "getCompressedRideCount",
        "()I",
        "getFreeSpaceMb",
        "()J",
        "()Z",
        "getTotalSpaceMb",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
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
.field private final compressedRideCount:I

.field private final freeSpaceMb:J

.field private final isAutoPruneActive:Z

.field private final isStorageLow:Z

.field private final totalSpaceMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/cgs/atvobserver/data/storage/StorageStatus;-><init>(JJZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJZZI)V
    .locals 0
    .param p1, "freeSpaceMb"    # J
    .param p3, "totalSpaceMb"    # J
    .param p5, "isStorageLow"    # Z
    .param p6, "isAutoPruneActive"    # Z
    .param p7, "compressedRideCount"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    .line 14
    iput-wide p3, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    .line 15
    iput-boolean p5, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    .line 16
    iput-boolean p6, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    .line 17
    iput p7, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    .line 12
    return-void
.end method

.method public synthetic constructor <init>(JJZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    .line 12
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 13
    const-wide/16 v0, 0x400

    goto :goto_0

    .line 12
    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    .line 14
    const-wide/16 v2, 0x3e80

    goto :goto_1

    .line 12
    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 15
    move v4, v5

    goto :goto_2

    .line 12
    :cond_2
    move v4, p5

    :goto_2
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_3

    .line 16
    move v6, v5

    goto :goto_3

    .line 12
    :cond_3
    move v6, p6

    :goto_3
    and-int/lit8 v7, p8, 0x10

    if-eqz v7, :cond_4

    .line 17
    goto :goto_4

    .line 12
    :cond_4
    move v5, p7

    :goto_4
    move-object p1, p0

    move-wide p2, v0

    move-wide p4, v2

    move p6, v4

    move p7, v6

    move/from16 p8, v5

    invoke-direct/range {p1 .. p8}, Lcom/cgs/atvobserver/data/storage/StorageStatus;-><init>(JJZZI)V

    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/data/storage/StorageStatus;JJZZIILjava/lang/Object;)Lcom/cgs/atvobserver/data/storage/StorageStatus;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    goto :goto_2

    :cond_2
    move v5, p5

    :goto_2
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    goto :goto_3

    :cond_3
    move v6, p6

    :goto_3
    and-int/lit8 v7, p8, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    goto :goto_4

    :cond_4
    move v7, p7

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move p5, v5

    move p6, v6

    move p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/cgs/atvobserver/data/storage/StorageStatus;->copy(JJZZI)Lcom/cgs/atvobserver/data/storage/StorageStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    return v0
.end method

.method public final copy(JJZZI)Lcom/cgs/atvobserver/data/storage/StorageStatus;
    .locals 9

    new-instance v8, Lcom/cgs/atvobserver/data/storage/StorageStatus;

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/cgs/atvobserver/data/storage/StorageStatus;-><init>(JJZZI)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/data/storage/StorageStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/data/storage/StorageStatus;

    iget-wide v3, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    iget v1, v1, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    if-eq v3, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCompressedRideCount()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    return v0
.end method

.method public final getFreeSpaceMb()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    return-wide v0
.end method

.method public final getTotalSpaceMb()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isAutoPruneActive()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    return v0
.end method

.method public final isStorageLow()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->freeSpaceMb:J

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->totalSpaceMb:J

    iget-boolean v4, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isStorageLow:Z

    iget-boolean v5, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->isAutoPruneActive:Z

    iget v6, p0, Lcom/cgs/atvobserver/data/storage/StorageStatus;->compressedRideCount:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StorageStatus(freeSpaceMb="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSpaceMb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isStorageLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoPruneActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressedRideCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
