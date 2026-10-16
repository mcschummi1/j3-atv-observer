.class final Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;
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
    value = "SMAP\nConfigScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,301:1\n154#2:302\n86#3,7:303\n93#3:338\n97#3:355\n79#4,11:310\n92#4:354\n456#5,8:321\n464#5,3:335\n467#5,3:351\n3737#6,6:329\n1116#7,6:339\n1116#7,6:345\n*S KotlinDebug\n*F\n+ 1 ConfigScreen.kt\ncom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2\n*L\n107#1:302\n107#1:303,7\n107#1:338\n107#1:355\n107#1:310,11\n107#1:354\n107#1:321,8\n107#1:335,3\n107#1:351,3\n107#1:329,6\n110#1:339,6\n118#1:345,6\n*E\n"
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
.field final synthetic $frontSprocketTeeth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rearSprocketTeeth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sprocketRatio:D


# direct methods
.method constructor <init>(DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;->$sprocketRatio:D

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;->$frontSprocketTeeth$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;->$rearSprocketTeeth$delegate:Landroidx/compose/runtime/MutableState;

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

    .line 105
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 56
    .param p1, "$this$ConfigCard"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move/from16 v15, p3

    const-string v1, "$this$ConfigCard"

    move-object/from16 v13, p1

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C105@5306L154,106@5477L932:ConfigScreen.kt#xkugs2"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 106
    and-int/lit8 v1, v15, 0x51

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 106
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.cgs.atvobserver.ui.screens.ConfigScreen.<anonymous>.<anonymous>.<anonymous> (ConfigScreen.kt:105)"

    const v3, 0x7e6d0f60

    invoke-static {v3, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-wide v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;->$sprocketRatio:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated Ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v8

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0x1ffd2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x30d80

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 107
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v2, 0x8

    .local v2, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 302
    .local v3, "$i$f$getDp":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 107
    .end local v2    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .local v1, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;->$frontSprocketTeeth$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2;->$rearSprocketTeeth$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v4, 0x30

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$Row":I
    const v6, 0x2952b718

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v7, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 303
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 305
    .local v6, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v8

    .line 308
    .local v8, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v9, v4, 0x3

    and-int/lit8 v9, v9, 0xe

    shr-int/lit8 v10, v4, 0x3

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v9, v10

    invoke-static {v1, v8, v7, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .local v9, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v10, v4, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 309
    nop

    .local v10, "$changed$iv$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v7, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 310
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 311
    .local v13, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 313
    .local v14, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 320
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v16

    shl-int/lit8 v12, v10, 0x9

    and-int/lit16 v12, v12, 0x1c00

    or-int/lit8 v12, v12, 0x6

    .line 312
    nop

    .local v15, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v18, v16

    .local v12, "$changed$iv$iv$iv":I
    .local v18, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .line 321
    .local v16, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 322
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 323
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 326
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 328
    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 315
    .local v19, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v21, v1

    .end local v1    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v21, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v9, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 316
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v0, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v20, 0x0

    .line 329
    .local v20, "$i$f$set-impl":I
    move-object/from16 v22, v0

    .local v22, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 330
    .local v23, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v24

    if-nez v24, :cond_6

    move/from16 v24, v5

    .end local v5    # "$i$f$Row":I
    .local v24, "$i$f$Row":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v6

    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v25, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v6, v22

    goto :goto_3

    .end local v24    # "$i$f$Row":I
    .end local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v5    # "$i$f$Row":I
    .restart local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :cond_6
    move/from16 v24, v5

    move-object/from16 v25, v6

    .line 331
    .end local v5    # "$i$f$Row":I
    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .restart local v24    # "$i$f$Row":I
    .restart local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v22

    .end local v22    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 332
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    :goto_3
    nop

    .line 329
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 334
    nop

    .line 319
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v20    # "$i$f$set-impl":I
    nop

    .line 328
    .end local v0    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 335
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v12, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v5, v18

    .end local v18    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v0, v7, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const v0, 0x7ab4aae9

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 337
    shr-int/lit8 v0, v12, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v1, p2

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 338
    .local v6, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v18, v0

    .end local v0    # "$changed$iv":I
    .local v18, "$changed$iv":I
    const v0, -0x1378c42b

    move-object/from16 v19, v5

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v5, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x6

    .local v5, "$changed":I
    move-object/from16 v26, v0

    check-cast v26, Landroidx/compose/foundation/layout/RowScope;

    .local v26, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v1

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 108
    .local v20, "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$2$1":I
    move/from16 v22, v4

    .end local v4    # "$changed$iv":I
    .local v22, "$changed$iv":I
    const v4, 0x55a61dd5

    move/from16 v23, v5

    .end local v5    # "$changed":I
    .local v23, "$changed":I
    const-string v5, "C109@5666L27,107@5555L409,117@6095L26,115@5985L406:ConfigScreen.kt#xkugs2"

    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 109
    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$17(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v4

    .line 112
    new-instance v42, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v5, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v30

    const/16 v33, 0x1b

    const/16 v34, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, v42

    invoke-direct/range {v27 .. v34}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/Modifier;

    const/16 v30, 0x2

    const/16 v31, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v29

    .line 109
    const v5, 0x4d15eaa5    # 1.57198928E8f

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember):ConfigScreen.kt#9igjgp"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 110
    const/16 v17, 0x0

    move/from16 v27, v17

    .local v27, "invalid$iv":Z
    move-object/from16 v28, v0

    .local v28, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 339
    .local v30, "$i$f$cache":I
    move/from16 v55, v6

    .end local v6    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v55, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 340
    .local v31, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v32, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_7

    .line 341
    const/4 v7, 0x0

    .line 110
    .local v7, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$2$1$1":I
    move-object/from16 v32, v6

    .end local v6    # "it$iv":Ljava/lang/Object;
    .local v32, "it$iv":Ljava/lang/Object;
    new-instance v6, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2$1$1$1;

    invoke-direct {v6, v2}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 341
    .end local v7    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$2$1$1":I
    move-object v2, v6

    .line 342
    .local v2, "value$iv":Ljava/lang/Object;
    move-object/from16 v6, v28

    .end local v28    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_4

    .line 344
    .end local v32    # "it$iv":Ljava/lang/Object;
    .local v6, "it$iv":Ljava/lang/Object;
    .restart local v28    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_7
    move-object/from16 v32, v6

    move-object/from16 v6, v28

    .end local v28    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v32    # "it$iv":Ljava/lang/Object;
    move-object/from16 v2, v32

    .line 340
    :goto_4
    nop

    .line 339
    .end local v31    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v32    # "it$iv":Ljava/lang/Object;
    nop

    .line 110
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "invalid$iv":Z
    .end local v30    # "$i$f$cache":I
    move-object/from16 v28, v2

    check-cast v28, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 114
    sget-object v2, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->getLambda-5$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v33

    .line 112
    nop

    .line 113
    nop

    .line 108
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x1

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const v51, 0x180030

    const/high16 v52, 0xc30000

    const/16 v53, 0x0

    const v54, 0x7d7fb8

    move-object/from16 v27, v4

    move-object/from16 v50, v0

    invoke-static/range {v27 .. v54}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 117
    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->access$ConfigScreen$lambda$20(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v27

    .line 120
    new-instance v42, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v2, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v31

    const/16 v34, 0x1b

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v42

    invoke-direct/range {v28 .. v35}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v29, v2

    check-cast v29, Landroidx/compose/ui/Modifier;

    const/16 v32, 0x2

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x0

    move-object/from16 v28, v26

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v29

    .line 117
    const v2, 0x4d162044    # 1.5741856E8f

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 118
    const/4 v2, 0x0

    .local v2, "invalid$iv":Z
    move-object v4, v0

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 345
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 346
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v28, v2

    .end local v2    # "invalid$iv":Z
    .local v28, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v6, v2, :cond_8

    .line 347
    const/4 v2, 0x0

    .line 118
    .local v2, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$2$1$2":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$2$1$2":I
    .local v17, "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$2$1$2":I
    new-instance v2, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2$1$2$1;

    invoke-direct {v2, v3}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt$ConfigScreen$1$2$2$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 347
    .end local v17    # "$i$a$-cache-ConfigScreenKt$ConfigScreen$1$2$2$1$2":I
    nop

    .line 348
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_5

    .line 350
    :cond_8
    move-object v2, v6

    .line 346
    :goto_5
    nop

    .line 345
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 118
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    .end local v28    # "invalid$iv":Z
    move-object/from16 v28, v2

    check-cast v28, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 122
    sget-object v2, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$ConfigScreenKt;->getLambda-6$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v33

    .line 120
    nop

    .line 121
    nop

    .line 116
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x1

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const v51, 0x180030

    const/high16 v52, 0xc30000

    const/16 v53, 0x0

    const v54, 0x7d7fb8

    move-object/from16 v50, v0

    invoke-static/range {v27 .. v54}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 108
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 124
    nop

    .line 338
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-Row-ConfigScreenKt$ConfigScreen$1$2$2$1":I
    .end local v23    # "$changed":I
    .end local v26    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 337
    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$changed$iv":I
    .end local v55    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 351
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 352
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 353
    nop

    .end local v12    # "$changed$iv$iv$iv":I
    .end local v15    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 354
    nop

    .end local v10    # "$changed$iv$iv":I
    .end local v11    # "$i$f$Layout":I
    .end local v13    # "compositeKeyHash$iv$iv":I
    .end local v14    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 355
    nop

    .end local v8    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v21    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v22    # "$changed$iv":I
    .end local v24    # "$i$f$Row":I
    .end local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 125
    :cond_9
    :goto_6
    return-void
.end method
