.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TestTrackScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->TestTrackScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestTrackScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,337:1\n154#2:338\n154#2:339\n154#2:413\n154#2:456\n154#2:457\n154#2:464\n154#2:465\n154#2:472\n154#2:473\n154#2:480\n154#2:481\n154#2:488\n154#2:489\n75#3,5:340\n80#3:373\n84#3:499\n79#4,11:345\n79#4,11:379\n92#4:411\n79#4,11:421\n92#4:493\n92#4:498\n456#5,8:356\n464#5,3:370\n456#5,8:390\n464#5,3:404\n467#5,3:408\n456#5,8:432\n464#5,3:446\n467#5,3:490\n467#5,3:495\n3737#6,6:364\n3737#6,6:398\n3737#6,6:440\n88#7,5:374\n93#7:407\n97#7:412\n86#7,7:414\n93#7:449\n97#7:494\n1116#8,6:450\n1116#8,6:458\n1116#8,6:466\n1116#8,6:474\n1116#8,6:482\n*S KotlinDebug\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2\n*L\n135#1:338\n136#1:339\n146#1:413\n149#1:456\n151#1:457\n156#1:464\n158#1:465\n163#1:472\n165#1:473\n170#1:480\n172#1:481\n177#1:488\n179#1:489\n134#1:340,5\n134#1:373\n134#1:499\n134#1:345,11\n138#1:379,11\n138#1:411\n146#1:421,11\n146#1:493\n134#1:498\n134#1:356,8\n134#1:370,3\n138#1:390,8\n138#1:404,3\n138#1:408,3\n146#1:432,8\n146#1:446,3\n146#1:490,3\n134#1:495,3\n134#1:364,6\n138#1:398,6\n146#1:440,6\n138#1:374,5\n138#1:407\n138#1:412\n146#1:414,7\n146#1:449\n146#1:494\n148#1:450,6\n155#1:458,6\n162#1:466,6\n169#1:474,6\n176#1:482,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $showCustomFuelDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $tankCapacityL:D


