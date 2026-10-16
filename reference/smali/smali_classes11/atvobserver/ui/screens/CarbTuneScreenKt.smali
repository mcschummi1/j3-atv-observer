.class public final Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt;
.super Ljava/lang/Object;
.source "CarbTuneScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarbTuneScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarbTuneScreen.kt\ncom/cgs/atvobserver/ui/screens/CarbTuneScreenKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,105:1\n154#2:106\n154#2:107\n154#2:180\n154#2:181\n154#2:182\n78#3,2:108\n80#3:138\n73#3,7:139\n80#3:174\n84#3:179\n84#3:187\n79#4,11:110\n79#4,11:146\n92#4:178\n92#4:186\n79#4,11:193\n92#4:225\n456#5,8:121\n464#5,3:135\n456#5,8:157\n464#5,3:171\n467#5,3:175\n467#5,3:183\n456#5,8:204\n464#5,3:218\n467#5,3:222\n3737#6,6:129\n3737#6,6:165\n3737#6,6:212\n88#7,5:188\n93#7:221\n97#7:226\n*S KotlinDebug\n*F\n+ 1 CarbTuneScreen.kt\ncom/cgs/atvobserver/ui/screens/CarbTuneScreenKt\n*L\n39#1:106\n42#1:107\n53#1:180\n71#1:181\n88#1:182\n35#1:108,2\n35#1:138\n44#1:139,7\n44#1:174\n44#1:179\n35#1:187\n35#1:110,11\n44#1:146,11\n44#1:178\n35#1:186\n97#1:193,11\n97#1:225\n35#1:121,8\n35#1:135,3\n44#1:157,8\n44#1:171,3\n44#1:175,3\n35#1:183,3\n97#1:204,8\n97#1:218,3\n97#1:222,3\n35#1:129,6\n44#1:165,6\n97#1:212,6\n97#1:188,5\n97#1:221\n97#1:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a5\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0003\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "CarbTuneScreen",
        "",
        "audioData",
        "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
        "temperatureCelsius",
        "",
        "altitudeMeters",
        "onBackToMenu",
        "Lkotlin/Function0;",
        "(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DDLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "TuneRow",
        "label",
        "",
        "value",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V",
        "app_debug"
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
.method public static final CarbTuneScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DDLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 104
    .param p0, "audioData"    # Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .param p1, "temperatureCelsius"    # D
    .param p3, "altitudeMeters"    # D
    .param p5, "onBackToMenu"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "DD",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p5

    move/from16 v7, p7

    const-string v0, "audioData"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackToMenu"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const v0, -0x4273e161

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CarbTuneScreen)P(1,3)39@1658L21,34@1500L2804:CarbTuneScreen.kt#xkugs2"

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
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x180

    move-wide/from16 v3, p3

    goto :goto_3

    :cond_3
    and-int/lit16 v3, v7, 0x380

    if-nez v3, :cond_5

    move-wide/from16 v3, p3

    invoke-interface {v6, v3, v4}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_2

    :cond_4
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-wide/from16 v3, p3

    :goto_3
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0xc00

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v7, 0x1c00

    if-nez v5, :cond_8

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_4

    :cond_7
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v1, v5

    :cond_8
    :goto_5
    move v5, v1

    .end local v1    # "$dirty":I
    .local v5, "$dirty":I
    and-int/lit16 v1, v5, 0x168b

    const/16 v10, 0x482

    if-ne v1, v10, :cond_a

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 93
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide v10, v3

    goto/16 :goto_f

    .line 24
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 22
    const-wide v1, 0x4075e00000000000L    # 350.0

    .end local p3    # "altitudeMeters":D
    .local v1, "altitudeMeters":D
    goto :goto_7

    .line 24
    .end local v1    # "altitudeMeters":D
    .restart local p3    # "altitudeMeters":D
    :cond_b
    move-wide v1, v3

    .line 22
    .end local p3    # "altitudeMeters":D
    .restart local v1    # "altitudeMeters":D
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 24
    const/4 v3, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.CarbTuneScreen (CarbTuneScreen.kt:23)"

    invoke-static {v0, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 26
    :cond_c
    const-wide v3, 0x40c3880000000000L    # 10000.0

    div-double v3, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v12, v10, v3

    const-wide v14, 0x3feb333333333333L    # 0.85

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v12 .. v17}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v3

    .line 27
    .local v3, "airDensityFactor":D
    const/16 v0, 0x64

    int-to-double v10, v0

    mul-double/2addr v10, v3

    double-to-int v0, v10

    .line 29
    .local v0, "airDensityPct":I
    nop

    .line 30
    const-wide v10, 0x408f400000000000L    # 1000.0

    cmpl-double v10, v1, v10

    if-lez v10, :cond_d

    rsub-int/lit8 v10, v0, 0x64

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "High Altitude (>1000m): Air is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% thinner. Drop main jet 1 size or drop needle 1 notch if bogging at full throttle."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 31
    :cond_d
    const-wide v10, 0x407f400000000000L    # 500.0

    cmpl-double v10, v1, v10

    if-lez v10, :cond_e

    rsub-int/lit8 v10, v0, 0x64

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Moderate Altitude (>500m): Air is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% thinner. Lean needle 1 notch if rich at mid-throttle."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 32
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Low Altitude (<500m): Air density normal ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%). Standard factory carb jetting recommended."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 29
    :goto_8
    move-object v15, v10

    .line 36
    .local v15, "jettingAdvice":Ljava/lang/String;
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 37
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 38
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsBackground()J

    move-result-wide v17

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 39
    const/16 v14, 0xc

    .local v14, "$this$dp$iv":I
    const/16 v16, 0x0

    .line 106
    .local v16, "$i$f$getDp":I
    int-to-float v11, v14

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 39
    .end local v14    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 40
    const/4 v10, 0x0

    invoke-static {v10, v6, v10, v12}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v17

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/ScrollKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 41
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v14

    .line 42
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v13, 0x8

    .local v13, "$this$dp$iv":I
    const/16 v16, 0x0

    .line 107
    .restart local v16    # "$i$f$getDp":I
    int-to-float v10, v13

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 42
    .end local v13    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    invoke-virtual {v12, v10}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v10

    .line 35
    const/16 v12, 0x1b0

    move/from16 v23, v12

    .local v23, "$changed$iv":I
    const/16 v24, 0x0

    .local v24, "$i$f$Column":I
    const v12, -0x1cd0f17e

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v6, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 108
    check-cast v10, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    shr-int/lit8 v16, v23, 0x3

    and-int/lit8 v16, v16, 0xe

    shr-int/lit8 v18, v23, 0x3

    and-int/lit8 v18, v18, 0x70

    or-int v12, v16, v18

    invoke-static {v10, v14, v6, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    .local v14, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v10, v23, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 109
    move/from16 v25, v10

    .local v25, "$changed$iv$iv":I
    const/16 v26, 0x0

    .local v26, "$i$f$Layout":I
    const v10, -0x4ee9b9da

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v6, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 110
    const/4 v10, 0x0

    invoke-static {v6, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v27

    .line 111
    .local v27, "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 113
    .local v10, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 120
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v11

    move-wide/from16 v28, v3

    .end local v3    # "airDensityFactor":D
    .local v28, "airDensityFactor":D
    shl-int/lit8 v3, v25, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x6

    .line 112
    move-object v4, v11

    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v11, v18

    .local v3, "$changed$iv$iv$iv":I
    .local v11, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v30, 0x0

    .line 121
    .local v30, "$i$f$ReusableComposeNode":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-nez v7, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 122
    :cond_f
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 123
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 124
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 126
    :cond_10
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 128
    :goto_9
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .local v7, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 115
    .local v18, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v7, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v7, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v20, 0x0

    .line 129
    .local v20, "$i$f$set-impl":I
    move-object/from16 v21, v7

    .local v21, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 130
    .local v22, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v31

    if-nez v31, :cond_12

    move-object/from16 v31, v10

    .end local v10    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v31, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v32, v11

    .end local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v32, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto :goto_a

    :cond_11
    move-object/from16 v11, v21

    goto :goto_b

    .end local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v10    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_12
    move-object/from16 v31, v10

    move-object/from16 v32, v11

    .line 131
    .end local v10    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :goto_a
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, v21

    .end local v21    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 134
    :goto_b
    nop

    .line 129
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 134
    nop

    .line 119
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v20    # "$i$f$set-impl":I
    nop

    .line 128
    .end local v7    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 135
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v7

    shr-int/lit8 v8, v3, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v6, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const v7, 0x7ab4aae9

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 137
    shr-int/lit8 v8, v3, 0x9

    and-int/lit8 v8, v8, 0xe

    .local v8, "$changed$iv":I
    move-object v11, v6

    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 138
    .local v33, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v10, 0x107e0298

    const-string v7, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v20, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v21, v23, 0x6

    and-int/lit8 v21, v21, 0x70

    or-int/lit8 v34, v21, 0x6

    .local v34, "$changed":I
    check-cast v20, Landroidx/compose/foundation/layout/ColumnScope;

    .local v20, "$this$CarbTuneScreen_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v35, v20

    .end local v20    # "$this$CarbTuneScreen_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .local v35, "$this$CarbTuneScreen_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v48, v11

    .local v48, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 44
    .local v49, "$i$a$-Column-CarbTuneScreenKt$CarbTuneScreen$1":I
    const v10, 0x4a70fabf    # 3948207.8f

    move/from16 v50, v3

    .end local v3    # "$changed$iv$iv$iv":I
    .local v50, "$changed$iv$iv$iv":I
    const-string v3, "C43@1815L308,50@2210L39,49@2170L867,68@3123L39,67@3083L909,86@4082L48,84@4002L296:CarbTuneScreen.kt#xkugs2"

    move-object/from16 v51, v4

    move-object/from16 v4, v48

    .end local v48    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v51, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v4, v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    .local v3, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    const/16 v10, 0x180

    .local v10, "$changed$iv":I
    const/16 v21, 0x0

    move/from16 v48, v8

    const v8, -0x1cd0f17e

    .end local v8    # "$changed$iv":I
    .local v21, "$i$f$Column":I
    .local v48, "$changed$iv":I
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 139
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 140
    .local v8, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v13}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v13

    .line 144
    .local v13, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v19, v10, 0x3

    and-int/lit8 v19, v19, 0xe

    shr-int/lit8 v22, v10, 0x3

    and-int/lit8 v22, v22, 0x70

    move-object/from16 v52, v11

    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v52, "$composer$iv":Landroidx/compose/runtime/Composer;
    or-int v11, v19, v22

    invoke-static {v13, v3, v4, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v19, v10, 0x3

    and-int/lit8 v19, v19, 0x70

    .line 145
    nop

    .local v19, "$changed$iv$iv":I
    const/16 v22, 0x0

    move-object/from16 v36, v3

    const v3, -0x4ee9b9da

    .end local v3    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v22, "$i$f$Layout":I
    .local v36, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 146
    const/4 v3, 0x0

    invoke-static {v4, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 147
    .local v3, "compositeKeyHash$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 149
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 156
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 v37, v8

    .end local v8    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v37, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v8, v19, 0x9

    and-int/lit16 v8, v8, 0x1c00

    or-int/lit8 v8, v8, 0x6

    .line 148
    nop

    .local v8, "$changed$iv$iv$iv":I
    move-object/from16 v38, v16

    .local v38, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v17

    .local v16, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v17, 0x0

    .line 157
    .local v17, "$i$f$ReusableComposeNode":I
    move-object/from16 v39, v13

    .end local v13    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v39, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 158
    :cond_13
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 159
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 160
    move-object/from16 v13, v38

    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 162
    .end local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_14
    move-object/from16 v13, v38

    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 164
    :goto_c
    move-object/from16 v38, v13

    .end local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .local v13, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v40, 0x0

    .line 151
    .local v40, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v41, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v53, v14

    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v53, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v11, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 152
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v12, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    .local v14, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v41, 0x0

    .line 165
    .local v41, "$i$f$set-impl":I
    move-object/from16 v42, v13

    .local v42, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v43, 0x0

    .line 166
    .local v43, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v44

    if-nez v44, :cond_16

    move-object/from16 v44, v11

    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v44, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v45, v12

    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v45, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v12, v42

    goto :goto_e

    .end local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_16
    move-object/from16 v44, v11

    move-object/from16 v45, v12

    .line 167
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v12, v42

    .end local v42    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v11, v14}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    :goto_e
    nop

    .line 165
    .end local v12    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v43    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 170
    nop

    .line 155
    .end local v14    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v41    # "$i$f$set-impl":I
    nop

    .line 164
    .end local v13    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v40    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 171
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v11

    shr-int/lit8 v12, v8, 0x3

    and-int/lit8 v12, v12, 0x70

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v16

    .end local v16    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v13, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v13, v11, v4, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const v11, 0x7ab4aae9

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 173
    shr-int/lit8 v11, v8, 0x9

    and-int/lit8 v11, v11, 0xe

    .local v11, "$changed$iv":I
    move-object v12, v4

    .local v12, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 174
    .local v14, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v16, v3

    const v3, 0x107e0298

    .end local v3    # "compositeKeyHash$iv$iv":I
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-static {v12, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v7, v10, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    .local v7, "$changed":I
    check-cast v3, Landroidx/compose/foundation/layout/ColumnScope;

    .local v3, "$this$CarbTuneScreen_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v18, v12

    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v100, v18

    move-object/from16 v75, v18

    const/16 v20, 0x0

    .line 45
    .local v20, "$i$a$-Column-CarbTuneScreenKt$CarbTuneScreen$1$1":I
    move-object/from16 v40, v3

    .end local v3    # "$this$CarbTuneScreen_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v40, "$this$CarbTuneScreen_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v3, 0x6e251392

    move/from16 v41, v7

    .end local v7    # "$changed":I
    .local v41, "$changed":I
    const-string v7, "C44@1888L104,45@2005L108:CarbTuneScreen.kt#xkugs2"

    move/from16 v42, v8

    move-object/from16 v8, v18

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    .local v42, "$changed$iv$iv$iv":I
    invoke-static {v8, v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v3, 0x12

    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v58

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v61

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v56

    const/16 v77, 0x0

    const v78, 0x1ffd2

    const/16 v55, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const v76, 0x30d86

    const-string v54, "CARB TUNE & JETTING ASSISTANT"

    invoke-static/range {v54 .. v78}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 46
    const/16 v3, 0xb

    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v83

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v81

    const/16 v102, 0x0

    const v103, 0x1fff2

    const/16 v80, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const-wide/16 v88, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const-wide/16 v92, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v101, 0xd86

    const-string v79, "Acoustic Idle Tuning & Altitude Air Density Compensation"

    invoke-static/range {v79 .. v103}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 45
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 47
    nop

    .line 174
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-Column-CarbTuneScreenKt$CarbTuneScreen$1$1":I
    .end local v40    # "$this$CarbTuneScreen_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v41    # "$changed":I
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 173
    .end local v11    # "$changed$iv":I
    .end local v12    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 175
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 176
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 177
    nop

    .end local v13    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v42    # "$changed$iv$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 178
    nop

    .end local v16    # "compositeKeyHash$iv$iv":I
    .end local v19    # "$changed$iv$iv":I
    .end local v22    # "$i$f$Layout":I
    .end local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 179
    nop

    .line 51
    .end local v10    # "$changed$iv":I
    .end local v21    # "$i$f$Column":I
    .end local v36    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v37    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v39    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    sget-object v36, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v37

    sget v3, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    or-int/lit8 v46, v3, 0x6

    const/16 v47, 0xe

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    move-object/from16 v45, v4

    invoke-virtual/range {v36 .. v47}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v38

    .line 52
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v3, v8, v10, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v36

    .line 53
    const/16 v3, 0xa

    .local v3, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 180
    .local v7, "$i$f$getDp":I
    int-to-float v8, v3

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 53
    .end local v3    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    .line 52
    nop

    .line 53
    move-object/from16 v37, v3

    check-cast v37, Landroidx/compose/ui/graphics/Shape;

    .line 51
    nop

    .line 54
    new-instance v3, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;

    invoke-direct {v3, v1, v2, v0, v15}, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;-><init>(DILjava/lang/String;)V

    const v7, 0x2ccdb287

    const/4 v8, 0x1

    invoke-static {v4, v7, v8, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Lkotlin/jvm/functions/Function3;

    .line 50
    const/16 v39, 0x0

    const/16 v40, 0x0

    const v43, 0x30006

    const/16 v44, 0x18

    move-object/from16 v42, v4

    invoke-static/range {v36 .. v44}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 69
    sget-object v36, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v37

    sget v3, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    or-int/lit8 v46, v3, 0x6

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    invoke-virtual/range {v36 .. v47}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v38

    .line 70
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v3, v8, v10, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v36

    .line 71
    const/16 v3, 0xa

    .restart local v3    # "$this$dp$iv":I
    const/4 v7, 0x0

    .line 181
    .restart local v7    # "$i$f$getDp":I
    int-to-float v8, v3

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 71
    .end local v3    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    .line 70
    nop

    .line 71
    move-object/from16 v37, v3

    check-cast v37, Landroidx/compose/ui/graphics/Shape;

    .line 69
    nop

    .line 72
    new-instance v3, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$3;

    invoke-direct {v3, v9}, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$3;-><init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;)V

    const v7, -0x4fdd7e42

    const/4 v8, 0x1

    invoke-static {v4, v7, v8, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Lkotlin/jvm/functions/Function3;

    .line 68
    const/16 v39, 0x0

    const/16 v40, 0x0

    const v43, 0x30006

    const/16 v44, 0x18

    move-object/from16 v42, v4

    invoke-static/range {v36 .. v44}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 87
    sget-object v36, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v37

    sget v3, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    or-int/lit8 v46, v3, 0x6

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    invoke-virtual/range {v36 .. v47}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v14

    .line 88
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v3, v8, v10, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v7, 0x2c

    .local v7, "$this$dp$iv":I
    const/4 v8, 0x0

    .line 182
    .local v8, "$i$f$getDp":I
    int-to-float v10, v7

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 88
    .end local v7    # "$this$dp$iv":I
    .end local v8    # "$i$f$getDp":I
    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 86
    nop

    .line 88
    nop

    .line 87
    sget-object v3, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$CarbTuneScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$CarbTuneScreenKt;

    invoke-virtual {v3}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$CarbTuneScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v19

    shr-int/lit8 v3, v5, 0x9

    and-int/lit8 v3, v3, 0xe

    const v7, 0x30000030

    or-int v21, v3, v7

    .line 85
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x1ec

    move-object/from16 v7, v31

    .end local v31    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v7, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v10, p5

    move-object/from16 v8, v32

    move-object/from16 v31, v52

    .end local v32    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v52    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v8, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v31, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v32, v53

    .end local v53    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v32, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v36, v15

    .end local v15    # "jettingAdvice":Ljava/lang/String;
    .local v36, "jettingAdvice":Ljava/lang/String;
    move-object v15, v3

    move-object/from16 v20, v4

    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 44
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 92
    nop

    .line 138
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v34    # "$changed":I
    .end local v35    # "$this$CarbTuneScreen_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v49    # "$i$a$-Column-CarbTuneScreenKt$CarbTuneScreen$1":I
    invoke-static/range {v31 .. v31}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 137
    .end local v31    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v48    # "$changed$iv":I
    nop

    .line 183
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 184
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 185
    nop

    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v30    # "$i$f$ReusableComposeNode":I
    .end local v50    # "$changed$iv$iv$iv":I
    .end local v51    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 186
    nop

    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v25    # "$changed$iv$iv":I
    .end local v26    # "$i$f$Layout":I
    .end local v27    # "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 187
    nop

    .end local v23    # "$changed$iv":I
    .end local v24    # "$i$f$Column":I
    .end local v32    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 93
    .end local v0    # "airDensityPct":I
    .end local v28    # "airDensityFactor":D
    .end local v36    # "jettingAdvice":Ljava/lang/String;
    :cond_17
    move-wide v10, v1

    .end local v1    # "altitudeMeters":D
    .local v10, "altitudeMeters":D
    :goto_f
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_18

    new-instance v13, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move v14, v5

    .end local v5    # "$dirty":I
    .local v14, "$dirty":I
    move-wide v4, v10

    move-object v15, v6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$2;-><init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DDLkotlin/jvm/functions/Function0;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_10

    .end local v14    # "$dirty":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$dirty":I
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_18
    move v14, v5

    move-object v15, v6

    .end local v5    # "$dirty":I
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$dirty":I
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_10
    return-void
.end method

.method private static final TuneRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 73
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v13, p3

    const v1, -0x3925fca6

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(TuneRow)96@4376L275:CarbTuneScreen.kt#xkugs2"

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

    .line 104
    :cond_4
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v70, v12

    move-object/from16 v71, v14

    goto/16 :goto_5

    .line 96
    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "com.cgs.atvobserver.ui.screens.TuneRow (CarbTuneScreen.kt:95)"

    invoke-static {v1, v12, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 98
    :cond_6
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 99
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 97
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

    .line 188
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    .line 191
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

    .line 192
    move/from16 v53, v1

    .local v53, "$changed$iv$iv":I
    const/16 v54, 0x0

    .local v54, "$i$f$Layout":I
    const v1, -0x4ee9b9da

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v55

    .line 194
    .local v55, "compositeKeyHash$iv$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 196
    .local v8, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    .line 203
    invoke-static/range {v51 .. v51}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    shl-int/lit8 v3, v53, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x6

    .line 195
    move-object v7, v1

    .local v7, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v6, v2

    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v56, v3

    .local v56, "$changed$iv$iv$iv":I
    const/16 v57, 0x0

    .line 204
    .local v57, "$i$f$ReusableComposeNode":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 205
    :cond_7
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 206
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 207
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 209
    :cond_8
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 211
    :goto_3
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 198
    .local v2, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 212
    .local v4, "$i$f$set-impl":I
    move-object v5, v1

    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 213
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

    .line 214
    .end local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :goto_4
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 217
    :cond_a
    nop

    .line 212
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 217
    nop

    .line 202
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$f$set-impl":I
    nop

    .line 211
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 218
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v56, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v14, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const v0, 0x7ab4aae9

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 220
    shr-int/lit8 v0, v56, 0x9

    and-int/lit8 v58, v0, 0xe

    .local v58, "$changed$iv":I
    move-object v0, v14

    .local v0, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v59, 0x0

    .line 221
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

    .local v1, "$this$TuneRow_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    move-object v2, v0

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v46, v2

    move-object/from16 v21, v2

    move-object/from16 v61, v1

    .end local v1    # "$this$TuneRow_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .local v61, "$this$TuneRow_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    const/16 v62, 0x0

    .line 101
    .local v62, "$i$a$-Row-CarbTuneScreenKt$TuneRow$1":I
    const v1, -0x2ee9711

    const-string v3, "C100@4498L55,101@4562L83:CarbTuneScreen.kt#xkugs2"

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

    .line 102
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

    .line 101
    invoke-static/range {v63 .. v63}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 103
    nop

    .line 221
    .end local v60    # "$changed":I
    .end local v61    # "$this$TuneRow_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .end local v62    # "$i$a$-Row-CarbTuneScreenKt$TuneRow$1":I
    .end local v63    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v72 .. v72}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 220
    .end local v58    # "$changed$iv":I
    .end local v59    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v72    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 222
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 223
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 224
    nop

    .end local v56    # "$changed$iv$iv$iv":I
    .end local v57    # "$i$f$ReusableComposeNode":I
    .end local v64    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v65    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 225
    nop

    .end local v53    # "$changed$iv$iv":I
    .end local v54    # "$i$f$Layout":I
    .end local v55    # "compositeKeyHash$iv$iv":I
    .end local v66    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 226
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

    .line 104
    :cond_b
    :goto_5
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$TuneRow$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$TuneRow$2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

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

.method public static final synthetic access$TuneRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt;->TuneRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
