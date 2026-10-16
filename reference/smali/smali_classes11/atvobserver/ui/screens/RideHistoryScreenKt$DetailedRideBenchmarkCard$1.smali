.class final Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RideHistoryScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt;->DetailedRideBenchmarkCard(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nRideHistoryScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RideHistoryScreen.kt\ncom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,255:1\n154#2:256\n154#2:257\n154#2:323\n154#2:324\n154#2:336\n154#2:337\n75#3,5:258\n80#3:291\n74#3,6:338\n80#3:372\n84#3:377\n84#3:460\n79#4,11:263\n79#4,11:294\n92#4:334\n79#4,11:344\n92#4:376\n79#4,11:383\n92#4:415\n79#4,11:422\n92#4:454\n92#4:459\n456#5,8:274\n464#5,3:288\n456#5,8:305\n464#5,3:319\n467#5,3:331\n456#5,8:355\n464#5,3:369\n467#5,3:373\n456#5,8:394\n464#5,3:408\n467#5,3:412\n456#5,8:433\n464#5,3:447\n467#5,3:451\n467#5,3:456\n3737#6,6:282\n3737#6,6:313\n3737#6,6:363\n3737#6,6:402\n3737#6,6:441\n91#7,2:292\n93#7:322\n97#7:335\n88#7,5:378\n93#7:411\n97#7:416\n88#7,5:417\n93#7:450\n97#7:455\n1116#8,6:325\n*S KotlinDebug\n*F\n+ 1 RideHistoryScreen.kt\ncom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1\n*L\n198#1:256\n199#1:257\n211#1:323\n212#1:324\n224#1:336\n225#1:337\n197#1:258,5\n197#1:291\n221#1:338,6\n221#1:372\n221#1:377\n197#1:460\n197#1:263,11\n201#1:294,11\n201#1:334\n221#1:344,11\n221#1:376\n235#1:383,11\n235#1:415\n243#1:422,11\n243#1:454\n197#1:459\n197#1:274,8\n197#1:288,3\n201#1:305,8\n201#1:319,3\n201#1:331,3\n221#1:355,8\n221#1:369,3\n221#1:373,3\n235#1:394,8\n235#1:408,3\n235#1:412,3\n243#1:433,8\n243#1:447,3\n243#1:451,3\n197#1:456,3\n197#1:282,6\n201#1:313,6\n221#1:363,6\n235#1:402,6\n243#1:441,6\n201#1:292,2\n201#1:322\n201#1:335\n235#1:378,5\n235#1:411\n235#1:416\n243#1:417,5\n243#1:450\n243#1:455\n209#1:325,6\n*E\n"
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
.field final synthetic $dateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic $endDateStr:Ljava/lang/String;

.field final synthetic $icon:Ljava/lang/String;

.field final synthetic $onDeleteRide:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ride:Lcom/cgs/atvobserver/data/db/RideLogEntity;

.field final synthetic $startDateStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cgs/atvobserver/data/db/RideLogEntity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/text/SimpleDateFormat;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$startDateStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$ride:Lcom/cgs/atvobserver/data/db/RideLogEntity;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$icon:Ljava/lang/String;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$onDeleteRide:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$dateFormat:Ljava/text/SimpleDateFormat;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$endDateStr:Ljava/lang/String;

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

    .line 196
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 153
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C196@8312L2722:RideHistoryScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 197
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_13

    .line 197
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.DetailedRideBenchmarkCard.<anonymous> (RideHistoryScreen.kt:196)"

    const v6, 0x246b8bf

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 198
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0xa

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 256
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 198
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 199
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v6, 0x4

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 257
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 199
    .end local v6    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 197
    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$startDateStr:Ljava/lang/String;

    iget-object v15, v0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$ride:Lcom/cgs/atvobserver/data/db/RideLogEntity;

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$icon:Ljava/lang/String;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$onDeleteRide:Lkotlin/jvm/functions/Function1;

    iget-object v14, v0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v13, v0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1;->$endDateStr:Ljava/lang/String;

    const/16 v9, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v9, "$changed$iv":I
    move/from16 v31, v9

    .end local v9    # "$changed$iv":I
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v31, "$changed$iv":I
    const/16 v32, 0x0

    .local v32, "$i$f$Column":I
    const v12, -0x1cd0f17e

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 258
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 261
    .local v10, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v11, v31, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v16, v31, 0x3

    and-int/lit8 v16, v16, 0x70

    or-int v11, v11, v16

    invoke-static {v5, v10, v1, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v31, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 262
    move/from16 v33, v16

    .local v33, "$changed$iv$iv":I
    const/16 v34, 0x0

    move-object/from16 v16, v14

    .local v34, "$i$f$Layout":I
    const v14, -0x4ee9b9da

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v17, v13

    const-string v13, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 263
    const/4 v12, 0x0

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v35

    .line 264
    .local v35, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 266
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    .line 273
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v21

    shl-int/lit8 v14, v33, 0x9

    and-int/lit16 v14, v14, 0x1c00

    or-int/lit8 v14, v14, 0x6

    .line 265
    move/from16 v36, v14

    .local v36, "$changed$iv$iv$iv":I
    move-object/from16 v14, v21

    .local v14, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v37, v20

    .local v37, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v38, 0x0

    .line 274
    .local v38, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 275
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 276
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    move-object/from16 v0, v37

    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 279
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v0, v37

    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 281
    :goto_1
    move-object/from16 v37, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 268
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v12, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 271
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 282
    .local v21, "$i$f$set-impl":I
    move-object/from16 v23, v0

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 283
    .local v24, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_6

    move-object/from16 v39, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v39, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v23

    goto :goto_3

    .end local v39    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :cond_6
    move-object/from16 v39, v3

    .line 284
    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v39    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :goto_2
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 285
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 287
    :goto_3
    nop

    .line 282
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 287
    nop

    .line 272
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 281
    .end local v0    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 288
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v36, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 290
    shr-int/lit8 v2, v36, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object/from16 v3, p2

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 291
    .local v4, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move-object/from16 v20, v14

    .end local v14    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v20, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const v14, 0x107e0298

    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v3, v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v21, v31, 0x6

    and-int/lit8 v21, v21, 0x70

    or-int/lit8 v40, v21, 0x6

    .local v40, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v66, v3

    .local v66, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v67, 0x0

    .line 201
    .local v67, "$i$a$-Column-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1":I
    const v14, 0x2cfc0395

    move-object/from16 v68, v0

    .end local v0    # "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    .local v68, "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    const-string v0, "C200@8453L791,217@9258L62,220@9399L709,234@10122L403,242@10539L388,250@10941L83:RideHistoryScreen.kt#xkugs2"

    move-object/from16 v23, v12

    move-object/from16 v12, v66

    .end local v66    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v12, v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 202
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v14, 0x0

    const/4 v1, 0x1

    move/from16 v66, v2

    .end local v2    # "$changed$iv":I
    .local v66, "$changed$iv":I
    const/4 v2, 0x0

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 203
    sget-object v24, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v24

    check-cast v24, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 204
    sget-object v25, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v25

    .line 201
    nop

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    move-object/from16 v26, v25

    .local v26, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    move-object/from16 v25, v24

    .local v25, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v24, 0x1b6

    .local v24, "$changed$iv":I
    const/16 v27, 0x0

    .local v27, "$i$f$Row":I
    const v1, 0x2952b718

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 292
    shr-int/lit8 v28, v24, 0x3

    and-int/lit8 v28, v28, 0xe

    shr-int/lit8 v29, v24, 0x3

    and-int/lit8 v29, v29, 0x70

    or-int v14, v28, v29

    move/from16 v69, v4

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    .end local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v26    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v2, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v4, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v69, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    invoke-static {v4, v2, v12, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    .local v14, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v25, v24, 0x3

    and-int/lit8 v25, v25, 0x70

    .line 293
    nop

    .local v25, "$changed$iv$iv":I
    const/16 v26, 0x0

    move-object/from16 v28, v2

    const v2, -0x4ee9b9da

    .end local v2    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v26, "$i$f$Layout":I
    .local v28, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 294
    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v19

    .line 295
    .local v19, "compositeKeyHash$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 297
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v29, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v29

    .line 304
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v30

    move-object/from16 v46, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v46, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v25, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 296
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v47, v29

    .local v47, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v29, v30

    .local v29, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v30, 0x0

    .line 305
    .local v30, "$i$f$ReusableComposeNode":I
    move-object/from16 v48, v4

    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v48, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 306
    :cond_7
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 307
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 308
    move-object/from16 v4, v47

    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 310
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v4, v47

    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 312
    :goto_4
    move-object/from16 v47, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 299
    .local v49, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v50, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v70, v5

    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v70, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v14, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 300
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 302
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v50, 0x0

    .line 313
    .local v50, "$i$f$set-impl":I
    move-object/from16 v51, v4

    .local v51, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v52, 0x0

    .line 314
    .local v52, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v51 .. v51}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v53

    if-nez v53, :cond_a

    move-object/from16 v53, v2

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v53, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v51 .. v51}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v54, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v9, v51

    goto :goto_6

    .end local v53    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_a
    move-object/from16 v53, v2

    move-object/from16 v54, v9

    .line 315
    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v53    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v9, v51

    .end local v51    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 316
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    :goto_6
    nop

    .line 313
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v52    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 318
    nop

    .line 303
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v50    # "$i$f$set-impl":I
    nop

    .line 312
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 319
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v29

    .end local v29    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v2, v12, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const v2, 0x7ab4aae9

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 321
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object v4, v12

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 322
    .local v9, "$i$a$-Layout-RowKt$Row$1$iv":I
    move-object/from16 v29, v14

    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v29, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const v14, -0x1378c42b

    move-object/from16 v49, v13

    const-string v13, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v4, v14, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v50, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v51, v24, 0x6

    and-int/lit8 v51, v51, 0x70

    or-int/lit8 v51, v51, 0x6

    .local v51, "$changed":I
    check-cast v50, Landroidx/compose/foundation/layout/RowScope;

    .local v50, "$this$invoke_u24lambda_u245_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v52, v4

    .local v52, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v92, v52

    const/16 v55, 0x0

    .line 206
    .local v55, "$i$a$-Row-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1":I
    const v14, 0x11d5f712

    move/from16 v57, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v57, "$changed$iv$iv$iv":I
    const-string v0, "C205@8671L115,209@8929L48,208@8858L25,207@8820L410:RideHistoryScreen.kt#xkugs2"

    move/from16 v58, v2

    move-object/from16 v2, v52

    .end local v52    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v58, "$changed$iv":I
    invoke-static {v2, v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-virtual {v15}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getVehicleType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v52, v5

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v52, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v78

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v73

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v75

    const/16 v94, 0x0

    const v95, 0x1ffd2

    const/16 v72, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const-wide/16 v80, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const-wide/16 v84, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const v93, 0x30d80

    invoke-static/range {v71 .. v95}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 210
    sget-object v71, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v72

    sget v0, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v0, v0, 0xc

    or-int/lit8 v81, v0, 0x6

    const/16 v82, 0xe

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    move-object/from16 v80, v2

    invoke-virtual/range {v71 .. v82}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v75

    .line 211
    const/4 v0, 0x6

    .local v0, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 323
    .local v5, "$i$f$getDp":I
    int-to-float v7, v0

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 211
    .end local v0    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    const/4 v5, 0x2

    .local v5, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 323
    .restart local v7    # "$i$f$getDp":I
    int-to-float v14, v5

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 211
    .end local v5    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v78

    .line 212
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x1c

    .restart local v5    # "$this$dp$iv":I
    const/4 v7, 0x0

    .line 324
    .restart local v7    # "$i$f$getDp":I
    int-to-float v14, v5

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 212
    .end local v5    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v72

    const v0, 0x1117805b

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):RideHistoryScreen.kt#9igjgp"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 209
    move-object v5, v2

    .local v0, "invalid$iv":Z
    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 325
    .local v7, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v59, 0x0

    .line 326
    .local v59, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_c

    sget-object v60, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v61, v0

    .end local v0    # "invalid$iv":Z
    .local v61, "invalid$iv":Z
    invoke-virtual/range {v60 .. v60}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_b

    goto :goto_7

    .line 330
    :cond_b
    move-object v0, v14

    goto :goto_8

    .line 326
    .end local v61    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_c
    move/from16 v61, v0

    .line 327
    .end local v0    # "invalid$iv":Z
    .restart local v61    # "invalid$iv":Z
    :goto_7
    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-cache-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1":I
    move/from16 v60, v0

    .end local v0    # "$i$a$-cache-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1":I
    .local v60, "$i$a$-cache-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1":I
    new-instance v0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1$1;

    invoke-direct {v0, v8, v15}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/cgs/atvobserver/data/db/RideLogEntity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 327
    .end local v60    # "$i$a$-cache-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1$1":I
    nop

    .line 328
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 329
    nop

    .line 326
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 325
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v59    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 209
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    .end local v61    # "invalid$iv":Z
    move-object/from16 v71, v0

    check-cast v71, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 212
    nop

    .line 210
    nop

    .line 211
    sget-object v0, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$RideHistoryScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$RideHistoryScreenKt;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$RideHistoryScreenKt;->getLambda-8$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v80

    .line 208
    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const v82, 0x30c00030

    const/16 v83, 0x16c

    move-object/from16 v81, v2

    invoke-static/range {v71 .. v83}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 206
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 216
    nop

    .line 322
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v50    # "$this$invoke_u24lambda_u245_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .end local v51    # "$changed":I
    .end local v55    # "$i$a$-Row-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$1":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 321
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v58    # "$changed$iv":I
    nop

    .line 331
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 332
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 333
    nop

    .end local v30    # "$i$f$ReusableComposeNode":I
    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v52    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v57    # "$changed$iv$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 334
    nop

    .end local v19    # "compositeKeyHash$iv$iv":I
    .end local v25    # "$changed$iv$iv":I
    .end local v26    # "$i$f$Layout":I
    .end local v53    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 335
    nop

    .line 218
    .end local v24    # "$changed$iv":I
    .end local v27    # "$i$f$Row":I
    .end local v28    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v29    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v46    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v48    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    move-object v2, v10

    move-object/from16 v71, v11

    .end local v10    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v2, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v71, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-wide v10, v4

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v8

    move-object/from16 v4, v54

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v29, 0x0

    const v30, 0x1fff2

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v14, v12

    move-object/from16 v72, v23

    const v0, -0x1cd0f17e

    const/16 v46, 0x0

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    .local v72, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object v12, v5

    move-object/from16 v97, v13

    move-object/from16 v96, v17

    move-object/from16 v98, v49

    move-object v13, v5

    move-object/from16 v74, v14

    move-object/from16 v99, v16

    move-object/from16 v73, v20

    const/4 v0, 0x0

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v73, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v74, "$composer":Landroidx/compose/runtime/Composer;
    move-object v14, v5

    const-wide/16 v16, 0x0

    move-object v5, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0xd80

    move-object/from16 v47, v6

    move-object/from16 v27, v74

    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 222
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 223
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v0, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 224
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v7

    const/4 v9, 0x4

    .local v9, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 336
    .local v10, "$i$f$getDp":I
    int-to-float v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 224
    .end local v9    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-static {v9}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 225
    const/4 v7, 0x6

    .local v7, "$this$dp$iv":I
    const/4 v8, 0x0

    .line 337
    .local v8, "$i$f$getDp":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 225
    .end local v7    # "$this$dp$iv":I
    .end local v8    # "$i$f$getDp":I
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 221
    nop

    .local v6, "modifier$iv":Landroidx/compose/ui/Modifier;
    move/from16 v7, v46

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    move-object/from16 v9, v74

    const v10, -0x1cd0f17e

    .end local v74    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$i$f$Column":I
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 338
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v4

    .line 339
    .local v4, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 342
    .local v10, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v4, v10, v9, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .restart local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 343
    nop

    .local v12, "$changed$iv$iv":I
    const/4 v13, 0x0

    const v14, -0x4ee9b9da

    .local v13, "$i$f$Layout":I
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v15, v98

    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 344
    move/from16 v14, v46

    invoke-static {v9, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 345
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 347
    .local v14, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 354
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    shl-int/lit8 v0, v12, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 346
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v19, v17

    .local v19, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v17, v18

    .local v17, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v18, 0x0

    .line 355
    .local v18, "$i$f$ReusableComposeNode":I
    move-object/from16 v20, v2

    .end local v2    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v20, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 356
    :cond_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 357
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 358
    move-object/from16 v2, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 360
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_e
    move-object/from16 v2, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 362
    :goto_9
    move-object/from16 v19, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 349
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v23, v4

    .end local v4    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v23, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v11, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 350
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v2, v14, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 363
    .local v22, "$i$f$set-impl":I
    move-object/from16 v24, v2

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 364
    .local v25, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_10

    move-object/from16 v26, v6

    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v26, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move/from16 v27, v8

    .end local v8    # "$i$f$Column":I
    .local v27, "$i$f$Column":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_a

    :cond_f
    move-object/from16 v8, v24

    goto :goto_b

    .end local v26    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v27    # "$i$f$Column":I
    .restart local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v8    # "$i$f$Column":I
    :cond_10
    move-object/from16 v26, v6

    move/from16 v27, v8

    .line 365
    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v8    # "$i$f$Column":I
    .restart local v26    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v27    # "$i$f$Column":I
    :goto_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 368
    :goto_b
    nop

    .line 363
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 368
    nop

    .line 353
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 362
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 369
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v6, v17

    .end local v17    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const v2, 0x7ab4aae9

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 371
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object v4, v9

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 372
    .local v8, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v17, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v17, "$changed$iv$iv$iv":I
    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    move/from16 v21, v2

    const v2, 0x107e0298

    .end local v2    # "$changed$iv":I
    .local v21, "$changed$iv":I
    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v7, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u245_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v22, v4

    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v149, v22

    move-object/from16 v124, v22

    const/16 v24, 0x0

    .line 227
    .local v24, "$i$a$-Column-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$2":I
    move-object/from16 v25, v0

    .end local v0    # "$this$invoke_u24lambda_u245_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    .local v25, "$this$invoke_u24lambda_u245_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x11e47372

    move/from16 v28, v2

    .end local v2    # "$changed":I
    .local v28, "$changed":I
    const-string v2, "C226@9631L102,227@9750L73,231@10022L72:RideHistoryScreen.kt#xkugs2"

    move-object/from16 v29, v6

    move-object/from16 v6, v22

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v6, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v107

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v110

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v105

    const/16 v126, 0x0

    const v127, 0x1ffd2

    const-string v103, "TRIP MILESTONES & GPS TRACE"

    const/16 v104, 0x0

    const/16 v109, 0x0

    const/16 v111, 0x0

    const-wide/16 v112, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const-wide/16 v116, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const v125, 0x30d86

    invoke-static/range {v103 .. v127}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udfe2 START: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, v47

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v128

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v132

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v130

    const/16 v151, 0x0

    const v152, 0x1fff2

    const/16 v129, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const-wide/16 v137, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const-wide/16 v141, 0x0

    const/16 v143, 0x0

    const/16 v144, 0x0

    const/16 v145, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, 0x0

    const/16 v150, 0xd80

    invoke-static/range {v128 .. v152}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const v0, 0x1117fba7

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "229@9884L103"

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMidTime()J

    move-result-wide v47

    const-wide/16 v49, 0x0

    cmp-long v0, v47, v49

    if-lez v0, :cond_11

    .line 230
    new-instance v0, Ljava/util/Date;

    move v2, v7

    move/from16 v22, v8

    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .local v2, "$changed$iv":I
    .local v22, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMidTime()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v7, v99

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ud83d\udfe1 MIDPOINT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v107

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v105

    const/16 v126, 0x0

    const v127, 0x1fff2

    const/16 v104, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const-wide/16 v112, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const-wide/16 v116, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v125, 0xd80

    move-object/from16 v124, v6

    invoke-static/range {v103 .. v127}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_c

    .line 229
    .end local v2    # "$changed$iv":I
    .end local v22    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .restart local v7    # "$changed$iv":I
    .restart local v8    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    :cond_11
    move v2, v7

    move/from16 v22, v8

    .line 230
    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .restart local v2    # "$changed$iv":I
    .restart local v22    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    :goto_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ud83c\udfc1 FINISH: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, v96

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v107

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v105

    const/16 v126, 0x0

    const v127, 0x1fff2

    const/16 v104, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const-wide/16 v112, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const-wide/16 v116, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v125, 0xd80

    move-object/from16 v124, v6

    invoke-static/range {v103 .. v127}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 227
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 233
    nop

    .line 372
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-Column-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$2":I
    .end local v25    # "$this$invoke_u24lambda_u245_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v28    # "$changed":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 371
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$changed$iv":I
    .end local v22    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 373
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 374
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 375
    nop

    .end local v17    # "$changed$iv$iv$iv":I
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 376
    nop

    .end local v12    # "$changed$iv$iv":I
    .end local v13    # "$i$f$Layout":I
    .end local v14    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v16    # "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 377
    nop

    .line 236
    .end local v2    # "$changed$iv":I
    .end local v10    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v26    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v27    # "$i$f$Column":I
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v4, v6, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 237
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 235
    nop

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v2, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v4, 0x36

    .local v4, "$changed$iv":I
    const/4 v6, 0x0

    const v7, 0x2952b718

    .local v6, "$i$f$Row":I
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 378
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v7

    .line 381
    .local v7, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v8, v4, 0x3

    and-int/lit8 v8, v8, 0xe

    shr-int/lit8 v10, v4, 0x3

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v8, v10

    invoke-static {v2, v7, v9, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .local v8, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v10, v4, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 382
    nop

    .local v10, "$changed$iv$iv":I
    const/4 v11, 0x0

    const v12, -0x4ee9b9da

    .local v11, "$i$f$Layout":I
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 383
    const/4 v12, 0x0

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 384
    .local v13, "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 386
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    .line 393
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v17, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v10, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 385
    nop

    .local v0, "$changed$iv$iv$iv":I
    .local v14, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v18, v16

    .local v18, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .line 394
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 v19, v2

    .end local v2    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v19, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 395
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 396
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 397
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    .line 399
    :cond_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 401
    :goto_d
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 388
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v23, v6

    .end local v6    # "$i$f$Row":I
    .local v23, "$i$f$Row":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 389
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v2, v12, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 391
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .local v6, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 402
    .local v22, "$i$f$set-impl":I
    move-object/from16 v24, v2

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 403
    .local v25, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_15

    move-object/from16 v26, v7

    .end local v7    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v26, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v27, v8

    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v27, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_e

    :cond_14
    move-object/from16 v8, v24

    goto :goto_f

    .end local v26    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v7    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_15
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 404
    .end local v7    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v26    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 405
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 407
    :goto_f
    nop

    .line 402
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 407
    nop

    .line 392
    .end local v6    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 401
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 408
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v18

    .end local v18    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v7, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v7, v2, v9, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const v2, 0x7ab4aae9

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 410
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object v6, v9

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 411
    .local v8, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v18, v0

    move/from16 v21, v2

    move-object/from16 v0, v97

    const v2, -0x1378c42b

    .end local v0    # "$changed$iv$iv$iv":I
    .end local v2    # "$changed$iv":I
    .local v18, "$changed$iv$iv$iv":I
    .local v21, "$changed$iv":I
    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v22, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v24, v4, 0x6

    and-int/lit8 v24, v24, 0x70

    or-int/lit8 v24, v24, 0x6

    .local v24, "$changed":I
    check-cast v22, Landroidx/compose/foundation/layout/RowScope;

    .local v22, "$this$invoke_u24lambda_u245_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v25, v6

    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v124, v25

    move-object/from16 v95, v25

    const/16 v28, 0x0

    .line 239
    .local v28, "$i$a$-Row-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$3":I
    const v2, 0x11ee1b36

    move/from16 v29, v4

    .end local v4    # "$changed$iv":I
    .local v29, "$changed$iv":I
    const-string v4, "C238@10276L125,239@10418L93:RideHistoryScreen.kt#xkugs2"

    move-object/from16 v30, v7

    move-object/from16 v7, v25

    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    .local v30, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v7, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getDistanceKm()D

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    move/from16 v25, v8

    const/4 v8, 0x1

    .end local v8    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v25, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v8, "%.1f"

    invoke-static {v2, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Distance: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " km"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    const/16 v2, 0xb

    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v78

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v76

    const/16 v97, 0x0

    const v98, 0x1fff2

    const/16 v75, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const-wide/16 v83, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const-wide/16 v87, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v96, 0xd80

    invoke-static/range {v74 .. v98}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 240
    move-object v4, v3

    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMaxSpeedKmh()D

    move-result-wide v2

    double-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Max Speed: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " km/h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    const/16 v2, 0xb

    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v107

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v105

    const/16 v126, 0x0

    const v127, 0x1fff2

    const/16 v104, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const-wide/16 v112, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const-wide/16 v116, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v125, 0xd80

    invoke-static/range {v103 .. v127}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 239
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 241
    nop

    .line 411
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$this$invoke_u24lambda_u245_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    .end local v24    # "$changed":I
    .end local v28    # "$i$a$-Row-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$3":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 410
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$changed$iv":I
    .end local v25    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 412
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 413
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 414
    nop

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v18    # "$changed$iv$iv$iv":I
    .end local v30    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 415
    nop

    .end local v10    # "$changed$iv$iv":I
    .end local v11    # "$i$f$Layout":I
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v13    # "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 416
    nop

    .line 244
    .end local v17    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v19    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v23    # "$i$f$Row":I
    .end local v26    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v29    # "$changed$iv":I
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v2, v6, v7, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 245
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 243
    nop

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v3, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v6, 0x36

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    const v10, 0x2952b718

    .local v7, "$i$f$Row":I
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 417
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 420
    .local v1, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v10, v6, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v3, v1, v9, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 421
    nop

    .local v11, "$changed$iv$iv":I
    const/4 v12, 0x0

    const v13, -0x4ee9b9da

    .local v12, "$i$f$Layout":I
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 422
    const/4 v13, 0x0

    invoke-static {v9, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 423
    .restart local v13    # "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 425
    .local v14, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 432
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v16

    shl-int/lit8 v8, v11, 0x9

    and-int/lit16 v8, v8, 0x1c00

    or-int/lit8 v8, v8, 0x6

    .line 424
    move/from16 v17, v8

    .local v15, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v17, "$changed$iv$iv$iv":I
    move-object/from16 v8, v16

    .local v8, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .line 433
    .restart local v16    # "$i$f$ReusableComposeNode":I
    move-object/from16 v18, v1

    .end local v1    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v18, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 434
    :cond_16
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 435
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 436
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    .line 438
    :cond_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 440
    :goto_10
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 427
    .local v19, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v22, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v22, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 428
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v14, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 430
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 441
    .local v21, "$i$f$set-impl":I
    move-object/from16 v23, v1

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 442
    .local v24, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_19

    move-object/from16 v25, v3

    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v25, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move/from16 v26, v7

    .end local v7    # "$i$f$Row":I
    .local v26, "$i$f$Row":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_11

    :cond_18
    move-object/from16 v7, v23

    goto :goto_12

    .end local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v26    # "$i$f$Row":I
    .restart local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v7    # "$i$f$Row":I
    :cond_19
    move-object/from16 v25, v3

    move/from16 v26, v7

    .line 443
    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v7    # "$i$f$Row":I
    .restart local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v26    # "$i$f$Row":I
    :goto_11
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v7, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 444
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 446
    :goto_12
    nop

    .line 441
    .end local v7    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 446
    nop

    .line 431
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 440
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 447
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v17, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v1, v9, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const v1, 0x7ab4aae9

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 449
    shr-int/lit8 v1, v17, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v2, v9

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 450
    .local v3, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v7, -0x1378c42b

    invoke-static {v2, v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    .local v7, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v19, v2

    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v120, v19

    move-object/from16 v95, v19

    const/16 v21, 0x0

    .line 247
    .local v21, "$i$a$-Row-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$4":I
    move-object/from16 v23, v0

    .end local v0    # "$this$invoke_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    .local v23, "$this$invoke_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0x11f46945

    move/from16 v24, v1

    .end local v1    # "$changed$iv":I
    .local v24, "$changed$iv":I
    const-string v1, "C246@10693L123,247@10833L80:RideHistoryScreen.kt#xkugs2"

    move/from16 v27, v3

    move-object/from16 v3, v19

    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v27, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getPeakGForce()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    move/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "$changed$iv":I
    .local v19, "$changed$iv":I
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v6, "%.2f"

    invoke-static {v0, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Peak G-Force: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v78

    move-object v0, v8

    .end local v8    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v0, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v76

    const/16 v97, 0x0

    const v98, 0x1fff2

    const/16 v75, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const-wide/16 v83, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const-wide/16 v87, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v96, 0xd80

    invoke-static/range {v74 .. v98}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 248
    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getSmoothnessScore()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Smoothness: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v99

    const/16 v1, 0xb

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v103

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v101

    const/16 v122, 0x0

    const v123, 0x1fff2

    const/16 v100, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const-wide/16 v108, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const-wide/16 v112, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v121, 0xd80

    invoke-static/range {v99 .. v123}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 247
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 249
    nop

    .line 450
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v7    # "$changed":I
    .end local v21    # "$i$a$-Row-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1$4":I
    .end local v23    # "$this$invoke_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 449
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$changed$iv":I
    .end local v27    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 451
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 452
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 453
    nop

    .end local v0    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v15    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v17    # "$changed$iv$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 454
    nop

    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v13    # "compositeKeyHash$iv$iv":I
    .end local v14    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 455
    nop

    .line 251
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v18    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v19    # "$changed$iv":I
    .end local v22    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v26    # "$i$f$Row":I
    invoke-virtual {v5}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getTerrainSummary()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terrain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v45

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v43

    const/16 v64, 0x0

    const v65, 0x1fff2

    const/16 v42, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v63, 0xd80

    move-object/from16 v62, v9

    invoke-static/range {v41 .. v65}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 201
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 252
    nop

    .line 291
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v40    # "$changed":I
    .end local v67    # "$i$a$-Column-RideHistoryScreenKt$DetailedRideBenchmarkCard$1$1":I
    .end local v68    # "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 290
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v66    # "$changed$iv":I
    .end local v69    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 456
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 457
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 458
    nop

    .end local v36    # "$changed$iv$iv$iv":I
    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v38    # "$i$f$ReusableComposeNode":I
    .end local v73    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 459
    nop

    .end local v33    # "$changed$iv$iv":I
    .end local v34    # "$i$f$Layout":I
    .end local v35    # "compositeKeyHash$iv$iv":I
    .end local v72    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 460
    nop

    .end local v20    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v31    # "$changed$iv":I
    .end local v32    # "$i$f$Column":I
    .end local v39    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v70    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v71    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 253
    :cond_1a
    :goto_13
    return-void
.end method
