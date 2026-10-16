.class public final Lcom/cgs/atvobserver/domain/DeviceProfiler;
.super Ljava/lang/Object;
.source "DeviceProfiler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cgs/atvobserver/domain/DeviceProfiler;",
        "",
        "()V",
        "getDeviceProfile",
        "Lcom/cgs/atvobserver/domain/DeviceProfileConfig;",
        "context",
        "Landroid/content/Context;",
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

.field public static final INSTANCE:Lcom/cgs/atvobserver/domain/DeviceProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/domain/DeviceProfiler;

    invoke-direct {v0}, Lcom/cgs/atvobserver/domain/DeviceProfiler;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/domain/DeviceProfiler;->INSTANCE:Lcom/cgs/atvobserver/domain/DeviceProfiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeviceProfile(Landroid/content/Context;)Lcom/cgs/atvobserver/domain/DeviceProfileConfig;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 37
    .local v0, "model":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const/high16 v4, 0x100000

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 38
    .local v2, "maxMemoryMb":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 40
    .local v3, "cpuCores":I
    nop

    .line 42
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "J330"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_a

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "SM-J3"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    .line 54
    :cond_1
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "A71"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_9

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "SM-A715"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 67
    :cond_2
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "Razr 40"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_8

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "SM7450"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 79
    :cond_3
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "S22"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_7

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "SM-S901"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_7

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "SM-S906"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_0

    .line 92
    :cond_4
    nop

    .line 93
    const/16 v4, 0x400

    const-string v5, " Cores)"

    if-lt v2, v4, :cond_5

    const/16 v4, 0x8

    if-lt v3, v4, :cond_5

    .line 94
    new-instance v4, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    .line 95
    sget-object v7, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->UNIVERSAL_AUTO_TIER:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 96
    int-to-double v8, v2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v6, v8

    const/16 v8, 0x1800

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Universal High-End Device ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    const/16 v14, 0x40

    const/4 v15, 0x0

    const/4 v9, 0x1

    const-string v10, "UNIVERSAL_HIGH_PRECISION"

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v15}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    .line 103
    :cond_5
    const/16 v4, 0x200

    if-lt v2, v4, :cond_6

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    .line 104
    new-instance v4, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    .line 105
    sget-object v7, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->UNIVERSAL_AUTO_TIER:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 106
    int-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    const/16 v8, 0x800

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Universal Mid-Range Device ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 104
    const/16 v14, 0x40

    const/4 v15, 0x0

    const/4 v9, 0x2

    const-string v10, "UNIVERSAL_MID_PRECISION"

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v15}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    .line 114
    :cond_6
    new-instance v4, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    .line 115
    sget-object v17, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->UNIVERSAL_AUTO_TIER:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Universal Lite Device ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 114
    const/16 v24, 0x40

    const/16 v25, 0x0

    const/16 v18, 0x200

    const/16 v19, 0x4

    const-string v20, "UNIVERSAL_LITE_PRECISION"

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v25}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 80
    :cond_7
    :goto_0
    new-instance v4, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    .line 81
    sget-object v6, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->FLAGSHIP_S22_EXYNOS:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 80
    const/16 v13, 0x40

    const/4 v14, 0x0

    const/16 v7, 0x2000

    const/4 v8, 0x1

    const-string v9, "MAX_PRECISION_EXYNOS_VULKAN_FP32"

    const/4 v10, 0x1

    const-string v11, "Samsung Galaxy S22 (Exynos 2200 Flagship)"

    const/4 v12, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 68
    :cond_8
    :goto_1
    new-instance v4, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    .line 69
    sget-object v16, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->HIGH_PERFORMANCE_RAZR:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 68
    const/16 v23, 0x40

    const/16 v24, 0x0

    const/16 v17, 0x1800

    const/16 v18, 0x1

    const-string v19, "HIGH_ACCURACY_DNN_FP16"

    const/16 v20, 0x1

    const-string v21, "Motorola Razr 40 (High Tier)"

    const/16 v22, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v24}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 55
    :cond_9
    :goto_2
    new-instance v4, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    .line 56
    sget-object v6, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->MID_TIER_A71_ROOTED:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 55
    const/16 v7, 0x800

    const/4 v8, 0x2

    const-string v9, "STANDARD_DNN_FP16_ROOTED"

    const/4 v10, 0x1

    const-string v11, "Samsung Galaxy A71 (Rooted Mid Tier)"

    const/4 v12, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_4

    .line 43
    :cond_a
    :goto_3
    new-instance v4, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    .line 44
    sget-object v14, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->OPTIMIZED_LITE_J3:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 43
    const/16 v21, 0x40

    const/16 v22, 0x0

    const/16 v15, 0x400

    const/16 v16, 0x3

    const-string v17, "LITE_HEURISTIC_INT8"

    const/16 v18, 0x0

    const-string v19, "Samsung Galaxy J3 (1.0 GB RAM Limit)"

    const/16 v20, 0x0

    move-object v13, v4

    invoke-direct/range {v13 .. v22}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    :goto_4
    return-object v4
.end method
