.class public final Lcom/cgs/atvobserver/location/HomePoint;
.super Ljava/lang/Object;
.source "HomePointManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cgs/atvobserver/location/HomePoint;",
        "",
        "latitude",
        "",
        "longitude",
        "isSet",
        "",
        "setTimestamp",
        "",
        "(DDZJ)V",
        "()Z",
        "getLatitude",
        "()D",
        "getLongitude",
        "getSetTimestamp",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
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
.field private final isSet:Z

.field private final latitude:D

.field private final longitude:D

.field private final setTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0xf

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/cgs/atvobserver/location/HomePoint;-><init>(DDZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDZJ)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "isSet"    # Z
    .param p6, "setTimestamp"    # J

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    .line 12
    iput-wide p3, p0, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    .line 13
    iput-boolean p5, p0, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    .line 14
    iput-wide p6, p0, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    .line 10
    return-void
.end method

.method public synthetic constructor <init>(DDZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    .line 10
    and-int/lit8 p9, p8, 0x1

    const-wide/16 v0, 0x0

    if-eqz p9, :cond_0

    .line 11
    move-wide v2, v0

    goto :goto_0

    .line 10
    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 12
    goto :goto_1

    .line 10
    :cond_1
    move-wide v0, p3

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    .line 13
    const/4 p5, 0x0

    move p9, p5

    goto :goto_2

    .line 10
    :cond_2
    move p9, p5

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    .line 14
    const-wide/16 p6, 0x0

    move-wide p7, p6

    goto :goto_3

    .line 10
    :cond_3
    move-wide p7, p6

    :goto_3
    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    move p6, p9

    invoke-direct/range {p1 .. p8}, Lcom/cgs/atvobserver/location/HomePoint;-><init>(DDZJ)V

    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/location/HomePoint;DDZJILjava/lang/Object;)Lcom/cgs/atvobserver/location/HomePoint;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    goto :goto_2

    :cond_2
    move v5, p5

    :goto_2
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    goto :goto_3

    :cond_3
    move-wide v6, p6

    :goto_3
    move-wide p1, v1

    move-wide p3, v3

    move p5, v5

    move-wide p6, v6

    invoke-virtual/range {p0 .. p7}, Lcom/cgs/atvobserver/location/HomePoint;->copy(DDZJ)Lcom/cgs/atvobserver/location/HomePoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    return-wide v0
.end method

.method public final copy(DDZJ)Lcom/cgs/atvobserver/location/HomePoint;
    .locals 9

    new-instance v8, Lcom/cgs/atvobserver/location/HomePoint;

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/cgs/atvobserver/location/HomePoint;-><init>(DDZJ)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/location/HomePoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/location/HomePoint;

    iget-wide v3, p0, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    return-wide v0
.end method

.method public final getSetTimestamp()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isSet()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomePoint;->latitude:D

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/HomePoint;->longitude:D

    iget-boolean v4, p0, Lcom/cgs/atvobserver/location/HomePoint;->isSet:Z

    iget-wide v5, p0, Lcom/cgs/atvobserver/location/HomePoint;->setTimestamp:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HomePoint(latitude="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
