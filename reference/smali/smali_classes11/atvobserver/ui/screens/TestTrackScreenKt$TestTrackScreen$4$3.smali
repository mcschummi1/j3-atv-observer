.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TestTrackScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->TestTrackScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nTestTrackScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,337:1\n154#2:338\n154#2:339\n75#3,5:340\n80#3:373\n84#3:414\n79#4,11:345\n79#4,11:376\n92#4:408\n92#4:413\n456#5,8:356\n464#5,3:370\n456#5,8:387\n464#5,3:401\n467#5,3:405\n467#5,3:410\n3737#6,6:364\n3737#6,6:395\n91#7,2:374\n93#7:404\n97#7:409\n*S KotlinDebug\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3\n*L\n192#1:338\n193#1:339\n191#1:340,5\n191#1:373\n191#1:414\n191#1:345,11\n196#1:376,11\n196#1:408\n191#1:413\n191#1:356,8\n191#1:370,3\n196#1:387,8\n196#1:401,3\n196#1:405,3\n191#1:410,3\n191#1:364,6\n196#1:395,6\n196#1:374,2\n196#1:404\n196#1:409\n*E\n"
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
.field final synthetic $audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $isPullActive$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $passCount$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableDoubleState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

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

    .line 190
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 104
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$Card"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C190@8212L1421:TestTrackScreen.kt#xkugs2"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 191
    and-int/lit8 v3, v2, 0x51

    const/16 v5, 0x10

    if-ne v3, v5, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_9

    .line 191
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v6, "com.cgs.atvobserver.ui.screens.TestTrackScreen.<anonymous>.<anonymous> (TestTrackScreen.kt:190)"

    const v7, -0x54185d46

    invoke-static {v7, v2, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 192
    :cond_2
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/16 v6, 0xc

    .local v6, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 338
    .local v7, "$i$f$getDp":I
    int-to-float v8, v6

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 192
    .end local v6    # "$this$dp$iv":I
    .end local v7    # "$i$f$getDp":I
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 193
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v7, 0x6

    .local v7, "$this$dp$iv":I
    const/4 v8, 0x0

    .line 339
    .local v8, "$i$f$getDp":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 193
    .end local v7    # "$this$dp$iv":I
    .end local v8    # "$i$f$getDp":I
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 191
    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$passCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v10, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$pullTimeSec$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v11, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$isPullActive$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$testTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v13, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$sprintDistanceKm$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v14, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$3;->$peakSprintSpeed$delegate:Landroidx/compose/runtime/MutableDoubleState;

    const/16 v15, 0x36

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v6, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v15, "$changed$iv":I
    const/16 v16, 0x0

    .local v16, "$i$f$Column":I
    const v5, -0x1cd0f17e

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 340
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v5

    .line 343
    .local v5, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v17, v15, 0x3

    and-int/lit8 v17, v17, 0xe

    shr-int/lit8 v18, v15, 0x3

    and-int/lit8 v18, v18, 0x70

    or-int v0, v17, v18

    invoke-static {v6, v5, v1, v0}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    .local v0, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v17, v15, 0x3

    and-int/lit8 v17, v17, 0x70

    .line 344
    nop

    .local v17, "$changed$iv$iv":I
    const/16 v18, 0x0

    .local v18, "$i$f$Layout":I
    const v2, -0x4ee9b9da

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 345
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v20

    .line 346
    .local v20, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 348
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v22

    .line 355
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v23

    move-object/from16 v24, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v24, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v3, v17, 0x9

    and-int/lit16 v3, v3, 0x1c00

    move-object/from16 v25, v5

    .end local v5    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v25, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    const/4 v5, 0x6

    or-int/2addr v3, v5

    .line 347
    nop

    .local v3, "$changed$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v23, v22

    .local v23, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v22, 0x0

    .line 356
    .local v22, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 357
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 358
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 359
    move-object/from16 v5, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 361
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v5, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 363
    :goto_1
    move-object/from16 v23, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 350
    .local v28, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v29, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v30, v6

    .end local v6    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v30, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 351
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 353
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .local v6, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v29, 0x0

    .line 364
    .local v29, "$i$f$set-impl":I
    move-object/from16 v31, v5

    .local v31, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 365
    .local v32, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v33

    if-nez v33, :cond_6

    move-object/from16 v33, v0

    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v33, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v4

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v34, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v4, v31

    goto :goto_3

    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_6
    move-object/from16 v33, v0

    move-object/from16 v34, v4

    .line 366
    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v31

    .end local v31    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 367
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 369
    :goto_3
    nop

    .line 364
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 369
    nop

    .line 354
    .end local v6    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v29    # "$i$f$set-impl":I
    nop

    .line 363
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 370
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v26

    .end local v26    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v0, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 372
    shr-int/lit8 v4, v3, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object/from16 v6, p2

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 373
    .local v26, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v0, 0x107e0298

    const-string v1, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v15, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v27, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v29, v6

    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 195
    .local v31, "$i$a$-Column-TestTrackScreenKt$TestTrackScreen$4$3$1":I
    move-object/from16 v32, v0

    .end local v0    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .local v32, "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x706c539f

    move/from16 v35, v1

    .end local v1    # "$changed":I
    .local v35, "$changed":I
    const-string v1, "C194@8369L72,195@8458L464,203@8939L187,204@9143L52,205@9212L110,206@9339L71,207@9427L65,208@9509L110:TestTrackScreen.kt#xkugs2"

    move/from16 v36, v3

    move-object/from16 v3, v29

    .end local v29    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v36, "$changed$iv$iv$iv":I
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const-string v0, "100m Straight Shuttle (Back & Forth)"

    const/16 v1, 0x36

    move/from16 v29, v4

    .end local v4    # "$changed$iv":I
    .local v29, "$changed$iv":I
    const-string v4, "TEST TRACK LAYOUT"

    invoke-static {v4, v0, v3, v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 197
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v37, v5

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v37, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/4 v5, 0x1

    invoke-static {v0, v1, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 198
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 199
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    .line 196
    nop

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v1, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v38, 0x1b6

    .local v38, "$changed$iv":I
    const/16 v39, 0x0

    .local v39, "$i$f$Row":I
    const v5, 0x2952b718

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 374
    shr-int/lit8 v5, v38, 0x3

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v40, v38, 0x3

    and-int/lit8 v40, v40, 0x70

    or-int v5, v5, v40

    invoke-static {v1, v4, v3, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .local v5, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v40, v38, 0x3

    and-int/lit8 v40, v40, 0x70

    .line 375
    nop

    .local v40, "$changed$iv$iv":I
    const/16 v41, 0x0

    move-object/from16 v42, v1

    const v1, -0x4ee9b9da

    .end local v1    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v41, "$i$f$Layout":I
    .local v42, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 376
    const/4 v1, 0x0

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v1

    .line 377
    .local v1, "compositeKeyHash$iv$iv":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 379
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    .line 386
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v21

    move-object/from16 v43, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v43, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v40, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/16 v27, 0x6

    or-int/lit8 v0, v0, 0x6

    .line 378
    move-object/from16 v44, v19

    .local v44, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v19, v21

    .local v0, "$changed$iv$iv$iv":I
    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v21, 0x0

    .line 387
    .local v21, "$i$f$ReusableComposeNode":I
    move-object/from16 v45, v4

    .end local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v45, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 388
    :cond_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 389
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 390
    move-object/from16 v4, v44

    .end local v44    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 392
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v44    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v4, v44

    .end local v44    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 394
    :goto_4
    move-object/from16 v44, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v44    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v46, 0x0

    .line 381
    .local v46, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v47, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v48, v15

    .end local v15    # "$changed$iv":I
    .local v48, "$changed$iv":I
    invoke-virtual/range {v47 .. v47}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v4, v5, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 382
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v4, v2, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 384
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    .local v15, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v47, 0x0

    .line 395
    .local v47, "$i$f$set-impl":I
    move-object/from16 v49, v4

    .local v49, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 396
    .local v50, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v51

    if-nez v51, :cond_a

    move-object/from16 v51, v2

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v51, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v49 .. v49}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v52, v5

    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v52, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v5, v49

    goto :goto_6

    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_a
    move-object/from16 v51, v2

    move-object/from16 v52, v5

    .line 397
    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v49

    .end local v49    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v15}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 400
    :goto_6
    nop

    .line 395
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 400
    nop

    .line 385
    .end local v15    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v47    # "$i$f$set-impl":I
    nop

    .line 394
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v46    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 401
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v19

    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const v2, 0x7ab4aae9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 403
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object v4, v3

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 404
    .local v15, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v19, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v19, "$changed$iv$iv$iv":I
    const v0, -0x1378c42b

    move/from16 v28, v1

    .end local v1    # "compositeKeyHash$iv$iv":I
    .local v28, "compositeKeyHash$iv$iv":I
    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v38, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v27, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v46, v4

    .local v46, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v99, v46

    move-object/from16 v74, v46

    const/16 v47, 0x0

    .line 201
    .local v47, "$i$a$-Row-TestTrackScreenKt$TestTrackScreen$4$3$1$1":I
    move-object/from16 v49, v0

    .end local v0    # "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    .local v49, "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0xaa72972

    move/from16 v50, v1

    .end local v1    # "$changed":I
    .local v50, "$changed":I
    const-string v1, "C200@8696L96,201@8813L91:TestTrackScreen.kt#xkugs2"

    move/from16 v103, v2

    move-object/from16 v2, v46

    .end local v46    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v103, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v57

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v60

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v55

    const/16 v76, 0x0

    const v77, 0x1ffd2

    const-string v53, "100M PASSES COMPLETED"

    const/16 v54, 0x0

    const/16 v59, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const v75, 0x30d86

    invoke-static/range {v53 .. v77}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 202
    invoke-static {v9}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$22(Landroidx/compose/runtime/MutableIntState;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PASSES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v82

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v85

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v80

    const/16 v101, 0x0

    const v102, 0x1ffd2

    const/16 v79, 0x0

    const/16 v84, 0x0

    const/16 v86, 0x0

    const-wide/16 v87, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const-wide/16 v91, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const v100, 0x30d80

    invoke-static/range {v78 .. v102}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 201
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 203
    nop

    .line 404
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v47    # "$i$a$-Row-TestTrackScreenKt$TestTrackScreen$4$3$1$1":I
    .end local v49    # "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/foundation/layout/RowScope;
    .end local v50    # "$changed":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 403
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v103    # "$changed$iv":I
    nop

    .line 405
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 406
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 407
    nop

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v19    # "$changed$iv$iv$iv":I
    .end local v21    # "$i$f$ReusableComposeNode":I
    .end local v44    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 408
    nop

    .end local v28    # "compositeKeyHash$iv$iv":I
    .end local v40    # "$changed$iv$iv":I
    .end local v41    # "$i$f$Layout":I
    .end local v51    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 409
    nop

    .line 204
    .end local v38    # "$changed$iv":I
    .end local v39    # "$i$f$Row":I
    .end local v42    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v43    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v45    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v52    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v10}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$16(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    const-string v1, "s"

    const-string v2, "format(...)"

    if-lez v0, :cond_b

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v10}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$16(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.2f"

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    invoke-static {v11}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "PULLING..."

    goto :goto_7

    :cond_c
    const-string v0, "READY (Pull 10->40 km/h)"

    :goto_7
    const-string v4, "10-40 KM/H PULL TIME"

    const/4 v5, 0x6

    invoke-static {v4, v0, v3, v5}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 205
    invoke-static {v12}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$4(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SESSION TIMER"

    invoke-static {v1, v0, v3, v5}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 206
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v13}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$7(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v4

    const/16 v1, 0x3e8

    int-to-double v9, v1

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%.3f"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " meters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOTAL DISTANCE"

    const/4 v2, 0x6

    invoke-static {v1, v0, v3, v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 207
    invoke-virtual {v7}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

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

    const-string v4, "CURRENT SPEED"

    invoke-static {v4, v0, v3, v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 208
    invoke-static {v14}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$10(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v4

    double-to-int v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PEAK PASS SPEED"

    invoke-static {v1, v0, v3, v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 209
    invoke-virtual {v8}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v8}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->getEstimatedRpm()I

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

    goto :goto_8

    :cond_d
    const-string v0, "IDLE / OFF"

    :goto_8
    const-string v1, "ESTIMATED RPM"

    const/4 v2, 0x6

    invoke-static {v1, v0, v3, v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 195
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 210
    nop

    .line 373
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-Column-TestTrackScreenKt$TestTrackScreen$4$3$1":I
    .end local v32    # "$this$invoke_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v35    # "$changed":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 372
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v29    # "$changed$iv":I
    nop

    .line 410
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 411
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 412
    nop

    .end local v22    # "$i$f$ReusableComposeNode":I
    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v36    # "$changed$iv$iv$iv":I
    .end local v37    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 413
    nop

    .end local v17    # "$changed$iv$iv":I
    .end local v18    # "$i$f$Layout":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 414
    nop

    .end local v16    # "$i$f$Column":I
    .end local v24    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v30    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v48    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 211
    :cond_e
    :goto_9
    return-void
.end method
