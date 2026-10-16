.class final Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1;
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
    value = "SMAP\nConfigScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,301:1\n154#2:302\n86#3,7:303\n93#3:338\n97#3:367\n79#4,11:310\n92#4:366\n456#5,8:321\n464#5,3:335\n467#5,3:363\n3737#6,6:329\n1116#7,6:339\n1116#7,6:345\n1116#7,6:351\n1116#7,6:357\n*S KotlinDebug\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1\n*L\n77#1:302\n77#1:303,7\n77#1:338\n77#1:367\n77#1:310,11\n77#1:366\n77#1:321,8\n77#1:335,3\n77#1:363,3\n77#1:329,6\n79#1:339,6\n85#1:345,6\n91#1:351,6\n97#1:357,6\n*E\n"
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
.field final synthetic $configTargetVehicle$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
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
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1;->$configTargetVehicle$delegate:Landroidx/compose/runtime/MutableState;

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

    .line 76
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 40
    .param p1, "$this$ConfigCard"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$ConfigCard"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C76@3511L1613:ConfigScreen.kt#xkugs2"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 77
    and-int/lit8 v2, v1, 0x51

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_c

    .line 77
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:76)"

    const v5, 0x23db70f7

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v4, 0x6

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 302
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 77
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object/from16 v4, p0

    .local v2, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    iget-object v5, v4, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1;->$configTargetVehicle$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v6, 0x30

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$Row":I
    const v8, 0x2952b718

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v0, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 303
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 305
    .local v8, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    .line 308
    .local v9, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v10, v6, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v2, v9, v0, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 309
    nop

    .local v11, "$changed$iv$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v0, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 310
    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 311
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 313
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 320
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    shl-int/lit8 v13, v11, 0x9

    and-int/lit16 v13, v13, 0x1c00

    or-int/lit8 v13, v13, 0x6

    .line 312
    move-object/from16 v19, v16

    .local v19, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v17

    .local v13, "$changed$iv$iv$iv":I
    .local v16, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v17, 0x0

    .line 321
    .local v17, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 322
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 323
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 324
    move-object/from16 v1, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 326
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v1, v19

    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 328
    :goto_1
    move-object/from16 v19, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 315
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v22, v2

    .end local v2    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v22, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 316
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 329
    .local v21, "$i$f$set-impl":I
    move-object/from16 v23, v1

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 330
    .local v24, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_6

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v23

    goto :goto_3

    .line 331
    :cond_6
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 332
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    :goto_3
    nop

    .line 329
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 334
    nop

    .line 319
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 328
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 335
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

    .line 336
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 337
    shr-int/lit8 v1, v13, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 338
    .local v4, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v0, -0x1378c42b

    move/from16 v16, v1

    .end local v1    # "$changed$iv":I
    .local v16, "$changed$iv":I
    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v6, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    move-object/from16 v23, v0

    check-cast v23, Landroidx/compose/foundation/layout/RowScope;

    .local v23, "$this$invoke_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v2

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 78
    .local v20, "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$1$1":I
    move/from16 v21, v1

    .end local v1    # "$changed":I
    .local v21, "$changed":I
    const v1, 0x5588ae0c

    move-object/from16 v37, v3

    .end local v3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v37, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v3, "C79@3722L106,78@3631L41,77@3589L354,85@4104L113,84@4007L47,83@3965L369,91@4492L110,90@4398L44,89@4356L364,97@4880L110,96@4784L46,95@4742L364:ConfigScreen.kt#xkugs2"

    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 80
    sget-object v24, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v1

    sget-object v3, Lcom/cgs/atvobserver/data/model/VehicleType;->ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v1, v3, :cond_7

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v25

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v25

    :goto_4
    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v34, v1, 0xc

    const/16 v35, 0xe

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    move-object/from16 v33, v0

    invoke-virtual/range {v24 .. v35}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v1

    .line 81
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v24, v3

    check-cast v24, Landroidx/compose/ui/Modifier;

    const/16 v27, 0x2

    const/16 v28, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    const v3, 0x4d14ec53    # 1.56157232E8f

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):ConfigScreen.kt#9igjgp"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 79
    const/16 v18, 0x0

    move/from16 v24, v18

    .local v24, "invalid$iv":Z
    move-object/from16 v26, v0

    .local v26, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 339
    .local v27, "$i$f$cache":I
    move/from16 v38, v4

    .end local v4    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v38, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 340
    .local v28, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v29, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v39, v6

    .end local v6    # "$changed$iv":I
    .local v39, "$changed$iv":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_8

    .line 341
    const/4 v6, 0x0

    .line 79
    .local v6, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$1":I
    move-object/from16 v29, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local v29, "it$iv":Ljava/lang/Object;
    new-instance v4, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$1$1;

    invoke-direct {v4, v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 341
    .end local v6    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$1":I
    nop

    .line 342
    .local v4, "value$iv":Ljava/lang/Object;
    move-object/from16 v6, v26

    .end local v26    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    nop

    .end local v4    # "value$iv":Ljava/lang/Object;
    goto :goto_5

    .line 344
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    .restart local v26    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_8
    move-object/from16 v29, v4

    move-object/from16 v6, v26

    .line 340
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v26    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v29    # "it$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 339
    .end local v28    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v29    # "it$iv":Ljava/lang/Object;
    nop

    .line 79
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "invalid$iv":Z
    .end local v27    # "$i$f$cache":I
    move-object/from16 v24, v4

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 81
    nop

    .line 80
    sget-object v4, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v33

    .line 78
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v35, 0x30000006

    const/16 v36, 0x1ec

    move-object/from16 v28, v1

    move-object/from16 v34, v0

    invoke-static/range {v24 .. v36}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 86
    sget-object v24, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v1

    sget-object v4, Lcom/cgs/atvobserver/data/model/VehicleType;->MOTOCROSS:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v1, v4, :cond_9

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v25

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v25

    :goto_6
    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v34, v1, 0xc

    const/16 v35, 0xe

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    move-object/from16 v33, v0

    invoke-virtual/range {v24 .. v35}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v28

    .line 87
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v30, v1

    check-cast v30, Landroidx/compose/ui/Modifier;

    const/16 v33, 0x2

    const/16 v34, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    move-object/from16 v29, v23

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    const v1, 0x4d151b59    # 1.5634984E8f

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    move v4, v1

    .local v4, "invalid$iv":Z
    move-object v1, v0

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 345
    .local v6, "$i$f$cache":I
    move/from16 v24, v4

    .end local v4    # "invalid$iv":Z
    .restart local v24    # "invalid$iv":Z
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 346
    .local v26, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v29, v6

    .end local v6    # "$i$f$cache":I
    .local v29, "$i$f$cache":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_a

    .line 347
    const/4 v6, 0x0

    .line 85
    .local v6, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$2":I
    move-object/from16 v27, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local v27, "it$iv":Ljava/lang/Object;
    new-instance v4, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$2$1;

    invoke-direct {v4, v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 347
    .end local v6    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$2":I
    nop

    .line 348
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    nop

    .end local v4    # "value$iv":Ljava/lang/Object;
    goto :goto_7

    .line 350
    .end local v27    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    :cond_a
    move-object/from16 v27, v4

    .line 346
    .end local v4    # "it$iv":Ljava/lang/Object;
    .restart local v27    # "it$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 345
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v27    # "it$iv":Ljava/lang/Object;
    nop

    .line 85
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "invalid$iv":Z
    .end local v29    # "$i$f$cache":I
    move-object/from16 v24, v4

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 87
    nop

    .line 86
    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->getLambda-2$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v33

    .line 84
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v35, 0x30000006

    const/16 v36, 0x1ec

    move-object/from16 v34, v0

    invoke-static/range {v24 .. v36}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 92
    sget-object v24, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v1

    sget-object v4, Lcom/cgs/atvobserver/data/model/VehicleType;->DAELIM:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v1, v4, :cond_b

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v25

    goto :goto_8

    :cond_b
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v25

    :goto_8
    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v34, v1, 0xc

    const/16 v35, 0xe

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    move-object/from16 v33, v0

    invoke-virtual/range {v24 .. v35}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v28

    .line 93
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v30, v1

    check-cast v30, Landroidx/compose/ui/Modifier;

    const/16 v33, 0x2

    const/16 v34, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    move-object/from16 v29, v23

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    const v1, 0x4d154c36    # 1.56549984E8f

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    move v4, v1

    .local v4, "invalid$iv":Z
    move-object v1, v0

    .restart local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 351
    .local v6, "$i$f$cache":I
    move/from16 v24, v4

    .end local v4    # "invalid$iv":Z
    .restart local v24    # "invalid$iv":Z
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 352
    .restart local v26    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v27, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v29, v6

    .end local v6    # "$i$f$cache":I
    .restart local v29    # "$i$f$cache":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_c

    .line 353
    const/4 v6, 0x0

    .line 91
    .local v6, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$3":I
    move-object/from16 v27, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .restart local v27    # "it$iv":Ljava/lang/Object;
    new-instance v4, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$3$1;

    invoke-direct {v4, v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 353
    .end local v6    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$3":I
    nop

    .line 354
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 355
    nop

    .end local v4    # "value$iv":Ljava/lang/Object;
    goto :goto_9

    .line 356
    .end local v27    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    :cond_c
    move-object/from16 v27, v4

    .line 352
    .end local v4    # "it$iv":Ljava/lang/Object;
    .restart local v27    # "it$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 351
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v27    # "it$iv":Ljava/lang/Object;
    nop

    .line 91
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "invalid$iv":Z
    .end local v29    # "$i$f$cache":I
    move-object/from16 v24, v4

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 93
    nop

    .line 92
    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->getLambda-3$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v33

    .line 90
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v35, 0x30000006

    const/16 v36, 0x1ec

    move-object/from16 v34, v0

    invoke-static/range {v24 .. v36}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 98
    sget-object v24, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$2(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v1

    sget-object v4, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v1, v4, :cond_d

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsPink()J

    move-result-wide v25

    goto :goto_a

    :cond_d
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v25

    :goto_a
    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v34, v1, 0xc

    const/16 v35, 0xe

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    move-object/from16 v33, v0

    invoke-virtual/range {v24 .. v35}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v28

    .line 99
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v30, v1

    check-cast v30, Landroidx/compose/ui/Modifier;

    const/16 v33, 0x2

    const/16 v34, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    move-object/from16 v29, v23

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    const v1, 0x4d157c78    # 1.56747648E8f

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object v3, v0

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 357
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 358
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v26, v1

    .end local v1    # "invalid$iv":Z
    .local v26, "invalid$iv":Z
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_e

    .line 359
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$4":I
    move/from16 v24, v1

    .end local v1    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$4":I
    .local v24, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$4":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$4$1;

    invoke-direct {v1, v5}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$1$1$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 359
    .end local v24    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$1$1$4":I
    nop

    .line 360
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 361
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_b

    .line 362
    :cond_e
    move-object v1, v6

    .line 358
    :goto_b
    nop

    .line 357
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 97
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v26    # "invalid$iv":Z
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 99
    nop

    .line 98
    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->getLambda-4$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v33

    .line 96
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v35, 0x30000006

    const/16 v36, 0x1ec

    move-object/from16 v34, v0

    invoke-static/range {v24 .. v36}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 78
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 101
    nop

    .line 338
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$1$1":I
    .end local v21    # "$changed":I
    .end local v23    # "$this$invoke_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 337
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed$iv":I
    .end local v38    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 363
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 364
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 365
    nop

    .end local v13    # "$changed$iv$iv$iv":I
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v19    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v37    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 366
    nop

    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 367
    nop

    .end local v7    # "$i$f$Row":I
    .end local v8    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v9    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v39    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 102
    :cond_f
    :goto_c
    return-void
.end method
