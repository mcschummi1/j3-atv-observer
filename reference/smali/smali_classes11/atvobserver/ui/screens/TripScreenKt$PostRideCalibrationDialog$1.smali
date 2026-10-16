.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->PostRideCalibrationDialog(DDDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,887:1\n154#2:888\n86#3,7:889\n93#3:924\n97#3:935\n79#4,11:896\n92#4:934\n456#5,8:907\n464#5,3:921\n467#5,3:931\n3737#6,6:915\n1116#7,6:925\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1\n*L\n524#1:888\n524#1:889,7\n524#1:924\n524#1:935\n524#1:896,11\n524#1:934\n524#1:907,8\n524#1:921,3\n524#1:931,3\n524#1:915,6\n526#1:925,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $actualRemainingInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onConfirmSave:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $predictedRemainingL:D

.field final synthetic $tankCapacityL:D


# direct methods
.method constructor <init>(DDLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$predictedRemainingL:D

    iput-wide p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$tankCapacityL:D

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$onConfirmSave:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$actualRemainingInput$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 523
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 44
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "C523@22440L586:TripScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 524
    and-int/lit8 v3, v2, 0xb

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 524
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.PostRideCalibrationDialog.<anonymous> (TripScreen.kt:523)"

    const v5, -0x65653c9b

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v4, 0x6

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 888
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 524
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .local v3, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    iget-wide v5, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$predictedRemainingL:D

    iget-wide v7, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$tankCapacityL:D

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$onConfirmSave:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1;->$actualRemainingInput$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v4, 0x30

    .local v4, "$changed$iv":I
    move v11, v4

    .end local v4    # "$changed$iv":I
    .local v11, "$changed$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Row":I
    const v4, 0x2952b718

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 889
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v13, v4

    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 891
    .local v13, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v14

    .line 894
    .local v14, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v4, v11, 0x3

    and-int/lit8 v4, v4, 0xe

    shr-int/lit8 v15, v11, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v4, v15

    invoke-static {v3, v14, v1, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .local v15, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v4, v11, 0x3

    and-int/lit8 v4, v4, 0x70

    .line 895
    move/from16 v16, v4

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$Layout":I
    const v4, -0x4ee9b9da

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 896
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v18

    .line 897
    .local v18, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 899
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    .line 906
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v20

    shl-int/lit8 v0, v16, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 898
    move-object/from16 v21, v19

    .local v0, "$changed$iv$iv$iv":I
    .local v21, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v19, v20

    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v20, 0x0

    .line 907
    .local v20, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 908
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 909
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 910
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 912
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v2, v21

    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 914
    :goto_1
    move-object/from16 v21, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 901
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v24, v3

    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v24, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v15, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 902
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 904
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 915
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v2

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 916
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v27, v4

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move/from16 v28, v12

    .end local v12    # "$i$f$Row":I
    .local v28, "$i$f$Row":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v12, v25

    goto :goto_3

    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v28    # "$i$f$Row":I
    .restart local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v12    # "$i$f$Row":I
    :cond_6
    move-object/from16 v27, v4

    move/from16 v28, v12

    .line 917
    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v12    # "$i$f$Row":I
    .restart local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v28    # "$i$f$Row":I
    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v12, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 918
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 920
    :goto_3
    nop

    .line 915
    .end local v12    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 920
    nop

    .line 905
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 914
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 921
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v12, v19

    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v12, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 923
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object/from16 v3, p1

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 924
    .local v19, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v4, -0x1378c42b

    move/from16 v22, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v22, "$changed$iv$iv$iv":I
    const-string v0, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v3, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v4, v11, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v23, v4, 0x6

    .local v23, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    move-object v4, v3

    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 525
    .local v25, "$i$a$-Row-TripScreenKt$PostRideCalibrationDialog$1$1":I
    move-object/from16 v26, v0

    .end local v0    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .local v26, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0x1a9b5d99

    const-string v1, "C525@22552L242,530@22840L39,524@22514L498:TripScreen.kt#xkugs2"

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, -0xfa86496

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):TripScreen.kt#9igjgp"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v0

    invoke-interface {v4, v7, v8}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 526
    nop

    .local v0, "invalid$iv":Z
    move-object v1, v4

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 925
    .local v29, "$i$f$cache":I
    move/from16 v42, v2

    .end local v2    # "$changed$iv":I
    .local v42, "$changed$iv":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 926
    .local v30, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_8

    sget-object v31, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v32, v0

    .end local v0    # "invalid$iv":Z
    .local v32, "invalid$iv":Z
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_7

    goto :goto_4

    .line 930
    :cond_7
    move-object v0, v2

    move-object/from16 v43, v4

    goto :goto_5

    .line 926
    .end local v32    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_8
    move/from16 v32, v0

    .line 927
    .end local v0    # "invalid$iv":Z
    .restart local v32    # "invalid$iv":Z
    :goto_4
    const/4 v0, 0x0

    .line 526
    .local v0, "$i$a$-cache-TripScreenKt$PostRideCalibrationDialog$1$1$1":I
    new-instance v31, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1$1$1$1;

    move-object/from16 v43, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v43, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v4, v31

    invoke-direct/range {v4 .. v10}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$1$1$1$1;-><init>(DDLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v31, Lkotlin/jvm/functions/Function0;

    .line 927
    .end local v0    # "$i$a$-cache-TripScreenKt$PostRideCalibrationDialog$1$1$1":I
    move-object/from16 v0, v31

    .line 928
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 929
    nop

    .line 926
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 925
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v30    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 526
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$f$cache":I
    .end local v32    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {v43 .. v43}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 531
    sget-object v29, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v30

    sget v1, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v1, v1, 0xc

    or-int/lit8 v39, v1, 0x6

    const/16 v40, 0xe

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move-object/from16 v38, v43

    invoke-virtual/range {v29 .. v40}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v33

    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TripScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TripScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TripScreenKt;->getLambda-4$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v38

    .line 525
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/high16 v40, 0x30000000

    const/16 v41, 0x1ee

    move-object/from16 v29, v0

    move-object/from16 v39, v43

    invoke-static/range {v29 .. v41}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static/range {v43 .. v43}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 535
    nop

    .line 924
    .end local v23    # "$changed":I
    .end local v25    # "$i$a$-Row-TripScreenKt$PostRideCalibrationDialog$1$1":I
    .end local v26    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .end local v43    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 923
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v42    # "$changed$iv":I
    nop

    .line 931
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 932
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 933
    nop

    .end local v12    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v20    # "$i$f$ReusableComposeNode":I
    .end local v21    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v22    # "$changed$iv$iv$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 934
    nop

    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$Layout":I
    .end local v18    # "compositeKeyHash$iv$iv":I
    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 935
    nop

    .end local v11    # "$changed$iv":I
    .end local v13    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v14    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v28    # "$i$f$Row":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 536
    :cond_9
    :goto_6
    return-void
.end method
