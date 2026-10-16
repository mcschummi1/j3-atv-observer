.class public final Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;
.super Ljava/lang/Object;
.source "AdaptiveEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/adaptive/AdaptiveEngine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdaptiveEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdaptiveEngine.kt\ncom/cgs/atvobserver/adaptive/AdaptiveEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\tH\u0002J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0019H\u0002J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_status",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;",
        "currentAlpha",
        "",
        "lastCpuTotalTime",
        "",
        "lastCpuWorkTime",
        "monitoringJob",
        "Lkotlinx/coroutines/Job;",
        "panicCounter",
        "",
        "status",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getStatus",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "measureSystemMetrics",
        "",
        "readCpuLoadPct",
        "readRamAndZram",
        "Lkotlin/Pair;",
        "startAdaptiveMonitoring",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "stopAdaptiveMonitoring",
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
.field private final _status:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentAlpha:F

.field private lastCpuTotalTime:J

.field private lastCpuWorkTime:J

.field private monitoringJob:Lkotlinx/coroutines/Job;

.field private panicCounter:I

.field private final status:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;-><init>(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->_status:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 37
    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->_status:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->status:Lkotlinx/coroutines/flow/StateFlow;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->currentAlpha:F

    .line 34
    return-void
.end method

.method public static final synthetic access$measureSystemMetrics(Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;)V
    .locals 0
    .param p0, "$this"    # Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;

    .line 34
    invoke-direct {p0}, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->measureSystemMetrics()V

    return-void
.end method

.method private final measureSystemMetrics()V
    .locals 18

    .line 63
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->readCpuLoadPct()F

    move-result v10

    .line 64
    .local v10, "cpuLoad":F
    invoke-direct/range {p0 .. p0}, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->readRamAndZram()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .local v11, "freeRamMb":J
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    .line 66
    .local v13, "zramMb":J
    const/high16 v1, 0x42be0000    # 95.0f

    cmpl-float v2, v10, v1

    const-wide/16 v3, 0x32

    if-gtz v2, :cond_1

    cmp-long v2, v11, v3

    if-gez v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget v2, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->panicCounter:I

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->panicCounter:I

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    iget v2, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->panicCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->panicCounter:I

    .line 72
    :goto_1
    nop

    .line 73
    iget v2, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->panicCounter:I

    const/16 v5, 0xa

    if-ge v2, v5, :cond_8

    cmpl-float v1, v10, v1

    if-lez v1, :cond_2

    cmp-long v1, v11, v3

    if-gez v1, :cond_2

    goto :goto_4

    .line 74
    :cond_2
    const/high16 v1, 0x42aa0000    # 85.0f

    cmpl-float v1, v10, v1

    if-gtz v1, :cond_7

    const-wide/16 v1, 0x64

    cmp-long v1, v11, v1

    if-gez v1, :cond_3

    goto :goto_3

    .line 75
    :cond_3
    const/high16 v1, 0x428c0000    # 70.0f

    cmpl-float v1, v10, v1

    if-gtz v1, :cond_6

    const-wide/16 v1, 0xc8

    cmp-long v1, v11, v1

    if-gez v1, :cond_4

    goto :goto_2

    .line 76
    :cond_4
    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_5

    const-wide/16 v1, 0x190

    cmp-long v1, v11, v1

    if-lez v1, :cond_5

    sget-object v1, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->COMFORT:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    move-object v7, v1

    goto :goto_5

    .line 77
    :cond_5
    sget-object v1, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->NOMINAL:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    move-object v7, v1

    goto :goto_5

    .line 75
    :cond_6
    :goto_2
    sget-object v1, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->PRESSURE:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    move-object v7, v1

    goto :goto_5

    .line 74
    :cond_7
    :goto_3
    sget-object v1, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->CRITICAL:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    move-object v7, v1

    goto :goto_5

    .line 73
    :cond_8
    :goto_4
    sget-object v1, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->PANIC:Lcom/cgs/atvobserver/adaptive/AdaptiveZone;

    move-object v7, v1

    .line 72
    :goto_5
    nop

    .line 80
    .local v7, "targetZone":Lcom/cgs/atvobserver/adaptive/AdaptiveZone;
    sget-object v1, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Lcom/cgs/atvobserver/adaptive/AdaptiveZone;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 85
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v1, Lcom/cgs/atvobserver/ai/AppOperatingMode;->MAXIMUM_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move-object v8, v1

    goto :goto_6

    .line 84
    :pswitch_1
    sget-object v1, Lcom/cgs/atvobserver/ai/AppOperatingMode;->STANDARD_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move-object v8, v1

    goto :goto_6

    .line 83
    :pswitch_2
    sget-object v1, Lcom/cgs/atvobserver/ai/AppOperatingMode;->STANDARD_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move-object v8, v1

    goto :goto_6

    .line 82
    :pswitch_3
    sget-object v1, Lcom/cgs/atvobserver/ai/AppOperatingMode;->BASIC_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move-object v8, v1

    goto :goto_6

    .line 81
    :pswitch_4
    sget-object v1, Lcom/cgs/atvobserver/ai/AppOperatingMode;->SAFE_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move-object v8, v1

    .line 80
    :goto_6
    nop

    .line 88
    .local v8, "targetMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    sget-object v1, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v8}, Lcom/cgs/atvobserver/ai/AppOperatingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 92
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_5
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7

    .line 91
    :pswitch_6
    const v1, 0x3f333333    # 0.7f

    goto :goto_7

    .line 90
    :pswitch_7
    const v1, 0x3eb33333    # 0.35f

    goto :goto_7

    .line 89
    :pswitch_8
    const v1, 0x3dcccccd    # 0.1f

    .line 88
    :goto_7
    move v15, v1

    .line 96
    .local v15, "targetAlpha":F
    iget v1, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->currentAlpha:F

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v15

    add-float/2addr v1, v2

    iput v1, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->currentAlpha:F

    .line 98
    iget-object v9, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->_status:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v5, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    iget v6, v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->currentAlpha:F

    .line 98
    move-object v1, v5

    move v2, v10

    move-wide v3, v11

    move-object v0, v5

    move/from16 v16, v6

    move-wide v5, v13

    move/from16 v17, v10

    move-object v10, v9

    .end local v10    # "cpuLoad":F
    .local v17, "cpuLoad":F
    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;-><init>(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)V

    invoke-interface {v10, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 106
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final readCpuLoadPct()F
    .locals 29

    .line 109
    move-object/from16 v1, p0

    .line 110
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/stat"

    const-string v4, "r"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v0, "reader":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    .line 112
    .local v3, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 114
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "\\s+"

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    .line 115
    .local v4, "tokens":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    .line 116
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 117
    .local v5, "user":J
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 118
    .local v7, "nice":J
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 119
    .local v9, "system":J
    const/4 v11, 0x4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 120
    .local v11, "idle":J
    const/4 v13, 0x5

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 121
    .local v13, "iowait":J
    const/4 v15, 0x6

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 122
    .local v15, "irq":J
    const/4 v2, 0x7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 124
    .local v17, "softirq":J
    add-long v19, v5, v7

    add-long v19, v19, v9

    add-long v19, v19, v15

    move-object/from16 v21, v3

    .end local v3    # "line":Ljava/lang/String;
    .local v21, "line":Ljava/lang/String;
    add-long v2, v19, v17

    .line 125
    .local v2, "work":J
    add-long v19, v2, v11

    move-object/from16 v22, v4

    move-wide/from16 v23, v5

    .end local v4    # "tokens":Ljava/util/List;
    .end local v5    # "user":J
    .local v22, "tokens":Ljava/util/List;
    .local v23, "user":J
    add-long v4, v19, v13

    .line 127
    .local v4, "total":J
    move-wide/from16 v19, v7

    .end local v7    # "nice":J
    .local v19, "nice":J
    iget-wide v6, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->lastCpuWorkTime:J

    sub-long v6, v2, v6

    .line 128
    .local v6, "workDiff":J
    move-wide/from16 v25, v9

    .end local v9    # "system":J
    .local v25, "system":J
    iget-wide v8, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->lastCpuTotalTime:J

    sub-long v8, v4, v8

    .line 130
    .local v8, "totalDiff":J
    iput-wide v2, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->lastCpuWorkTime:J

    .line 131
    iput-wide v4, v1, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->lastCpuTotalTime:J

    .line 133
    const-wide/16 v27, 0x0

    cmp-long v10, v8, v27

    if-lez v10, :cond_1

    .line 134
    long-to-float v10, v6

    move-object/from16 v27, v0

    .end local v0    # "reader":Ljava/io/RandomAccessFile;
    .local v27, "reader":Ljava/io/RandomAccessFile;
    long-to-float v0, v8

    div-float/2addr v10, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v10, v0

    const/4 v1, 0x0

    invoke-static {v10, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    .line 135
    .end local v27    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "reader":Ljava/io/RandomAccessFile;
    :cond_1
    move-object/from16 v27, v0

    .end local v0    # "reader":Ljava/io/RandomAccessFile;
    .restart local v27    # "reader":Ljava/io/RandomAccessFile;
    const/high16 v2, 0x420c0000    # 35.0f

    .end local v2    # "work":J
    .end local v4    # "total":J
    .end local v6    # "workDiff":J
    .end local v8    # "totalDiff":J
    .end local v11    # "idle":J
    .end local v13    # "iowait":J
    .end local v15    # "irq":J
    .end local v17    # "softirq":J
    .end local v19    # "nice":J
    .end local v23    # "user":J
    .end local v25    # "system":J
    goto :goto_0

    .line 136
    .end local v21    # "line":Ljava/lang/String;
    .end local v22    # "tokens":Ljava/util/List;
    .end local v27    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .local v4, "tokens":Ljava/util/List;
    :cond_2
    move-object/from16 v27, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v0    # "reader":Ljava/io/RandomAccessFile;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "tokens":Ljava/util/List;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v22    # "tokens":Ljava/util/List;
    .restart local v27    # "reader":Ljava/io/RandomAccessFile;
    const/high16 v2, 0x420c0000    # 35.0f

    .end local v21    # "line":Ljava/lang/String;
    .end local v22    # "tokens":Ljava/util/List;
    .end local v27    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "_":Ljava/lang/Exception;
    const/high16 v2, 0x420c0000    # 35.0f

    .line 109
    .end local v0    # "_":Ljava/lang/Exception;
    :goto_1
    return v2
.end method

.method private final readRamAndZram()Lkotlin/Pair;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 143
    nop

    .line 144
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 145
    .local v0, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->context:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/ActivityManager;

    .line 146
    .local v4, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 148
    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/high16 v7, 0x100000

    int-to-long v7, v7

    div-long/2addr v5, v7

    .line 149
    .local v5, "freeMb":J
    const-wide/16 v7, 0x0

    .line 152
    .local v7, "zramMb":J
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v10, "/proc/meminfo"

    const-string v11, "r"

    invoke-direct {v9, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v9, "memInfoReader":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 154
    .local v10, "line":Ljava/lang/Object;
    const-wide/16 v11, 0x0

    .line 155
    .local v11, "swapTotal":J
    const-wide/16 v13, 0x0

    .line 157
    .local v13, "swapFree":J
    :goto_0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    .line 178
    .local v16, "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 157
    .local v17, "$i$a$-also-AdaptiveEngine$readRamAndZram$1":I
    move-object/from16 v10, v16

    .end local v16    # "it":Ljava/lang/String;
    .end local v17    # "$i$a$-also-AdaptiveEngine$readRamAndZram$1":I
    if-eqz v15, :cond_5

    .line 158
    if-nez v10, :cond_0

    move-object/from16 v18, v0

    move-object/from16 v21, v4

    move-wide/from16 v19, v7

    goto/16 :goto_3

    :cond_0
    move-object v15, v10

    .line 159
    .local v15, "l":Ljava/lang/String;
    const-string v1, "SwapTotal:"

    const/4 v2, 0x0

    move-object/from16 v18, v0

    .end local v0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .local v18, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {v15, v1, v3, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    const-string v2, "[^0-9]"

    if-eqz v1, :cond_2

    .line 160
    :try_start_1
    move-object v1, v15

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    move-wide v11, v0

    move-object/from16 v3, p0

    move-object/from16 v0, v18

    goto :goto_0

    .line 161
    :cond_2
    const-string v1, "SwapFree:"

    move-object/from16 v21, v4

    move-wide/from16 v19, v7

    const/4 v4, 0x0

    const/4 v7, 0x2

    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "zramMb":J
    .local v19, "zramMb":J
    .local v21, "activityManager":Landroid/app/ActivityManager;
    invoke-static {v15, v1, v3, v7, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    move-object v1, v15

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    move-wide v13, v0

    move-object/from16 v3, p0

    move-object/from16 v0, v18

    move-wide/from16 v7, v19

    move-object/from16 v4, v21

    .end local v15    # "l":Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v18    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .end local v19    # "zramMb":J
    .end local v21    # "activityManager":Landroid/app/ActivityManager;
    .restart local v0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "zramMb":J
    :cond_4
    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v0, v18

    move-wide/from16 v7, v19

    move-object/from16 v4, v21

    .end local v0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "zramMb":J
    .restart local v18    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v19    # "zramMb":J
    .restart local v21    # "activityManager":Landroid/app/ActivityManager;
    goto/16 :goto_0

    .line 165
    .end local v18    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .end local v19    # "zramMb":J
    .end local v21    # "activityManager":Landroid/app/ActivityManager;
    .restart local v0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "zramMb":J
    :cond_5
    move-object/from16 v18, v0

    move-object/from16 v21, v4

    move-wide/from16 v19, v7

    .end local v0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "zramMb":J
    .restart local v18    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v19    # "zramMb":J
    .restart local v21    # "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 167
    const-wide/16 v1, 0x0

    cmp-long v0, v11, v1

    if-lez v0, :cond_6

    .line 168
    sub-long v0, v11, v13

    const/16 v2, 0x400

    int-to-long v2, v2

    div-long/2addr v0, v2

    move-wide v7, v0

    .end local v19    # "zramMb":J
    .restart local v7    # "zramMb":J
    goto :goto_4

    .line 167
    .end local v7    # "zramMb":J
    .restart local v19    # "zramMb":J
    :cond_6
    move-wide/from16 v7, v19

    .line 171
    .end local v19    # "zramMb":J
    .restart local v7    # "zramMb":J
    :goto_4
    new-instance v0, Lkotlin/Pair;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "freeMb":J
    .end local v7    # "zramMb":J
    .end local v9    # "memInfoReader":Ljava/io/RandomAccessFile;
    .end local v10    # "line":Ljava/lang/Object;
    .end local v11    # "swapTotal":J
    .end local v13    # "swapFree":J
    .end local v18    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .end local v21    # "activityManager":Landroid/app/ActivityManager;
    goto :goto_5

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "_":Ljava/lang/Exception;
    new-instance v1, Lkotlin/Pair;

    const-wide/16 v2, 0x15e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 143
    .end local v0    # "_":Ljava/lang/Exception;
    :goto_5
    return-object v0
.end method


# virtual methods
.method public final getStatus()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->status:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final startAdaptiveMonitoring(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->monitoringJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine$startAdaptiveMonitoring$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine$startAdaptiveMonitoring$1;-><init>(Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->monitoringJob:Lkotlinx/coroutines/Job;

    .line 55
    return-void
.end method

.method public final stopAdaptiveMonitoring()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->monitoringJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 59
    :cond_0
    iput-object v1, p0, Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;->monitoringJob:Lkotlinx/coroutines/Job;

    .line 60
    return-void
.end method
