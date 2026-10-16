.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->TripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$1$1$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,887:1\n154#2:888\n78#3,2:889\n80#3:919\n84#3:924\n79#4,11:891\n92#4:923\n456#5,8:902\n464#5,3:916\n467#5,3:920\n3737#6,6:910\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$1$1$2\n*L\n299#1:888\n298#1:889,2\n298#1:919\n298#1:924\n298#1:891,11\n298#1:923\n298#1:902,8\n298#1:916,3\n298#1:920,3\n298#1:910,6\n*E\n"
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
.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/location/GpsData;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$1$1$2;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

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

    .line 297
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$1$1$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 98
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "$this$Card"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C297@12552L590:TripScreen.kt#xkugs2"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 298
    and-int/lit8 v2, v1, 0x51

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p0

    goto/16 :goto_4

    .line 298
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.TripScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (TripScreen.kt:297)"

    const v5, -0x12fab68e

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 299
    :cond_2
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v4, 0x2

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 888
    .local v5, "$i$f$getDp":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 299
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 300
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v4

    .line 301
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    .line 298
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$1$1$2;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    const/16 v9, 0x1b6

    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$Column":I
    const v11, -0x1cd0f17e

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v0, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 889
    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    shr-int/lit8 v11, v9, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v9, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v5, v4, v0, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v5, v9, 0x3

    and-int/lit8 v5, v5, 0x70

    .line 890
    nop

    .local v5, "$changed$iv$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v0, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 891
    const/4 v12, 0x0

    invoke-static {v0, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v12

    .line 892
    .local v12, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 894
    .local v13, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    .line 901
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    shl-int/lit8 v15, v5, 0x9

    and-int/lit16 v15, v15, 0x1c00

    or-int/lit8 v15, v15, 0x6

    .line 893
    nop

    .local v2, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v14, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v15, "$changed$iv$iv$iv":I
    const/16 v16, 0x0

    .line 902
    .local v16, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 903
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 904
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 905
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 907
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 909
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 896
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 897
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 899
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v18, 0x0

    .line 910
    .local v18, "$i$f$set-impl":I
    move-object/from16 v19, v6

    .local v19, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 911
    .local v20, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v21

    if-nez v21, :cond_6

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v21, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v19

    goto :goto_3

    .end local v21    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_6
    move-object/from16 v21, v4

    .line 912
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v21    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v19

    .end local v19    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 913
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 915
    :goto_3
    nop

    .line 910
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 915
    nop

    .line 900
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "$i$f$set-impl":I
    nop

    .line 909
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 916
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v3, v15, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 918
    shr-int/lit8 v1, v15, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object/from16 v3, p2

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 919
    .local v4, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v6, 0x107e0298

    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v3, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v6, v9, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v17, v3

    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v93, v17

    move-object/from16 v68, v17

    move-object/from16 v43, v17

    const/16 v18, 0x0

    .line 303
    .local v18, "$i$a$-Column-TripScreenKt$TripScreen$13$1$1$2$1":I
    move-object/from16 v19, v0

    .end local v0    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v19, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x43cc9d3

    move/from16 v20, v1

    .end local v1    # "$changed$iv":I
    .local v20, "$changed$iv":I
    const-string v1, "C302@12822L55,303@12902L140,304@13067L53:TripScreen.kt#xkugs2"

    move-object/from16 v97, v2

    move-object/from16 v2, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v97, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v26

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v24

    const/16 v45, 0x0

    const v46, 0x1fff2

    const/16 v23, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0xd86

    const-string v22, "TRIP"

    invoke-static/range {v22 .. v46}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 304
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v8}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x1

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v8, "%.1f"

    invoke-static {v0, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    const/16 v0, 0xf

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v51

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v54

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v49

    const/16 v70, 0x0

    const v71, 0x1ffd2

    const/16 v48, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-wide/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const v69, 0x30d80

    invoke-static/range {v47 .. v71}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 305
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v76

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v74

    const/16 v95, 0x0

    const v96, 0x1fff2

    const/16 v73, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const-wide/16 v81, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const-wide/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v94, 0xd86

    const-string v72, "KM"

    invoke-static/range {v72 .. v96}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 303
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 306
    nop

    .line 919
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "$changed":I
    .end local v18    # "$i$a$-Column-TripScreenKt$TripScreen$13$1$1$2$1":I
    .end local v19    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 918
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v20    # "$changed$iv":I
    nop

    .line 920
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 921
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 922
    nop

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$changed$iv$iv$iv":I
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v97    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 923
    nop

    .end local v5    # "$changed$iv$iv":I
    .end local v11    # "$i$f$Layout":I
    .end local v12    # "compositeKeyHash$iv$iv":I
    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 924
    nop

    .end local v9    # "$changed$iv":I
    .end local v10    # "$i$f$Column":I
    .end local v21    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 307
    :cond_7
    :goto_4
    return-void
.end method
