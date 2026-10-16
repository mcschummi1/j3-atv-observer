.class final Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8;
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
    value = "SMAP\nConfigScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,301:1\n91#2,2:302\n93#2:332\n97#2:384\n79#3,11:304\n79#3,11:340\n92#3:372\n92#3:383\n456#4,8:315\n464#4,3:329\n456#4,8:351\n464#4,3:365\n467#4,3:369\n467#4,3:380\n3737#5,6:323\n3737#5,6:359\n73#6,7:333\n80#6:368\n84#6:373\n1116#7,6:374\n*S KotlinDebug\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8\n*L\n199#1:302,2\n199#1:332\n199#1:384\n199#1:304,11\n204#1:340,11\n204#1:372\n199#1:383\n199#1:315,8\n199#1:329,3\n204#1:351,8\n204#1:365,3\n204#1:369,3\n199#1:380,3\n199#1:323,6\n204#1:359,6\n204#1:333,7\n204#1:368\n204#1:373\n210#1:374,6\n*E\n"
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
.field final synthetic $tempMonitoringEnabled$delegate:Landroidx/compose/runtime/MutableState;
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

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8;->$tempMonitoringEnabled$delegate:Landroidx/compose/runtime/MutableState;

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

    .line 198
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 120
    .param p1, "$this$ConfigCard"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$ConfigCard"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C198@10105L806:ConfigScreen.kt#xkugs2"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 199
    and-int/lit8 v2, v1, 0x51

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 199
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:198)"

    const v5, -0x2d2c21e6

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 200
    :cond_2
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 201
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 202
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    .line 199
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8;->$tempMonitoringEnabled$delegate:Landroidx/compose/runtime/MutableState;

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

    const-string v14, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v0, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 304
    const/4 v15, 0x0

    invoke-static {v0, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 305
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 307
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 314
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    shl-int/lit8 v13, v11, 0x9

    and-int/lit16 v13, v13, 0x1c00

    or-int/lit8 v13, v13, 0x6

    .line 306
    move-object/from16 v21, v18

    .local v21, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v18, v19

    .local v13, "$changed$iv$iv$iv":I
    .local v18, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v19, 0x0

    .line 315
    .local v19, "$i$f$ReusableComposeNode":I
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
    move-object/from16 v1, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 320
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v1, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 322
    :goto_1
    move-object/from16 v21, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 309
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v24, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

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
    const/16 v23, 0x0

    .line 323
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v1

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 324
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_6

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v4

    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v27, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v25

    goto :goto_3

    .end local v27    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_6
    move-object/from16 v27, v4

    .line 325
    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v27    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 326
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    :goto_3
    nop

    .line 323
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 328
    nop

    .line 313
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 322
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
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

    move-object/from16 v3, v18

    .end local v18    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 331
    shr-int/lit8 v2, v13, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object/from16 v4, p2

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 332
    .local v18, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v1, -0x1378c42b

    const-string v0, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v8, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v23, v4

    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 204
    .local v25, "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$8$1":I
    move-object/from16 v26, v0

    .end local v0    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .local v26, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0x55ee74b3

    move/from16 v65, v1

    .end local v1    # "$changed":I
    .local v65, "$changed":I
    const-string v1, "C203@10343L253,209@10724L30,210@10804L67,207@10617L276:ConfigScreen.kt#xkugs2"

    move/from16 v66, v2

    move-object/from16 v2, v23

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v66, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    move/from16 v23, v1

    .local v23, "$i$f$Column":I
    const v1, -0x1cd0f17e

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 333
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 334
    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v28, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    move-object/from16 v67, v3

    .end local v3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v67, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v3

    .line 335
    .local v3, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v28, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    move-object/from16 v68, v5

    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v68, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .line 338
    .local v5, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v28, v0, 0x3

    and-int/lit8 v28, v28, 0xe

    shr-int/lit8 v29, v0, 0x3

    and-int/lit8 v29, v29, 0x70

    or-int v6, v28, v29

    invoke-static {v3, v5, v2, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v28, v0, 0x3

    and-int/lit8 v28, v28, 0x70

    .line 339
    nop

    .local v28, "$changed$iv$iv":I
    const/16 v29, 0x0

    move-object/from16 v30, v3

    const v3, -0x4ee9b9da

    .end local v3    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v29, "$i$f$Layout":I
    .local v30, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 340
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 341
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 343
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    .line 350
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v31

    move-object/from16 v32, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v32, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v28, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 342
    move-object/from16 v33, v20

    .local v1, "$changed$iv$iv$iv":I
    .local v33, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v20, v31

    .local v20, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v31, 0x0

    .line 351
    .local v31, "$i$f$ReusableComposeNode":I
    move-object/from16 v34, v5

    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v34, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 352
    :cond_7
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 353
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 354
    move-object/from16 v5, v33

    .end local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 356
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v5, v33

    .end local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 358
    :goto_4
    move-object/from16 v33, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v35, 0x0

    .line 345
    .local v35, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v69, v8

    .end local v8    # "$changed$iv":I
    .local v69, "$changed$iv":I
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 346
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 348
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v36, 0x0

    .line 359
    .local v36, "$i$f$set-impl":I
    move-object/from16 v37, v5

    .local v37, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 360
    .local v38, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v39

    if-nez v39, :cond_a

    move-object/from16 v39, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v39, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v40, v6

    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v40, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v6, v37

    goto :goto_6

    .end local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_a
    move-object/from16 v39, v3

    move-object/from16 v40, v6

    .line 361
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v37

    .end local v37    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 362
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 364
    :goto_6
    nop

    .line 359
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 364
    nop

    .line 349
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v36    # "$i$f$set-impl":I
    nop

    .line 358
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v35    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 365
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v20

    .end local v20    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6, v3, v2, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const v3, 0x7ab4aae9

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 367
    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v5, v2

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 368
    .local v8, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v20, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v20, "$changed$iv$iv$iv":I
    const v1, 0x107e0298

    move/from16 v22, v3

    .end local v3    # "$changed$iv":I
    .local v22, "$changed$iv":I
    const-string v3, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$invoke_u24lambda_u242_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v35, v5

    .local v35, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v116, v35

    move-object/from16 v91, v35

    const/16 v36, 0x0

    .line 205
    .local v36, "$i$a$-Column-ConfigScreenKt$ConfigScreen$1$2$8$1$1":I
    move/from16 v37, v0

    .end local v0    # "$changed$iv":I
    .local v37, "$changed$iv":I
    const v0, 0x57b306d4

    move-object/from16 v38, v1

    .end local v1    # "$this$invoke_u24lambda_u242_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v38, "$this$invoke_u24lambda_u242_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const-string v1, "C204@10376L79,205@10480L94:ConfigScreen.kt#xkugs2"

    move/from16 v41, v3

    move-object/from16 v3, v35

    .end local v35    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v41, "$changed":I
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v74

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v72

    const/16 v93, 0x0

    const v94, 0x1fff2

    const-string v70, "Enable Temperature Monitoring"

    const/16 v71, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const-wide/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const-wide/16 v83, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v92, 0xd86

    invoke-static/range {v70 .. v94}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 206
    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v99

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v97

    const/16 v118, 0x0

    const v119, 0x1fff2

    const-string v95, "Turn OFF if no physical probe is installed"

    const/16 v96, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const-wide/16 v104, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const-wide/16 v108, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v117, 0xd86

    invoke-static/range {v95 .. v119}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 205
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 207
    nop

    .line 368
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$a$-Column-ConfigScreenKt$ConfigScreen$1$2$8$1$1":I
    .end local v38    # "$this$invoke_u24lambda_u242_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v41    # "$changed":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 367
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v22    # "$changed$iv":I
    nop

    .line 369
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 370
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 371
    nop

    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v20    # "$changed$iv$iv$iv":I
    .end local v31    # "$i$f$ReusableComposeNode":I
    .end local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 372
    nop

    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v28    # "$changed$iv$iv":I
    .end local v29    # "$i$f$Layout":I
    .end local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 373
    nop

    .line 209
    .end local v23    # "$i$f$Column":I
    .end local v30    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v32    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v34    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v37    # "$changed$iv":I
    .end local v40    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v7}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$29(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    const v1, 0x4d1862e8    # 1.59788672E8f

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):ConfigScreen.kt#9igjgp"

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 210
    move-object v1, v2

    const/4 v3, 0x0

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v3, "invalid$iv":Z
    const/4 v5, 0x0

    .line 374
    .local v5, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 375
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v6, v14, :cond_b

    .line 376
    const/4 v14, 0x0

    .line 210
    .local v14, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$8$1$2":I
    move/from16 v17, v3

    .end local v3    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    new-instance v3, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8$1$2$1;

    invoke-direct {v3, v7}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$8$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 376
    .end local v14    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$8$1$2":I
    nop

    .line 377
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 378
    nop

    .end local v3    # "value$iv":Ljava/lang/Object;
    goto :goto_7

    .line 379
    .end local v17    # "invalid$iv":Z
    .local v3, "invalid$iv":Z
    :cond_b
    move/from16 v17, v3

    .end local v3    # "invalid$iv":Z
    .restart local v17    # "invalid$iv":Z
    move-object v3, v6

    .line 375
    :goto_7
    nop

    .line 374
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 210
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v17    # "invalid$iv":Z
    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 211
    sget-object v28, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v29

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v31

    sget v3, Landroidx/compose/material3/SwitchDefaults;->$stable:I

    shl-int/lit8 v63, v3, 0x12

    const v64, 0xfffc

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

    const-wide/16 v59, 0x0

    const/16 v62, 0x36

    move-object/from16 v61, v2

    invoke-virtual/range {v28 .. v64}, Landroidx/compose/material3/SwitchDefaults;->colors-V1nXRL4(JJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SwitchColors;

    move-result-object v33

    .line 208
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x30

    const/16 v37, 0x5c

    move/from16 v28, v0

    move-object/from16 v29, v1

    move-object/from16 v35, v2

    invoke-static/range {v28 .. v37}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 204
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 213
    nop

    .line 332
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$8$1":I
    .end local v26    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .end local v65    # "$changed":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 331
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v66    # "$changed$iv":I
    nop

    .line 380
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 381
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 382
    nop

    .end local v13    # "$changed$iv$iv$iv":I
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v67    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 383
    nop

    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v16    # "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 384
    nop

    .end local v9    # "$i$f$Row":I
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v27    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v68    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v69    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 214
    :cond_c
    :goto_8
    return-void
.end method
