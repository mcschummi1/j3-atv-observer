.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->PreRideChecklistStep(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,887:1\n154#2:888\n154#2:889\n75#3,5:890\n80#3:923\n84#3:1054\n79#4,11:895\n79#4,11:926\n92#4:964\n79#4,11:968\n92#4:1006\n79#4,11:1010\n92#4:1048\n92#4:1053\n456#5,8:906\n464#5,3:920\n456#5,8:937\n464#5,3:951\n467#5,3:961\n456#5,8:979\n464#5,3:993\n467#5,3:1003\n456#5,8:1021\n464#5,3:1035\n467#5,3:1045\n467#5,3:1050\n3737#6,6:914\n3737#6,6:945\n3737#6,6:987\n3737#6,6:1029\n91#7,2:924\n93#7:954\n97#7:965\n91#7,2:966\n93#7:996\n97#7:1007\n91#7,2:1008\n93#7:1038\n97#7:1049\n1116#8,6:955\n1116#8,6:997\n1116#8,6:1039\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2\n*L\n450#1:888\n451#1:889\n449#1:890,5\n449#1:923\n449#1:1054\n449#1:895,11\n453#1:926,11\n453#1:964\n462#1:968,11\n462#1:1006\n471#1:1010,11\n471#1:1048\n449#1:1053\n449#1:906,8\n449#1:920,3\n453#1:937,8\n453#1:951,3\n453#1:961,3\n462#1:979,8\n462#1:993,3\n462#1:1003,3\n471#1:1021,8\n471#1:1035,3\n471#1:1045,3\n449#1:1050,3\n449#1:914,6\n453#1:945,6\n462#1:987,6\n471#1:1029,6\n453#1:924,2\n453#1:954\n453#1:965\n462#1:966,2\n462#1:996\n462#1:1007\n471#1:1008,2\n471#1:1038\n471#1:1049\n459#1:955,6\n468#1:997,6\n477#1:1039,6\n*E\n"
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
.field final synthetic $chainOk$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fuelOk$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tiresOk$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;->$fuelOk$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;->$tiresOk$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;->$chainOk$delegate:Landroidx/compose/runtime/MutableState;

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

    .line 448
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 110
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C448@19015L1529:TripScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 449
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_10

    .line 449
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.PreRideChecklistStep.<anonymous>.<anonymous> (TripScreen.kt:448)"

    const v6, -0xa3ac8d4    # -5.0000073E32f

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 450
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x10

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 888
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 450
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 451
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v6, 0xc

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 889
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 451
    .end local v6    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 449
    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;->$fuelOk$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;->$tiresOk$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2;->$chainOk$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v9, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$Column":I
    const v11, -0x1cd0f17e

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 890
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v11

    .line 893
    .local v11, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v12, v9, 0x3

    const/16 v13, 0xe

    and-int/2addr v12, v13

    shr-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v12, v14

    invoke-static {v5, v11, v1, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    .local v12, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 894
    nop

    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$Layout":I
    const v13, -0x4ee9b9da

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v18

    .line 896
    .local v18, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 898
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    .line 905
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v21

    shl-int/lit8 v2, v14, 0x9

    and-int/lit16 v2, v2, 0x1c00

    or-int/lit8 v2, v2, 0x6

    .line 897
    move-object/from16 v22, v20

    .local v2, "$changed$iv$iv$iv":I
    .local v22, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v20, v21

    .local v20, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v21, 0x0

    .line 906
    .local v21, "$i$f$ReusableComposeNode":I
    move-object/from16 v23, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v23, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 907
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 908
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 909
    move-object/from16 v3, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 911
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v3, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 913
    :goto_1
    move-object/from16 v22, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 900
    .local v24, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 901
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 903
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v25, 0x0

    .line 914
    .local v25, "$i$f$set-impl":I
    move-object/from16 v26, v3

    .local v26, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 915
    .local v27, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v28

    if-nez v28, :cond_6

    move-object/from16 v28, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v28, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v5

    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v29, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v5, v26

    goto :goto_3

    .end local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v29    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_6
    move-object/from16 v28, v0

    move-object/from16 v29, v5

    .line 916
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v29    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v26

    .end local v26    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 917
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 919
    :goto_3
    nop

    .line 914
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 919
    nop

    .line 904
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v25    # "$i$f$set-impl":I
    nop

    .line 913
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 920
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v20

    .end local v20    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v0, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 922
    shr-int/lit8 v3, v2, 0x9

    const/16 v5, 0xe

    and-int/2addr v3, v5

    .local v3, "$changed$iv":I
    move-object/from16 v5, p2

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 923
    .local v20, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v0, 0x107e0298

    const-string v1, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v9, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u246":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v25, v5

    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 453
    .local v26, "$i$a$-Column-TripScreenKt$PreRideChecklistStep$1$2$1":I
    move-object/from16 v27, v0

    .end local v0    # "$this$invoke_u24lambda_u246":Landroidx/compose/foundation/layout/ColumnScope;
    .local v27, "$this$invoke_u24lambda_u246":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x73952362

    move/from16 v30, v1

    .end local v1    # "$changed":I
    .local v30, "$changed":I
    const-string v1, "C452@19173L436,461@19627L442,470@20087L443:TripScreen.kt#xkugs2"

    move/from16 v31, v2

    move-object/from16 v2, v25

    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v31, "$changed$iv$iv$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 454
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    move/from16 v25, v3

    .end local v3    # "$changed$iv":I
    .local v25, "$changed$iv":I
    const/4 v3, 0x1

    move-object/from16 v32, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v32, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 455
    sget-object v33, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v33

    check-cast v33, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 456
    sget-object v34, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v34

    .line 453
    const/16 v35, 0x1b6

    move/from16 v36, v35

    .local v36, "$changed$iv":I
    move-object/from16 v37, v33

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v37, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    move-object/from16 v33, v34

    .local v33, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v34, 0x0

    .local v34, "$i$f$Row":I
    const v1, 0x2952b718

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 924
    shr-int/lit8 v40, v36, 0x3

    const/16 v16, 0xe

    and-int/lit8 v40, v40, 0xe

    shr-int/lit8 v41, v36, 0x3

    and-int/lit8 v41, v41, 0x70

    or-int v3, v40, v41

    move-object/from16 v4, v37

    move-object/from16 v109, v33

    move/from16 v33, v9

    move-object/from16 v9, v109

    .end local v37    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v9, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v33, "$changed$iv":I
    invoke-static {v4, v9, v2, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v37, v36, 0x3

    and-int/lit8 v37, v37, 0x70

    .line 925
    nop

    .local v37, "$changed$iv$iv":I
    const/16 v41, 0x0

    move-object/from16 v43, v4

    const v4, -0x4ee9b9da

    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v41, "$i$f$Layout":I
    .local v43, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 926
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v44

    .line 927
    .local v44, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 929
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v45, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v45

    .line 936
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v46

    move-object/from16 v47, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v47, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v37, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 928
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v48, v45

    .local v48, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v45, v46

    .local v45, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v46, 0x0

    .line 937
    .local v46, "$i$f$ReusableComposeNode":I
    move-object/from16 v49, v9

    .end local v9    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v49, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 938
    :cond_7
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 939
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 940
    move-object/from16 v9, v48

    .end local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v9, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 942
    .end local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v9, v48

    .end local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 944
    :goto_4
    move-object/from16 v48, v9

    .end local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 931
    .local v50, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v51, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v52, v10

    .end local v10    # "$i$f$Column":I
    .local v52, "$i$f$Column":I
    invoke-virtual/range {v51 .. v51}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 932
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 934
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    .local v10, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v51, 0x0

    .line 945
    .local v51, "$i$f$set-impl":I
    move-object/from16 v53, v9

    .local v53, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v54, 0x0

    .line 946
    .local v54, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v53 .. v53}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v55

    if-nez v55, :cond_a

    move-object/from16 v55, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v55, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v53 .. v53}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v56, v4

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v56, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v4, v53

    goto :goto_6

    .end local v55    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v56    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_a
    move-object/from16 v55, v3

    move-object/from16 v56, v4

    .line 947
    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v55    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v56    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_5
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v53

    .end local v53    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 948
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3, v10}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 950
    :goto_6
    nop

    .line 945
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v54    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 950
    nop

    .line 935
    .end local v10    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v51    # "$i$f$set-impl":I
    nop

    .line 944
    .end local v9    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 951
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v9, v45

    .end local v45    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v9, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v9, v3, v2, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const v3, 0x7ab4aae9

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 953
    shr-int/lit8 v3, v0, 0x9

    const/16 v4, 0xe

    and-int/2addr v3, v4

    .local v3, "$changed$iv":I
    move-object v4, v2

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 954
    .local v10, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v45, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v45, "$changed$iv$iv$iv":I
    const v0, -0x1378c42b

    move/from16 v50, v3

    .end local v3    # "$changed$iv":I
    .local v50, "$changed$iv":I
    const-string v3, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v51, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v53, v36, 0x6

    and-int/lit8 v53, v53, 0x70

    or-int/lit8 v53, v53, 0x6

    .local v53, "$changed":I
    check-cast v51, Landroidx/compose/foundation/layout/RowScope;

    .local v51, "$this$invoke_u24lambda_u246_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v54, v4

    .local v54, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v78, v54

    const/16 v82, 0x0

    .line 458
    .local v82, "$i$a$-Row-TripScreenKt$PreRideChecklistStep$1$2$1$1":I
    const v0, 0x46ad0afc

    move-object/from16 v84, v9

    .end local v9    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v84, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v9, "C457@19411L100,458@19575L15,458@19532L59:TripScreen.kt#xkugs2"

    move/from16 v85, v10

    move-object/from16 v10, v54

    .end local v54    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    .local v85, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v61

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v64

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v59

    const/16 v80, 0x0

    const v81, 0x1ffd2

    const-string v57, "\u26fd Fuel Level Checked"

    const/16 v58, 0x0

    const/16 v63, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-wide/16 v70, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const v79, 0x30d86

    invoke-static/range {v57 .. v81}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 459
    invoke-static {v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$PreRideChecklistStep$lambda$57(Landroidx/compose/runtime/MutableState;)Z

    move-result v57

    const v0, -0x3786ba3e

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):TripScreen.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v9, 0x0

    .local v9, "invalid$iv":Z
    .local v54, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v58, 0x0

    .line 955
    .local v58, "$i$f$cache":I
    move/from16 v59, v9

    .end local v9    # "invalid$iv":Z
    .local v59, "invalid$iv":Z
    invoke-interface/range {v54 .. v54}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v60, 0x0

    .line 956
    .local v60, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v61, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v67, v11

    .end local v11    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v67, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-virtual/range {v61 .. v61}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_b

    .line 957
    const/4 v11, 0x0

    .line 459
    .local v11, "$i$a$-cache-TripScreenKt$PreRideChecklistStep$1$2$1$1$1":I
    move-object/from16 v61, v9

    .end local v9    # "it$iv":Ljava/lang/Object;
    .local v61, "it$iv":Ljava/lang/Object;
    new-instance v9, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2$1$1$1$1;

    invoke-direct {v9, v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2$1$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 957
    .end local v11    # "$i$a$-cache-TripScreenKt$PreRideChecklistStep$1$2$1$1$1":I
    move-object v6, v9

    .line 958
    .local v6, "value$iv":Ljava/lang/Object;
    move-object/from16 v9, v54

    .end local v54    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 959
    nop

    .end local v6    # "value$iv":Ljava/lang/Object;
    goto :goto_7

    .line 960
    .end local v61    # "it$iv":Ljava/lang/Object;
    .local v9, "it$iv":Ljava/lang/Object;
    .restart local v54    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_b
    move-object/from16 v61, v9

    move-object/from16 v9, v54

    .end local v54    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v61    # "it$iv":Ljava/lang/Object;
    move-object/from16 v6, v61

    .line 956
    :goto_7
    nop

    .line 955
    .end local v60    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v61    # "it$iv":Ljava/lang/Object;
    nop

    .line 459
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v58    # "$i$f$cache":I
    .end local v59    # "invalid$iv":Z
    move-object/from16 v58, v6

    check-cast v58, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v65, 0x30

    const/16 v66, 0x7c

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v64, v10

    invoke-static/range {v57 .. v66}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 458
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 460
    nop

    .line 954
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v51    # "$this$invoke_u24lambda_u246_u24lambda_u241":Landroidx/compose/foundation/layout/RowScope;
    .end local v53    # "$changed":I
    .end local v82    # "$i$a$-Row-TripScreenKt$PreRideChecklistStep$1$2$1$1":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 953
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v50    # "$changed$iv":I
    .end local v85    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 961
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 962
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 963
    nop

    .end local v45    # "$changed$iv$iv$iv":I
    .end local v46    # "$i$f$ReusableComposeNode":I
    .end local v48    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v84    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 964
    nop

    .end local v37    # "$changed$iv$iv":I
    .end local v41    # "$i$f$Layout":I
    .end local v44    # "compositeKeyHash$iv$iv":I
    .end local v56    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 965
    nop

    .line 463
    .end local v34    # "$i$f$Row":I
    .end local v36    # "$changed$iv":I
    .end local v43    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v47    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v49    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v55    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v4, v10, v9, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 464
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 465
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    .line 462
    move/from16 v10, v35

    .local v4, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v6, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v9, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v10, "$changed$iv":I
    const/4 v11, 0x0

    move/from16 v34, v11

    const v11, 0x2952b718

    .restart local v34    # "$i$f$Row":I
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 966
    shr-int/lit8 v11, v10, 0x3

    const/16 v16, 0xe

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v36, v10, 0x3

    and-int/lit8 v36, v36, 0x70

    or-int v11, v11, v36

    invoke-static {v6, v9, v2, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v36, v10, 0x3

    and-int/lit8 v36, v36, 0x70

    .line 967
    nop

    .local v36, "$changed$iv$iv":I
    const/16 v37, 0x0

    move-object/from16 v41, v6

    const v6, -0x4ee9b9da

    .end local v6    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v37, "$i$f$Layout":I
    .local v41, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 968
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v43

    .line 969
    .local v43, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 971
    .local v6, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v44, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v44 .. v44}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v44

    .line 978
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v45

    move-object/from16 v46, v4

    .end local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v46, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v4, v36, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int/lit8 v4, v4, 0x6

    .line 970
    nop

    .local v4, "$changed$iv$iv$iv":I
    move-object/from16 v47, v44

    .local v47, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v44, v45

    .local v44, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v45, 0x0

    .line 979
    .local v45, "$i$f$ReusableComposeNode":I
    move-object/from16 v48, v9

    .end local v9    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v48, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 980
    :cond_c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 981
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 982
    move-object/from16 v9, v47

    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v9, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 984
    .end local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_d
    move-object/from16 v9, v47

    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 986
    :goto_8
    move-object/from16 v47, v9

    .end local v9    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .local v9, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 973
    .local v49, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v50, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v51, v12

    .end local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v51, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 974
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v9, v6, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 976
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .local v12, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v50, 0x0

    .line 987
    .local v50, "$i$f$set-impl":I
    move-object/from16 v53, v9

    .local v53, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v54, 0x0

    .line 988
    .local v54, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v53 .. v53}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v55

    if-nez v55, :cond_f

    move-object/from16 v55, v6

    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v55, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v53 .. v53}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v56, v11

    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v56, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v11, v53

    goto :goto_a

    .end local v55    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v56    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_f
    move-object/from16 v55, v6

    move-object/from16 v56, v11

    .line 989
    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v55    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v56    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_9
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v11, v53

    .end local v53    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 990
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6, v12}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 992
    :goto_a
    nop

    .line 987
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v54    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 992
    nop

    .line 977
    .end local v12    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v50    # "$i$f$set-impl":I
    nop

    .line 986
    .end local v9    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 993
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v6

    shr-int/lit8 v9, v4, 0x3

    and-int/lit8 v9, v9, 0x70

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v11, v44

    .end local v44    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v11, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v11, v6, v2, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const v6, 0x7ab4aae9

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 995
    shr-int/lit8 v6, v4, 0x9

    const/16 v9, 0xe

    and-int/2addr v6, v9

    .local v6, "$changed$iv":I
    move-object v9, v2

    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 996
    .local v12, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v44, v4

    const v4, -0x1378c42b

    .end local v4    # "$changed$iv$iv$iv":I
    .local v44, "$changed$iv$iv$iv":I
    invoke-static {v9, v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v49, v10, 0x6

    and-int/lit8 v49, v49, 0x70

    or-int/lit8 v49, v49, 0x6

    .local v49, "$changed":I
    check-cast v4, Landroidx/compose/foundation/layout/RowScope;

    .local v4, "$this$invoke_u24lambda_u246_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v50, v9

    .local v50, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v105, v50

    const/16 v53, 0x0

    .line 467
    .local v53, "$i$a$-Row-TripScreenKt$PreRideChecklistStep$1$2$1$2":I
    move-object/from16 v54, v4

    .end local v4    # "$this$invoke_u24lambda_u246_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    .local v54, "$this$invoke_u24lambda_u246_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    const v4, 0x46b3eaf6

    move/from16 v68, v6

    .end local v6    # "$changed$iv":I
    .local v68, "$changed$iv":I
    const-string v6, "C466@19865L104,467@20034L16,467@19990L61:TripScreen.kt#xkugs2"

    move/from16 v69, v10

    move-object/from16 v10, v50

    .end local v50    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    .local v69, "$changed$iv":I
    invoke-static {v10, v4, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v4, 0xe

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v88

    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v91

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v86

    const/16 v107, 0x0

    const v108, 0x1ffd2

    const-string v84, "\ud83d\udede Tire Pressure Checked"

    const/16 v85, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    const-wide/16 v93, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const-wide/16 v97, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const v106, 0x30d86

    invoke-static/range {v84 .. v108}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 468
    invoke-static {v7}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$PreRideChecklistStep$lambda$60(Landroidx/compose/runtime/MutableState;)Z

    move-result v57

    const v4, -0x378680dd

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object v6, v10

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 997
    .local v50, "$i$f$cache":I
    move/from16 v58, v4

    .end local v4    # "invalid$iv":Z
    .local v58, "invalid$iv":Z
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v59, 0x0

    .line 998
    .local v59, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v60, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v70, v11

    .end local v11    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v70, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-virtual/range {v60 .. v60}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v4, v11, :cond_10

    .line 999
    const/4 v11, 0x0

    .line 468
    .local v11, "$i$a$-cache-TripScreenKt$PreRideChecklistStep$1$2$1$2$1":I
    move-object/from16 v60, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local v60, "it$iv":Ljava/lang/Object;
    new-instance v4, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2$1$2$1$1;

    invoke-direct {v4, v7}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2$1$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 999
    .end local v11    # "$i$a$-cache-TripScreenKt$PreRideChecklistStep$1$2$1$2$1":I
    nop

    .line 1000
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1001
    nop

    .end local v4    # "value$iv":Ljava/lang/Object;
    goto :goto_b

    .line 1002
    .end local v60    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    :cond_10
    move-object/from16 v60, v4

    .line 998
    .end local v4    # "it$iv":Ljava/lang/Object;
    .restart local v60    # "it$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 997
    .end local v59    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v60    # "it$iv":Ljava/lang/Object;
    nop

    .line 468
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$f$cache":I
    .end local v58    # "invalid$iv":Z
    move-object/from16 v58, v4

    check-cast v58, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v65, 0x30

    const/16 v66, 0x7c

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v64, v10

    invoke-static/range {v57 .. v66}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 467
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 469
    nop

    .line 996
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v49    # "$changed":I
    .end local v53    # "$i$a$-Row-TripScreenKt$PreRideChecklistStep$1$2$1$2":I
    .end local v54    # "$this$invoke_u24lambda_u246_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 995
    .end local v9    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v68    # "$changed$iv":I
    nop

    .line 1003
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1004
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1005
    nop

    .end local v44    # "$changed$iv$iv$iv":I
    .end local v45    # "$i$f$ReusableComposeNode":I
    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v70    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1006
    nop

    .end local v36    # "$changed$iv$iv":I
    .end local v37    # "$i$f$Layout":I
    .end local v43    # "compositeKeyHash$iv$iv":I
    .end local v55    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1007
    nop

    .line 472
    .end local v34    # "$i$f$Row":I
    .end local v41    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v46    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v48    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v56    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v69    # "$changed$iv":I
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v9, v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 473
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 474
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v7

    .line 471
    move/from16 v9, v35

    .local v4, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v6, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v7, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v9, "$changed$iv":I
    const/4 v10, 0x0

    const v11, 0x2952b718

    .local v10, "$i$f$Row":I
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1008
    shr-int/lit8 v1, v9, 0x3

    const/16 v11, 0xe

    and-int/2addr v1, v11

    shr-int/lit8 v11, v9, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v1, v11

    invoke-static {v6, v7, v2, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .local v1, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v9, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 1009
    nop

    .local v11, "$changed$iv$iv":I
    const/4 v12, 0x0

    move-object/from16 v34, v6

    const v6, -0x4ee9b9da

    .end local v6    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v12, "$i$f$Layout":I
    .local v34, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1010
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v6

    .line 1011
    .local v6, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 1013
    .local v13, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 1020
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    move-object/from16 v35, v4

    .end local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v35, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v4, v11, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int/lit8 v4, v4, 0x6

    .line 1012
    nop

    .local v4, "$changed$iv$iv$iv":I
    move-object/from16 v36, v17

    .local v36, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v17, v19

    .local v17, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v19, 0x0

    .line 1021
    .local v19, "$i$f$ReusableComposeNode":I
    move-object/from16 v37, v7

    .end local v7    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v37, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-nez v7, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1022
    :cond_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1023
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1024
    move-object/from16 v7, v36

    .end local v36    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v7, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 1026
    .end local v7    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v36    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_12
    move-object/from16 v7, v36

    .end local v36    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v7    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1028
    :goto_c
    move-object/from16 v36, v7

    .end local v7    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v36    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .local v7, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v38, 0x0

    .line 1015
    .local v38, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v39, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v40, v10

    .end local v10    # "$i$f$Row":I
    .local v40, "$i$f$Row":I
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v7, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1016
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v7, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1018
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    .local v10, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v39, 0x0

    .line 1029
    .local v39, "$i$f$set-impl":I
    move-object/from16 v41, v7

    .local v41, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v42, 0x0

    .line 1030
    .local v42, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v43

    if-nez v43, :cond_14

    move-object/from16 v43, v1

    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v43, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move/from16 v44, v11

    .end local v11    # "$changed$iv$iv":I
    .local v44, "$changed$iv$iv":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_d

    :cond_13
    move-object/from16 v11, v41

    goto :goto_e

    .end local v43    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v44    # "$changed$iv$iv":I
    .restart local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v11    # "$changed$iv$iv":I
    :cond_14
    move-object/from16 v43, v1

    move/from16 v44, v11

    .line 1031
    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "$changed$iv$iv":I
    .restart local v43    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v44    # "$changed$iv$iv":I
    :goto_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v11, v41

    .end local v41    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1032
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1, v10}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1034
    :goto_e
    nop

    .line 1029
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v42    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1034
    nop

    .line 1019
    .end local v10    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v39    # "$i$f$set-impl":I
    nop

    .line 1028
    .end local v7    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1035
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v7, v4, 0x3

    and-int/lit8 v7, v7, 0x70

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v10, v17

    .end local v17    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v10, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v10, v1, v2, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const v1, 0x7ab4aae9

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1037
    shr-int/lit8 v1, v4, 0x9

    const/16 v7, 0xe

    and-int/2addr v1, v7

    .local v1, "$changed$iv":I
    move-object v7, v2

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1038
    .local v11, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v17, v1

    const v1, -0x1378c42b

    .end local v1    # "$changed$iv":I
    .local v17, "$changed$iv":I
    invoke-static {v7, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v3, v9, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    .local v3, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$invoke_u24lambda_u246_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v24, v7

    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v89, v24

    const/16 v38, 0x0

    .line 476
    .local v38, "$i$a$-Row-TripScreenKt$PreRideChecklistStep$1$2$1$3":I
    move-object/from16 v39, v1

    .end local v1    # "$this$invoke_u24lambda_u246_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    .local v39, "$this$invoke_u24lambda_u246_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    const v1, 0x46bae195

    move/from16 v41, v3

    .end local v3    # "$changed":I
    .local v41, "$changed":I
    const-string v3, "C475@20325L105,476@20495L16,476@20451L61:TripScreen.kt#xkugs2"

    move/from16 v42, v4

    move-object/from16 v4, v24

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v42, "$changed$iv$iv$iv":I
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v72

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v75

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v70

    const/16 v91, 0x0

    const v92, 0x1ffd2

    const-string v68, "\u26d3\ufe0f Chain & Brakes Checked"

    const/16 v69, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const-wide/16 v81, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const v90, 0x30d86

    invoke-static/range {v68 .. v92}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 477
    invoke-static {v8}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$PreRideChecklistStep$lambda$63(Landroidx/compose/runtime/MutableState;)Z

    move-result v53

    const v1, -0x3786473d

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v1, v4

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 1039
    .local v3, "$i$f$cache":I
    move/from16 v16, v0

    .end local v0    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1040
    .local v24, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v45, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v46, v3

    .end local v3    # "$i$f$cache":I
    .local v46, "$i$f$cache":I
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_15

    .line 1041
    const/4 v3, 0x0

    .line 477
    .local v3, "$i$a$-cache-TripScreenKt$PreRideChecklistStep$1$2$1$3$1":I
    move-object/from16 v45, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local v45, "it$iv":Ljava/lang/Object;
    new-instance v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2$1$3$1$1;

    invoke-direct {v0, v8}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PreRideChecklistStep$1$2$1$3$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1041
    .end local v3    # "$i$a$-cache-TripScreenKt$PreRideChecklistStep$1$2$1$3$1":I
    nop

    .line 1042
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1043
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_f

    .line 1044
    .end local v45    # "it$iv":Ljava/lang/Object;
    .local v0, "it$iv":Ljava/lang/Object;
    :cond_15
    move-object/from16 v45, v0

    .line 1040
    .end local v0    # "it$iv":Ljava/lang/Object;
    .restart local v45    # "it$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 1039
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v45    # "it$iv":Ljava/lang/Object;
    nop

    .line 477
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv":Z
    .end local v46    # "$i$f$cache":I
    move-object/from16 v54, v0

    check-cast v54, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v61, 0x30

    const/16 v62, 0x7c

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v60, v4

    invoke-static/range {v53 .. v62}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 476
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 478
    nop

    .line 1038
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-Row-TripScreenKt$PreRideChecklistStep$1$2$1$3":I
    .end local v39    # "$this$invoke_u24lambda_u246_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    .end local v41    # "$changed":I
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1037
    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v17    # "$changed$iv":I
    nop

    .line 1045
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1046
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1047
    nop

    .end local v10    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v36    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v42    # "$changed$iv$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1048
    nop

    .end local v6    # "compositeKeyHash$iv$iv":I
    .end local v12    # "$i$f$Layout":I
    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v44    # "$changed$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1049
    nop

    .line 453
    .end local v9    # "$changed$iv":I
    .end local v34    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v35    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v37    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v40    # "$i$f$Row":I
    .end local v43    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 479
    nop

    .line 923
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-Column-TripScreenKt$PreRideChecklistStep$1$2$1":I
    .end local v27    # "$this$invoke_u24lambda_u246":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v30    # "$changed":I
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 922
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v25    # "$changed$iv":I
    nop

    .line 1050
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1051
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1052
    nop

    .end local v21    # "$i$f$ReusableComposeNode":I
    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v31    # "$changed$iv$iv$iv":I
    .end local v32    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1053
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$Layout":I
    .end local v18    # "compositeKeyHash$iv$iv":I
    .end local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1054
    nop

    .end local v23    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v29    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v33    # "$changed$iv":I
    .end local v51    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v52    # "$i$f$Column":I
    .end local v67    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 480
    :cond_16
    :goto_10
    return-void
.end method
