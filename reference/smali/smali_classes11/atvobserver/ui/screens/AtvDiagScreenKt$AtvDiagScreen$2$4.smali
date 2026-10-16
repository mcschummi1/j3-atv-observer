.class final Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;
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
    value = "SMAP\nAtvDiagScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtvDiagScreen.kt\ncom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,154:1\n154#2:155\n154#2:156\n75#3,5:157\n80#3:190\n84#3:195\n79#4,11:162\n92#4:194\n456#5,8:173\n464#5,3:187\n467#5,3:191\n3737#6,6:181\n*S KotlinDebug\n*F\n+ 1 AtvDiagScreen.kt\ncom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4\n*L\n119#1:155\n120#1:156\n118#1:157,5\n118#1:190\n118#1:195\n118#1:162,11\n118#1:194\n118#1:173,8\n118#1:187,3\n118#1:191,3\n118#1:181,6\n*E\n"
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
.field final synthetic $aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

.field final synthetic $audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

.field final synthetic $motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

.field final synthetic $tempDisplay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Lcom/cgs/atvobserver/sensor/MotionSensorData;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$tempDisplay:Ljava/lang/String;

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

    .line 117
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 54
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C117@4942L887:AtvDiagScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 118
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 118
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.AtvDiagScreen.<anonymous>.<anonymous> (AtvDiagScreen.kt:117)"

    const v6, 0x12a5ad82

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 119
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0xc

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 155
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 119
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 120
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v6, 0x6

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 156
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 120
    .end local v6    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 118
    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$2$4;->$tempDisplay:Ljava/lang/String;

    const/16 v10, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Column":I
    const v12, -0x1cd0f17e

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 157
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v12

    .line 160
    .local v12, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v13, v10, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v10, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v5, v12, v1, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v10, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 161
    nop

    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$Layout":I
    const v0, -0x4ee9b9da

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 163
    .local v0, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 165
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 172
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 v18, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v18, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v3, v14, 0x9

    and-int/lit16 v3, v3, 0x1c00

    const/4 v4, 0x6

    or-int/2addr v3, v4

    .line 164
    move-object/from16 v19, v17

    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v17, v16

    .local v3, "$changed$iv$iv$iv":I
    .local v17, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 173
    .local v16, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 174
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 175
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    move-object/from16 v4, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 178
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v4, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 180
    :goto_1
    move-object/from16 v17, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 167
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v23, v5

    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v23, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 181
    .local v22, "$i$f$set-impl":I
    move-object/from16 v24, v4

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 182
    .local v25, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_6

    move-object/from16 v26, v2

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v26, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move/from16 v27, v11

    .end local v11    # "$i$f$Column":I
    .local v27, "$i$f$Column":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v11, v24

    goto :goto_3

    .end local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v27    # "$i$f$Column":I
    .restart local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "$i$f$Column":I
    :cond_6
    move-object/from16 v26, v2

    move/from16 v27, v11

    .line 183
    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "$i$f$Column":I
    .restart local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v27    # "$i$f$Column":I
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v11, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    :goto_3
    nop

    .line 181
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 186
    nop

    .line 171
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 180
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 187
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v19

    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v2, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 189
    shr-int/lit8 v2, v3, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object/from16 v4, p2

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 190
    .local v11, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v19, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local v19, "compositeKeyHash$iv$iv":I
    const v0, 0x107e0298

    const-string v1, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v10, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v20, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v21, v4

    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v49, v21

    const/16 v22, 0x0

    .line 122
    .local v22, "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2$4$1":I
    move-object/from16 v24, v0

    .end local v0    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v24, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x791f1f00

    move/from16 v25, v1

    .end local v1    # "$changed":I
    .local v25, "$changed":I
    const-string v1, "C121@5099L103,122@5219L107,123@5343L66,124@5426L111,125@5554L111,126@5682L75,127@5774L41:AtvDiagScreen.kt#xkugs2"

    move/from16 v53, v2

    move-object/from16 v2, v21

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v53, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v32

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v35

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v30

    const/16 v51, 0x0

    const v52, 0x1ffd2

    const-string v28, "\ud83d\udce1 HARDWARE SENSORS TELEMETRY"

    const/16 v29, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const v50, 0x30d86

    invoke-static/range {v28 .. v52}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 123
    invoke-virtual {v6}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getFusedRpm()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RPM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const-string v0, "ENGINE STOPPED"

    :goto_4
    const-string v1, "Audio RPM"

    const/4 v6, 0x6

    invoke-static {v1, v0, v2, v6}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->access$DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 124
    invoke-virtual {v7}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getRpmConfidencePct()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Audio Confidence"

    invoke-static {v1, v0, v2, v6}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->access$DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 125
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v7}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getGForceMagnitude()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v6, "%.2f"

    invoke-static {v0, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " G"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "G-Force Magnitude"

    move/from16 v28, v3

    const/4 v3, 0x6

    .end local v3    # "$changed$iv$iv$iv":I
    .local v28, "$changed$iv$iv$iv":I
    invoke-static {v6, v0, v2, v3}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->access$DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 126
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getVibrationIntensity()D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v6, "%.3f"

    invoke-static {v0, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Vibration Intensity"

    const/4 v3, 0x6

    invoke-static {v1, v0, v2, v3}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->access$DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 127
    invoke-virtual {v7}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getRecommendedMotionFps()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Motion Sample Rate"

    invoke-static {v1, v0, v2, v3}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->access$DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 128
    const-string v0, "Engine Temp"

    invoke-static {v0, v9, v2, v3}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->access$DiagMetricRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 122
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 129
    nop

    .line 190
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-Column-AtvDiagScreenKt$AtvDiagScreen$2$4$1":I
    .end local v24    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v25    # "$changed":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 189
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v53    # "$changed$iv":I
    nop

    .line 191
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 192
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 193
    nop

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v28    # "$changed$iv$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 194
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$Layout":I
    .end local v19    # "compositeKeyHash$iv$iv":I
    .end local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 195
    nop

    .end local v10    # "$changed$iv":I
    .end local v12    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v18    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v23    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v27    # "$i$f$Column":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 130
    :cond_8
    :goto_5
    return-void
.end method
