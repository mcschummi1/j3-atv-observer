.class public final Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;
.super Ljava/lang/Object;
.source "ButterworthBandpassFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;",
        "",
        "lowCutoffHz",
        "",
        "highCutoffHz",
        "sampleRateHz",
        "(DDD)V",
        "a0",
        "a1",
        "a2",
        "b1",
        "b2",
        "x1",
        "x2",
        "y1",
        "y2",
        "configureCoefficients",
        "",
        "filterBufferInPlace",
        "buffer",
        "",
        "size",
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
.field private a0:D

.field private a1:D

.field private a2:D

.field private b1:D

.field private b2:D

.field private x1:D

.field private x2:D

.field private y1:D

.field private y2:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;-><init>(DDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "lowCutoffHz"    # D
    .param p3, "highCutoffHz"    # D
    .param p5, "sampleRateHz"    # D

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    nop

    .line 32
    invoke-virtual/range {p0 .. p6}, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->configureCoefficients(DDD)V

    .line 33
    nop

    .line 15
    return-void
.end method

.method public synthetic constructor <init>(DDDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 15
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 16
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    move-wide v1, p1

    goto :goto_0

    .line 15
    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 17
    const-wide p3, 0x4085e00000000000L    # 700.0

    move-wide v3, p3

    goto :goto_1

    .line 15
    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 18
    const-wide p5, 0x40d5888000000000L    # 22050.0

    move-wide v5, p5

    goto :goto_2

    .line 15
    :cond_2
    move-wide v5, p5

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;-><init>(DDD)V

    .line 66
    return-void
.end method


# virtual methods
.method public final configureCoefficients(DDD)V
    .locals 19
    .param p1, "lowCutoffHz"    # D
    .param p3, "highCutoffHz"    # D
    .param p5, "sampleRateHz"    # D

    .line 36
    move-object/from16 v0, p0

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v3, p1, v1

    div-double v3, v3, p5

    .line 37
    .local v3, "w1":D
    mul-double v1, v1, p3

    div-double v1, v1, p5

    .line 39
    .local v1, "w2":D
    sub-double v5, v1, v3

    .line 40
    .local v5, "bw":D
    mul-double v7, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    .line 42
    .local v7, "w0":D
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v11, v5, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    .line 43
    .local v11, "alpha":D
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    .line 45
    .local v13, "beta":D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double v15, v11, v9

    mul-double v17, v11, v11

    add-double v15, v15, v17

    .line 46
    .local v15, "norm":D
    div-double v9, v11, v15

    iput-wide v9, v0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->a0:D

    .line 47
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->a1:D

    .line 48
    neg-double v9, v11

    div-double/2addr v9, v15

    iput-wide v9, v0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->a2:D

    .line 49
    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    mul-double/2addr v9, v13

    div-double/2addr v9, v15

    iput-wide v9, v0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->b1:D

    .line 50
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v11

    mul-double v17, v11, v11

    add-double v9, v9, v17

    div-double/2addr v9, v15

    iput-wide v9, v0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->b2:D

    .line 51
    return-void
.end method

.method public final filterBufferInPlace([SI)V
    .locals 9
    .param p1, "buffer"    # [S
    .param p2, "size"    # I

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 55
    aget-short v1, p1, v0

    int-to-double v1, v1

    .line 56
    .local v1, "x0":D
    iget-wide v3, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->a0:D

    mul-double/2addr v3, v1

    iget-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->a1:D

    iget-wide v7, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->x1:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->a2:D

    iget-wide v7, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->x2:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->b1:D

    iget-wide v7, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->y1:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->b2:D

    iget-wide v7, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->y2:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    .line 58
    .local v3, "y0":D
    iget-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->x1:D

    iput-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->x2:D

    .line 59
    iput-wide v1, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->x1:D

    .line 60
    iget-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->y1:D

    iput-wide v5, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->y2:D

    .line 61
    iput-wide v3, p0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->y1:D

    .line 63
    double-to-int v5, v3

    const/16 v6, -0x8000

    const/16 v7, 0x7fff

    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, p1, v0

    .line 54
    .end local v1    # "x0":D
    .end local v3    # "y0":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
