.class public final Lcom/cgs/atvobserver/location/HomeGuidance;
.super Ljava/lang/Object;
.source "HomePointManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cgs/atvobserver/location/HomeGuidance;",
        "",
        "distanceKm",
        "",
        "bearingDegrees",
        "",
        "directionCardinal",
        "",
        "(DFLjava/lang/String;)V",
        "getBearingDegrees",
        "()F",
        "getDirectionCardinal",
        "()Ljava/lang/String;",
        "getDistanceKm",
        "()D",
        "component1",
        "component2",
        "component3",
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
.field private final bearingDegrees:F

.field private final directionCardinal:Ljava/lang/String;

.field private final distanceKm:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/location/HomeGuidance;-><init>(DFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DFLjava/lang/String;)V
    .locals 1
    .param p1, "distanceKm"    # D
    .param p3, "bearingDegrees"    # F
    .param p4, "directionCardinal"    # Ljava/lang/String;

    const-string v0, "directionCardinal"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    .line 19
    iput p3, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    .line 20
    iput-object p4, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(DFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 18
    const-wide/16 p1, 0x0

    .line 17
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 19
    const/4 p3, 0x0

    .line 17
    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 20
    const-string p4, "N"

    .line 17
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cgs/atvobserver/location/HomeGuidance;-><init>(DFLjava/lang/String;)V

    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/location/HomeGuidance;DFLjava/lang/String;ILjava/lang/Object;)Lcom/cgs/atvobserver/location/HomeGuidance;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p3, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cgs/atvobserver/location/HomeGuidance;->copy(DFLjava/lang/String;)Lcom/cgs/atvobserver/location/HomeGuidance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    return-wide v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(DFLjava/lang/String;)Lcom/cgs/atvobserver/location/HomeGuidance;
    .locals 1

    const-string v0, "directionCardinal"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/location/HomeGuidance;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cgs/atvobserver/location/HomeGuidance;-><init>(DFLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/location/HomeGuidance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/location/HomeGuidance;

    iget-wide v3, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    iget v4, v1, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    iget-object v1, v1, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBearingDegrees()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    return v0
.end method

.method public final getDirectionCardinal()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistanceKm()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->distanceKm:D

    iget v2, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->bearingDegrees:F

    iget-object v3, p0, Lcom/cgs/atvobserver/location/HomeGuidance;->directionCardinal:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomeGuidance(distanceKm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bearingDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directionCardinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
