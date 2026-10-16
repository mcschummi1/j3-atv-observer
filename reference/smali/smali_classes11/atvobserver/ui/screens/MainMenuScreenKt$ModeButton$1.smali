.class final Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainMenuScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainMenuScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainMenuScreen.kt\ncom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,269:1\n73#2,7:270\n80#2:305\n84#2:310\n79#3,11:277\n92#3:309\n456#4,8:288\n464#4,3:302\n467#4,3:306\n3737#5,6:296\n*S KotlinDebug\n*F\n+ 1 MainMenuScreen.kt\ncom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1\n*L\n254#1:270,7\n254#1:305\n254#1:310\n254#1:277,11\n254#1:309\n254#1:288,8\n254#1:302,3\n254#1:306,3\n254#1:296,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/RowScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $subtitle:Ljava/lang/String;

.field final synthetic $textColor:J

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;->$title:Ljava/lang/String;

    iput-wide p2, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;->$textColor:J

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;->$subtitle:Ljava/lang/String;

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

    .line 253
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 73
    .param p1, "$this$Button"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Button"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C253@10605L397:MainMenuScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 254
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 254
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.ModeButton.<anonymous> (MainMenuScreen.kt:253)"

    const v6, -0x55101d31

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    .local v3, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    iget-object v5, v0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;->$title:Ljava/lang/String;

    iget-wide v7, v0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;->$textColor:J

    iget-object v14, v0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;->$subtitle:Ljava/lang/String;

    const/16 v6, 0x180

    .local v6, "$changed$iv":I
    move/from16 v55, v6

    .end local v6    # "$changed$iv":I
    .local v55, "$changed$iv":I
    const/16 v56, 0x0

    .local v56, "$i$f$Column":I
    const v6, -0x1cd0f17e

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 270
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v57, v6

    check-cast v57, Landroidx/compose/ui/Modifier;

    .line 271
    .local v57, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v15

    .line 275
    .local v15, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v6, v55, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v9, v55, 0x3

    and-int/lit8 v9, v9, 0x70

    or-int/2addr v6, v9

    invoke-static {v15, v3, v1, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v6, v55, 0x3

    and-int/lit8 v6, v6, 0x70

    .line 276
    move/from16 v58, v6

    .local v58, "$changed$iv$iv":I
    const/16 v59, 0x0

    .local v59, "$i$f$Layout":I
    const v6, -0x4ee9b9da

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 277
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v60

    .line 278
    .local v60, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 280
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    .line 287
    invoke-static/range {v57 .. v57}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v9

    shl-int/lit8 v10, v58, 0x9

    and-int/lit16 v10, v10, 0x1c00

    or-int/lit8 v10, v10, 0x6

    .line 279
    move-object v12, v9

    .local v6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v61, v10

    .local v61, "$changed$iv$iv$iv":I
    const/16 v62, 0x0

    .line 288
    .local v62, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 289
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 290
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 291
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 293
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 295
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 282
    .local v10, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 283
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 285
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v16, 0x0

    .line 296
    .local v16, "$i$f$set-impl":I
    move-object/from16 v17, v9

    .local v17, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 297
    .local v18, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-nez v19, :cond_6

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v63, v3

    .end local v3    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v63, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v3, v17

    goto :goto_3

    .end local v63    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v3    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_6
    move-object/from16 v63, v3

    .line 298
    .end local v3    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v63    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_2
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v17

    .end local v17    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 299
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 301
    :goto_3
    nop

    .line 296
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 301
    nop

    .line 286
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "$i$f$set-impl":I
    nop

    .line 295
    .end local v9    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 302
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v61, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 304
    shr-int/lit8 v0, v61, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 305
    .local v3, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v9, 0x107e0298

    const-string v10, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v9, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v10, v55, 0x6

    and-int/lit8 v10, v10, 0x70

    or-int/lit8 v64, v10, 0x6

    .local v64, "$changed":I
    move-object/from16 v65, v9

    check-cast v65, Landroidx/compose/foundation/layout/ColumnScope;

    .local v65, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v9, v2

    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v51, v9

    move-object/from16 v26, v9

    const/16 v66, 0x0

    .line 255
    .local v66, "$i$a$-Column-MainMenuScreenKt$ModeButton$1$1":I
    const v10, 0x5f585b36

    move/from16 v67, v0

    .end local v0    # "$changed$iv":I
    .local v67, "$changed$iv":I
    const-string v0, "C254@10678L163,260@10854L138:MainMenuScreen.kt#xkugs2"

    invoke-static {v9, v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 257
    const/16 v0, 0xf

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v16

    move-object v0, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v9, v16

    .line 258
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v16

    move-object/from16 v68, v12

    .end local v12    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v68, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v12, v16

    .line 256
    nop

    .line 259
    nop

    .line 257
    nop

    .line 258
    nop

    .line 255
    const/16 v16, 0x0

    move-object/from16 v69, v6

    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v69, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v6, v16

    move-object/from16 v70, v11

    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v70, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v11, v16

    move-object/from16 v71, v13

    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v71, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-object/from16 v30, v14

    move-object/from16 v72, v15

    .end local v15    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v72, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v27, 0x30c00

    const/16 v28, 0x0

    const v29, 0x1ffd2

    move-wide/from16 v31, v7

    invoke-static/range {v5 .. v29}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 263
    const/16 v5, 0x9

    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v34

    .line 264
    const/16 v12, 0xe

    const/4 v13, 0x0

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, v31

    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v32

    .line 262
    nop

    .line 264
    nop

    .line 263
    nop

    .line 261
    const/16 v31, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v52, 0xc00

    const/16 v53, 0x0

    const v54, 0x1fff2

    invoke-static/range {v30 .. v54}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 255
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 266
    nop

    .line 305
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v64    # "$changed":I
    .end local v65    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v66    # "$i$a$-Column-MainMenuScreenKt$ModeButton$1$1":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 304
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v67    # "$changed$iv":I
    nop

    .line 306
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 307
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 308
    nop

    .end local v61    # "$changed$iv$iv$iv":I
    .end local v62    # "$i$f$ReusableComposeNode":I
    .end local v68    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v69    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 309
    nop

    .end local v58    # "$changed$iv$iv":I
    .end local v59    # "$i$f$Layout":I
    .end local v60    # "compositeKeyHash$iv$iv":I
    .end local v70    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 310
    nop

    .end local v55    # "$changed$iv":I
    .end local v56    # "$i$f$Column":I
    .end local v57    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v63    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v71    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v72    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 267
    :cond_7
    :goto_4
    return-void
.end method
