.class public final Lcom/cgs/atvobserver/audio/DualAudioFusionResult;
.super Ljava/lang/Object;
.source "DualAudioFusionEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/DualAudioFusionResult;",
        "",
        "fusedRpm",
        "",
        "confidenceScore",
        "isWindContaminationMitigated",
        "",
        "(IIZ)V",
        "getConfidenceScore",
        "()I",
        "getFusedRpm",
        "()Z",
        "component1",
        "component2",
        "component3",
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
.field private final confidenceScore:I

.field private final fusedRpm:I

.field private final isWindContaminationMitigated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "fusedRpm"    # I
    .param p2, "confidenceScore"    # I
    .param p3, "isWindContaminationMitigated"    # Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    .line 7
    iput p2, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    .line 8
    iput-boolean p3, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    .line 5
    return-void
.end method

.method public synthetic constructor <init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 5
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 7
    const/16 p2, 0x5a

    .line 5
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 8
    const/4 p3, 0x1

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;-><init>(IIZ)V

    .line 9
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/audio/DualAudioFusionResult;IIZILjava/lang/Object;)Lcom/cgs/atvobserver/audio/DualAudioFusionResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->copy(IIZ)Lcom/cgs/atvobserver/audio/DualAudioFusionResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    return v0
.end method

.method public final copy(IIZ)Lcom/cgs/atvobserver/audio/DualAudioFusionResult;
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;-><init>(IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;

    iget v3, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    iget v4, v1, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    iget v4, v1, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    iget-boolean v1, v1, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getConfidenceScore()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    return v0
.end method

.method public final getFusedRpm()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isWindContaminationMitigated()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->fusedRpm:I

    iget v1, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->confidenceScore:I

    iget-boolean v2, p0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;->isWindContaminationMitigated:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DualAudioFusionResult(fusedRpm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", confidenceScore="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWindContaminationMitigated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
