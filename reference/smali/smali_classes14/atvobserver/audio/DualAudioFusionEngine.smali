.class public final Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;
.super Ljava/lang/Object;
.source "DualAudioFusionEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;",
        "",
        "()V",
        "fuseAudioStreams",
        "Lcom/cgs/atvobserver/audio/DualAudioFusionResult;",
        "phoneRpm",
        "",
        "phoneRpmVariation",
        "watchRpm",
        "isWatchAudioAvailable",
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

.field public static final INSTANCE:Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;

    invoke-direct {v0}, Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;->INSTANCE:Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fuseAudioStreams(IIIZ)Lcom/cgs/atvobserver/audio/DualAudioFusionResult;
    .locals 7
    .param p1, "phoneRpm"    # I
    .param p2, "phoneRpmVariation"    # I
    .param p3, "watchRpm"    # I
    .param p4, "isWatchAudioAvailable"    # Z

    .line 26
    if-eqz p4, :cond_3

    if-gtz p3, :cond_0

    goto :goto_2

    .line 35
    :cond_0
    sub-int v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 36
    .local v0, "rpmDiff":I
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 38
    int-to-double v1, p1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v1, v3

    int-to-double v3, p3

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_0

    .line 41
    :cond_1
    move v1, p1

    .line 36
    :goto_0
    nop

    .line 44
    .local v1, "fusedRpm":I
    const/16 v2, 0x96

    if-ge v0, v2, :cond_2

    const/16 v2, 0x62

    goto :goto_1

    :cond_2
    const/16 v2, 0x52

    .line 46
    .local v2, "confidence":I
    :goto_1
    new-instance v3, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 46
    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;-><init>(IIZ)V

    return-object v3

    .line 27
    .end local v0    # "rpmDiff":I
    .end local v1    # "fusedRpm":I
    .end local v2    # "confidence":I
    :cond_3
    :goto_2
    new-instance v0, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;

    .line 28
    nop

    .line 29
    const/16 v1, 0x50

    if-ge p2, v1, :cond_4

    const/16 v1, 0x5c

    goto :goto_3

    :cond_4
    const/16 v1, 0x3c

    .line 30
    :goto_3
    nop

    .line 27
    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/cgs/atvobserver/audio/DualAudioFusionResult;-><init>(IIZ)V

    return-object v0
.end method
