.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->StatCard-uDo3WH8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,887:1\n154#2:888\n78#3,2:889\n80#3:919\n84#3:924\n79#4,11:891\n92#4:923\n456#5,8:902\n464#5,3:916\n467#5,3:920\n3737#6,6:910\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2\n*L\n643#1:888\n642#1:889,2\n642#1:919\n642#1:924\n642#1:891,11\n642#1:923\n642#1:902,8\n642#1:916,3\n642#1:920,3\n642#1:910,6\n*E\n"
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
.field final synthetic $subText:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $value:Ljava/lang/String;

.field final synthetic $valueColor:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$value:Ljava/lang/String;

    iput-wide p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$valueColor:J

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$subText:Ljava/lang/String;

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

    .line 641
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 94
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C641@26891L456:TripScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 642
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 642
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.StatCard.<anonymous> (TripScreen.kt:641)"

    const v6, -0x203174c0

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 643
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x4

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 888
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 643
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 644
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .line 645
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    .line 642
    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$title:Ljava/lang/String;

    iget-object v15, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$value:Ljava/lang/String;

    iget-wide v13, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$valueColor:J

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$StatCard$2;->$subText:Ljava/lang/String;

    const/16 v82, 0x1b6

    .local v82, "$changed$iv":I
    const/16 v83, 0x0

    .local v83, "$i$f$Column":I
    const v9, -0x1cd0f17e

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 889
    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    shr-int/lit8 v9, v82, 0x3

    and-int/lit8 v9, v9, 0xe

    shr-int/lit8 v10, v82, 0x3

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v9, v10

    invoke-static {v6, v5, v1, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .local v5, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v6, v82, 0x3

    and-int/lit8 v6, v6, 0x70

    .line 890
    nop

    .local v6, "$changed$iv$iv":I
    const/16 v84, 0x0

    .local v84, "$i$f$Layout":I
    const v9, -0x4ee9b9da

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 891
    const/4 v9, 0x0

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v85

    .line 892
    .local v85, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v9

    .line 894
    .local v9, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    .line 901
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v3

    shl-int/lit8 v11, v6, 0x9

    and-int/lit16 v11, v11, 0x1c00

    or-int/lit8 v11, v11, 0x6

    .line 893
    nop

    .local v10, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move/from16 v86, v11

    .local v3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v86, "$changed$iv$iv$iv":I
    const/16 v87, 0x0

    .line 902
    .local v87, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-nez v11, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 903
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 904
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 905
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 907
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 909
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .local v11, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 896
    .local v12, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v11, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 897
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v11, v9, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 899
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v16, 0x0

    .line 910
    .local v16, "$i$f$set-impl":I
    move-object/from16 v17, v11

    .local v17, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 911
    .local v18, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-nez v19, :cond_6

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v17

    goto :goto_3

    .line 912
    :cond_6
    :goto_2
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v17

    .end local v17    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 913
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 915
    :goto_3
    nop

    .line 910
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 915
    nop

    .line 900
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "$i$f$set-impl":I
    nop

    .line 909
    .end local v11    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 916
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v86, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 918
    shr-int/lit8 v0, v86, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 919
    .local v4, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v11, 0x107e0298

    const-string v12, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v2, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v11, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v12, v82, 0x6

    and-int/lit8 v12, v12, 0x70

    or-int/lit8 v88, v12, 0x6

    .local v88, "$changed":I
    check-cast v11, Landroidx/compose/foundation/layout/ColumnScope;

    .local v11, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v12, v2

    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v78, v12

    move-object/from16 v53, v12

    move-object/from16 v28, v12

    move-object/from16 v89, v11

    .end local v11    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v89, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const/16 v90, 0x0

    .line 647
    .local v90, "$i$a$-Column-TripScreenKt$StatCard$2$1":I
    const v11, 0x5cb65ab5

    move/from16 v91, v0

    .end local v0    # "$changed$iv":I
    .local v91, "$changed$iv":I
    const-string v0, "C646@27101L61,647@27175L86,648@27274L63:TripScreen.kt#xkugs2"

    invoke-static {v12, v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v16

    move-object v0, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v11, v16

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v16

    move-object/from16 v92, v9

    move-object/from16 v93, v10

    .end local v9    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v92, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v93, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-wide/from16 v9, v16

    const/16 v30, 0x0

    const v31, 0x1fff2

    const/16 v16, 0x0

    move-object/from16 v57, v8

    move-object/from16 v8, v16

    move-wide/from16 v34, v13

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object/from16 v32, v15

    move-object/from16 v15, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0xd80

    invoke-static/range {v7 .. v31}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 648
    const/16 v7, 0xd

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v36

    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v39

    const/16 v55, 0x0

    const v56, 0x1ffd2

    const/16 v33, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const v54, 0x30c00

    invoke-static/range {v32 .. v56}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 649
    const/16 v7, 0x8

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v61

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v59

    const/16 v80, 0x0

    const v81, 0x1fff2

    const/16 v58, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-wide/16 v70, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0xd80

    invoke-static/range {v57 .. v81}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 647
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 650
    nop

    .line 919
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v88    # "$changed":I
    .end local v89    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v90    # "$i$a$-Column-TripScreenKt$StatCard$2$1":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 918
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v91    # "$changed$iv":I
    nop

    .line 920
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 921
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 922
    nop

    .end local v3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v86    # "$changed$iv$iv$iv":I
    .end local v87    # "$i$f$ReusableComposeNode":I
    .end local v93    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 923
    nop

    .end local v6    # "$changed$iv$iv":I
    .end local v84    # "$i$f$Layout":I
    .end local v85    # "compositeKeyHash$iv$iv":I
    .end local v92    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 924
    nop

    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v82    # "$changed$iv":I
    .end local v83    # "$i$f$Column":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 651
    :cond_7
    :goto_4
    return-void
.end method
