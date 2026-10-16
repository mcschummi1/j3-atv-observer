.class final Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfigScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->ConfigCard(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nConfigScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,301:1\n154#2:302\n154#2:303\n75#3,5:304\n80#3:337\n84#3:342\n79#4,11:309\n92#4:341\n456#5,8:320\n464#5,3:334\n467#5,3:338\n3737#6,6:328\n*S KotlinDebug\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1\n*L\n293#1:302\n294#1:303\n292#1:304,5\n292#1:337\n292#1:342\n292#1:309,11\n292#1:341\n292#1:320,8\n292#1:334,3\n292#1:338,3\n292#1:328,6\n*E\n"
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
.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1;->$content:Lkotlin/jvm/functions/Function3;

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

    .line 291
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 49
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C291@14020L258:ConfigScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 292
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 292
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.ConfigCard.<anonymous> (ConfigScreen.kt:291)"

    const v6, 0xfc4363e

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 293
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0xa

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 302
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 293
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 294
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v6, 0x4

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 303
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 294
    .end local v6    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 292
    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1;->$title:Ljava/lang/String;

    iget-object v15, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigCard$1;->$content:Lkotlin/jvm/functions/Function3;

    const/16 v7, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v7, "$changed$iv":I
    move/from16 v31, v7

    .end local v7    # "$changed$iv":I
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v31, "$changed$iv":I
    const/16 v32, 0x0

    .local v32, "$i$f$Column":I
    const v7, -0x1cd0f17e

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 304
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v14

    .line 307
    .local v14, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v7, v31, 0x3

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v8, v31, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v7, v8

    invoke-static {v5, v14, v1, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    .local v12, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v7, v31, 0x3

    and-int/lit8 v7, v7, 0x70

    .line 308
    move/from16 v33, v7

    .local v33, "$changed$iv$iv":I
    const/16 v34, 0x0

    .local v34, "$i$f$Layout":I
    const v7, -0x4ee9b9da

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 309
    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v35

    .line 310
    .local v35, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 312
    .local v7, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v8

    .line 319
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v9

    shl-int/lit8 v10, v33, 0x9

    and-int/lit16 v10, v10, 0x1c00

    or-int/lit8 v10, v10, 0x6

    .line 311
    nop

    .local v8, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v9, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v36, v10

    .local v36, "$changed$iv$iv$iv":I
    const/16 v37, 0x0

    .line 320
    .local v37, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 321
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 322
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 323
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 325
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 327
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 314
    .local v11, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v10, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 315
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v10, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 317
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    .local v13, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v16, 0x0

    .line 328
    .local v16, "$i$f$set-impl":I
    move-object/from16 v17, v10

    .local v17, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 329
    .local v18, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-nez v19, :cond_6

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v2, v17

    goto :goto_3

    .line 330
    :cond_6
    :goto_2
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v17

    .end local v17    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 331
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0, v13}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 333
    :goto_3
    nop

    .line 328
    .end local v2    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 333
    nop

    .line 318
    .end local v13    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "$i$f$set-impl":I
    nop

    .line 327
    .end local v10    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 334
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v36, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 336
    shr-int/lit8 v0, v36, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 337
    .local v38, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v10, 0x107e0298

    const-string v11, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v2, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v10, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v11, v31, 0x6

    and-int/lit8 v11, v11, 0x70

    or-int/lit8 v39, v11, 0x6

    .local v39, "$changed":I
    check-cast v10, Landroidx/compose/foundation/layout/ColumnScope;

    .local v10, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v13, v10

    .end local v10    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v13, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v10, v2

    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v27, v10

    const/16 v40, 0x0

    .line 296
    .local v40, "$i$a$-Column-ConfigScreenKt$ConfigCard$1$1":I
    const v11, -0x63c98e18

    move/from16 v41, v0

    .end local v0    # "$changed$iv":I
    .local v41, "$changed$iv":I
    const-string v0, "C295@14161L85,296@14259L9:ConfigScreen.kt#xkugs2"

    invoke-static {v10, v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v16

    move-object v0, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v10, v16

    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v16

    move-object/from16 v42, v13

    .end local v13    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v42, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v13, v16

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v16

    move-object/from16 v43, v8

    move-object/from16 v44, v9

    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v43, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v44, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-wide/from16 v8, v16

    const/16 v29, 0x0

    const v30, 0x1ffd2

    const/16 v16, 0x0

    move-object/from16 v45, v7

    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v45, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v7, v16

    move-object/from16 v46, v12

    .end local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v46, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v12, v16

    move-object/from16 v47, v14

    .end local v14    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v47, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    move-object/from16 v14, v16

    const-wide/16 v16, 0x0

    move-object/from16 v48, v15

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

    const v28, 0x30d80

    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 297
    and-int/lit8 v6, v39, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v42

    move-object/from16 v7, v48

    .end local v42    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v8, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-interface {v7, v8, v0, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 298
    nop

    .line 337
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v8    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v39    # "$changed":I
    .end local v40    # "$i$a$-Column-ConfigScreenKt$ConfigCard$1$1":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 336
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v41    # "$changed$iv":I
    nop

    .line 338
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 339
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 340
    nop

    .end local v36    # "$changed$iv$iv$iv":I
    .end local v37    # "$i$f$ReusableComposeNode":I
    .end local v43    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v44    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 341
    nop

    .end local v33    # "$changed$iv$iv":I
    .end local v34    # "$i$f$Layout":I
    .end local v35    # "compositeKeyHash$iv$iv":I
    .end local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 342
    nop

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v31    # "$changed$iv":I
    .end local v32    # "$i$f$Column":I
    .end local v46    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v47    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 299
    :cond_7
    :goto_4
    return-void
.end method
