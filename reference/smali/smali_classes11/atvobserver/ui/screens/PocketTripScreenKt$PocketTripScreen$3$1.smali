.class final Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PocketTripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nPocketTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PocketTripScreen.kt\ncom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,135:1\n154#2:136\n154#2:172\n154#2:173\n154#2:174\n154#2:175\n154#2:176\n74#3,6:137\n80#3:171\n84#3:181\n79#4,11:143\n92#4:180\n456#5,8:154\n464#5,3:168\n467#5,3:177\n3737#6,6:162\n*S KotlinDebug\n*F\n+ 1 PocketTripScreen.kt\ncom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1\n*L\n87#1:136\n91#1:172\n94#1:173\n96#1:174\n98#1:175\n100#1:176\n86#1:137,6\n86#1:171\n86#1:181\n86#1:143,11\n86#1:180\n86#1:154,8\n86#1:168,3\n86#1:177,3\n86#1:162,6\n*E\n"
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

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroidx/compose/runtime/MutableLongState;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

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

    .line 85
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 56
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C85@3359L1394:PocketTripScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 86
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 86
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.cgs.atvobserver.ui.screens.PocketTripScreen.<anonymous>.<anonymous> (PocketTripScreen.kt:85)"

    const v6, 0x2cf11e52

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 87
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v5, v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v5, 0x14

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 136
    .local v6, "$i$f$getDp":I
    int-to-float v8, v5

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 87
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 88
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .line 86
    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-object v10, v0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const/16 v11, 0x186

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v11, "$changed$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Column":I
    const v13, -0x1cd0f17e

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 137
    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v13}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v13

    .line 141
    .local v13, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v14, v11, 0x3

    const/16 v15, 0xe

    and-int/2addr v14, v15

    shr-int/lit8 v16, v11, 0x3

    and-int/lit8 v16, v16, 0x70

    or-int v14, v14, v16

    invoke-static {v13, v5, v1, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    .local v14, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v11, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 142
    nop

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$Layout":I
    const v7, -0x4ee9b9da

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 143
    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v7

    .line 144
    .local v7, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 146
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    .line 153
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v20

    shl-int/lit8 v0, v16, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/4 v2, 0x6

    or-int/2addr v0, v2

    .line 145
    move-object/from16 v21, v20

    .local v21, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v20, v19

    .local v0, "$changed$iv$iv$iv":I
    .local v20, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v19, 0x0

    .line 154
    .local v19, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 155
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 156
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    move-object/from16 v2, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 159
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v2, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 161
    :goto_1
    move-object/from16 v20, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 148
    .local v23, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v25, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v14, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v15, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v24, 0x0

    .line 162
    .local v24, "$i$f$set-impl":I
    move-object/from16 v26, v2

    .local v26, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 163
    .local v27, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v28

    if-nez v28, :cond_6

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v5

    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v28, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 164
    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v26

    .end local v26    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    :goto_3
    nop

    .line 162
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 167
    nop

    .line 152
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v24    # "$i$f$set-impl":I
    nop

    .line 161
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 168
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v21

    .end local v21    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 170
    shr-int/lit8 v2, v0, 0x9

    const/16 v3, 0xe

    and-int/2addr v2, v3

    .local v2, "$changed$iv":I
    move-object/from16 v3, p2

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 171
    .local v5, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v21, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v21, "$changed$iv$iv$iv":I
    const v0, 0x107e0298

    const-string v1, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v22, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v23, v3

    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v50, v23

    const/16 v24, 0x0

    .line 90
    .local v24, "$i$a$-Column-PocketTripScreenKt$PocketTripScreen$3$1$1":I
    move-object/from16 v26, v0

    .end local v0    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v26, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x30811f7

    move/from16 v27, v1

    .end local v1    # "$changed":I
    .local v27, "$changed":I
    const-string v1, "C89@3533L98,90@3648L40,92@3886L151,93@4054L40,94@4111L175,95@4303L41,96@4361L104,97@4482L40,98@4539L72,99@4628L40,100@4685L54:PocketTripScreen.kt#xkugs2"

    move/from16 v55, v2

    move-object/from16 v2, v23

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v55, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v33

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v36

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v31

    const/16 v52, 0x0

    const v53, 0x1ffd2

    const-string v29, "PHONE IS IN YOUR POCKET"

    const/16 v30, 0x0

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

    const v51, 0x30d86

    invoke-static/range {v29 .. v53}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 91
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x6

    .local v1, "$this$dp$iv":I
    const/16 v18, 0x0

    .line 172
    .local v18, "$i$f$getDp":I
    move-object/from16 v23, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v23, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    int-to-float v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 91
    .end local v1    # "$this$dp$iv":I
    .end local v18    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 92
    sget-object v0, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    invoke-virtual {v0, v6}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\ud83c\udfa7 My Lil Buds Pro Connected (Voice Active)"

    goto :goto_4

    :cond_7
    const-string v0, "\ud83d\udd07 Headset Disconnected (Voice Muted)"

    :goto_4
    move-object/from16 v29, v0

    .line 93
    .local v29, "headsetStatus":Ljava/lang/String;
    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v33

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v36

    sget-object v1, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    invoke-virtual {v1, v6}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v30

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsRed()J

    move-result-wide v30

    :goto_5
    move-wide/from16 v31, v30

    const/16 v52, 0x0

    const v53, 0x1ffd2

    const/16 v30, 0x0

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

    const v51, 0x30c00

    move-object/from16 v50, v2

    invoke-static/range {v29 .. v53}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 94
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x6

    .local v4, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 173
    .restart local v6    # "$i$f$getDp":I
    int-to-float v0, v4

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 94
    .end local v4    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 95
    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v34

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v32

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v42

    const/16 v53, 0x0

    const v54, 0x1fdf2

    const-string v30, "Camera paused to save battery. GPS, Audio RPM, and Motion logging continuously in background."

    const/16 v31, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v43, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v52, 0xd86

    move-object/from16 v51, v2

    invoke-static/range {v30 .. v54}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 96
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0xc

    .restart local v1    # "$this$dp$iv":I
    const/4 v4, 0x0

    .line 174
    .local v4, "$i$f$getDp":I
    int-to-float v6, v1

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 96
    .end local v1    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 97
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v8}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%.2f"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Distance Logged"

    const/4 v4, 0x6

    invoke-static {v1, v0, v2, v4}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 98
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x6

    .restart local v1    # "$this$dp$iv":I
    const/4 v6, 0x0

    .line 175
    .restart local v6    # "$i$f$getDp":I
    int-to-float v8, v1

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 98
    .end local v1    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 99
    invoke-virtual {v9}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getFusedSpeedKmh()D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " km/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current Speed"

    invoke-static {v1, v0, v2, v4}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 100
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x6

    .restart local v1    # "$this$dp$iv":I
    const/4 v6, 0x0

    .line 176
    .restart local v6    # "$i$f$getDp":I
    int-to-float v8, v1

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 100
    .end local v1    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 101
    invoke-static {v10}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$formatDuration(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Duration"

    invoke-static {v1, v0, v2, v4}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 90
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 102
    .end local v29    # "headsetStatus":Ljava/lang/String;
    nop

    .line 171
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-Column-PocketTripScreenKt$PocketTripScreen$3$1$1":I
    .end local v26    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v27    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 170
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v55    # "$changed$iv":I
    nop

    .line 177
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 178
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 179
    nop

    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v21    # "$changed$iv$iv$iv":I
    .end local v23    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 180
    nop

    .end local v7    # "compositeKeyHash$iv$iv":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$Layout":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 181
    nop

    .end local v11    # "$changed$iv":I
    .end local v12    # "$i$f$Column":I
    .end local v13    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v28    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 103
    :cond_9
    :goto_6
    return-void
.end method