# direct methods
.method constructor <init>(DLandroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->$tankCapacityL:D

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->$startingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->$showCustomFuelDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 133
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 106
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C133@5285L2654:TestTrackScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 134
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_13

    .line 134
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.TestTrackScreen.<anonymous>.<anonymous> (TestTrackScreen.kt:133)"

    const v6, 0x140026c3    # 6.469993E-27f

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 135
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0xa

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 338
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 135
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 136
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v6, 0x4

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 339
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 136
    .end local v6    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 134
    iget-wide v6, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->$tankCapacityL:D

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->$startingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->$showCustomFuelDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v10, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Column":I
    const v12, -0x1cd0f17e

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 340
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v12

    .line 343
    .local v12, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v13, v10, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v10, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v5, v12, v1, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v10, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 344
    nop

    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$Layout":I
    const v0, -0x4ee9b9da

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 345
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v17

    .line 346
    .local v17, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 348
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 355
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    move-object/from16 v20, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v20, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v3, v14, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x6

    .line 347
    move-object/from16 v21, v19

    .local v21, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v19, v18

    .local v3, "$changed$iv$iv$iv":I
    .local v19, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 356
    .local v18, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 357
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 358
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    move-object/from16 v4, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 361
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v4, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 363
    :goto_1
    move-object/from16 v19, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 350
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v5

    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v24, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 351
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 353
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 364
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v4

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 365
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v27, v2

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move/from16 v28, v11

    .end local v11    # "$i$f$Column":I
    .local v28, "$i$f$Column":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v11, v25

    goto :goto_3

    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v28    # "$i$f$Column":I
    .restart local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "$i$f$Column":I
    :cond_6
    move-object/from16 v27, v2

    move/from16 v28, v11

    .line 366
    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "$i$f$Column":I
    .restart local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v28    # "$i$f$Column":I
    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v11, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 367
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 369
    :goto_3
    nop

    .line 364
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 369
    nop

    .line 354
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 363
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 370
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v21

    .end local v21    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v2, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 372
    shr-int/lit8 v4, v3, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object/from16 v11, p2

    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 373
    .local v21, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v2, 0x107e0298

    const-string v1, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v11, v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v10, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$invoke_u24lambda_u247":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v23, v11

    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 138
    .local v25, "$i$a$-Column-TestTrackScreenKt$TestTrackScreen$4$2$1":I
    move-object/from16 v26, v1

    .end local v1    # "$this$invoke_u24lambda_u247":Landroidx/compose/foundation/layout/ColumnScope;
    .local v26, "$this$invoke_u24lambda_u247":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0x70409ace

    move/from16 v29, v2

    .end local v2    # "$changed":I
    .local v29, "$changed":I
    const-string v2, "C137@5442L467,145@5927L1998:TestTrackScreen.kt#xkugs2"

    move/from16 v30, v3

    move-object/from16 v3, v23

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v30, "$changed$iv$iv$iv":I
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 139
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    move/from16 v23, v4

    .end local v4    # "$changed$iv":I
    .local v23, "$changed$iv":I
    const/4 v4, 0x0

    move-object/from16 v31, v5

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v31, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/4 v5, 0x1

    invoke-static {v1, v2, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 140
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 138
    const/16 v4, 0x36

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v2, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v4    # "$changed$iv":I
    const/16 v32, 0x0

    .local v32, "$i$f$Row":I
    const v5, 0x2952b718

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 374
    sget-object v35, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    move/from16 v36, v10

    .end local v10    # "$changed$iv":I
    .local v36, "$changed$iv":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v10

    .line 377
    .local v10, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v35, v4, 0x3

    and-int/lit8 v35, v35, 0xe

    shr-int/lit8 v37, v4, 0x3

    and-int/lit8 v37, v37, 0x70

    move-object/from16 v38, v12

    .end local v12    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v38, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    or-int v12, v35, v37

    invoke-static {v2, v10, v3, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    .local v12, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v35, v4, 0x3

    and-int/lit8 v35, v35, 0x70

    .line 378
    nop

    .local v35, "$changed$iv$iv":I
    const/16 v37, 0x0

    move-object/from16 v39, v2

    const v2, -0x4ee9b9da

    .end local v2    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v37, "$i$f$Layout":I
    .local v39, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 379
    const/4 v2, 0x0

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v40

    .line 380
    .local v40, "compositeKeyHash$iv$iv":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 382
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v41, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v41

    .line 389
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v42

    move-object/from16 v43, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v43, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v35, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 381
    nop

    .local v1, "$changed$iv$iv$iv":I
    move-object/from16 v44, v42

    .local v44, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v42, v41

    .local v42, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v41, 0x0

    .line 390
    .local v41, "$i$f$ReusableComposeNode":I
    move-object/from16 v45, v10

    .end local v10    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v45, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 391
    :cond_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 392
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 393
    move-object/from16 v10, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v10, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 395
    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v10, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 397
    :goto_4
    move-object/from16 v42, v10

    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 384
    .local v46, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v47, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v48, v13

    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v48, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v47 .. v47}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v10, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 385
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v10, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 387
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    .local v13, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v47, 0x0

    .line 398
    .local v47, "$i$f$set-impl":I
    move-object/from16 v49, v10

    .local v49, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 399
    .local v50, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v51

    if-nez v51, :cond_a

    move-object/from16 v51, v2

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v51, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v52, v12

    .end local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v52, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v12, v49

    goto :goto_6

    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_a
    move-object/from16 v51, v2

    move-object/from16 v52, v12

    .line 400
    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_5
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v12, v49

    .end local v49    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 401
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2, v13}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 403
    :goto_6
    nop

    .line 398
    .end local v12    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 403
    nop

    .line 388
    .end local v13    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v47    # "$i$f$set-impl":I
    nop

    .line 397
    .end local v10    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v46    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 404
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v10, v1, 0x3

    and-int/lit8 v10, v10, 0x70

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, v44

    .end local v44    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12, v2, v3, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const v2, 0x7ab4aae9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 406
    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object v10, v3

    .local v10, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 407
    .local v13, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v44, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v44, "$changed$iv$iv$iv":I
    const v1, -0x1378c42b

    move/from16 v46, v2

    .end local v2    # "$changed$iv":I
    .local v46, "$changed$iv":I
    const-string v2, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v47, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v49, v4, 0x6

    and-int/lit8 v49, v49, 0x70

    or-int/lit8 v49, v49, 0x6

    .local v49, "$changed":I
    check-cast v47, Landroidx/compose/foundation/layout/RowScope;

    .local v47, "$this$invoke_u24lambda_u247_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v50, v10

    .local v50, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v99, v50

    move-object/from16 v74, v50

    const/16 v103, 0x0

    .line 142
    .local v103, "$i$a$-Row-TestTrackScreenKt$TestTrackScreen$4$2$1$1":I
    const v1, 0xa78838b

    move/from16 v104, v4

    .end local v4    # "$changed$iv":I
    .local v104, "$changed$iv":I
    const-string v4, "C141@5612L100,142@5733L158:TestTrackScreen.kt#xkugs2"

    move-object/from16 v105, v12

    move-object/from16 v12, v50

    .end local v50    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    .local v105, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v12, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v1, 0xb

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v57

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v60

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v55

    const/16 v76, 0x0

    const v77, 0x1ffd2

    const-string v53, "STARTING TEST FUEL"

    const/16 v54, 0x0

    const/16 v59, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const v75, 0x30d86

    invoke-static/range {v53 .. v77}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 143
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v8}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$25(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v50

    filled-new-array/range {v50 .. v50}, [Ljava/lang/Object;

    move-result-object v1

    move/from16 v50, v13

    const/4 v13, 0x1

    .end local v13    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v50, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v1, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v13, "%.1f"

    invoke-static {v4, v13, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "format(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "~"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " L / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "L"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    const/16 v1, 0xb

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v82

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v85

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v80

    const/16 v101, 0x0

    const v102, 0x1ffd2

    const/16 v79, 0x0

    const/16 v84, 0x0

    const/16 v86, 0x0

    const-wide/16 v87, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const-wide/16 v91, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const v100, 0x30d80

    invoke-static/range {v78 .. v102}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 142
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 144
    nop

    .line 407
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v47    # "$this$invoke_u24lambda_u247_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    .end local v49    # "$changed":I
    .end local v103    # "$i$a$-Row-TestTrackScreenKt$TestTrackScreen$4$2$1$1":I
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 406
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v46    # "$changed$iv":I
    .end local v50    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 408
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 409
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 410
    nop

    .end local v41    # "$i$f$ReusableComposeNode":I
    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v44    # "$changed$iv$iv$iv":I
    .end local v105    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 411
    nop

    .end local v35    # "$changed$iv$iv":I
    .end local v37    # "$i$f$Layout":I
    .end local v40    # "compositeKeyHash$iv$iv":I
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 412
    nop

    .line 146
    .end local v32    # "$i$f$Row":I
    .end local v39    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v43    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v45    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v104    # "$changed$iv":I
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v4, 0x4

    .local v4, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 413
    .local v10, "$i$f$getDp":I
    int-to-float v12, v4

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 146
    .end local v4    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-virtual {v1, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .local v1, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v4, 0x30

    .local v4, "$changed$iv":I
    const/4 v10, 0x0

    const v12, 0x2952b718

    .local v10, "$i$f$Row":I
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 414
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 416
    .local v5, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v12

    .line 419
    .local v12, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v13, v4, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v32, v4, 0x3

    and-int/lit8 v32, v32, 0x70

    or-int v13, v13, v32

    invoke-static {v1, v12, v3, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v32, v4, 0x3

    and-int/lit8 v32, v32, 0x70

    .line 420
    nop

    .local v32, "$changed$iv$iv":I
    const/16 v33, 0x0

    move-object/from16 v34, v1

    const v1, -0x4ee9b9da

    .end local v1    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v33, "$i$f$Layout":I
    .local v34, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v1

    .line 422
    .local v1, "compositeKeyHash$iv$iv":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 424
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 431
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v35

    move-object/from16 v37, v5

    .end local v5    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v37, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v5, v32, 0x9

    and-int/lit16 v5, v5, 0x1c00

    or-int/lit8 v5, v5, 0x6

    .line 423
    nop

    .local v5, "$changed$iv$iv$iv":I
    move-object/from16 v39, v35

    .local v39, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v35, v16

    .local v35, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 432
    .local v16, "$i$f$ReusableComposeNode":I
    move/from16 v40, v10

    .end local v10    # "$i$f$Row":I
    .local v40, "$i$f$Row":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 433
    :cond_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 434
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 435
    move-object/from16 v10, v35

    .end local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v10, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    .line 437
    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_c
    move-object/from16 v10, v35

    .end local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 439
    :goto_7
    move-object/from16 v35, v10

    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 426
    .local v41, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v42, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v43, v12

    .end local v12    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v43, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v13, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 427
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 429
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .local v12, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v42, 0x0

    .line 440
    .local v42, "$i$f$set-impl":I
    move-object/from16 v44, v10

    .local v44, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v45, 0x0

    .line 441
    .local v45, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v44 .. v44}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v46

    if-nez v46, :cond_e

    move-object/from16 v46, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v46, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v44 .. v44}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v47, v13

    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v47, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v13, v44

    goto :goto_9

    .end local v46    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v47    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_e
    move-object/from16 v46, v0

    move-object/from16 v47, v13

    .line 442
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v46    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v47    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v13, v44

    .end local v44    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0, v12}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 445
    :goto_9
    nop

    .line 440
    .end local v13    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v45    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 445
    nop

    .line 430
    .end local v12    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v42    # "$i$f$set-impl":I
    nop

    .line 439
    .end local v10    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v41    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 446
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v10, v5, 0x3

    and-int/lit8 v10, v10, 0x70

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, v39

    .end local v39    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12, v0, v3, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const v0, 0x7ab4aae9

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 448
    shr-int/lit8 v0, v5, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v10, v3

    .local v10, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 449
    .local v13, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v22, v0

    const v0, -0x1378c42b

    .end local v0    # "$changed$iv":I
    .local v22, "$changed$iv":I
    invoke-static {v10, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v4, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed":I
    move-object/from16 v49, v0

    check-cast v49, Landroidx/compose/foundation/layout/RowScope;

    .local v49, "$this$invoke_u24lambda_u247_u24lambda_u246":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v10

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 147
    .local v39, "$i$a$-Row-TestTrackScreenKt$TestTrackScreen$4$2$1$2":I
    move/from16 v41, v1

    .end local v1    # "compositeKeyHash$iv$iv":I
    .local v41, "compositeKeyHash$iv$iv":I
    const v1, 0xa7f3af4

    move/from16 v42, v2

    .end local v2    # "$changed":I
    .local v42, "$changed":I
    const-string v2, "C147@6047L40,149@6207L48,146@6005L368,154@6437L40,156@6597L48,153@6395L368,161@6827L40,163@6987L48,160@6785L368,168@7217L33,170@7370L39,167@7175L353,175@7592L31,177@7743L40,174@7550L357:TestTrackScreen.kt#xkugs2"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, 0x3a2520e9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):TestTrackScreen.kt#9igjgp"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v2

    .line 148
    move-object/from16 v44, v0

    .local v2, "invalid$iv":Z
    .local v44, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v45, 0x0

    .line 450
    .local v45, "$i$f$cache":I
    move/from16 v63, v4

    .end local v4    # "$changed$iv":I
    .local v63, "$changed$iv":I
    invoke-interface/range {v44 .. v44}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v50, 0x0

    .line 451
    .local v50, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_10

    sget-object v51, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v52, v2

    .end local v2    # "invalid$iv":Z
    .local v52, "invalid$iv":Z
    invoke-virtual/range {v51 .. v51}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_f

    goto :goto_a

    .line 455
    :cond_f
    move-object v2, v4

    move-object/from16 v51, v2

    move-object/from16 v4, v44

    goto :goto_b

    .line 451
    .end local v52    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_10
    move/from16 v52, v2

    .line 452
    .end local v2    # "invalid$iv":Z
    .restart local v52    # "invalid$iv":Z
    :goto_a
    const/4 v2, 0x0

    .line 148
    .local v2, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$1":I
    move/from16 v51, v2

    .end local v2    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$1":I
    .local v51, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$1":I
    new-instance v2, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$1$1;

    invoke-direct {v2, v6, v7, v8}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$1$1;-><init>(DLandroidx/compose/runtime/MutableDoubleState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 452
    .end local v51    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$1":I
    nop

    .line 453
    .local v2, "value$iv":Ljava/lang/Object;
    move-object/from16 v51, v4

    move-object/from16 v4, v44

    .end local v44    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v51, "it$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 454
    nop

    .line 451
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 450
    .end local v50    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v51    # "it$iv":Ljava/lang/Object;
    nop

    .line 148
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v45    # "$i$f$cache":I
    .end local v52    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 149
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v50, v4

    check-cast v50, Landroidx/compose/ui/Modifier;

    const/16 v53, 0x2

    const/16 v54, 0x0

    const/high16 v51, 0x3f800000    # 1.0f

    const/16 v52, 0x0

    invoke-static/range {v49 .. v54}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move/from16 v44, v5

    .end local v5    # "$changed$iv$iv$iv":I
    .local v44, "$changed$iv$iv$iv":I
    const/16 v5, 0x20

    .local v5, "$this$dp$iv":I
    const/16 v45, 0x0

    .line 456
    .local v45, "$i$f$getDp":I
    move-object/from16 v64, v12

    .end local v12    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v64, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    int-to-float v12, v5

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 149
    .end local v5    # "$this$dp$iv":I
    .end local v45    # "$i$f$getDp":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 150
    sget-object v50, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v51

    sget v5, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    or-int/lit8 v60, v5, 0x6

    const/16 v61, 0xe

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    move-object/from16 v59, v0

    invoke-virtual/range {v50 .. v61}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v54

    .line 151
    const/4 v5, 0x2

    .restart local v5    # "$this$dp$iv":I
    const/4 v12, 0x0

    .line 457
    .local v12, "$i$f$getDp":I
    move/from16 v45, v12

    .end local v12    # "$i$f$getDp":I
    .restart local v45    # "$i$f$getDp":I
    int-to-float v12, v5

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 151
    .end local v5    # "$this$dp$iv":I
    .end local v45    # "$i$f$getDp":I
    invoke-static {v5}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v57

    sget-object v5, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;

    invoke-virtual {v5}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v59

    .line 147
    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/high16 v61, 0x30c00000

    const/16 v62, 0x16c

    move-object/from16 v50, v2

    move-object/from16 v51, v4

    move-object/from16 v60, v0

    invoke-static/range {v50 .. v62}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v2, 0x3a2551a9

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v2

    .line 155
    move-object v4, v0

    .local v2, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 458
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v45, 0x0

    .line 459
    .local v45, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_12

    sget-object v50, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v51, v2

    .end local v2    # "invalid$iv":Z
    .local v51, "invalid$iv":Z
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v12, v2, :cond_11

    goto :goto_c

    .line 463
    :cond_11
    move-object v2, v12

    goto :goto_d

    .line 459
    .end local v51    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_12
    move/from16 v51, v2

    .line 460
    .end local v2    # "invalid$iv":Z
    .restart local v51    # "invalid$iv":Z
    :goto_c
    const/4 v2, 0x0

    .line 155
    .local v2, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$2":I
    move/from16 v50, v2

    .end local v2    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$2":I
    .local v50, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$2":I
    new-instance v2, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;

    invoke-direct {v2, v6, v7, v8}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;-><init>(DLandroidx/compose/runtime/MutableDoubleState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 460
    .end local v50    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$2":I
    nop

    .line 461
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 462
    nop

    .line 459
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_d
    nop

    .line 458
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v45    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 155
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v51    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 156
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v51, v4

    check-cast v51, Landroidx/compose/ui/Modifier;

    const/16 v54, 0x2

    const/16 v55, 0x0

    const/high16 v52, 0x3f800000    # 1.0f

    const/16 v53, 0x0

    move-object/from16 v50, v49

    invoke-static/range {v50 .. v55}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v5, 0x20

    .local v5, "$this$dp$iv":I
    const/4 v12, 0x0

    .line 464
    .local v12, "$i$f$getDp":I
    move/from16 v45, v12

    .end local v12    # "$i$f$getDp":I
    .local v45, "$i$f$getDp":I
    int-to-float v12, v5

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 156
    .end local v5    # "$this$dp$iv":I
    .end local v45    # "$i$f$getDp":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 157
    sget-object v50, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v51

    sget v5, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    or-int/lit8 v60, v5, 0x6

    const/16 v61, 0xe

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    move-object/from16 v59, v0

    invoke-virtual/range {v50 .. v61}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v54

    .line 158
    const/4 v5, 0x2

    .restart local v5    # "$this$dp$iv":I
    const/4 v12, 0x0

    .line 465
    .restart local v12    # "$i$f$getDp":I
    move/from16 v45, v12

    .end local v12    # "$i$f$getDp":I
    .restart local v45    # "$i$f$getDp":I
    int-to-float v12, v5

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 158
    .end local v5    # "$this$dp$iv":I
    .end local v45    # "$i$f$getDp":I
    invoke-static {v5}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v57

    sget-object v5, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;

    invoke-virtual {v5}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->getLambda-2$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v59

    .line 154
    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/high16 v61, 0x30c00000

    const/16 v62, 0x16c

    move-object/from16 v50, v2

    move-object/from16 v51, v4

    move-object/from16 v60, v0

    invoke-static/range {v50 .. v62}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v2, 0x3a258269

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v2

    .line 162
    move-object v4, v0

    .local v2, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 466
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v45, 0x0

    .line 467
    .local v45, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_14

    sget-object v50, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v51, v2

    .end local v2    # "invalid$iv":Z
    .restart local v51    # "invalid$iv":Z
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v12, v2, :cond_13

    goto :goto_e

    .line 471
    :cond_13
    move-object v2, v12

    goto :goto_f

    .line 467
    .end local v51    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_14
    move/from16 v51, v2

    .line 468
    .end local v2    # "invalid$iv":Z
    .restart local v51    # "invalid$iv":Z
    :goto_e
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$3":I
    move/from16 v50, v2

    .end local v2    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$3":I
    .local v50, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$3":I
    new-instance v2, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$3$1;

    invoke-direct {v2, v6, v7, v8}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$3$1;-><init>(DLandroidx/compose/runtime/MutableDoubleState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 468
    .end local v50    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$3":I
    nop

    .line 469
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 470
    nop

    .line 467
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 466
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v45    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 162
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v51    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 163
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v51, v4

    check-cast v51, Landroidx/compose/ui/Modifier;

    const/16 v54, 0x2

    const/16 v55, 0x0

    const/high16 v52, 0x3f800000    # 1.0f

    const/16 v53, 0x0

    move-object/from16 v50, v49

    invoke-static/range {v50 .. v55}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v5, 0x20

    .local v5, "$this$dp$iv":I
    const/4 v12, 0x0

    .line 472
    .local v12, "$i$f$getDp":I
    move/from16 v45, v12

    .end local v12    # "$i$f$getDp":I
    .local v45, "$i$f$getDp":I
    int-to-float v12, v5

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 163
    .end local v5    # "$this$dp$iv":I
    .end local v45    # "$i$f$getDp":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 164
    sget-object v50, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v51

    sget v5, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    or-int/lit8 v60, v5, 0x6

    const/16 v61, 0xe

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    move-object/from16 v59, v0

    invoke-virtual/range {v50 .. v61}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v54

    .line 165
    const/4 v5, 0x2

    .restart local v5    # "$this$dp$iv":I
    const/4 v12, 0x0

    .line 473
    .restart local v12    # "$i$f$getDp":I
    move/from16 v45, v12

    .end local v12    # "$i$f$getDp":I
    .restart local v45    # "$i$f$getDp":I
    int-to-float v12, v5

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 165
    .end local v5    # "$this$dp$iv":I
    .end local v45    # "$i$f$getDp":I
    invoke-static {v5}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v57

    sget-object v5, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;

    invoke-virtual {v5}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->getLambda-3$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v59

    .line 161
    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/high16 v61, 0x30c00000

    const/16 v62, 0x16c

    move-object/from16 v50, v2

    move-object/from16 v51, v4

    move-object/from16 v60, v0

    invoke-static/range {v50 .. v62}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v2, 0x3a25b322

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v2

    .line 169
    move-object v4, v0

    .local v2, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 474
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v45, 0x0

    .line 475
    .local v45, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_16

    sget-object v50, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v51, v2

    .end local v2    # "invalid$iv":Z
    .restart local v51    # "invalid$iv":Z
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v12, v2, :cond_15

    goto :goto_10

    .line 479
    :cond_15
    move-object v2, v12

    goto :goto_11

    .line 475
    .end local v51    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_16
    move/from16 v51, v2

    .line 476
    .end local v2    # "invalid$iv":Z
    .restart local v51    # "invalid$iv":Z
    :goto_10
    const/4 v2, 0x0

    .line 169
    .local v2, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$4":I
    move/from16 v50, v2

    .end local v2    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$4":I
    .local v50, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$4":I
    new-instance v2, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$4$1;

    invoke-direct {v2, v6, v7, v8}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$4$1;-><init>(DLandroidx/compose/runtime/MutableDoubleState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 476
    .end local v50    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$4":I
    nop

    .line 477
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 478
    nop

    .line 475
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 474
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v45    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 169
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v51    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 170
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v51, v4

    check-cast v51, Landroidx/compose/ui/Modifier;

    const/16 v54, 0x2

    const/16 v55, 0x0

    const/high16 v52, 0x3f800000    # 1.0f

    const/16 v53, 0x0

    move-object/from16 v50, v49

    invoke-static/range {v50 .. v55}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v5, 0x20

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 480
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 170
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 171
    sget-object v50, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v51

    sget v5, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v5, v5, 0xc

    or-int/lit8 v60, v5, 0x6

    const/16 v61, 0xe

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    move-object/from16 v59, v0

    invoke-virtual/range {v50 .. v61}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v54

    .line 172
    const/4 v5, 0x2

    .restart local v5    # "$this$dp$iv":I
    const/4 v6, 0x0

    .line 481
    .restart local v6    # "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 172
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v5}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v57

    sget-object v5, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;

    invoke-virtual {v5}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->getLambda-4$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v59

    .line 168
    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/high16 v61, 0x30c00000

    const/16 v62, 0x16c

    move-object/from16 v50, v2

    move-object/from16 v51, v4

    move-object/from16 v60, v0

    invoke-static/range {v50 .. v62}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v2, 0x3a25e200

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 176
    move-object v1, v0

    const/4 v2, 0x0

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v2, "invalid$iv":Z
    const/4 v4, 0x0

    .line 482
    .local v4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 483
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_17

    .line 484
    const/4 v7, 0x0

    .line 176
    .local v7, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$5":I
    new-instance v8, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$5$1;

    invoke-direct {v8, v9}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$5$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 484
    .end local v7    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$2$1$2$5":I
    move-object v7, v8

    .line 485
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 486
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_12

    .line 487
    :cond_17
    move-object v7, v5

    .line 483
    :goto_12
    nop

    .line 482
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 176
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "invalid$iv":Z
    .end local v4    # "$i$f$cache":I
    move-object v1, v7

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 177
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/Modifier;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v4, v49

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v4, 0x20

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 488
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 177
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 178
    sget-object v50, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v51

    sget v4, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v4, v4, 0xc

    or-int/lit8 v60, v4, 0x6

    const/16 v61, 0xe

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    move-object/from16 v59, v0

    invoke-virtual/range {v50 .. v61}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v54

    .line 179
    const/4 v4, 0x2

    .restart local v4    # "$this$dp$iv":I
    const/4 v5, 0x0

    .line 489
    .restart local v5    # "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 179
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v57

    sget-object v4, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->getLambda-5$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v59

    .line 175
    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const v61, 0x30c00006

    const/16 v62, 0x16c

    move-object/from16 v50, v1

    move-object/from16 v51, v2

    move-object/from16 v60, v0

    invoke-static/range {v50 .. v62}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 147
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 181
    nop

    .line 449
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$a$-Row-TestTrackScreenKt$TestTrackScreen$4$2$1$2":I
    .end local v42    # "$changed":I
    .end local v49    # "$this$invoke_u24lambda_u247_u24lambda_u246":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 448
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v22    # "$changed$iv":I
    nop

    .line 490
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 491
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 492
    nop

    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v44    # "$changed$iv$iv$iv":I
    .end local v64    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 493
    nop

    .end local v32    # "$changed$iv$iv":I
    .end local v33    # "$i$f$Layout":I
    .end local v41    # "compositeKeyHash$iv$iv":I
    .end local v46    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 494
    nop

    .line 138
    .end local v34    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v37    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v40    # "$i$f$Row":I
    .end local v43    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v47    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v63    # "$changed$iv":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 182
    nop

    .line 373
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-Column-TestTrackScreenKt$TestTrackScreen$4$2$1":I
    .end local v26    # "$this$invoke_u24lambda_u247":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v29    # "$changed":I
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 372
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v23    # "$changed$iv":I
    nop

    .line 495
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 496
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 497
    nop

    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v30    # "$changed$iv$iv$iv":I
    .end local v31    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 498
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$Layout":I
    .end local v17    # "compositeKeyHash$iv$iv":I
    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 499
    nop

    .end local v20    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v24    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v28    # "$i$f$Column":I
    .end local v36    # "$changed$iv":I
    .end local v38    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v48    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 183
    :cond_18
    :goto_13
    return-void
.end method
