.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;
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
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,887:1\n154#2:888\n88#3,5:889\n93#3:922\n97#3:927\n79#4,11:894\n92#4:926\n456#5,8:905\n464#5,3:919\n467#5,3:923\n3737#6,6:913\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4\n*L\n358#1:888\n355#1:889,5\n355#1:922\n355#1:927\n355#1:894,11\n355#1:926\n355#1:905,8\n355#1:919,3\n355#1:923,3\n355#1:913,6\n*E\n"
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

.field final synthetic $currentLitresPer100Km:D

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;


# direct methods
.method constructor <init>(DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroidx/compose/runtime/MutableLongState;)V
    .locals 1

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$currentLitresPer100Km:D

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

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

    .line 354
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 30
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C354@14977L568:TripScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 355
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 355
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.TripScreen.<anonymous>.<anonymous> (TripScreen.kt:354)"

    const v6, -0x42ea345d

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 356
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 357
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v5, v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 358
    const/4 v5, 0x4

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 888
    .local v6, "$i$f$getDp":I
    int-to-float v8, v5

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 358
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 359
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceAround()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 355
    iget-wide v8, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$currentLitresPer100Km:D

    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v10, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-object v11, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$4;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const/16 v12, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v12, "$changed$iv":I
    const/4 v13, 0x0

    .local v13, "$i$f$Row":I
    const v14, 0x2952b718

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v1, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 889
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v14

    .line 892
    .local v14, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v15, v12, 0x3

    and-int/lit8 v15, v15, 0xe

    shr-int/lit8 v16, v12, 0x3

    and-int/lit8 v16, v16, 0x70

    or-int v15, v15, v16

    invoke-static {v5, v14, v1, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .local v15, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v12, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 893
    nop

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$Layout":I
    const v7, -0x4ee9b9da

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 894
    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v7

    .line 895
    .local v7, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 897
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 904
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    shl-int/lit8 v2, v16, 0x9

    and-int/lit16 v2, v2, 0x1c00

    move-object/from16 v20, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v20, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v3, 0x6

    or-int/2addr v2, v3

    .line 896
    move-object/from16 v21, v18

    .local v2, "$changed$iv$iv$iv":I
    .local v21, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v18, v19

    .local v18, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v19, 0x0

    .line 905
    .local v19, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 906
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 907
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 908
    move-object/from16 v3, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 910
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v3, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 912
    :goto_1
    move-object/from16 v21, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 899
    .local v23, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v15, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 900
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 902
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v24, 0x0

    .line 913
    .local v24, "$i$f$set-impl":I
    move-object/from16 v25, v3

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 914
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v27, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v5

    .end local v5    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v28, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v5, v25

    goto :goto_3

    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v28    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_6
    move-object/from16 v27, v0

    move-object/from16 v28, v5

    .line 915
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v28    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 916
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 918
    :goto_3
    nop

    .line 913
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 918
    nop

    .line 903
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v24    # "$i$f$set-impl":I
    nop

    .line 912
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 919
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v18

    .end local v18    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v0, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 921
    shr-int/lit8 v0, v2, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v3, p2

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 922
    .local v5, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v18, v0

    .end local v0    # "$changed$iv":I
    .local v18, "$changed$iv":I
    const v0, -0x1378c42b

    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v12, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v22, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v23, v3

    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 361
    .local v24, "$i$a$-Row-TripScreenKt$TripScreen$13$4$1":I
    move-object/from16 v25, v0

    .end local v0    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    .local v25, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0x27e7e81c

    move/from16 v26, v1

    .end local v1    # "$changed":I
    .local v26, "$changed":I
    const-string v1, "C360@15186L89,361@15292L56,362@15365L57,363@15439L92:TripScreen.kt#xkugs2"

    move/from16 v29, v2

    move-object/from16 v2, v23

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$changed$iv$iv$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    const-string v8, "L/100KM"

    const/4 v9, 0x6

    invoke-static {v8, v0, v2, v9}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$StatSubText(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 362
    invoke-static {v11}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$formatDuration(J)Ljava/lang/String;

    move-result-object v0

    const-string v8, "TIME"

    invoke-static {v8, v0, v2, v9}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$StatSubText(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 363
    move-object v0, v10

    invoke-virtual {v6}, Lcom/cgs/atvobserver/location/GpsData;->getMaxSpeedKmh()D

    move-result-wide v9

    double-to-int v6, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " km/h"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "MAX"

    const/4 v9, 0x6

    invoke-static {v8, v6, v2, v9}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$StatSubText(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 364
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getGForceMagnitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v8, "%.2f"

    invoke-static {v6, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x6

    invoke-static {v1, v0, v2, v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$StatSubText(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 361
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 365
    nop

    .line 922
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-Row-TripScreenKt$TripScreen$13$4$1":I
    .end local v25    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    .end local v26    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 921
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v18    # "$changed$iv":I
    nop

    .line 923
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 924
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 925
    nop

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$changed$iv$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 926
    nop

    .end local v7    # "compositeKeyHash$iv$iv":I
    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$Layout":I
    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 927
    nop

    .end local v12    # "$changed$iv":I
    .end local v13    # "$i$f$Row":I
    .end local v14    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v28    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 366
    :cond_7
    :goto_4
    return-void
.end method
