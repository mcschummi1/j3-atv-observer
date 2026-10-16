.class public final Lcom/cgs/atvobserver/thermal/ThermalStatus;
.super Ljava/lang/Object;
.source "ThermalGuardian.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cgs/atvobserver/thermal/ThermalStatus;",
        "",
        "temperatureCelsius",
        "",
        "state",
        "Lcom/cgs/atvobserver/thermal/ThermalState;",
        "(FLcom/cgs/atvobserver/thermal/ThermalState;)V",
        "getState",
        "()Lcom/cgs/atvobserver/thermal/ThermalState;",
        "getTemperatureCelsius",
        "()F",
        "component1",
        "component2",
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
.field private final state:Lcom/cgs/atvobserver/thermal/ThermalState;

.field private final temperatureCelsius:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/cgs/atvobserver/thermal/ThermalStatus;-><init>(FLcom/cgs/atvobserver/thermal/ThermalState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FLcom/cgs/atvobserver/thermal/ThermalState;)V
    .locals 1
    .param p1, "temperatureCelsius"    # F
    .param p2, "state"    # Lcom/cgs/atvobserver/thermal/ThermalState;

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    .line 21
    iput-object p2, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    .line 19
    return-void
.end method

.method public synthetic constructor <init>(FLcom/cgs/atvobserver/thermal/ThermalState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 20
    const/high16 p1, 0x41c80000    # 25.0f

    .line 19
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 21
    sget-object p2, Lcom/cgs/atvobserver/thermal/ThermalState;->NORMAL:Lcom/cgs/atvobserver/thermal/ThermalState;

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cgs/atvobserver/thermal/ThermalStatus;-><init>(FLcom/cgs/atvobserver/thermal/ThermalState;)V

    .line 22
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/thermal/ThermalStatus;FLcom/cgs/atvobserver/thermal/ThermalState;ILjava/lang/Object;)Lcom/cgs/atvobserver/thermal/ThermalStatus;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/thermal/ThermalStatus;->copy(FLcom/cgs/atvobserver/thermal/ThermalState;)Lcom/cgs/atvobserver/thermal/ThermalStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    return v0
.end method

.method public final component2()Lcom/cgs/atvobserver/thermal/ThermalState;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    return-object v0
.end method

.method public final copy(FLcom/cgs/atvobserver/thermal/ThermalState;)Lcom/cgs/atvobserver/thermal/ThermalStatus;
    .locals 1

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/thermal/ThermalStatus;

    invoke-direct {v0, p1, p2}, Lcom/cgs/atvobserver/thermal/ThermalStatus;-><init>(FLcom/cgs/atvobserver/thermal/ThermalState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/thermal/ThermalStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/thermal/ThermalStatus;

    iget v3, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    iget v4, v1, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    iget-object v1, v1, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getState()Lcom/cgs/atvobserver/thermal/ThermalState;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    return-object v0
.end method

.method public final getTemperatureCelsius()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/thermal/ThermalState;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->temperatureCelsius:F

    iget-object v1, p0, Lcom/cgs/atvobserver/thermal/ThermalStatus;->state:Lcom/cgs/atvobserver/thermal/ThermalState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThermalStatus(temperatureCelsius="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
