.class final Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AtvDiagScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->AtvDiagScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nAtvDiagScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtvDiagScreen.kt\ncom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,154:1\n154#2:155\n154#2:191\n154#2:192\n74#3,6:156\n80#3:190\n84#3:250\n79#4,11:162\n79#4,11:200\n92#4:244\n92#4:249\n456#5,8:173\n464#5,3:187\n456#5,8:211\n464#5,3:225\n467#5,3:241\n467#5,3:246\n3737#6,6:181\n3737#6,6:219\n86#7,7:193\n93#7:228\n97#7:245\n1116#8,6:229\n1116#8,6:235\n*S KotlinDebug\n*F\n+ 1 AtvDiagScreen.kt\ncom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2\n*L\n72#1:155\n77#1:191\n78#1:192\n71#1:156,6\n71#1:190\n71#1:250\n71#1:162,11\n78#1:200,11\n78#1:244\n71#1:249\n71#1:173,8\n71#1:187,3\n78#1:211,8\n78#1:225,3\n78#1:241,3\n71#1:246,3\n71#1:181,6\n78#1:219,6\n78#1:193,7\n78#1:228\n78#1:245\n80#1:229,6\n84#1:235,6\n*E\n"
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
.field final synthetic $showFanQuestion$delegate:Landroidx/compose/runtime/MutableState;
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

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2;->$showFanQuestion$delegate:Landroidx/compose/runtime/MutableState;

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

    .line 70
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 81
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$Card"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C70@2585L1034:AtvDiagScreen.kt#xkugs2"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 71
    and-int/lit8 v2, v1, 0x51

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_9

    .line 71
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:70)"

    const v5, -0x2eaeda22

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 72
    :cond_2
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/16 v4, 0xa

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 155
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 72
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 73
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v4

    .line 71
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2;->$showFanQuestion$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v7, 0x186

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v4, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$Column":I
    const v9, -0x1cd0f17e

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 156
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v9

    .line 160
    .local v9, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v10, v7, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v9, v4, v0, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 161
    nop

    .local v11, "$changed$iv$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v0, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 162
    const/4 v15, 0x0

    invoke-static {v0, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 163
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 165
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 172
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    shl-int/lit8 v13, v11, 0x9

    and-int/lit16 v13, v13, 0x1c00

    const/4 v1, 0x6

    or-int/2addr v13, v1

    .line 164
    move-object/from16 v21, v18

    .local v21, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v18, v19

    .local v13, "$changed$iv$iv$iv":I
    .local v18, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v19, 0x0

    .line 173
    .local v19, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 174
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 175
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    move-object/from16 v1, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 178
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v1, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 180
    :goto_1
    move-object/from16 v21, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 167
    .local v23, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v25, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v24, 0x0

    .line 181
    .local v24, "$i$f$set-impl":I
    move-object/from16 v26, v1

    .local v26, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 182
    .local v27, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v28

    if-nez v28, :cond_6

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v4

    .end local v4    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v28, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v26

    goto :goto_3

    .end local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v4    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_6
    move-object/from16 v28, v4

    .line 183
    .end local v4    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v26

    .end local v26    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    :goto_3
    nop

    .line 181
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 186
    nop

    .line 171
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v24    # "$i$f$set-impl":I
    nop

    .line 180
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 187
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

    .line 188
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 189
    shr-int/lit8 v2, v13, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object/from16 v4, p2

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 190
    .local v18, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v1, 0x107e0298

    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v7, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v22, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v24, v4

    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v75, v24

    move-object/from16 v50, v24

    const/16 v26, 0x0

    .line 75
    .local v26, "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2$2$1":I
    move-object/from16 v27, v0

    .end local v0    # "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    .local v27, "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x7942777d

    move/from16 v79, v1

    .end local v1    # "$changed":I
    .local v79, "$changed":I
    const-string v1, "C74@2760L93,75@2874L83,76@2978L40,77@3039L562:AtvDiagScreen.kt#xkugs2"

    move/from16 v80, v2

    move-object/from16 v2, v24

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v80, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v36

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v31

    const/16 v52, 0x0

    const v53, 0x1ffda

    const-string v29, "Temperature rising unusually fast!"

    const/16 v30, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

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

    const v51, 0x30186

    invoke-static/range {v29 .. v53}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 76
    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v58

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v56

    const/16 v77, 0x0

    const v78, 0x1fff2

    const-string v54, "Is the manual cooling fan turned ON?"

    const/16 v55, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0xd86

    invoke-static/range {v54 .. v78}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 77
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x6

    .local v1, "$this$dp$iv":I
    const/16 v24, 0x0

    .line 191
    .local v24, "$i$f$getDp":I
    move-object/from16 v29, v3

    .end local v3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v29, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 77
    .end local v1    # "$this$dp$iv":I
    .end local v24    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 78
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v1, 0x10

    .restart local v1    # "$this$dp$iv":I
    const/4 v3, 0x0

    .line 192
    .local v3, "$i$f$getDp":I
    move/from16 v24, v3

    .end local v3    # "$i$f$getDp":I
    .restart local v24    # "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 78
    .end local v1    # "$this$dp$iv":I
    .end local v24    # "$i$f$getDp":I
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .local v0, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v1, 0x30

    .local v1, "$changed$iv":I
    const/4 v3, 0x0

    move/from16 v24, v3

    .local v24, "$i$f$Row":I
    const v3, 0x2952b718

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 193
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 195
    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v30, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    .line 198
    .local v5, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v30, v1, 0x3

    and-int/lit8 v30, v30, 0xe

    shr-int/lit8 v31, v1, 0x3

    and-int/lit8 v31, v31, 0x70

    move/from16 v32, v7

    .end local v7    # "$changed$iv":I
    .local v32, "$changed$iv":I
    or-int v7, v30, v31

    invoke-static {v0, v5, v2, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .local v7, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v30, v1, 0x3

    and-int/lit8 v30, v30, 0x70

    .line 199
    nop

    .local v30, "$changed$iv$iv":I
    const/16 v31, 0x0

    move-object/from16 v33, v0

    const v0, -0x4ee9b9da

    .end local v0    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v31, "$i$f$Layout":I
    .local v33, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 201
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 203
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    .line 210
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v34

    move-object/from16 v35, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v35, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v3, v30, 0x9

    and-int/lit16 v3, v3, 0x1c00

    const/16 v22, 0x6

    or-int/lit8 v3, v3, 0x6

    .line 202
    move-object/from16 v36, v34

    .local v3, "$changed$iv$iv$iv":I
    .local v36, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v34, v20

    .local v34, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v20, 0x0

    .line 211
    .local v20, "$i$f$ReusableComposeNode":I
    move-object/from16 v37, v5

    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v37, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 212
    :cond_7
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 213
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 214
    move-object/from16 v5, v34

    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 216
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v5, v34

    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 218
    :goto_4
    move-object/from16 v34, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 205
    .local v38, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v39, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v40, v8

    .end local v8    # "$i$f$Column":I
    .local v40, "$i$f$Column":I
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 206
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v39, 0x0

    .line 219
    .local v39, "$i$f$set-impl":I
    move-object/from16 v41, v5

    .local v41, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v42, 0x0

    .line 220
    .local v42, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v43

    if-nez v43, :cond_a

    move-object/from16 v43, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v43, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v44, v7

    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v44, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v7, v41

    goto :goto_6

    .end local v43    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_a
    move-object/from16 v43, v0

    move-object/from16 v44, v7

    .line 221
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v43    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v7, v41

    .end local v41    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 222
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 224
    :goto_6
    nop

    .line 219
    .end local v7    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v42    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 224
    nop

    .line 209
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v39    # "$i$f$set-impl":I
    nop

    .line 218
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 225
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v7, v36

    .end local v36    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v7, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v7, v0, v2, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const v0, 0x7ab4aae9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 227
    shr-int/lit8 v0, v3, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v5, v2

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 228
    .local v8, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v23, v0

    .end local v0    # "$changed$iv":I
    .local v23, "$changed$iv":I
    const v0, -0x1378c42b

    move/from16 v36, v3

    .end local v3    # "$changed$iv$iv$iv":I
    .local v36, "$changed$iv$iv$iv":I
    const-string v3, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v5, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x70

    const/16 v22, 0x6

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u243_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v38, v5

    .local v38, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 79
    .local v39, "$i$a$-Row-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1":I
    move-object/from16 v41, v0

    .end local v0    # "$this$invoke_u24lambda_u243_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .local v41, "$this$invoke_u24lambda_u243_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    const v0, -0x5eaf62dc

    move/from16 v42, v1

    .end local v1    # "$changed$iv":I
    .local v42, "$changed$iv":I
    const-string v1, "C79@3168L27,80@3249L39,78@3122L217,83@3410L27,84@3491L37,82@3364L215:AtvDiagScreen.kt#xkugs2"

    move/from16 v58, v3

    move-object/from16 v3, v38

    .end local v38    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v58, "$changed":I
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, 0x4f86bed1

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):AtvDiagScreen.kt#9igjgp"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    move/from16 v38, v1

    .local v38, "invalid$iv":Z
    move-object v1, v3

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v45, 0x0

    .line 229
    .local v45, "$i$f$cache":I
    move-object/from16 v59, v7

    .end local v7    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v59, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v46, 0x0

    .line 230
    .local v46, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v47, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v60, v8

    .end local v8    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v60, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-virtual/range {v47 .. v47}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 231
    const/4 v8, 0x0

    .line 80
    .local v8, "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$1":I
    move-object/from16 v47, v7

    .end local v7    # "it$iv":Ljava/lang/Object;
    .local v47, "it$iv":Ljava/lang/Object;
    new-instance v7, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$1$1;

    invoke-direct {v7, v6}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 231
    .end local v8    # "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$1":I
    nop

    .line 232
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 233
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_7

    .line 234
    .end local v47    # "it$iv":Ljava/lang/Object;
    .local v7, "it$iv":Ljava/lang/Object;
    :cond_b
    move-object/from16 v47, v7

    .line 230
    .end local v7    # "it$iv":Ljava/lang/Object;
    .restart local v47    # "it$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 229
    .end local v46    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v47    # "it$iv":Ljava/lang/Object;
    nop

    .line 80
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v38    # "invalid$iv":Z
    .end local v45    # "$i$f$cache":I
    move-object v1, v7

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 81
    sget-object v45, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v46

    sget v7, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v7, v7, 0xc

    const/4 v8, 0x6

    or-int/lit8 v55, v7, 0x6

    const/16 v56, 0xe

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    move-object/from16 v54, v3

    invoke-virtual/range {v45 .. v56}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v49

    sget-object v7, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;

    invoke-virtual {v7}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v54

    .line 79
    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v56, 0x30000006

    const/16 v57, 0x1ee

    move-object/from16 v45, v1

    move-object/from16 v55, v3

    invoke-static/range {v45 .. v57}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v1, 0x4f86dd11

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v1, v3

    .restart local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 235
    .local v7, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 236
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v38, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v45, v0

    .end local v0    # "invalid$iv":Z
    .local v45, "invalid$iv":Z
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_c

    .line 237
    const/4 v0, 0x0

    .line 84
    .local v0, "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$2":I
    move/from16 v38, v0

    .end local v0    # "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$2":I
    .local v38, "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$2":I
    new-instance v0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$2$1;

    invoke-direct {v0, v6}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 237
    .end local v38    # "$i$a$-cache-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1$2":I
    nop

    .line 238
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 239
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_8

    .line 240
    :cond_c
    move-object v0, v8

    .line 236
    :goto_8
    nop

    .line 235
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 84
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    .end local v45    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 85
    sget-object v45, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsRed()J

    move-result-wide v46

    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v1, v1, 0xc

    const/4 v6, 0x6

    or-int/lit8 v55, v1, 0x6

    const/16 v56, 0xe

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    move-object/from16 v54, v3

    invoke-virtual/range {v45 .. v56}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v49

    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$AtvDiagScreenKt;->getLambda-2$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v54

    .line 83
    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v56, 0x30000006

    const/16 v57, 0x1ee

    move-object/from16 v45, v0

    move-object/from16 v55, v3

    invoke-static/range {v45 .. v57}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 79
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 87
    nop

    .line 228
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$a$-Row-AtvDiagScreenKt$AtvDiagScreen$2$2$1$1":I
    .end local v41    # "$this$invoke_u24lambda_u243_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .end local v58    # "$changed":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 227
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$changed$iv":I
    .end local v60    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 241
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 242
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 243
    nop

    .end local v20    # "$i$f$ReusableComposeNode":I
    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v36    # "$changed$iv$iv$iv":I
    .end local v59    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 244
    nop

    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v30    # "$changed$iv$iv":I
    .end local v31    # "$i$f$Layout":I
    .end local v43    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 245
    nop

    .line 75
    .end local v24    # "$i$f$Row":I
    .end local v33    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v35    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v37    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v42    # "$changed$iv":I
    .end local v44    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 88
    nop

    .line 190
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2$2$1":I
    .end local v27    # "$this$invoke_u24lambda_u243":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v79    # "$changed":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 189
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v80    # "$changed$iv":I
    nop

    .line 246
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 247
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 248
    nop

    .end local v13    # "$changed$iv$iv$iv":I
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 249
    nop

    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v16    # "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 250
    nop

    .end local v9    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v32    # "$changed$iv":I
    .end local v40    # "$i$f$Column":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 89
    :cond_d
    :goto_9
    return-void
.end method
