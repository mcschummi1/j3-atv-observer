.class final Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainMenuScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->MainMenuScreen(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMainMenuScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainMenuScreen.kt\ncom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,269:1\n154#2:270\n154#2:306\n154#2:307\n154#2:342\n154#2:343\n154#2:344\n154#2:351\n154#2:352\n154#2:353\n154#2:360\n154#2:361\n154#2:362\n154#2:369\n154#2:370\n154#2:371\n74#3,6:271\n80#3:305\n84#3:387\n79#4,11:277\n79#4,11:313\n92#4:381\n92#4:386\n456#5,8:288\n464#5,3:302\n456#5,8:324\n464#5,3:338\n467#5,3:378\n467#5,3:383\n3737#6,6:296\n3737#6,6:332\n88#7,5:308\n93#7:341\n97#7:382\n1116#8,6:345\n1116#8,6:354\n1116#8,6:363\n1116#8,6:372\n*S KotlinDebug\n*F\n+ 1 MainMenuScreen.kt\ncom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1\n*L\n70#1:270\n74#1:306\n77#1:307\n84#1:342\n85#1:343\n86#1:344\n101#1:351\n102#1:352\n103#1:353\n118#1:360\n119#1:361\n120#1:362\n135#1:369\n136#1:370\n137#1:371\n69#1:271,6\n69#1:305\n69#1:387\n69#1:277,11\n75#1:313,11\n75#1:381\n69#1:386\n69#1:288,8\n69#1:302,3\n75#1:324,8\n75#1:338,3\n75#1:378,3\n69#1:383,3\n69#1:296,6\n75#1:332,6\n75#1:308,5\n75#1:341\n75#1:382\n80#1:345,6\n97#1:354,6\n114#1:363,6\n131#1:372,6\n*E\n"
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
.field final synthetic $activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

.field final synthetic $onSwitchVehicle:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;->$onSwitchVehicle:Lkotlin/jvm/functions/Function1;

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

    .line 68
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 70
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C68@2477L4282:MainMenuScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 69
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_13

    .line 69
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.MainMenuScreen.<anonymous>.<anonymous>.<anonymous> (MainMenuScreen.kt:68)"

    const v6, -0x9f2c250

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 70
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x4

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 270
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 70
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 71
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .line 69
    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;->$onSwitchVehicle:Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x186

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v8, "$changed$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$Column":I
    const v10, -0x1cd0f17e

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 271
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v10}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v10

    .line 275
    .local v10, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v11, v8, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v8, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v10, v5, v1, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v8, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 276
    nop

    .local v12, "$changed$iv$iv":I
    const/4 v13, 0x0

    .local v13, "$i$f$Layout":I
    const v14, -0x4ee9b9da

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 277
    const/4 v14, 0x0

    invoke-static {v1, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v17

    .line 278
    .local v17, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 280
    .local v14, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    .line 287
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v20

    shl-int/lit8 v0, v12, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/4 v2, 0x6

    or-int/2addr v0, v2

    .line 279
    move-object/from16 v21, v19

    .local v21, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v19, v20

    .local v0, "$changed$iv$iv$iv":I
    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v20, 0x0

    .line 288
    .local v20, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 289
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 290
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 293
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 295
    :goto_1
    move-object/from16 v21, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 282
    .local v23, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v25, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 283
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v14, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 285
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v24, 0x0

    .line 296
    .local v24, "$i$f$set-impl":I
    move-object/from16 v26, v2

    .local v26, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 297
    .local v27, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v28

    if-nez v28, :cond_6

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v5

    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v28, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v5, v26

    goto :goto_3

    .end local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_6
    move-object/from16 v28, v5

    .line 298
    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v26

    .end local v26    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 299
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 301
    :goto_3
    nop

    .line 296
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 301
    nop

    .line 286
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v24    # "$i$f$set-impl":I
    nop

    .line 295
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 302
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v19

    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 304
    shr-int/lit8 v3, v0, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object/from16 v5, p2

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 305
    .local v19, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v2, 0x107e0298

    move/from16 v24, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v24, "$changed$iv$iv$iv":I
    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v8, 0x6

    and-int/lit8 v2, v2, 0x70

    const/16 v22, 0x6

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v26, v5

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v50, v26

    const/16 v27, 0x0

    .line 73
    .local v27, "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1$1$1$1":I
    move-object/from16 v54, v0

    .end local v0    # "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    .local v54, "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x5ad4abd7

    const-string v1, "C72@2651L80,73@2752L40,74@2813L3928:MainMenuScreen.kt#xkugs2"

    move/from16 v55, v2

    move-object/from16 v2, v26

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v55, "$changed":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v33

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v31

    const/16 v52, 0x0

    const v53, 0x1fff2

    const-string v29, "ACTIVE PROFILE / SANDBOX MODE"

    const/16 v30, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v51, 0xd86

    invoke-static/range {v29 .. v53}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 74
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x2

    .local v1, "$this$dp$iv":I
    const/16 v26, 0x0

    .line 306
    .local v26, "$i$f$getDp":I
    move/from16 v29, v3

    .end local v3    # "$changed$iv":I
    .local v29, "$changed$iv":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 74
    .end local v1    # "$this$dp$iv":I
    .end local v26    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 76
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v26, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v26, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 77
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v3, 0x3

    .local v3, "$this$dp$iv":I
    const/16 v30, 0x0

    .line 307
    .local v30, "$i$f$getDp":I
    int-to-float v4, v3

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 77
    .end local v3    # "$this$dp$iv":I
    .end local v30    # "$i$f$getDp":I
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 75
    nop

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v1, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v3, 0x36

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    move/from16 v30, v4

    .local v30, "$i$f$Row":I
    const v4, 0x2952b718

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 308
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    .line 311
    .local v4, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v32, v3, 0x3

    and-int/lit8 v32, v32, 0xe

    shr-int/lit8 v33, v3, 0x3

    and-int/lit8 v33, v33, 0x70

    move/from16 v34, v8

    .end local v8    # "$changed$iv":I
    .local v34, "$changed$iv":I
    or-int v8, v32, v33

    invoke-static {v1, v4, v2, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .local v8, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v32, v3, 0x3

    and-int/lit8 v32, v32, 0x70

    .line 312
    nop

    .local v32, "$changed$iv$iv":I
    const/16 v33, 0x0

    move-object/from16 v35, v1

    const v1, -0x4ee9b9da

    .end local v1    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v33, "$i$f$Layout":I
    .local v35, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v1

    .line 314
    .local v1, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 316
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 323
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    move-object/from16 v36, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v36, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v32, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/16 v22, 0x6

    or-int/lit8 v0, v0, 0x6

    .line 315
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v37, v16

    .local v37, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v18

    .local v16, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v18, 0x0

    .line 324
    .local v18, "$i$f$ReusableComposeNode":I
    move-object/from16 v38, v4

    .end local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v38, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 325
    :cond_7
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 326
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 327
    move-object/from16 v4, v37

    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 329
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v4, v37

    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 331
    :goto_4
    move-object/from16 v37, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 318
    .local v39, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v40, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v41, v9

    .end local v9    # "$i$f$Column":I
    .local v41, "$i$f$Column":I
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v4, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 319
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v4, v15, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .local v9, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v40, 0x0

    .line 332
    .local v40, "$i$f$set-impl":I
    move-object/from16 v42, v4

    .local v42, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v43, 0x0

    .line 333
    .local v43, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v44

    if-nez v44, :cond_a

    move-object/from16 v44, v8

    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v44, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v45, v10

    .end local v10    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v45, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v10, v42

    goto :goto_6

    .end local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v45    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v10    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_a
    move-object/from16 v44, v8

    move-object/from16 v45, v10

    .line 334
    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v10    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v45    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v10, v42

    .end local v42    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v10, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v9}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 337
    :goto_6
    nop

    .line 332
    .end local v10    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v43    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 337
    nop

    .line 322
    .end local v9    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v40    # "$i$f$set-impl":I
    nop

    .line 331
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 338
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    shr-int/lit8 v8, v0, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v16

    .end local v16    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v9, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v9, v4, v2, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const v4, 0x7ab4aae9

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 340
    shr-int/lit8 v4, v0, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v8, v2

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 341
    .local v10, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v16, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v16, "$changed$iv$iv$iv":I
    const v0, -0x1378c42b

    move/from16 v23, v1

    .end local v1    # "compositeKeyHash$iv$iv":I
    .local v23, "compositeKeyHash$iv$iv":I
    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v3, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v22, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    move-object/from16 v46, v0

    check-cast v46, Landroidx/compose/foundation/layout/RowScope;

    .local v46, "$this$invoke_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v8

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 79
    .local v22, "$i$a$-Row-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1":I
    move/from16 v39, v1

    .end local v1    # "$changed":I
    .local v39, "$changed":I
    const v1, -0xe94eec2

    move/from16 v40, v3

    .end local v3    # "$changed$iv":I
    .local v40, "$changed$iv":I
    const-string v3, "C80@3137L162,79@3047L36,78@3001L914,97@4083L169,96@3987L42,95@3941L935,114@5041L166,113@4948L39,112@4902L927,131@5996L166,130@5901L41,129@5855L864:MainMenuScreen.kt#xkugs2"

    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 81
    sget-object v56, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 82
    sget-object v1, Lcom/cgs/atvobserver/data/model/VehicleType;->ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v6, v1, :cond_b

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v42

    goto :goto_7

    :cond_b
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v42

    :goto_7
    move-wide/from16 v57, v42

    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v66, v1, 0xc

    .line 81
    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const/16 v67, 0xe

    move-object/from16 v65, v0

    invoke-virtual/range {v56 .. v67}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v60

    .line 84
    const/4 v1, 0x6

    .local v1, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 342
    .local v3, "$i$f$getDp":I
    move/from16 v42, v3

    .end local v3    # "$i$f$getDp":I
    .local v42, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 84
    .end local v1    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    .line 85
    const/4 v3, 0x2

    .local v3, "$this$dp$iv":I
    const/16 v42, 0x0

    .line 343
    .restart local v42    # "$i$f$getDp":I
    move/from16 v43, v4

    .end local v4    # "$changed$iv":I
    .local v43, "$changed$iv":I
    int-to-float v4, v3

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 85
    .end local v3    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    const/4 v4, 0x2

    .local v4, "$this$dp$iv":I
    const/16 v42, 0x0

    .line 343
    .restart local v42    # "$i$f$getDp":I
    move-object/from16 v52, v9

    .end local v9    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v52, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    int-to-float v9, v4

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 85
    .end local v4    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v63

    .line 86
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v47, v3

    check-cast v47, Landroidx/compose/ui/Modifier;

    const/16 v50, 0x2

    const/16 v51, 0x0

    const/high16 v48, 0x3f800000    # 1.0f

    const/16 v49, 0x0

    invoke-static/range {v46 .. v51}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v4, 0x24

    .restart local v4    # "$this$dp$iv":I
    const/4 v9, 0x0

    .line 344
    .local v9, "$i$f$getDp":I
    move/from16 v42, v9

    .end local v9    # "$i$f$getDp":I
    .restart local v42    # "$i$f$getDp":I
    int-to-float v9, v4

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 86
    .end local v4    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v57

    const v3, 0x62a052c3

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):MainMenuScreen.kt#9igjgp"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 80
    nop

    .local v4, "invalid$iv":Z
    move-object v9, v0

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v42, 0x0

    .line 345
    .local v42, "$i$f$cache":I
    move/from16 v47, v10

    .end local v10    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v47, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v48, 0x0

    .line 346
    .local v48, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_d

    sget-object v49, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v50, v4

    .end local v4    # "invalid$iv":Z
    .local v50, "invalid$iv":Z
    invoke-virtual/range {v49 .. v49}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v10, v4, :cond_c

    goto :goto_8

    .line 350
    :cond_c
    move-object v4, v10

    goto :goto_9

    .line 346
    .end local v50    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_d
    move/from16 v50, v4

    .line 347
    .end local v4    # "invalid$iv":Z
    .restart local v50    # "invalid$iv":Z
    :goto_8
    const/4 v4, 0x0

    .line 80
    .local v4, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1":I
    move/from16 v49, v4

    .end local v4    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1":I
    .local v49, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1":I
    new-instance v4, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1;

    invoke-direct {v4, v7}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 347
    .end local v49    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$1":I
    nop

    .line 348
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    nop

    .line 346
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 345
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v48    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 80
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v42    # "$i$f$cache":I
    .end local v50    # "invalid$iv":Z
    move-object/from16 v56, v4

    check-cast v56, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 86
    nop

    .line 84
    move-object/from16 v59, v1

    check-cast v59, Landroidx/compose/ui/graphics/Shape;

    .line 81
    nop

    .line 85
    nop

    .line 87
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2;

    invoke-direct {v1, v6}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$2;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;)V

    const v4, 0x532e6d7a

    const/4 v9, 0x1

    invoke-static {v0, v4, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v65, v1

    check-cast v65, Lkotlin/jvm/functions/Function3;

    .line 79
    const/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/high16 v67, 0x30c00000

    const/16 v68, 0x164

    move-object/from16 v66, v0

    invoke-static/range {v56 .. v68}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 98
    sget-object v56, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 99
    sget-object v1, Lcom/cgs/atvobserver/data/model/VehicleType;->MOTOCROSS:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v6, v1, :cond_e

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v9

    goto :goto_a

    :cond_e
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v9

    :goto_a
    move-wide/from16 v57, v9

    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v66, v1, 0xc

    .line 98
    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const/16 v67, 0xe

    move-object/from16 v65, v0

    invoke-virtual/range {v56 .. v67}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v60

    .line 101
    const/4 v1, 0x6

    .restart local v1    # "$this$dp$iv":I
    const/4 v4, 0x0

    .line 351
    .local v4, "$i$f$getDp":I
    int-to-float v9, v1

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 101
    .end local v1    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    .line 102
    const/4 v4, 0x2

    .local v4, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 352
    .local v9, "$i$f$getDp":I
    int-to-float v10, v4

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 102
    .end local v4    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    const/4 v9, 0x2

    .local v9, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 352
    .local v10, "$i$f$getDp":I
    move/from16 v42, v10

    .end local v10    # "$i$f$getDp":I
    .local v42, "$i$f$getDp":I
    int-to-float v10, v9

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 102
    .end local v9    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v63

    .line 103
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v65, v4

    check-cast v65, Landroidx/compose/ui/Modifier;

    const/16 v68, 0x2

    const/16 v69, 0x0

    const/high16 v66, 0x3f800000    # 1.0f

    const/16 v67, 0x0

    move-object/from16 v64, v46

    invoke-static/range {v64 .. v69}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v9, 0x24

    .restart local v9    # "$this$dp$iv":I
    const/4 v10, 0x0

    .line 353
    .restart local v10    # "$i$f$getDp":I
    move/from16 v42, v10

    .end local v10    # "$i$f$getDp":I
    .restart local v42    # "$i$f$getDp":I
    int-to-float v10, v9

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 103
    .end local v9    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v57

    const v4, 0x62a0c849

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 97
    nop

    .local v4, "invalid$iv":Z
    move-object v9, v0

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 354
    .local v10, "$i$f$cache":I
    move/from16 v42, v10

    .end local v10    # "$i$f$cache":I
    .local v42, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v48, 0x0

    .line 355
    .restart local v48    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_10

    sget-object v49, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v50, v4

    .end local v4    # "invalid$iv":Z
    .restart local v50    # "invalid$iv":Z
    invoke-virtual/range {v49 .. v49}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v10, v4, :cond_f

    goto :goto_b

    .line 359
    :cond_f
    move-object v4, v10

    goto :goto_c

    .line 355
    .end local v50    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_10
    move/from16 v50, v4

    .line 356
    .end local v4    # "invalid$iv":Z
    .restart local v50    # "invalid$iv":Z
    :goto_b
    const/4 v4, 0x0

    .line 97
    .local v4, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3":I
    move/from16 v49, v4

    .end local v4    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3":I
    .local v49, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3":I
    new-instance v4, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1;

    invoke-direct {v4, v7}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 356
    .end local v49    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$3":I
    nop

    .line 357
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 358
    nop

    .line 355
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 354
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v48    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 97
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v42    # "$i$f$cache":I
    .end local v50    # "invalid$iv":Z
    move-object/from16 v56, v4

    check-cast v56, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 103
    nop

    .line 101
    move-object/from16 v59, v1

    check-cast v59, Landroidx/compose/ui/graphics/Shape;

    .line 98
    nop

    .line 102
    nop

    .line 104
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4;

    invoke-direct {v1, v6}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$4;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;)V

    const v4, 0x74592671

    const/4 v9, 0x1

    invoke-static {v0, v4, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v65, v1

    check-cast v65, Lkotlin/jvm/functions/Function3;

    .line 96
    const/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/high16 v67, 0x30c00000

    const/16 v68, 0x164

    move-object/from16 v66, v0

    invoke-static/range {v56 .. v68}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 115
    sget-object v56, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 116
    sget-object v1, Lcom/cgs/atvobserver/data/model/VehicleType;->DAELIM:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v6, v1, :cond_11

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v9

    goto :goto_d

    :cond_11
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v9

    :goto_d
    move-wide/from16 v57, v9

    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v66, v1, 0xc

    .line 115
    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const/16 v67, 0xe

    move-object/from16 v65, v0

    invoke-virtual/range {v56 .. v67}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v60

    .line 118
    const/4 v1, 0x6

    .restart local v1    # "$this$dp$iv":I
    const/4 v4, 0x0

    .line 360
    .local v4, "$i$f$getDp":I
    int-to-float v9, v1

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 118
    .end local v1    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    .line 119
    const/4 v4, 0x2

    .local v4, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 361
    .local v9, "$i$f$getDp":I
    int-to-float v10, v4

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 119
    .end local v4    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    const/4 v9, 0x2

    .local v9, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 361
    .local v10, "$i$f$getDp":I
    move/from16 v42, v10

    .end local v10    # "$i$f$getDp":I
    .local v42, "$i$f$getDp":I
    int-to-float v10, v9

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 119
    .end local v9    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v63

    .line 120
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v65, v4

    check-cast v65, Landroidx/compose/ui/Modifier;

    const/16 v68, 0x2

    const/16 v69, 0x0

    const/high16 v66, 0x3f800000    # 1.0f

    const/16 v67, 0x0

    move-object/from16 v64, v46

    invoke-static/range {v64 .. v69}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v9, 0x24

    .restart local v9    # "$this$dp$iv":I
    const/4 v10, 0x0

    .line 362
    .restart local v10    # "$i$f$getDp":I
    move/from16 v42, v10

    .end local v10    # "$i$f$getDp":I
    .restart local v42    # "$i$f$getDp":I
    int-to-float v10, v9

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 120
    .end local v9    # "$this$dp$iv":I
    .end local v42    # "$i$f$getDp":I
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v57

    const v4, 0x62a14066

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 114
    nop

    .local v4, "invalid$iv":Z
    move-object v9, v0

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 363
    .local v10, "$i$f$cache":I
    move/from16 v42, v10

    .end local v10    # "$i$f$cache":I
    .local v42, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v48, 0x0

    .line 364
    .restart local v48    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_13

    sget-object v49, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v50, v4

    .end local v4    # "invalid$iv":Z
    .restart local v50    # "invalid$iv":Z
    invoke-virtual/range {v49 .. v49}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v10, v4, :cond_12

    goto :goto_e

    .line 368
    :cond_12
    move-object v4, v10

    goto :goto_f

    .line 364
    .end local v50    # "invalid$iv":Z
    .restart local v4    # "invalid$iv":Z
    :cond_13
    move/from16 v50, v4

    .line 365
    .end local v4    # "invalid$iv":Z
    .restart local v50    # "invalid$iv":Z
    :goto_e
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5":I
    move/from16 v49, v4

    .end local v4    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5":I
    .local v49, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5":I
    new-instance v4, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1;

    invoke-direct {v4, v7}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 365
    .end local v49    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$5":I
    nop

    .line 366
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 367
    nop

    .line 364
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 363
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v48    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 114
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v42    # "$i$f$cache":I
    .end local v50    # "invalid$iv":Z
    move-object/from16 v56, v4

    check-cast v56, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    nop

    .line 118
    move-object/from16 v59, v1

    check-cast v59, Landroidx/compose/ui/graphics/Shape;

    .line 115
    nop

    .line 119
    nop

    .line 121
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6;

    invoke-direct {v1, v6}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$6;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;)V

    const v4, 0x6c60fcf2

    const/4 v9, 0x1

    invoke-static {v0, v4, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v65, v1

    check-cast v65, Lkotlin/jvm/functions/Function3;

    .line 113
    const/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/high16 v67, 0x30c00000

    const/16 v68, 0x164

    move-object/from16 v66, v0

    invoke-static/range {v56 .. v68}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 132
    sget-object v56, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 133
    sget-object v1, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v6, v1, :cond_14

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsPink()J

    move-result-wide v9

    goto :goto_10

    :cond_14
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v9

    :goto_10
    move-wide/from16 v57, v9

    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v66, v1, 0xc

    .line 132
    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const/16 v67, 0xe

    move-object/from16 v65, v0

    invoke-virtual/range {v56 .. v67}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v60

    .line 135
    const/4 v1, 0x6

    .restart local v1    # "$this$dp$iv":I
    const/4 v4, 0x0

    .line 369
    .local v4, "$i$f$getDp":I
    int-to-float v6, v1

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 135
    .end local v1    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    .line 136
    const/4 v4, 0x2

    .local v4, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 370
    .restart local v6    # "$i$f$getDp":I
    int-to-float v9, v4

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 136
    .end local v4    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    const/4 v6, 0x2

    .local v6, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 370
    .local v9, "$i$f$getDp":I
    int-to-float v10, v6

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 136
    .end local v6    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v63

    .line 137
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v65, v4

    check-cast v65, Landroidx/compose/ui/Modifier;

    const/16 v68, 0x2

    const/16 v69, 0x0

    const/high16 v66, 0x3f800000    # 1.0f

    const/16 v67, 0x0

    move-object/from16 v64, v46

    invoke-static/range {v64 .. v69}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v6, 0x24

    .restart local v6    # "$this$dp$iv":I
    const/4 v9, 0x0

    .line 371
    .restart local v9    # "$i$f$getDp":I
    int-to-float v10, v6

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 137
    .end local v6    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v57

    const v4, 0x62a1b788

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 131
    nop

    .local v3, "invalid$iv":Z
    move-object v4, v0

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 372
    .local v6, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 373
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_16

    sget-object v31, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v42, v3

    .end local v3    # "invalid$iv":Z
    .local v42, "invalid$iv":Z
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v9, v3, :cond_15

    goto :goto_11

    .line 377
    :cond_15
    move-object v3, v9

    goto :goto_12

    .line 373
    .end local v42    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_16
    move/from16 v42, v3

    .line 374
    .end local v3    # "invalid$iv":Z
    .restart local v42    # "invalid$iv":Z
    :goto_11
    const/4 v3, 0x0

    .line 131
    .local v3, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7":I
    move/from16 v31, v3

    .end local v3    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7":I
    .local v31, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7":I
    new-instance v3, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1;

    invoke-direct {v3, v7}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 374
    .end local v31    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1$7":I
    nop

    .line 375
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 376
    nop

    .line 373
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_12
    nop

    .line 372
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 131
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    .end local v42    # "invalid$iv":Z
    move-object/from16 v56, v3

    check-cast v56, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 137
    nop

    .line 135
    move-object/from16 v59, v1

    check-cast v59, Landroidx/compose/ui/graphics/Shape;

    .line 132
    nop

    .line 136
    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v65

    .line 130
    const/16 v58, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/high16 v67, 0x30c00000

    const/16 v68, 0x164

    move-object/from16 v66, v0

    invoke-static/range {v56 .. v68}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 79
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 146
    nop

    .line 341
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-Row-MainMenuScreenKt$MainMenuScreen$1$1$1$1$1":I
    .end local v39    # "$changed":I
    .end local v46    # "$this$invoke_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 340
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v43    # "$changed$iv":I
    .end local v47    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 378
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 379
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 380
    nop

    .end local v16    # "$changed$iv$iv$iv":I
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v37    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v52    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 381
    nop

    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v23    # "compositeKeyHash$iv$iv":I
    .end local v32    # "$changed$iv$iv":I
    .end local v33    # "$i$f$Layout":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 382
    nop

    .line 73
    .end local v30    # "$i$f$Row":I
    .end local v35    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v36    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v38    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v40    # "$changed$iv":I
    .end local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 147
    nop

    .line 305
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1$1$1$1":I
    .end local v54    # "$this$invoke_u24lambda_u245":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v55    # "$changed":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 304
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v29    # "$changed$iv":I
    nop

    .line 383
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 384
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 385
    nop

    .end local v20    # "$i$f$ReusableComposeNode":I
    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$changed$iv$iv$iv":I
    .end local v26    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 386
    nop

    .end local v12    # "$changed$iv$iv":I
    .end local v13    # "$i$f$Layout":I
    .end local v14    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v17    # "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 387
    nop

    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v34    # "$changed$iv":I
    .end local v41    # "$i$f$Column":I
    .end local v45    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 148
    :cond_17
    :goto_13
    return-void
.end method
