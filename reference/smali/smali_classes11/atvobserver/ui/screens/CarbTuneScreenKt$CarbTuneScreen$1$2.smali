.class final Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CarbTuneScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt;->CarbTuneScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DDLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nCarbTuneScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarbTuneScreen.kt\ncom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,105:1\n154#2:106\n154#2:107\n154#2:142\n75#3,5:108\n80#3:141\n84#3:147\n79#4,11:113\n92#4:146\n456#5,8:124\n464#5,3:138\n467#5,3:143\n3737#6,6:132\n*S KotlinDebug\n*F\n+ 1 CarbTuneScreen.kt\ncom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2\n*L\n56#1:106\n57#1:107\n62#1:142\n55#1:108,5\n55#1:141\n55#1:147\n55#1:113,11\n55#1:146\n55#1:124,8\n55#1:138,3\n55#1:143,3\n55#1:132,6\n*E\n"
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
.field final synthetic $airDensityPct:I

.field final synthetic $altitudeMeters:D

.field final synthetic $jettingAdvice:Ljava/lang/String;


# direct methods
.method constructor <init>(DILjava/lang/String;)V
    .locals 1

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;->$altitudeMeters:D

    iput p3, p0, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;->$airDensityPct:I

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;->$jettingAdvice:Ljava/lang/String;

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

    .line 54
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 121
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C54@2369L658:CarbTuneScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 55
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 55
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.CarbTuneScreen.<anonymous>.<anonymous> (CarbTuneScreen.kt:54)"

    const v6, 0x2ccdb287

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 56
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0xc

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 106
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 56
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 57
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v6, 0x4

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 107
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 57
    .end local v6    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 55
    iget-wide v6, v0, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;->$altitudeMeters:D

    iget v8, v0, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;->$airDensityPct:I

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt$CarbTuneScreen$1$2;->$jettingAdvice:Ljava/lang/String;

    const/16 v10, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v10, "$changed$iv":I
    move/from16 v34, v10

    .end local v10    # "$changed$iv":I
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v34, "$changed$iv":I
    const/16 v35, 0x0

    .local v35, "$i$f$Column":I
    const v10, -0x1cd0f17e

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 108
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v15

    .line 111
    .local v15, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v10, v34, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v34, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v5, v15, v1, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v34, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 112
    move/from16 v36, v11

    .local v36, "$changed$iv$iv":I
    const/16 v37, 0x0

    .local v37, "$i$f$Layout":I
    const v11, -0x4ee9b9da

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 113
    const/4 v11, 0x0

    invoke-static {v1, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v38

    .line 114
    .local v38, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 116
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 123
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v13

    shl-int/lit8 v14, v36, 0x9

    and-int/lit16 v14, v14, 0x1c00

    const/4 v0, 0x6

    or-int/2addr v14, v0

    .line 115
    nop

    .local v12, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v39, v14

    .local v39, "$changed$iv$iv$iv":I
    const/16 v40, 0x0

    .line 124
    .local v40, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 125
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 126
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 127
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 129
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 131
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .local v14, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 118
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 132
    .local v17, "$i$f$set-impl":I
    move-object/from16 v19, v14

    .local v19, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 133
    .local v20, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v21

    if-nez v21, :cond_6

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v41, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v41, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v3, v19

    goto :goto_3

    .end local v41    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :cond_6
    move-object/from16 v41, v3

    .line 134
    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v41    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :goto_2
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v19

    .end local v19    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    :goto_3
    nop

    .line 132
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 137
    nop

    .line 122
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 131
    .end local v14    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 138
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v39, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 140
    shr-int/lit8 v0, v39, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v2, p2

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 141
    .local v3, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v14, 0x107e0298

    move/from16 v42, v0

    .end local v0    # "$changed$iv":I
    .local v42, "$changed$iv":I
    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v2, v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v14, v34, 0x6

    and-int/lit8 v14, v14, 0x70

    const/16 v16, 0x6

    or-int/lit8 v43, v14, 0x6

    .local v43, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v14, v2

    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v30, v14

    move-object/from16 v115, v14

    move-object/from16 v90, v14

    move-object/from16 v65, v14

    const/16 v119, 0x0

    .line 59
    .local v119, "$i$a$-Column-CarbTuneScreenKt$CarbTuneScreen$1$2$1":I
    move-object/from16 v120, v0

    .end local v0    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v120, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x4f161e93

    const-string v1, "C58@2526L112,59@2655L133,60@2805L78,61@2900L40,62@2957L56:CarbTuneScreen.kt#xkugs2"

    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v48

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v51

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v46

    const/16 v67, 0x0

    const v68, 0x1ffd2

    const/16 v45, 0x0

    const/16 v50, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const v66, 0x30d86

    const-string v44, "\ud83c\udfd4\ufe0f ALTITUDE AIR DENSITY COMPENSATION"

    invoke-static/range {v44 .. v68}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 60
    double-to-int v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Barometric Altitude: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " meters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v73

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v76

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v71

    const/16 v92, 0x0

    const v93, 0x1ffd2

    const/16 v70, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const-wide/16 v78, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const-wide/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const v91, 0x30d80

    invoke-static/range {v69 .. v93}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Air Density Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v94

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v98

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v96

    const/16 v117, 0x0

    const v118, 0x1fff2

    const/16 v95, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const-wide/16 v103, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const-wide/16 v107, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v116, 0xd80

    invoke-static/range {v94 .. v118}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 62
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x4

    .local v1, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 142
    .local v6, "$i$f$getDp":I
    int-to-float v7, v1

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 62
    .end local v1    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v14, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 63
    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    move-object v6, v13

    move-object v7, v14

    .end local v13    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    move-wide v13, v0

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v0

    move-object v8, v11

    move-object/from16 v44, v12

    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v8, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v44, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-wide v11, v0

    const/16 v32, 0x0

    const v33, 0x1fff2

    const/4 v0, 0x0

    move-object v1, v10

    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v1, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v10, v0

    move-object/from16 v45, v15

    .end local v15    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v45, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0xd80

    invoke-static/range {v9 .. v33}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 59
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 64
    nop

    .line 141
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v43    # "$changed":I
    .end local v119    # "$i$a$-Column-CarbTuneScreenKt$CarbTuneScreen$1$2$1":I
    .end local v120    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 140
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v42    # "$changed$iv":I
    nop

    .line 143
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 144
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 145
    nop

    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v39    # "$changed$iv$iv$iv":I
    .end local v40    # "$i$f$ReusableComposeNode":I
    .end local v44    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 146
    nop

    .end local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v36    # "$changed$iv$iv":I
    .end local v37    # "$i$f$Layout":I
    .end local v38    # "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 147
    nop

    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v34    # "$changed$iv":I
    .end local v35    # "$i$f$Column":I
    .end local v41    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v45    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 65
    :cond_7
    :goto_4
    return-void
.end method
