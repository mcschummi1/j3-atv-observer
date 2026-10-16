.class public final Lcom/cgs/atvobserver/audio/RevLimitStatus;
.super Ljava/lang/Object;
.source "SoftwareRevLimiterWarning.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/RevLimitStatus;",
        "",
        "state",
        "Lcom/cgs/atvobserver/audio/RevLimitState;",
        "currentRpm",
        "",
        "warningRpm",
        "criticalRpm",
        "(Lcom/cgs/atvobserver/audio/RevLimitState;III)V",
        "getCriticalRpm",
        "()I",
        "getCurrentRpm",
        "getState",
        "()Lcom/cgs/atvobserver/audio/RevLimitState;",
        "getWarningRpm",
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
.field private final criticalRpm:I

.field private final currentRpm:I

.field private final state:Lcom/cgs/atvobserver/audio/RevLimitState;

.field private final warningRpm:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/audio/RevLimitStatus;-><init>(Lcom/cgs/atvobserver/audio/RevLimitState;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/cgs/atvobserver/audio/RevLimitState;III)V
    .locals 1
    .param p1, "state"    # Lcom/cgs/atvobserver/audio/RevLimitState;
    .param p2, "currentRpm"    # I
    .param p3, "warningRpm"    # I
    .param p4, "criticalRpm"    # I

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    .line 13
    iput p2, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    .line 14
    iput p3, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    .line 15
    iput p4, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lcom/cgs/atvobserver/audio/RevLimitState;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 12
    sget-object p1, Lcom/cgs/atvobserver/audio/RevLimitState;->NORMAL:Lcom/cgs/atvobserver/audio/RevLimitState;

    .line 11
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 13
    const/4 p2, 0x0

    .line 11
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 14
    const/16 p3, 0x1b58

    .line 11
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 15
    const/16 p4, 0x1f40

    .line 11
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cgs/atvobserver/audio/RevLimitStatus;-><init>(Lcom/cgs/atvobserver/audio/RevLimitState;III)V

    .line 16
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/audio/RevLimitStatus;Lcom/cgs/atvobserver/audio/RevLimitState;IIIILjava/lang/Object;)Lcom/cgs/atvobserver/audio/RevLimitStatus;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cgs/atvobserver/audio/RevLimitStatus;->copy(Lcom/cgs/atvobserver/audio/RevLimitState;III)Lcom/cgs/atvobserver/audio/RevLimitStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/cgs/atvobserver/audio/RevLimitState;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    return v0
.end method

.method public final copy(Lcom/cgs/atvobserver/audio/RevLimitState;III)Lcom/cgs/atvobserver/audio/RevLimitStatus;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/audio/RevLimitStatus;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cgs/atvobserver/audio/RevLimitStatus;-><init>(Lcom/cgs/atvobserver/audio/RevLimitState;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/audio/RevLimitStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/audio/RevLimitStatus;

    iget-object v3, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    iget-object v4, v1, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    iget v4, v1, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    iget v4, v1, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    iget v1, v1, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCriticalRpm()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    return v0
.end method

.method public final getCurrentRpm()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    return v0
.end method

.method public final getState()Lcom/cgs/atvobserver/audio/RevLimitState;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    return-object v0
.end method

.method public final getWarningRpm()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/audio/RevLimitState;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->state:Lcom/cgs/atvobserver/audio/RevLimitState;

    iget v1, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->currentRpm:I

    iget v2, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->warningRpm:I

    iget v3, p0, Lcom/cgs/atvobserver/audio/RevLimitStatus;->criticalRpm:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RevLimitStatus(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", currentRpm="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warningRpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", criticalRpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
