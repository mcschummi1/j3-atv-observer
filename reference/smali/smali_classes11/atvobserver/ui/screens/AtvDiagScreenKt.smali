.class public final Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;
.super Ljava/lang/Object;
.source "AtvDiagScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtvDiagScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtvDiagScreen.kt\ncom/cgs/atvobserver/ui/screens/AtvDiagScreenKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,154:1\n1116#2,6:155\n1116#2,6:161\n154#3:167\n154#3:168\n154#3:241\n154#3:242\n154#3:243\n154#3:244\n154#3:245\n78#4,2:169\n80#4:199\n73#4,7:200\n80#4:235\n84#4:240\n84#4:250\n79#5,11:171\n79#5,11:207\n92#5:239\n92#5:249\n79#5,11:256\n92#5:288\n456#6,8:182\n464#6,3:196\n456#6,8:218\n464#6,3:232\n467#6,3:236\n467#6,3:246\n456#6,8:267\n464#6,3:281\n467#6,3:285\n3737#7,6:190\n3737#7,6:226\n3737#7,6:275\n88#8,5:251\n93#8:284\n97#8:289\n81#9:290\n107#9,2:291\n*S KotlinDebug\n*F\n+ 1 AtvDiagScreen.kt\ncom/cgs/atvobserver/ui/screens/AtvDiagScreenKt\n*L\n30#1:155,6\n32#1:161,6\n54#1:167\n57#1:168\n69#1:241\n96#1:242\n116#1:243\n132#1:244\n137#1:245\n50#1:169,2\n50#1:199\n59#1:200,7\n59#1:235\n59#1:240\n50#1:250\n50#1:171,11\n59#1:207,11\n59#1:239\n50#1:249\n146#1:256,11\n146#1:288\n50#1:182,8\n50#1:196,3\n59#1:218,8\n59#1:232,3\n59#1:236,3\n50#1:246,3\n146#1:267,8\n146#1:281,3\n146#1:285,3\n50#1:190,6\n59#1:226,6\n146#1:275,6\n146#1:251,5\n146#1:284\n146#1:289\n30#1:290\n30#1:291,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\u001a?\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000bH\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\u001d\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0003\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u008e\u0002"
    }
    d2 = {
        "AtvDiagScreen",
        "",
        "audioData",
        "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
        "motionData",
        "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
        "aiOutput",
        "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
        "temperatureCelsius",
        "",
        "onBackToMenu",
        "Lkotlin/Function0;",
        "(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "DiagMetricRow",
        "label",
        "",
        "value",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V",
        "app_debug",
        "showFanQuestion",
        ""
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final AtvDiagScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 102
    .param p0, "audioData"    # Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .param p1, "motionData"    # Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .param p2, "aiOutput"    # Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .param p3, "temperatureCelsius"    # D
    .param p5, "onBackToMenu"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            "D",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-wide/from16 v10, p3

    move-object/from16 v8, p5

    move/from16 v7, p7

    const-string v0, "audioData"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackToMenu"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const v0, -0x33fa603f    # -3.502874E7f

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AtvDiagScreen)P(1,2!1,4)29@1079L34,31@1154L93,31@1119L128,54@1821L21,49@1663L4538:AtvDiagScreen.kt#xkugs2"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v7, 0xe

    if-nez v2, :cond_2

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v7, 0x70

    if-nez v2, :cond_5

    and-int/lit8 v2, p8, 0x2

    if-nez v2, :cond_3

    move-object/from16 v2, p1

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v2, p1

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v2, p1

    :goto_3
    and-int/lit16 v4, v7, 0x380

    if-nez v4, :cond_8

    and-int/lit8 v4, p8, 0x4

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v4, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v4, p2

    :goto_5
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v7, 0x1c00

    if-nez v5, :cond_b

    invoke-interface {v6, v10, v11}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    :cond_b
    :goto_7
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    const v5, 0xe000

    and-int/2addr v5, v7

    if-nez v5, :cond_e

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x4000

    goto :goto_8

    :cond_d
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    :cond_e
    :goto_9
    const v5, 0xb6db

    and-int/2addr v5, v1

    const/16 v13, 0x2492

    if-ne v5, v13, :cond_10

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_a

    .line 142
    :cond_f
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v12, v1

    move-object v10, v2

    move-object v11, v4

    goto/16 :goto_1b

    .line 29
    :cond_10
    :goto_a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_13

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_b

    .line 26
    :cond_11
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v5, p8, 0x2

    if-eqz v5, :cond_12

    and-int/lit8 v1, v1, -0x71

    :cond_12
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_15

    and-int/lit16 v1, v1, -0x381

    goto :goto_c

    .line 29
    :cond_13
    :goto_b
    and-int/lit8 v5, p8, 0x2

    if-eqz v5, :cond_14

    .line 25
    new-instance v5, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/16 v26, 0x3ff

    const/16 v27, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v27}, Lcom/cgs/atvobserver/sensor/MotionSensorData;-><init>(DFFFDZZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v5

    .end local p1    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v2, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    and-int/lit8 v1, v1, -0x71

    :cond_14
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_15

    .line 26
    new-instance v5, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-object v13, v5

    const v45, 0x7ffffff

    const/16 v46, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v13 .. v46}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;-><init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v5

    .end local p2    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .local v4, "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    and-int/lit16 v1, v1, -0x381

    :cond_15
    :goto_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 29
    const/4 v5, -0x1

    const-string v13, "com.cgs.atvobserver.ui.screens.AtvDiagScreen (AtvDiagScreen.kt:28)"

    invoke-static {v0, v1, v5, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    const v0, 0x24a1f4bc

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):AtvDiagScreen.kt#9igjgp"

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 30
    move-object v5, v6

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    move v14, v13

    .local v14, "invalid$iv":Z
    const/4 v15, 0x0

    .line 155
    .local v15, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 156
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    const/4 v13, 0x0

    if-ne v12, v3, :cond_17

    .line 157
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$showFanQuestion$2":I
    move/from16 p2, v3

    const/16 v17, 0x0

    .end local v3    # "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$showFanQuestion$2":I
    .local p2, "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$showFanQuestion$2":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v7, 0x2

    invoke-static {v3, v13, v7, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 157
    .end local p2    # "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$showFanQuestion$2":I
    nop

    .line 158
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    nop

    .end local v3    # "value$iv":Ljava/lang/Object;
    goto :goto_d

    .line 160
    :cond_17
    move-object v3, v12

    .line 156
    :goto_d
    nop

    .line 155
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 30
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "invalid$iv":Z
    .end local v15    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .local v3, "showFanQuestion$delegate":Landroidx/compose/runtime/MutableState;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 32
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const v7, 0x24a1fe57

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v0, v1, 0x1c00

    const/16 v12, 0x800

    if-ne v0, v12, :cond_18

    const/4 v0, 0x1

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    :goto_e
    move-object v12, v6

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 161
    .local v14, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 162
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_1a

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v15, v7, :cond_19

    goto :goto_f

    .line 166
    :cond_19
    move/from16 p6, v0

    move-object v0, v15

    goto :goto_10

    .line 163
    :cond_1a
    :goto_f
    const/4 v7, 0x0

    .line 32
    .local v7, "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$1":I
    move/from16 p6, v0

    .end local v0    # "invalid$iv":Z
    .local p6, "invalid$iv":Z
    new-instance v0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$1$1;

    invoke-direct {v0, v10, v11, v3, v13}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$1$1;-><init>(DLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 163
    .end local v7    # "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$1":I
    nop

    .line 164
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    nop

    .line 162
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_10
    nop

    .line 161
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 32
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    .end local p6    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v7, v1, 0x9

    and-int/lit8 v7, v7, 0xe

    or-int/lit8 v7, v7, 0x40

    invoke-static {v5, v0, v6, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 38
    const-wide v14, -0x3f73e00000000000L    # -900.0

    cmpg-double v0, v10, v14

    if-gtz v0, :cond_1b

    .line 39
    const-string v0, "UNAVAILABLE (NO PROBE)"

    goto :goto_14

    .line 41
    :cond_1b
    nop

    .line 42
    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    cmpg-double v0, v10, v14

    if-gez v0, :cond_1c

    const-string v0, "COLD (WARMING UP)"

    goto :goto_13

    .line 43
    :cond_1c
    cmpg-double v0, v14, v10

    if-gtz v0, :cond_1d

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    cmpg-double v0, v10, v14

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_11

    :cond_1d
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1e

    const-string v0, "NORMAL"

    goto :goto_13

    .line 44
    :cond_1e
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    cmpg-double v0, v14, v10

    if-gtz v0, :cond_1f

    const-wide v14, 0x405cc00000000000L    # 115.0

    cmpg-double v0, v10, v14

    if-gtz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_12

    :cond_1f
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_20

    const-string v0, "ELEVATED"

    goto :goto_13

    .line 45
    :cond_20
    const-string v0, "CRITICAL"

    .line 41
    :goto_13
    nop

    .line 47
    .local v0, "label":Ljava/lang/String;
    double-to-int v5, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\u00b0C ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 38
    .end local v0    # "label":Ljava/lang/String;
    :goto_14
    nop

    .line 51
    .local v0, "tempDisplay":Ljava/lang/String;
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 52
    const/4 v7, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v7, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 53
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsBackground()J

    move-result-wide v15

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 54
    const/16 v12, 0xc

    .local v12, "$this$dp$iv":I
    const/4 v14, 0x0

    .line 167
    .local v14, "$i$f$getDp":I
    int-to-float v15, v12

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    .line 54
    .end local v12    # "$this$dp$iv":I
    .end local v14    # "$i$f$getDp":I
    invoke-static {v5, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 55
    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v6, v5, v12}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v15

    const/16 v19, 0xe

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/ScrollKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 56
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v12

    .line 57
    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v15, 0x8

    .local v15, "$this$dp$iv":I
    const/16 v16, 0x0

    .line 168
    .local v16, "$i$f$getDp":I
    int-to-float v7, v15

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 57
    .end local v15    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    invoke-virtual {v14, v7}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v7

    .line 50
    const/16 v14, 0x1b0

    move/from16 v25, v14

    .local v25, "$changed$iv":I
    const/16 v26, 0x0

    .local v26, "$i$f$Column":I
    const v14, -0x1cd0f17e

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v6, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 169
    check-cast v7, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    shr-int/lit8 v16, v25, 0x3

    and-int/lit8 v16, v16, 0xe

    shr-int/lit8 v17, v25, 0x3

    and-int/lit8 v17, v17, 0x70

    or-int v13, v16, v17

    invoke-static {v7, v12, v6, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .local v7, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v25, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 170
    move/from16 v27, v12

    .local v27, "$changed$iv$iv":I
    const/16 v28, 0x0

    .local v28, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v6, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 171
    const/4 v12, 0x0

    invoke-static {v6, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v29

    .line 172
    .local v29, "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 174
    .local v13, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 181
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v5

    shl-int/lit8 v14, v27, 0x9

    and-int/lit16 v14, v14, 0x1c00

    const/4 v8, 0x6

    or-int/2addr v14, v8

    .line 173
    move/from16 v30, v14

    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v30, "$changed$iv$iv$iv":I
    move-object v14, v12

    .local v14, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v31, 0x0

    .line 182
    .local v31, "$i$f$ReusableComposeNode":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 183
    :cond_21
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 184
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_22

    .line 185
    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    .line 187
    :cond_22
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 189
    :goto_15
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .local v12, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 176
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v13, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v19, 0x0

    .line 190
    .local v19, "$i$f$set-impl":I
    move-object/from16 v21, v12

    .local v21, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 191
    .local v22, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v23

    if-nez v23, :cond_24

    move-object/from16 v32, v7

    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v32, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    goto :goto_16

    :cond_23
    move-object/from16 v10, v21

    goto :goto_17

    .end local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_24
    move-object/from16 v32, v7

    .line 192
    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_16
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v10, v21

    .end local v21    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v10, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    :goto_17
    nop

    .line 190
    .end local v10    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 195
    nop

    .line 180
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "$i$f$set-impl":I
    nop

    .line 189
    .end local v12    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 196
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v7

    shr-int/lit8 v8, v30, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v6, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const v7, 0x7ab4aae9

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 198
    shr-int/lit8 v7, v30, 0x9

    and-int/lit8 v7, v7, 0xe

    .local v7, "$changed$iv":I
    move-object v8, v6

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 199
    .local v10, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v11, 0x107e0298

    const-string v12, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v8, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v11, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v12, v25, 0x6

    and-int/lit8 v12, v12, 0x70

    const/16 v17, 0x6

    or-int/lit8 v33, v12, 0x6

    .local v33, "$changed":I
    check-cast v11, Landroidx/compose/foundation/layout/ColumnScope;

    .local v11, "$this$AtvDiagScreen_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v12, v8

    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 59
    .local v46, "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2":I
    move-object/from16 v47, v5

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v47, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const v5, 0xa5b1dd1

    move/from16 v48, v7

    .end local v7    # "$changed$iv":I
    .local v48, "$changed$iv":I
    const-string v7, "C58@1978L295,93@3733L39,92@3693L997,113@4783L39,112@4743L1096,131@5849L40,135@5979L48,133@5899L296:AtvDiagScreen.kt#xkugs2"

    invoke-static {v12, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .local v5, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    const/16 v7, 0x180

    .restart local v7    # "$changed$iv":I
    const/16 v17, 0x0

    move/from16 v49, v10

    const v10, -0x1cd0f17e

    .end local v10    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .local v17, "$i$f$Column":I
    .local v49, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 200
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 201
    .local v10, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v15

    .line 205
    .local v15, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v16, v7, 0x3

    and-int/lit8 v16, v16, 0xe

    shr-int/lit8 v19, v7, 0x3

    and-int/lit8 v19, v19, 0x70

    move-object/from16 v50, v11

    .end local v11    # "$this$AtvDiagScreen_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    .local v50, "$this$AtvDiagScreen_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    or-int v11, v16, v19

    invoke-static {v15, v5, v12, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v7, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 206
    nop

    .local v16, "$changed$iv$iv":I
    const/16 v19, 0x0

    move-object/from16 v21, v5

    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v19, "$i$f$Layout":I
    .local v21, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    const v5, -0x4ee9b9da

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 207
    const/4 v5, 0x0

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v5

    .line 208
    .local v5, "compositeKeyHash$iv$iv":I
    move-object/from16 p1, v13

    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local p1, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 210
    .restart local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v22

    .line 217
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v23

    move-object/from16 v24, v10

    .end local v10    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v24, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v10, v16, 0x9

    and-int/lit16 v10, v10, 0x1c00

    const/16 v20, 0x6

    or-int/lit8 v10, v10, 0x6

    .line 209
    move-object/from16 v34, v22

    .local v34, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v22, v23

    .local v10, "$changed$iv$iv$iv":I
    .local v22, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v23, 0x0

    .line 218
    .local v23, "$i$f$ReusableComposeNode":I
    move-object/from16 v51, v14

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v51, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 219
    :cond_25
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 220
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_26

    .line 221
    move-object/from16 v14, v34

    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    .line 223
    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_26
    move-object/from16 v14, v34

    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 225
    :goto_18
    move-object/from16 v34, v14

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .local v14, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v35, 0x0

    .line 212
    .local v35, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v37, v15

    .end local v15    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v37, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v11, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 213
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v13, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 215
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    .local v15, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v36, 0x0

    .line 226
    .local v36, "$i$f$set-impl":I
    move-object/from16 v38, v14

    .local v38, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 227
    .local v39, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v40

    if-nez v40, :cond_28

    move-object/from16 v40, v11

    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v40, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v41, v13

    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v41, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_27

    goto :goto_19

    :cond_27
    move-object/from16 v13, v38

    goto :goto_1a

    .end local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v41    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_28
    move-object/from16 v40, v11

    move-object/from16 v41, v13

    .line 228
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v41    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v13, v38

    .end local v38    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11, v15}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    :goto_1a
    nop

    .line 226
    .end local v13    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 231
    nop

    .line 216
    .end local v15    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v36    # "$i$f$set-impl":I
    nop

    .line 225
    .end local v14    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v35    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 232
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v11

    shr-int/lit8 v13, v10, 0x3

    and-int/lit8 v13, v13, 0x70

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, v22

    .end local v22    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v14, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v14, v11, v12, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const v11, 0x7ab4aae9

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 234
    shr-int/lit8 v11, v10, 0x9

    and-int/lit8 v11, v11, 0xe

    .local v11, "$changed$iv":I
    move-object v13, v12

    .local v13, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 235
    .local v15, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v22, v5

    .end local v5    # "compositeKeyHash$iv$iv":I
    .local v22, "compositeKeyHash$iv$iv":I
    const v5, 0x107e0298

    move/from16 v35, v10

    .end local v10    # "$changed$iv$iv$iv":I
    .local v35, "$changed$iv$iv$iv":I
    const-string v10, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v13, v5, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x70

    const/16 v20, 0x6

    or-int/lit8 v10, v10, 0x6

    .local v10, "$changed":I
    check-cast v5, Landroidx/compose/foundation/layout/ColumnScope;

    .local v5, "$this$AtvDiagScreen_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v36, v13

    .local v36, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v98, v36

    move-object/from16 v73, v36

    const/16 v38, 0x0

    .line 60
    .local v38, "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2$1":I
    move-object/from16 v39, v5

    .end local v5    # "$this$AtvDiagScreen_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/ColumnScope;
    .local v39, "$this$AtvDiagScreen_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/ColumnScope;
    const v5, 0x62fbef17

    move/from16 v42, v7

    .end local v7    # "$changed$iv":I
    .local v42, "$changed$iv":I
    const-string v7, "C59@2051L102,60@2166L97:AtvDiagScreen.kt#xkugs2"

    move/from16 v43, v10

    move-object/from16 v10, v36

    .end local v36    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    .local v43, "$changed":I
    invoke-static {v10, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v5, 0x12

    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v56

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v59

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v54

    const/16 v75, 0x0

    const v76, 0x1ffd2

    const-string v52, "ATV DIAG - LIVE OBSERVER AI"

    const/16 v53, 0x0

    const/16 v58, 0x0

    const/16 v60, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const v74, 0x30d86

    invoke-static/range {v52 .. v76}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 61
    const/16 v5, 0xb

    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v81

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v79

    const/16 v100, 0x0

    const v101, 0x1fff2

    const-string v77, "Real-Time Sensor Fusion & AI Inspection Panel"

    const/16 v78, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const-wide/16 v86, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const-wide/16 v90, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v99, 0xd86

    invoke-static/range {v77 .. v101}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 60
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 62
    nop

    .line 235
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2$1":I
    .end local v39    # "$this$AtvDiagScreen_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v43    # "$changed":I
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 234
    .end local v11    # "$changed$iv":I
    .end local v13    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 236
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 237
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 238
    nop

    .end local v14    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v23    # "$i$f$ReusableComposeNode":I
    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v35    # "$changed$iv$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 239
    nop

    .end local v16    # "$changed$iv$iv":I
    .end local v19    # "$i$f$Layout":I
    .end local v22    # "compositeKeyHash$iv$iv":I
    .end local v41    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 240
    nop

    .end local v17    # "$i$f$Column":I
    .end local v21    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v24    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v37    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v42    # "$changed$iv":I
    const v5, -0x49fcee89

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "66@2412L38,65@2368L1265"

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 65
    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->AtvDiagScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 67
    sget-object v34, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v35

    sget v5, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    const/4 v7, 0x6

    or-int/lit8 v44, v5, 0x6

    const/16 v45, 0xe

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    move-object/from16 v43, v12

    invoke-virtual/range {v34 .. v45}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v36

    .line 68
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v5, v7, v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    .line 69
    const/16 v5, 0x8

    .local v5, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 241
    .local v7, "$i$f$getDp":I
    int-to-float v10, v5

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 69
    .end local v5    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    .line 68
    nop

    .line 69
    move-object/from16 v35, v5

    check-cast v35, Landroidx/compose/ui/graphics/Shape;

    .line 67
    nop

    .line 70
    new-instance v5, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2;

    invoke-direct {v5, v3}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v7, -0x2eaeda22

    const/4 v10, 0x1

    invoke-static {v12, v7, v10, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v39, v5

    check-cast v39, Lkotlin/jvm/functions/Function3;

    .line 66
    const/16 v37, 0x0

    const/16 v38, 0x0

    const v41, 0x30006

    const/16 v42, 0x18

    move-object/from16 v40, v12

    invoke-static/range {v34 .. v42}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :cond_29
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 94
    sget-object v34, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v35

    sget v5, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    const/4 v7, 0x6

    or-int/lit8 v44, v5, 0x6

    const/16 v45, 0xe

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    move-object/from16 v43, v12

    invoke-virtual/range {v34 .. v45}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v36

    .line 95
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v5, v7, v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    .line 96
    const/16 v5, 0xa

    .restart local v5    # "$this$dp$iv":I
    const/4 v7, 0x0

    .line 242
    .restart local v7    # "$i$f$getDp":I
    int-to-float v10, v5

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 96
    .end local v5    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    .line 95
    nop

    .line 96
    move-object/from16 v35, v5

    check-cast v35, Landroidx/compose/ui/graphics/Shape;

    .line 94
    nop

    .line 97
    new-instance v5, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$3;

    invoke-direct {v5, v4}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$3;-><init>(Lcom/cgs/atvobserver/ai/ObserverAiOutput;)V

    const v7, -0x306d3f27    # -4.924224E9f

    const/4 v10, 0x1

    invoke-static {v12, v7, v10, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v39, v5

    check-cast v39, Lkotlin/jvm/functions/Function3;

    .line 93
    const/16 v37, 0x0

    const/16 v38, 0x0

    const v41, 0x30006

    const/16 v42, 0x18

    move-object/from16 v40, v12

    invoke-static/range {v34 .. v42}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 114
    sget-object v34, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v35

    sget v5, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    const/4 v7, 0x6

    or-int/lit8 v44, v5, 0x6

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    invoke-virtual/range {v34 .. v45}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v36

    .line 115
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v5, v7, v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    .line 116
    const/16 v5, 0xa

    .restart local v5    # "$this$dp$iv":I
    const/4 v7, 0x0

    .line 243
    .restart local v7    # "$i$f$getDp":I
    int-to-float v10, v5

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 116
    .end local v5    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    .line 115
    nop

    .line 116
    move-object/from16 v35, v5

    check-cast v35, Landroidx/compose/ui/graphics/Shape;

    .line 114
    nop

    .line 117
    new-instance v5, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;

    invoke-direct {v5, v9, v4, v2, v0}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;-><init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Lcom/cgs/atvobserver/sensor/MotionSensorData;Ljava/lang/String;)V

    const v7, 0x12a5ad82

    const/4 v10, 0x1

    invoke-static {v12, v7, v10, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v39, v5

    check-cast v39, Lkotlin/jvm/functions/Function3;

    .line 113
    const/16 v37, 0x0

    const/16 v38, 0x0

    const v41, 0x30006

    const/16 v42, 0x18

    move-object/from16 v40, v12

    invoke-static/range {v34 .. v42}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 132
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x4

    .local v7, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 244
    .local v10, "$i$f$getDp":I
    int-to-float v11, v7

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 132
    .end local v7    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v7, 0x6

    invoke-static {v5, v12, v7}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 136
    sget-object v34, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v35

    sget v5, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    or-int/lit8 v44, v5, 0x6

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    invoke-virtual/range {v34 .. v45}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v16

    .line 137
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v5, v7, v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/16 v7, 0x2c

    .restart local v7    # "$this$dp$iv":I
    const/4 v10, 0x0

    .line 245
    .restart local v10    # "$i$f$getDp":I
    int-to-float v11, v7

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 137
    .end local v7    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 135
    nop

    .line 137
    nop

    .line 136
    sget-object v5, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;

    invoke-virtual {v5}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;->getLambda-3$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v21

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0xe

    const v7, 0x30000030

    or-int v23, v5, v7

    .line 134
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x1ec

    move-object v5, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v12, p5

    move-object/from16 v7, p1

    .end local p1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v7, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v10, v51

    .end local v51    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v10, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v22, v5

    invoke-static/range {v12 .. v24}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 59
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 141
    nop

    .line 199
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v33    # "$changed":I
    .end local v46    # "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2":I
    .end local v50    # "$this$AtvDiagScreen_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 198
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v48    # "$changed$iv":I
    .end local v49    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 246
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 247
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 248
    nop

    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v30    # "$changed$iv$iv$iv":I
    .end local v31    # "$i$f$ReusableComposeNode":I
    .end local v47    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 249
    nop

    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v27    # "$changed$iv$iv":I
    .end local v28    # "$i$f$Layout":I
    .end local v29    # "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 250
    nop

    .end local v25    # "$changed$iv":I
    .end local v26    # "$i$f$Column":I
    .end local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 142
    .end local v0    # "tempDisplay":Ljava/lang/String;
    .end local v3    # "showFanQuestion$delegate":Landroidx/compose/runtime/MutableState;
    :cond_2a
    move v12, v1

    move-object v10, v2

    move-object v11, v4

    .end local v1    # "$dirty":I
    .end local v2    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .end local v4    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .local v10, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v11, "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .local v12, "$dirty":I
    :goto_1b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_2b

    new-instance v14, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-wide/from16 v4, p3

    move-object v15, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;-><init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1c

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2b
    move-object v15, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1c
    return-void
.end method

.method private static final AtvDiagScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$showFanQuestion$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 290
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    return v0
.end method

.method private static final AtvDiagScreen$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$showFanQuestion$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 291
    .local v4, "$i$f$setValue":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 292
    nop

    .line 30
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private static final DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 73
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v13, p3

    const v1, 0xc8f26e5

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(DiagMetricRow)145@6279L275:AtvDiagScreen.kt#xkugs2"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, v13, 0xe

    if-nez v3, :cond_1

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_3

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    :cond_3
    move v12, v2

    .end local v2    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit8 v2, v12, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 153
    :cond_4
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v70, v12

    move-object/from16 v71, v14

    goto/16 :goto_5

    .line 145
    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "com.cgs.atvobserver.ui.screens.DiagMetricRow (AtvDiagScreen.kt:144)"

    invoke-static {v1, v12, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 147
    :cond_6
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 148
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 146
    move-object v11, v2

    .local v11, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v2, 0x36

    move/from16 v50, v2

    .local v50, "$changed$iv":I
    move-object/from16 v51, v1

    .local v51, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/16 v52, 0x0

    .local v52, "$i$f$Row":I
    const v1, 0x2952b718

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 251
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    .line 254
    .local v9, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v1, v50, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v50, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    invoke-static {v11, v9, v14, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v1, v50, 0x3

    and-int/lit8 v1, v1, 0x70

    .line 255
    move/from16 v53, v1

    .local v53, "$changed$iv$iv":I
    const/16 v54, 0x0

    .local v54, "$i$f$Layout":I
    const v1, -0x4ee9b9da

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x0

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v55

    .line 257
    .local v55, "compositeKeyHash$iv$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 259
    .local v8, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    .line 266
    invoke-static/range {v51 .. v51}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    shl-int/lit8 v3, v53, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x6

    .line 258
    move-object v7, v1

    .local v7, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v6, v2

    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v56, v3

    .local v56, "$changed$iv$iv$iv":I
    const/16 v57, 0x0

    .line 267
    .local v57, "$i$f$ReusableComposeNode":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 268
    :cond_7
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 269
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 272
    :cond_8
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 274
    :goto_3
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 261
    .local v2, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 262
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 275
    .local v4, "$i$f$set-impl":I
    move-object v5, v1

    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 276
    .local v16, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move/from16 p2, v2

    .end local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .local p2, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    .end local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :cond_9
    move/from16 p2, v2

    .line 277
    .end local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :goto_4
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 278
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    :cond_a
    nop

    .line 275
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 280
    nop

    .line 265
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$f$set-impl":I
    nop

    .line 274
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 281
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v56, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v14, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const v0, 0x7ab4aae9

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 283
    shr-int/lit8 v0, v56, 0x9

    and-int/lit8 v58, v0, 0xe

    .local v58, "$changed$iv":I
    move-object v0, v14

    .local v0, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v59, 0x0

    .line 284
    .local v59, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v1, -0x1378c42b

    const-string v2, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v50, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v60, v2, 0x6

    .local v60, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$DiagMetricRow_u24lambda_u246":Landroidx/compose/foundation/layout/RowScope;
    move-object v2, v0

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v46, v2

    move-object/from16 v21, v2

    move-object/from16 v61, v1

    .end local v1    # "$this$DiagMetricRow_u24lambda_u246":Landroidx/compose/foundation/layout/RowScope;
    .local v61, "$this$DiagMetricRow_u24lambda_u246":Landroidx/compose/foundation/layout/RowScope;
    const/16 v62, 0x0

    .line 150
    .local v62, "$i$a$-Row-AtvDiagScreenKt$DiagMetricRow$1":I
    const v1, 0x25042d52

    const-string v3, "C149@6401L55,150@6465L83:AtvDiagScreen.kt#xkugs2"

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v25, 0xc

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v16

    move-object/from16 v63, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v63, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v2, v16

    and-int/lit8 v1, v12, 0xe

    or-int/lit16 v1, v1, 0xd80

    move/from16 v22, v1

    const/16 v23, 0x0

    const v24, 0x1fff2

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object/from16 v64, v6

    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v64, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v6, v16

    move-object/from16 v65, v7

    .end local v7    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v65, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v7, v16

    move-object/from16 v66, v8

    .end local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v66, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v8, v16

    const-wide/16 v16, 0x0

    move-object/from16 v67, v9

    move-object/from16 v68, v10

    .end local v9    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v67, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v68, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-wide/from16 v9, v16

    const/16 v16, 0x0

    move-object/from16 v69, v11

    .end local v11    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v69, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    move-object/from16 v11, v16

    move/from16 v70, v12

    .end local v12    # "$dirty":I
    .local v70, "$dirty":I
    move-object/from16 v12, v16

    const-wide/16 v16, 0x0

    move-object/from16 v71, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v71, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v72, v0

    .end local v0    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v72, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v0, p0

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 151
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v29

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v32

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v27

    shr-int/lit8 v0, v70, 0x3

    and-int/lit8 v0, v0, 0xe

    const v1, 0x30d80

    or-int v47, v0, v1

    const/16 v48, 0x0

    const v49, 0x1ffd2

    const/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v25, p1

    invoke-static/range {v25 .. v49}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 150
    invoke-static/range {v63 .. v63}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 152
    nop

    .line 284
    .end local v60    # "$changed":I
    .end local v61    # "$this$DiagMetricRow_u24lambda_u246":Landroidx/compose/foundation/layout/RowScope;
    .end local v62    # "$i$a$-Row-AtvDiagScreenKt$DiagMetricRow$1":I
    .end local v63    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v72 .. v72}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 283
    .end local v58    # "$changed$iv":I
    .end local v59    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v72    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 285
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 286
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 287
    nop

    .end local v56    # "$changed$iv$iv$iv":I
    .end local v57    # "$i$f$ReusableComposeNode":I
    .end local v64    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v65    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 288
    nop

    .end local v53    # "$changed$iv$iv":I
    .end local v54    # "$i$f$Layout":I
    .end local v55    # "compositeKeyHash$iv$iv":I
    .end local v66    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 289
    nop

    .end local v50    # "$changed$iv":I
    .end local v51    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v52    # "$i$f$Row":I
    .end local v67    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v68    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v69    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 153
    :cond_b
    :goto_5
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$DiagMetricRow$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$DiagMetricRow$2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_6

    :cond_c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    :goto_6
    return-void
.end method

.method public static final synthetic access$AtvDiagScreen$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .param p0, "$showFanQuestion$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z

    .line 1
    invoke-static {p0, p1}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->AtvDiagScreen$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
