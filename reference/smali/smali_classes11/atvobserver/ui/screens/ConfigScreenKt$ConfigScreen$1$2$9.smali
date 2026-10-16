.class final Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfigScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->ConfigScreen(Lcom/cgs/atvobserver/data/config/AppConfigManager;Lcom/cgs/atvobserver/domain/DaelimOdometerManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nConfigScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,301:1\n91#2,2:302\n93#2:332\n97#2:343\n79#3,11:304\n92#3:342\n456#4,8:315\n464#4,3:329\n467#4,3:339\n3737#5,6:323\n1116#6,6:333\n*S KotlinDebug\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9\n*L\n218#1:302,2\n218#1:332\n218#1:343\n218#1:304,11\n218#1:342\n218#1:315,8\n218#1:329,3\n218#1:339,3\n218#1:323,6\n226#1:333,6\n*E\n"
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
.field final synthetic $voiceEnabled$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9;->$voiceEnabled$delegate:Landroidx/compose/runtime/MutableState;

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

    .line 217
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 65
    .param p1, "$this$ConfigCard"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$ConfigCard"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C217@11049L604:ConfigScreen.kt#xkugs2"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 218
    and-int/lit8 v2, v1, 0x51

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v6, p0

    goto/16 :goto_5

    .line 218
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:217)"

    const v5, 0xb8fab39

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 219
    :cond_2
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 220
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 221
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    .line 218
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9;->$voiceEnabled$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v8, 0x1b6

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v4, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v5, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v8, "$changed$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$Row":I
    const v10, 0x2952b718

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v0, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 302
    shr-int/lit8 v10, v8, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v8, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v4, v5, v0, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v8, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 303
    nop

    .local v11, "$changed$iv$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v0, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 304
    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 305
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 307
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 314
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    shl-int/lit8 v13, v11, 0x9

    and-int/lit16 v13, v13, 0x1c00

    or-int/lit8 v13, v13, 0x6

    .line 306
    move-object/from16 v19, v16

    .local v19, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v17

    .local v13, "$changed$iv$iv$iv":I
    .local v16, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v17, 0x0

    .line 315
    .local v17, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 316
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 317
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    move-object/from16 v1, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 320
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v1, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 322
    :goto_1
    move-object/from16 v19, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 309
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v22, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v22, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 310
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 312
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 323
    .local v21, "$i$f$set-impl":I
    move-object/from16 v23, v1

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 324
    .local v24, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_6

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v4

    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v25, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v23

    goto :goto_3

    .end local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_6
    move-object/from16 v25, v4

    .line 325
    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 326
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    :goto_3
    nop

    .line 323
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 328
    nop

    .line 313
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 322
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 329
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v13, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v16

    .end local v16    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 331
    shr-int/lit8 v1, v13, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 332
    .local v4, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v0, -0x1378c42b

    move/from16 v16, v1

    .end local v1    # "$changed$iv":I
    .local v16, "$changed$iv":I
    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v8, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v20, v2

    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v47, v20

    const/16 v21, 0x0

    .line 223
    .local v21, "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$9$1":I
    move-object/from16 v23, v0

    .end local v0    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .local v23, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0x55fca63d

    move/from16 v24, v1

    .end local v1    # "$changed":I
    .local v24, "$changed":I
    const-string v1, "C222@11287L69,225@11475L21,226@11546L67,223@11377L258:ConfigScreen.kt#xkugs2"

    move-object/from16 v63, v3

    move-object/from16 v3, v20

    .end local v20    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v63, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v30

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v28

    const/16 v49, 0x0

    const v50, 0x1fff2

    const-string v26, "Spoken Audio Alerts"

    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v48, 0xd86

    invoke-static/range {v26 .. v50}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 225
    invoke-static {v7}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$23(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    const v1, 0x4d18c0bf    # 1.6017304E8f

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):ConfigScreen.kt#9igjgp"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object/from16 v18, v3

    .local v18, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 333
    .local v20, "$i$f$cache":I
    move/from16 v26, v1

    .end local v1    # "invalid$iv":Z
    .local v26, "invalid$iv":Z
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 334
    .local v27, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v28, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v64, v4

    .end local v4    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v64, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_7

    .line 335
    const/4 v4, 0x0

    .line 226
    .local v4, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$9$1$1":I
    move-object/from16 v28, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v28, "it$iv":Ljava/lang/Object;
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9$1$1$1;

    invoke-direct {v1, v7}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$9$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 335
    .end local v4    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$9$1$1":I
    nop

    .line 336
    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 v4, v18

    .end local v18    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 337
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_4

    .line 338
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    .restart local v18    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_7
    move-object/from16 v28, v1

    move-object/from16 v4, v18

    .line 334
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v28    # "it$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 333
    .end local v27    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v28    # "it$iv":Ljava/lang/Object;
    nop

    .line 226
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$cache":I
    .end local v26    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 227
    sget-object v26, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v27

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v29

    sget v4, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    shl-int/lit8 v61, v4, 0x12

    const v62, 0xfffc

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v60, 0x36

    move-object/from16 v59, v3

    invoke-virtual/range {v26 .. v62}, Landroidx/compose/material3/SwitchDefaults;->colors-V1nXRL4(JJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SwitchColors;

    move-result-object v31

    .line 224
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x30

    const/16 v35, 0x5c

    move/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v33, v3

    invoke-static/range {v26 .. v35}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 223
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 229
    nop

    .line 332
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$9$1":I
    .end local v23    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .end local v24    # "$changed":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 331
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed$iv":I
    .end local v64    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 339
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 340
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 341
    nop

    .end local v13    # "$changed$iv$iv$iv":I
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v63    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 342
    nop

    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 343
    nop

    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v8    # "$changed$iv":I
    .end local v9    # "$i$f$Row":I
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 230
    :cond_8
    :goto_5
    return-void
.end method
