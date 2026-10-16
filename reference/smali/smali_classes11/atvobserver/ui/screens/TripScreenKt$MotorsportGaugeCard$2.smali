.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->MotorsportGaugeCard-cd68TDI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n*L\n1#1,887:1\n154#2:888\n154#2:923\n69#3,5:889\n74#3:922\n78#3:975\n79#4,11:894\n79#4,11:937\n92#4:969\n92#4:974\n456#5,8:905\n464#5,3:919\n456#5,8:948\n464#5,3:962\n467#5,3:966\n467#5,3:971\n3737#6,6:913\n3737#6,6:956\n1116#7,6:924\n73#8,7:930\n80#8:965\n84#8:970\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2\n*L\n561#1:888\n564#1:923\n560#1:889,5\n560#1:922\n560#1:975\n560#1:894,11\n584#1:937,11\n584#1:969\n560#1:974\n560#1:905,8\n560#1:919,3\n584#1:948,8\n584#1:962,3\n584#1:966,3\n560#1:971,3\n560#1:913,6\n584#1:956,6\n564#1:924,6\n584#1:930,7\n584#1:965\n584#1:970\n*E\n"
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
.field final synthetic $accentColor:J

.field final synthetic $digitalValue:Ljava/lang/String;

.field final synthetic $progressFraction:F

.field final synthetic $subText:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $unit:Ljava/lang/String;


