.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;
.super Lkotlin/jvm/internal/Lambda;
.source "TestTrackScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestTrackScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,337:1\n154#2:338\n154#2:375\n73#3,7:339\n80#3:374\n84#3:386\n79#4,11:346\n92#4:385\n456#5,8:357\n464#5,3:371\n467#5,3:382\n3737#6,6:365\n1116#7,6:376\n*S KotlinDebug\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13\n*L\n290#1:338\n294#1:375\n290#1:339,7\n290#1:374\n290#1:386\n290#1:346,11\n290#1:385\n290#1:357,8\n290#1:371,3\n290#1:382,3\n290#1:365,6\n298#1:376,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $actualRemainingInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $passCount$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $predictedFuelUsed:D

.field final synthetic $predictedRemainingL:D

.field final synthetic $sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;


# direct methods
.method constructor <init>(DDLandroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$predictedFuelUsed:D

    iput-wide p3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$predictedRemainingL:D

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$actualRemainingInput$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 289
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 133
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "C289@13094L1252:TestTrackScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 290
    and-int/lit8 v3, v2, 0xb

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 290
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.TestTrackScreen.<anonymous>.<anonymous> (TestTrackScreen.kt:289)"

    const v5, -0x724cc20a

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v4, 0x8

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 338
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 290
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .local v3, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    iget-wide v4, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$predictedFuelUsed:D

    iget-wide v6, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$predictedRemainingL:D

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v10, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13;->$actualRemainingInput$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v11, 0x30

    .local v11, "$changed$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Column":I
    const v13, -0x1cd0f17e

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 339
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 341
    .local v13, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v14

    .line 344
    .local v14, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v15, v11, 0x3

    and-int/lit8 v15, v15, 0xe

    shr-int/lit8 v16, v11, 0x3

    and-int/lit8 v16, v16, 0x70

    or-int v15, v15, v16

    invoke-static {v3, v14, v1, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .local v15, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v11, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 345
    nop

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$Layout":I
    const v0, -0x4ee9b9da

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v18

    .line 347
    .local v18, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 349
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    .line 356
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v20

    shl-int/lit8 v2, v16, 0x9

    and-int/lit16 v2, v2, 0x1c00

    move-object/from16 v21, v3

    .end local v3    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v21, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v3, 0x6

    or-int/2addr v2, v3

    .line 348
    nop

    .local v2, "$changed$iv$iv$iv":I
    move-object/from16 v22, v20

    .local v22, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v20, v19

    .local v20, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v19, 0x0

    .line 357
    .local v19, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 358
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 359
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 360
    move-object/from16 v3, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 362
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v3, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 364
    :goto_1
    move-object/from16 v20, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 351
    .local v24, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v26, v12

    .end local v12    # "$i$f$Column":I
    .local v26, "$i$f$Column":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v3, v15, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v3, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 354
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .local v12, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v25, 0x0

    .line 365
    .local v25, "$i$f$set-impl":I
    move-object/from16 v27, v3

    .local v27, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 366
    .local v28, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v29

    if-nez v29, :cond_6

    move-object/from16 v29, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v13

    .end local v13    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v30, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v13, v27

    goto :goto_3

    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v30    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v13    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :cond_6
    move-object/from16 v29, v0

    move-object/from16 v30, v13

    .line 367
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v13    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v30    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v13, v27

    .end local v27    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 368
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v12}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 370
    :goto_3
    nop

    .line 365
    .end local v13    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 370
    nop

    .line 355
    .end local v12    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v25    # "$i$f$set-impl":I
    nop

    .line 364
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 371
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v12, v22

    .end local v22    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12, v0, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 373
    shr-int/lit8 v0, v2, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v3, p1

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 374
    .local v13, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v22, v0

    .end local v0    # "$changed$iv":I
    .local v22, "$changed$iv":I
    const v0, 0x107e0298

    const-string v1, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v23, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v24, v3

    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v127, v24

    move-object/from16 v102, v24

    move-object/from16 v77, v24

    move-object/from16 v52, v24

    const/16 v25, 0x0

    .line 291
    .local v25, "$i$a$-Column-TestTrackScreenKt$TestTrackScreen$4$13$1":I
    move-object/from16 v27, v0

    .end local v0    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .local v27, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x70b50e26

    move/from16 v28, v1

    .end local v1    # "$changed":I
    .local v28, "$changed":I
    const-string v1, "C290@13177L166,291@13368L145,292@13538L116,293@13679L40,294@13744L94,297@13984L29,295@13863L461:TestTrackScreen.kt#xkugs2"

    move/from16 v131, v2

    move-object/from16 v2, v24

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v131, "$changed$iv$iv$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {v8}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$22(Landroidx/compose/runtime/MutableIntState;)I

    move-result v0

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v9}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$7(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v8

    move/from16 v24, v11

    .end local v11    # "$changed$iv":I
    .local v24, "$changed$iv":I
    const/16 v11, 0x3e8

    move-object/from16 v132, v12

    .end local v12    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v132, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    int-to-double v11, v11

    mul-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%.1f"

    invoke-static {v1, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "format(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Completed Passes: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " x 100m ("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v38

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v33

    const/16 v54, 0x0

    const v55, 0x1ffda

    const/16 v32, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const v53, 0x30180

    invoke-static/range {v31 .. v55}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 292
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%.3f"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Predicted Fuel Used: ~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v63

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v58

    const/16 v79, 0x0

    const v80, 0x1ffda

    const/16 v57, 0x0

    const-wide/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const-wide/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-wide/16 v69, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const v78, 0x30180

    invoke-static/range {v56 .. v80}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 293
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.2f"

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Predicted Remaining: ~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v85

    const/16 v104, 0x0

    const v105, 0x1fff6

    const/16 v82, 0x0

    const-wide/16 v83, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const-wide/16 v90, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const-wide/16 v94, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v103, 0xc00

    invoke-static/range {v81 .. v105}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 294
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x4

    .local v1, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 375
    .local v4, "$i$f$getDp":I
    int-to-float v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 294
    .end local v1    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 295
    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v110

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v108

    const/16 v129, 0x0

    const v130, 0x1fff2

    const/16 v107, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const-wide/16 v115, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const-wide/16 v119, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v128, 0xd86

    const-string v106, "Enter actual measured remaining fuel to train AI:"

    invoke-static/range {v106 .. v130}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 297
    invoke-static {v10}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$47$lambda$44(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v31

    .line 300
    new-instance v46, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v0, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v35

    const/16 v38, 0x1b

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v32, v46

    invoke-direct/range {v32 .. v39}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 302
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v1, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v33

    .line 297
    const v0, 0x352f81ff

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):TestTrackScreen.kt#9igjgp"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 298
    move-object v0, v2

    const/4 v1, 0x0

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v1, "invalid$iv":Z
    const/4 v4, 0x0

    .line 376
    .local v4, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 377
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_7

    .line 378
    const/4 v7, 0x0

    .line 298
    .local v7, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$13$1$1":I
    new-instance v8, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13$1$1$1;

    invoke-direct {v8, v10}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$13$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 378
    .end local v7    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$13$1$1":I
    move-object v7, v8

    .line 379
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 380
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_4

    .line 381
    :cond_7
    move-object v7, v5

    .line 377
    :goto_4
    nop

    .line 376
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 298
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v1    # "invalid$iv":Z
    .end local v4    # "$i$f$cache":I
    move-object/from16 v32, v7

    check-cast v32, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 302
    sget-object v0, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->getLambda-13$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v37

    .line 300
    nop

    .line 301
    nop

    .line 296
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x1

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v55, 0x1801b0

    const/high16 v56, 0xc30000

    const/16 v57, 0x0

    const v58, 0x7d7fb8

    move-object/from16 v54, v2

    invoke-static/range {v31 .. v58}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 291
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 304
    nop

    .line 374
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-Column-TestTrackScreenKt$TestTrackScreen$4$13$1":I
    .end local v27    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v28    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 373
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v22    # "$changed$iv":I
    nop

    .line 382
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 383
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 384
    nop

    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v131    # "$changed$iv$iv$iv":I
    .end local v132    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 385
    nop

    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$Layout":I
    .end local v18    # "compositeKeyHash$iv$iv":I
    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 386
    nop

    .end local v14    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v21    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v24    # "$changed$iv":I
    .end local v26    # "$i$f$Column":I
    .end local v30    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 305
    :cond_8
    :goto_5
    return-void
.end method