# direct methods
.method constructor <init>(FJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$progressFraction:F

    iput-wide p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$accentColor:J

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$digitalValue:Ljava/lang/String;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$unit:Ljava/lang/String;

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$subText:Ljava/lang/String;

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

    .line 559
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 133
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C559@23588L1492:TripScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 560
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_9

    .line 560
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.MotorsportGaugeCard.<anonymous> (TripScreen.kt:559)"

    const v6, 0x638f7d49

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 561
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x4

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 888
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 561
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 562
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v5

    .line 560
    iget v6, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$progressFraction:F

    iget-wide v9, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$accentColor:J

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$title:Ljava/lang/String;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$digitalValue:Ljava/lang/String;

    iget-object v15, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$unit:Ljava/lang/String;

    iget-object v13, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->$subText:Ljava/lang/String;

    const/16 v11, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v11, "$changed$iv":I
    move/from16 v104, v11

    .end local v11    # "$changed$iv":I
    .local v5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v104, "$changed$iv":I
    const/16 v105, 0x0

    .local v105, "$i$f$Box":I
    const v11, 0x2bb5b5d7

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 889
    const/4 v14, 0x0

    .line 892
    .local v14, "propagateMinConstraints$iv":Z
    shr-int/lit8 v11, v104, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v104, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v5, v14, v1, v11}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v104, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 893
    move/from16 v106, v12

    .local v106, "$changed$iv$iv":I
    const/16 v107, 0x0

    .local v107, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 894
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v108

    .line 895
    .local v108, "compositeKeyHash$iv$iv":I
    move-object/from16 v17, v15

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 897
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    .line 904
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v19

    shl-int/lit8 v0, v106, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/4 v2, 0x6

    or-int/2addr v0, v2

    .line 896
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v109, v19

    .local v109, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v110, v18

    .local v110, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v111, 0x0

    .line 905
    .local v111, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 906
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 907
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 908
    move-object/from16 v2, v110

    .end local v110    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 910
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v110    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v2, v110

    .end local v110    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 912
    :goto_1
    move-object/from16 v110, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v110    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 899
    .local v19, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v112, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v112, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 900
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v15, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 902
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 913
    .local v21, "$i$f$set-impl":I
    move-object/from16 v22, v2

    .local v22, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 914
    .local v23, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v24

    if-nez v24, :cond_6

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v113, v5

    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v113, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v5, v22

    goto :goto_3

    .end local v113    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :cond_6
    move-object/from16 v113, v5

    .line 915
    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v113    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :goto_2
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v22

    .end local v22    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 916
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 918
    :goto_3
    nop

    .line 913
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 918
    nop

    .line 903
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl":I
    nop

    .line 912
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 919
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v109

    .end local v109    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 921
    shr-int/lit8 v3, v0, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object/from16 v5, p2

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v109, 0x0

    .line 922
    .local v109, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v2, -0x4ab8dd4f

    move/from16 v114, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v114, "$changed$iv$iv$iv":I
    const-string v0, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v2, v104, 0x6

    and-int/lit8 v2, v2, 0x70

    const/16 v18, 0x6

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v115, v5

    .local v115, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v116, 0x0

    .line 564
    .local v116, "$i$a$-Box-TripScreenKt$MotorsportGaugeCard$2$1":I
    move-object/from16 v117, v0

    .end local v0    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    .local v117, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x63cc26c5

    const-string v1, "C563@23766L750,563@23726L790,583@24530L540:TripScreen.kt#xkugs2"

    move-object/from16 v21, v15

    move-object/from16 v15, v115

    .end local v115    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x50

    .local v1, "$this$dp$iv":I
    const/16 v22, 0x0

    .line 923
    .local v22, "$i$f$getDp":I
    move/from16 v115, v2

    .end local v2    # "$changed":I
    .local v115, "$changed":I
    int-to-float v2, v1

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 564
    .end local v1    # "$this$dp$iv":I
    .end local v22    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x1dd02276

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):TripScreen.kt#9igjgp"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    invoke-interface {v15, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    or-int/2addr v1, v2

    .local v1, "invalid$iv":Z
    move-object v2, v15

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 924
    .local v22, "$i$f$cache":I
    move/from16 v118, v3

    .end local v3    # "$changed$iv":I
    .local v118, "$changed$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 925
    .local v23, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_8

    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v25, v1

    .end local v1    # "invalid$iv":Z
    .local v25, "invalid$iv":Z
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_7

    goto :goto_4

    .line 929
    :cond_7
    move-object v1, v3

    goto :goto_5

    .line 925
    .end local v25    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_8
    move/from16 v25, v1

    .line 926
    .end local v1    # "invalid$iv":Z
    .restart local v25    # "invalid$iv":Z
    :goto_4
    const/4 v1, 0x0

    .line 564
    .local v1, "$i$a$-cache-TripScreenKt$MotorsportGaugeCard$2$1$1":I
    move/from16 v24, v1

    .end local v1    # "$i$a$-cache-TripScreenKt$MotorsportGaugeCard$2$1$1":I
    .local v24, "$i$a$-cache-TripScreenKt$MotorsportGaugeCard$2$1$1":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;

    invoke-direct {v1, v6, v9, v10}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;-><init>(FJ)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 926
    .end local v24    # "$i$a$-cache-TripScreenKt$MotorsportGaugeCard$2$1$1":I
    nop

    .line 927
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 928
    nop

    .line 925
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 924
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v23    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 564
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$f$cache":I
    .end local v25    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x6

    invoke-static {v0, v1, v15, v2}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 585
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    .line 586
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    .line 584
    const/16 v2, 0x1b0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Column":I
    const v6, -0x1cd0f17e

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v15, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 930
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 935
    .local v6, "modifier$iv":Landroidx/compose/ui/Modifier;
    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    shr-int/lit8 v22, v2, 0x3

    and-int/lit8 v22, v22, 0xe

    shr-int/lit8 v23, v2, 0x3

    and-int/lit8 v23, v23, 0x70

    move/from16 v119, v3

    .end local v3    # "$i$f$Column":I
    .local v119, "$i$f$Column":I
    or-int v3, v22, v23

    invoke-static {v1, v0, v15, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    .local v0, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v1, v2, 0x3

    and-int/lit8 v1, v1, 0x70

    .line 936
    nop

    .local v1, "$changed$iv$iv":I
    const/4 v3, 0x0

    move/from16 v120, v3

    const v3, -0x4ee9b9da

    .local v120, "$i$f$Layout":I
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 937
    const/4 v3, 0x0

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 938
    .local v3, "compositeKeyHash$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 940
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 947
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v20

    move-object/from16 v121, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v121, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    shl-int/lit8 v4, v1, 0x9

    and-int/lit16 v4, v4, 0x1c00

    const/16 v18, 0x6

    or-int/lit8 v4, v4, 0x6

    .line 939
    move-object/from16 v122, v16

    .local v122, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v123, v20

    .local v4, "$changed$iv$iv$iv":I
    .local v123, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v124, 0x0

    .line 948
    .local v124, "$i$f$ReusableComposeNode":I
    move/from16 v125, v1

    .end local v1    # "$changed$iv$iv":I
    .local v125, "$changed$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 949
    :cond_9
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 950
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 951
    move-object/from16 v1, v122

    .end local v122    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 953
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v122    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_a
    move-object/from16 v1, v122

    .end local v122    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 955
    :goto_6
    move-object/from16 v122, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v122    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 942
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v126, v6

    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v126, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 943
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v1, v12, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 945
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .local v6, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v20, 0x0

    .line 956
    .local v20, "$i$f$set-impl":I
    move-object/from16 v22, v1

    .local v22, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 957
    .local v23, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v24

    if-nez v24, :cond_c

    move-object/from16 v127, v0

    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v127, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v11

    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v24, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    move-object/from16 v11, v22

    goto :goto_8

    .end local v24    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v127    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_c
    move-object/from16 v127, v0

    move-object/from16 v24, v11

    .line 958
    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v24    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v127    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v11, v22

    .end local v22    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 959
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 961
    :goto_8
    nop

    .line 956
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 961
    nop

    .line 946
    .end local v6    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v20    # "$i$f$set-impl":I
    nop

    .line 955
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 962
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v4, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, v123

    .end local v123    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v6, v0, v15, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const v0, 0x7ab4aae9

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 964
    shr-int/lit8 v0, v4, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v1, v15

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v123, 0x0

    .line 965
    .local v123, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v11, 0x107e0298

    move/from16 v128, v0

    .end local v0    # "$changed$iv":I
    .local v128, "$changed$iv":I
    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v1, v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v11, v2, 0x6

    and-int/lit8 v11, v11, 0x70

    const/16 v16, 0x6

    or-int/lit8 v129, v11, 0x6

    .local v129, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v11, v1

    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v100, v11

    move-object/from16 v28, v11

    move-object/from16 v75, v11

    move-object/from16 v50, v11

    const/16 v130, 0x0

    .line 588
    .local v130, "$i$a$-Column-TripScreenKt$MotorsportGaugeCard$2$1$2":I
    move-object/from16 v131, v0

    .end local v0    # "$this$invoke_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .local v131, "$this$invoke_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x7553890d

    move/from16 v132, v2

    .end local v2    # "$changed$iv":I
    .local v132, "$changed$iv":I
    const-string v2, "C587@24695L61,588@24773L97,589@24887L89,590@24993L63:TripScreen.kt#xkugs2"

    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v33

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v31

    const/16 v52, 0x0

    const v53, 0x1fff2

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

    const/16 v51, 0xd80

    move-object/from16 v29, v7

    invoke-static/range {v29 .. v53}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 589
    const/16 v0, 0x18

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v58

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v61

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v56

    const/16 v77, 0x0

    const v78, 0x1ffd2

    const/16 v55, 0x0

    const/16 v60, 0x0

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

    const v76, 0x30d80

    move-object/from16 v54, v8

    invoke-static/range {v54 .. v78}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 590
    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    move-object/from16 v32, v11

    move-object v2, v12

    move-object/from16 v0, v24

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v24    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v0, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v32, "$composer":Landroidx/compose/runtime/Composer;
    move-wide v11, v7

    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getSemiBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    move/from16 v33, v14

    .end local v14    # "propagateMinConstraints$iv":Z
    .local v33, "propagateMinConstraints$iv":Z
    move-object v14, v7

    const/16 v30, 0x0

    const v31, 0x1ffd2

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v34, v13

    move-object v13, v7

    move-object/from16 v37, v15

    move-object/from16 v35, v17

    move-object/from16 v36, v21

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v36, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v37, "$composer":Landroidx/compose/runtime/Composer;
    move-object v15, v7

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v29, 0x30c00

    move-object/from16 v7, v35

    invoke-static/range {v7 .. v31}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 591
    const/4 v7, 0x7

    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v83

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v81

    const/16 v102, 0x0

    const v103, 0x1fff2

    const/16 v80, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const-wide/16 v88, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const-wide/16 v92, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v101, 0xd80

    move-object/from16 v79, v34

    invoke-static/range {v79 .. v103}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 588
    invoke-static/range {v32 .. v32}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 592
    nop

    .line 965
    .end local v32    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v129    # "$changed":I
    .end local v130    # "$i$a$-Column-TripScreenKt$MotorsportGaugeCard$2$1$2":I
    .end local v131    # "$this$invoke_u24lambda_u242_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 964
    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v123    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v128    # "$changed$iv":I
    nop

    .line 966
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 967
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 968
    nop

    .end local v4    # "$changed$iv$iv$iv":I
    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v122    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v124    # "$i$f$ReusableComposeNode":I
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 969
    nop

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v3    # "compositeKeyHash$iv$iv":I
    .end local v120    # "$i$f$Layout":I
    .end local v125    # "$changed$iv$iv":I
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 970
    nop

    .line 564
    .end local v119    # "$i$f$Column":I
    .end local v126    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v127    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v132    # "$changed$iv":I
    invoke-static/range {v37 .. v37}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 593
    nop

    .line 922
    .end local v37    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v115    # "$changed":I
    .end local v116    # "$i$a$-Box-TripScreenKt$MotorsportGaugeCard$2$1":I
    .end local v117    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 921
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v109    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v118    # "$changed$iv":I
    nop

    .line 971
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 972
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 973
    nop

    .end local v110    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v111    # "$i$f$ReusableComposeNode":I
    .end local v114    # "$changed$iv$iv$iv":I
    .end local v121    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 974
    nop

    .end local v36    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v106    # "$changed$iv$iv":I
    .end local v107    # "$i$f$Layout":I
    .end local v108    # "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 975
    nop

    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v33    # "propagateMinConstraints$iv":Z
    .end local v104    # "$changed$iv":I
    .end local v105    # "$i$f$Box":I
    .end local v112    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v113    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 594
    :cond_d
    :goto_9
    return-void
.end method
