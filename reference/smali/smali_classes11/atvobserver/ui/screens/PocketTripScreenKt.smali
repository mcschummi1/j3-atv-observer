.class public final Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;
.super Ljava/lang/Object;
.source "PocketTripScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPocketTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PocketTripScreen.kt\ncom/cgs/atvobserver/ui/screens/PocketTripScreenKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 10 SnapshotLongState.kt\nandroidx/compose/runtime/SnapshotLongStateKt__SnapshotLongStateKt\n+ 11 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,135:1\n1116#2,6:136\n1116#2,6:143\n1116#2,6:186\n74#3:142\n154#4:149\n154#4:181\n154#4:182\n154#4:183\n154#4:184\n154#4:185\n78#5,2:150\n80#5:180\n84#5:196\n79#6,11:152\n92#6:195\n79#6,11:202\n92#6:234\n456#7,8:163\n464#7,3:177\n467#7,3:192\n456#7,8:213\n464#7,3:227\n467#7,3:231\n3737#8,6:171\n3737#8,6:221\n88#9,5:197\n93#9:230\n97#9:235\n76#10:236\n109#10,2:237\n81#11:239\n107#11,2:240\n*S KotlinDebug\n*F\n+ 1 PocketTripScreen.kt\ncom/cgs/atvobserver/ui/screens/PocketTripScreenKt\n*L\n36#1:136,6\n38#1:143,6\n106#1:186,6\n37#1:142\n73#1:149\n77#1:181\n83#1:182\n84#1:183\n111#1:184\n112#1:185\n69#1:150,2\n69#1:180\n69#1:196\n69#1:152,11\n69#1:195\n121#1:202,11\n121#1:234\n69#1:163,8\n69#1:177,3\n69#1:192,3\n121#1:213,8\n121#1:227,3\n121#1:231,3\n69#1:171,6\n121#1:221,6\n121#1:197,5\n121#1:230\n121#1:235\n36#1:236\n36#1:237,2\n38#1:239\n38#1:240,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0003\u00a2\u0006\u0002\u0010\u0005\u001a\u00b1\u0001\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2`\u0010\u0012\u001a\\\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00010\u00132\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001cH\u0007\u00a2\u0006\u0002\u0010\u001d\u001a\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0017H\u0002\u00a8\u0006 \u00b2\u0006\n\u0010!\u001a\u00020\u0017X\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\"\u001a\u0004\u0018\u00010#X\u008a\u008e\u0002"
    }
    d2 = {
        "PocketStatRow",
        "",
        "label",
        "",
        "value",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V",
        "PocketTripScreen",
        "activeVehicle",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        "tankCapacityL",
        "",
        "gpsData",
        "Lcom/cgs/atvobserver/location/GpsData;",
        "audioData",
        "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
        "aiOutput",
        "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
        "temperatureCelsius",
        "onEndRide",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "distanceKm",
        "",
        "durationSec",
        "fuelUsedL",
        "vehicleType",
        "onBackToMenu",
        "Lkotlin/Function0;",
        "(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "formatDuration",
        "seconds",
        "app_debug",
        "rideSeconds",
        "tts",
        "Landroid/speech/tts/TextToSpeech;"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final PocketStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 73
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v13, p3

    const v1, -0xbca9ae9

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(PocketStatRow)120@5309L275:PocketTripScreen.kt#xkugs2"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, v13, 0xe

    if-nez v3, :cond_1

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_3

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    :cond_3
    move v12, v2

    .end local v2    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit8 v2, v12, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 128
    :cond_4
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v70, v12

    move-object/from16 v71, v14

    goto/16 :goto_5

    .line 120
    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "com.cgs.atvobserver.ui.screens.PocketStatRow (PocketTripScreen.kt:119)"

    invoke-static {v1, v12, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 122
    :cond_6
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 123
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 121
    move-object v11, v2

    .local v11, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v2, 0x36

    move/from16 v50, v2

    .local v50, "$changed$iv":I
    move-object/from16 v51, v1

    .local v51, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/16 v52, 0x0

    .local v52, "$i$f$Row":I
    const v1, 0x2952b718

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 197
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    .line 200
    .local v9, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v1, v50, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v50, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    invoke-static {v11, v9, v14, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v1, v50, 0x3

    and-int/lit8 v1, v1, 0x70

    .line 201
    move/from16 v53, v1

    .local v53, "$changed$iv$iv":I
    const/16 v54, 0x0

    .local v54, "$i$f$Layout":I
    const v1, -0x4ee9b9da

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x0

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v55

    .line 203
    .local v55, "compositeKeyHash$iv$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 205
    .local v8, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    .line 212
    invoke-static/range {v51 .. v51}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    shl-int/lit8 v3, v53, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x6

    .line 204
    move-object v7, v1

    .local v7, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v6, v2

    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v56, v3

    .local v56, "$changed$iv$iv$iv":I
    const/16 v57, 0x0

    .line 213
    .local v57, "$i$f$ReusableComposeNode":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 214
    :cond_7
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 215
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 216
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 218
    :cond_8
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 220
    :goto_3
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 207
    .local v2, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 210
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v4, 0x0

    .line 221
    .local v4, "$i$f$set-impl":I
    move-object v5, v1

    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 222
    .local v16, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move/from16 p2, v2

    .end local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .local p2, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    .end local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :cond_9
    move/from16 p2, v2

    .line 223
    .end local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :goto_4
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 224
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 226
    :cond_a
    nop

    .line 221
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 226
    nop

    .line 211
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v4    # "$i$f$set-impl":I
    nop

    .line 220
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local p2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 227
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v56, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v14, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const v0, 0x7ab4aae9

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 229
    shr-int/lit8 v0, v56, 0x9

    and-int/lit8 v58, v0, 0xe

    .local v58, "$changed$iv":I
    move-object v0, v14

    .local v0, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v59, 0x0

    .line 230
    .local v59, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v1, -0x1378c42b

    const-string v2, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v50, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v60, v2, 0x6

    .local v60, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$PocketStatRow_u24lambda_u248":Landroidx/compose/foundation/layout/RowScope;
    move-object v2, v0

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v46, v2

    move-object/from16 v21, v2

    move-object/from16 v61, v1

    .end local v1    # "$this$PocketStatRow_u24lambda_u248":Landroidx/compose/foundation/layout/RowScope;
    .local v61, "$this$PocketStatRow_u24lambda_u248":Landroidx/compose/foundation/layout/RowScope;
    const/16 v62, 0x0

    .line 125
    .local v62, "$i$a$-Row-PocketTripScreenKt$PocketStatRow$1":I
    const v1, 0x1601ce1

    const-string v3, "C124@5431L55,125@5495L83:PocketTripScreen.kt#xkugs2"

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v25, 0xd

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v16

    move-object/from16 v63, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v63, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v2, v16

    and-int/lit8 v1, v12, 0xe

    or-int/lit16 v1, v1, 0xd80

    move/from16 v22, v1

    const/16 v23, 0x0

    const v24, 0x1fff2

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object/from16 v64, v6

    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v64, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v6, v16

    move-object/from16 v65, v7

    .end local v7    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v65, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v7, v16

    move-object/from16 v66, v8

    .end local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v66, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v8, v16

    const-wide/16 v16, 0x0

    move-object/from16 v67, v9

    move-object/from16 v68, v10

    .end local v9    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v67, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v68, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-wide/from16 v9, v16

    const/16 v16, 0x0

    move-object/from16 v69, v11

    .end local v11    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v69, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    move-object/from16 v11, v16

    move/from16 v70, v12

    .end local v12    # "$dirty":I
    .local v70, "$dirty":I
    move-object/from16 v12, v16

    const-wide/16 v16, 0x0

    move-object/from16 v71, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v71, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v72, v0

    .end local v0    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v72, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v0, p0

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 126
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v29

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v32

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v27

    shr-int/lit8 v0, v70, 0x3

    and-int/lit8 v0, v0, 0xe

    const v1, 0x30d80

    or-int v47, v0, v1

    const/16 v48, 0x0

    const v49, 0x1ffd2

    const/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v25, p1

    invoke-static/range {v25 .. v49}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 125
    invoke-static/range {v63 .. v63}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 127
    nop

    .line 230
    .end local v60    # "$changed":I
    .end local v61    # "$this$PocketStatRow_u24lambda_u248":Landroidx/compose/foundation/layout/RowScope;
    .end local v62    # "$i$a$-Row-PocketTripScreenKt$PocketStatRow$1":I
    .end local v63    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v72 .. v72}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 229
    .end local v58    # "$changed$iv":I
    .end local v59    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v72    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 231
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 232
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 233
    nop

    .end local v56    # "$changed$iv$iv$iv":I
    .end local v57    # "$i$f$ReusableComposeNode":I
    .end local v64    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v65    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 234
    nop

    .end local v53    # "$changed$iv$iv":I
    .end local v54    # "$i$f$Layout":I
    .end local v55    # "compositeKeyHash$iv$iv":I
    .end local v66    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 235
    nop

    .end local v50    # "$changed$iv":I
    .end local v51    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v52    # "$i$f$Row":I
    .end local v67    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v68    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v69    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 128
    :cond_b
    :goto_5
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketStatRow$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketStatRow$2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_6

    :cond_c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    :goto_6
    return-void
.end method

.method public static final PocketTripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 107
    .param p0, "activeVehicle"    # Lcom/cgs/atvobserver/data/model/VehicleType;
    .param p1, "tankCapacityL"    # D
    .param p3, "gpsData"    # Lcom/cgs/atvobserver/location/GpsData;
    .param p4, "audioData"    # Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .param p5, "aiOutput"    # Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .param p6, "temperatureCelsius"    # D
    .param p8, "onEndRide"    # Lkotlin/jvm/functions/Function4;
    .param p9, "onBackToMenu"    # Lkotlin/jvm/functions/Function0;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "D",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            "D",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p8

    move-object/from16 v12, p9

    move/from16 v11, p11

    move/from16 v10, p12

    const-string v0, "activeVehicle"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gpsData"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioData"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEndRide"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackToMenu"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const v0, -0x231e54c6

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(PocketTripScreen)P(!1,6,3,2!1,7,5)35@1337L35,36@1404L7,37@1427L48,39@1481L495,55@2039L551,68@2596L2635:PocketTripScreen.kt#xkugs2"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0xe

    if-nez v2, :cond_2

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v10, 0x4

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x180

    goto :goto_3

    :cond_3
    and-int/lit16 v2, v11, 0x380

    if-nez v2, :cond_5

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    const v2, 0xe000

    and-int/2addr v2, v11

    if-nez v2, :cond_8

    and-int/lit8 v2, v10, 0x10

    if-nez v2, :cond_6

    move-object/from16 v2, p5

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x4000

    goto :goto_4

    :cond_6
    move-object/from16 v2, p5

    :cond_7
    const/16 v4, 0x2000

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v2, p5

    :goto_5
    and-int/lit8 v4, v10, 0x40

    const/high16 v16, 0x380000

    if-eqz v4, :cond_9

    const/high16 v4, 0x180000

    :goto_6
    or-int/2addr v1, v4

    goto :goto_7

    :cond_9
    and-int v4, v11, v16

    if-nez v4, :cond_b

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x100000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x80000

    goto :goto_6

    :cond_b
    :goto_7
    and-int/lit16 v4, v10, 0x80

    const/high16 v17, 0x1c00000

    if-eqz v4, :cond_c

    const/high16 v4, 0xc00000

    :goto_8
    or-int/2addr v1, v4

    goto :goto_9

    :cond_c
    and-int v4, v11, v17

    if-nez v4, :cond_e

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/high16 v4, 0x800000

    goto :goto_8

    :cond_d
    const/high16 v4, 0x400000

    goto :goto_8

    :cond_e
    :goto_9
    const v4, 0x168a28b

    and-int/2addr v4, v1

    const v5, 0x482082

    if-ne v4, v5, :cond_10

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_a

    .line 117
    :cond_f
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v19, p1

    move/from16 v51, v1

    move-object/from16 v16, v2

    goto/16 :goto_19

    .line 35
    :cond_10
    :goto_a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, v11, 0x1

    const v5, -0xe001

    if-eqz v4, :cond_13

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_b

    .line 31
    :cond_11
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v4, v10, 0x10

    if-eqz v4, :cond_12

    and-int/2addr v1, v5

    move-wide/from16 v19, p1

    move v4, v1

    move-object v5, v2

    goto :goto_d

    :cond_12
    move-wide/from16 v19, p1

    move v4, v1

    move-object v5, v2

    goto :goto_d

    .line 35
    :cond_13
    :goto_b
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_14

    .line 28
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .end local p1    # "tankCapacityL":D
    .local v19, "tankCapacityL":D
    goto :goto_c

    .line 35
    .end local v19    # "tankCapacityL":D
    .restart local p1    # "tankCapacityL":D
    :cond_14
    move-wide/from16 v19, p1

    .line 28
    .end local p1    # "tankCapacityL":D
    .restart local v19    # "tankCapacityL":D
    :goto_c
    and-int/lit8 v4, v10, 0x10

    if-eqz v4, :cond_15

    .line 31
    new-instance v4, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-object/from16 v21, v4

    const v53, 0x7ffffff

    const/16 v54, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-direct/range {v21 .. v54}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;-><init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v4

    .end local p5    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .local v2, "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    and-int/2addr v1, v5

    move v4, v1

    move-object v5, v2

    goto :goto_d

    .line 28
    .end local v2    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .restart local p5    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    :cond_15
    move v4, v1

    move-object v5, v2

    .line 31
    .end local v1    # "$dirty":I
    .end local p5    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .local v4, "$dirty":I
    .local v5, "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    :goto_d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 35
    const/4 v1, -0x1

    const-string v2, "com.cgs.atvobserver.ui.screens.PocketTripScreen (PocketTripScreen.kt:34)"

    invoke-static {v0, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    const v0, 0x295a572a

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):PocketTripScreen.kt#9igjgp"

    invoke-static {v7, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 36
    move-object v0, v7

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    move/from16 v21, v1

    .local v21, "invalid$iv":Z
    const/16 v22, 0x0

    .line 136
    .local v22, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 137
    .local v24, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_17

    .line 138
    const/4 v8, 0x0

    .line 36
    .local v8, "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$rideSeconds$2":I
    const-wide/16 v27, 0x0

    invoke-static/range {v27 .. v28}, Landroidx/compose/runtime/SnapshotLongStateKt;->mutableLongStateOf(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object v8

    .line 138
    .end local v8    # "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$rideSeconds$2":I
    nop

    .line 139
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    nop

    .end local v8    # "value$iv":Ljava/lang/Object;
    goto :goto_e

    .line 141
    :cond_17
    move-object v8, v6

    .line 137
    :goto_e
    nop

    .line 136
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 36
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "invalid$iv":Z
    .end local v22    # "$i$f$cache":I
    check-cast v8, Landroidx/compose/runtime/MutableLongState;

    .local v8, "rideSeconds$delegate":Landroidx/compose/runtime/MutableLongState;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 37
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    const/16 v21, 0x0

    .line 142
    .local v21, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v7, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 37
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v6    # "$changed$iv":I
    .end local v21    # "$i$f$getCurrent":I
    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    .local v6, "context":Landroid/content/Context;
    const v0, 0x295a6277

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    move v0, v1

    .local v0, "invalid$iv":Z
    move-object v3, v7

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 143
    .local v21, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 144
    .restart local v24    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v9, 0x0

    if-ne v1, v0, :cond_18

    .line 145
    const/4 v0, 0x0

    .line 38
    .local v0, "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$tts$2":I
    move/from16 p5, v0

    const/4 v0, 0x2

    .end local v0    # "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$tts$2":I
    .local p5, "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$tts$2":I
    invoke-static {v9, v9, v0, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 145
    .end local p5    # "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$tts$2":I
    nop

    .line 146
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 147
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_f

    .line 148
    :cond_18
    move-object v0, v1

    .line 144
    :goto_f
    nop

    .line 143
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 38
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/MutableState;

    .local v3, "tts$delegate":Landroidx/compose/runtime/MutableState;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 40
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;

    invoke-direct {v1, v6, v3}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x6

    invoke-static {v0, v1, v7, v9}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 56
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v21, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object v9, v1

    move-object v1, v6

    move-object/from16 v55, v2

    move-object/from16 v2, p3

    move-object/from16 v24, v3

    .end local v3    # "tts$delegate":Landroidx/compose/runtime/MutableState;
    .local v24, "tts$delegate":Landroidx/compose/runtime/MutableState;
    move-object v3, v5

    move/from16 v56, v4

    .end local v4    # "$dirty":I
    .local v56, "$dirty":I
    move-object v4, v8

    move-object v10, v5

    const/high16 v11, 0x100000

    .end local v5    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .local v10, "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    move-object/from16 v5, v24

    move-object v11, v6

    const/16 v12, 0x100

    .end local v6    # "context":Landroid/content/Context;
    .local v11, "context":Landroid/content/Context;
    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;-><init>(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x46

    invoke-static {v9, v0, v7, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 70
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 71
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v27

    .line 72
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsBackground()J

    move-result-wide v28

    const/16 v31, 0x2

    const/16 v32, 0x0

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 73
    const/16 v3, 0x14

    .local v3, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 149
    .local v4, "$i$f$getDp":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 73
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 74
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    .line 75
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    .line 69
    const/16 v5, 0x1b6

    move v6, v5

    .local v6, "$changed$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$Column":I
    const v5, -0x1cd0f17e

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v7, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 150
    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    shr-int/lit8 v5, v6, 0x3

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v21, v6, 0x3

    and-int/lit8 v21, v21, 0x70

    or-int v5, v5, v21

    invoke-static {v4, v3, v7, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .local v5, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v3, v6, 0x3

    and-int/lit8 v3, v3, 0x70

    .line 151
    move/from16 v21, v3

    .local v21, "$changed$iv$iv":I
    const/16 v22, 0x0

    .local v22, "$i$f$Layout":I
    const v3, -0x4ee9b9da

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 152
    const/4 v3, 0x0

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v23

    .line 153
    .local v23, "compositeKeyHash$iv$iv":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 155
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v25

    .line 162
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v0

    shl-int/lit8 v3, v21, 0x9

    and-int/lit16 v3, v3, 0x1c00

    const/16 v27, 0x6

    or-int/lit8 v3, v3, 0x6

    .line 154
    move/from16 v27, v3

    .local v27, "$changed$iv$iv$iv":I
    move-object/from16 v3, v25

    .local v0, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v25, 0x0

    .line 163
    .local v25, "$i$f$ReusableComposeNode":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 164
    :cond_19
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 165
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 166
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    .line 168
    :cond_1a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 170
    :goto_10
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .local v12, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 157
    .local v29, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v12, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v12, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v30, 0x0

    .line 171
    .local v30, "$i$f$set-impl":I
    move-object/from16 v32, v12

    .local v32, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 172
    .local v33, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v34

    if-nez v34, :cond_1c

    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v35, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_11

    :cond_1b
    move-object/from16 v3, v32

    goto :goto_12

    .end local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_1c
    move-object/from16 v35, v3

    .line 173
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :goto_11
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v32

    .end local v32    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 176
    :goto_12
    nop

    .line 171
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 176
    nop

    .line 161
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v30    # "$i$f$set-impl":I
    nop

    .line 170
    .end local v12    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 177
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v27, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v7, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const v1, 0x7ab4aae9

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 179
    shr-int/lit8 v1, v27, 0x9

    and-int/lit8 v12, v1, 0xe

    .local v12, "$changed$iv":I
    move-object v1, v7

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object v3, v1

    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 180
    .local v29, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v1, 0x107e0298

    const-string v2, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v2, v6, 0x6

    and-int/lit8 v2, v2, 0x70

    const/16 v30, 0x6

    or-int/lit8 v32, v2, 0x6

    .local v32, "$changed":I
    move-object/from16 v30, v1

    check-cast v30, Landroidx/compose/foundation/layout/ColumnScope;

    .local v30, "$this$PocketTripScreen_u24lambda_u247":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v2, v3

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v103, v2

    move-object/from16 v78, v2

    const/16 v33, 0x0

    .line 77
    .local v33, "$i$a$-Column-PocketTripScreenKt$PocketTripScreen$3":I
    const v1, 0x52a6febe

    move-object/from16 v48, v0

    .end local v0    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v48, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v0, "C76@2858L41,77@2908L95,78@3012L112,81@3174L39,80@3134L1629,109@4966L37,105@4803L125,104@4773L452:PocketTripScreen.kt#xkugs2"

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0xa

    .local v1, "$this$dp$iv":I
    const/16 v36, 0x0

    .line 181
    .local v36, "$i$f$getDp":I
    move-object/from16 v49, v3

    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v49, "$composer$iv":Landroidx/compose/runtime/Composer;
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 77
    .end local v1    # "$this$dp$iv":I
    .end local v36    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 78
    const/16 v0, 0x18

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v61

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v64

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v59

    const/16 v80, 0x0

    const v81, 0x1ffd2

    const-string v57, "\ud83d\udc5d POCKET MODE ACTIVE"

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

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/cgs/atvobserver/data/model/VehicleType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | Hands-Free Background Logging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v82

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v86

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v84

    const/16 v105, 0x0

    const v106, 0x1fff2

    const/16 v83, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const-wide/16 v91, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const-wide/16 v95, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v104, 0xd80

    invoke-static/range {v82 .. v106}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 82
    sget-object v36, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v37

    sget v1, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/2addr v1, v0

    const/4 v3, 0x6

    or-int/lit8 v46, v1, 0x6

    const/16 v47, 0xe

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    move-object/from16 v45, v2

    invoke-virtual/range {v36 .. v47}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v38

    .line 83
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v50, v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v50, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v1, v3, v4, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/16 v31, 0x0

    .line 182
    .local v31, "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 83
    .end local v0    # "$this$dp$iv":I
    .end local v31    # "$i$f$getDp":I
    move-object/from16 v51, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v51, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v1, v3, v0, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v36

    .line 84
    const/16 v0, 0xe

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 183
    .local v1, "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 84
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    .line 83
    nop

    .line 84
    move-object/from16 v37, v0

    check-cast v37, Landroidx/compose/ui/graphics/Shape;

    .line 82
    nop

    .line 85
    new-instance v0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;

    invoke-direct {v0, v11, v14, v10, v8}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$1;-><init>(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroidx/compose/runtime/MutableLongState;)V

    const v1, 0x2cf11e52

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v41, v0

    check-cast v41, Lkotlin/jvm/functions/Function3;

    .line 81
    const/16 v39, 0x0

    const/16 v40, 0x0

    const v43, 0x30006

    const/16 v44, 0x18

    move-object/from16 v42, v2

    invoke-static/range {v36 .. v44}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 110
    sget-object v36, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsRed()J

    move-result-wide v37

    sget v0, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    const/16 v1, 0xc

    shl-int/2addr v0, v1

    const/4 v1, 0x6

    or-int/lit8 v46, v0, 0x6

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    invoke-virtual/range {v36 .. v47}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v40

    .line 111
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v1, 0x38

    .local v1, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 184
    .local v3, "$i$f$getDp":I
    int-to-float v5, v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 111
    .end local v1    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v37

    .line 112
    const/16 v0, 0xa

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 185
    .local v1, "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 112
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v31

    const v0, 0x1b71a843

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v0, v55

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, v56

    .end local v56    # "$dirty":I
    .local v5, "$dirty":I
    and-int v0, v5, v16

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_1d

    move v1, v4

    goto :goto_13

    :cond_1d
    const/4 v1, 0x0

    :goto_13
    and-int/lit16 v0, v5, 0x380

    const/16 v3, 0x100

    if-ne v0, v3, :cond_1e

    move v0, v4

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    :goto_14
    or-int/2addr v0, v1

    and-int/lit8 v1, v5, 0xe

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1f

    move v1, v4

    goto :goto_15

    :cond_1f
    const/4 v1, 0x0

    :goto_15
    or-int/2addr v0, v1

    and-int v1, v5, v17

    const/high16 v3, 0x800000

    if-ne v1, v3, :cond_20

    move v1, v4

    goto :goto_16

    :cond_20
    const/4 v1, 0x0

    :goto_16
    or-int/2addr v0, v1

    .line 106
    move-object v4, v2

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v0

    .local v16, "invalid$iv":Z
    const/16 v17, 0x0

    .line 186
    .local v17, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 187
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v16, :cond_22

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_21

    goto :goto_17

    .line 191
    :cond_21
    move-object/from16 v52, v2

    move-object/from16 v36, v3

    move/from16 p1, v6

    move-object/from16 v34, v48

    move-object/from16 v53, v51

    move-object v6, v4

    move/from16 v51, v5

    goto :goto_18

    .line 188
    :cond_22
    :goto_17
    const/16 v26, 0x0

    .line 106
    .local v26, "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$3$2":I
    new-instance v28, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;

    move-object/from16 v34, v48

    .end local v48    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v34, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v0, v28

    move-object/from16 v1, p8

    move-object/from16 v52, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v52, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v2, p3

    move-object/from16 v36, v3

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local v36, "it$iv":Ljava/lang/Object;
    move-object/from16 v3, p0

    move/from16 p1, v6

    move-object v6, v4

    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local p1, "$changed$iv":I
    move-object/from16 v4, p9

    move-object/from16 v53, v51

    move/from16 v51, v5

    .end local v5    # "$dirty":I
    .local v51, "$dirty":I
    .local v53, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$3$2$1;-><init>(Lkotlin/jvm/functions/Function4;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableLongState;)V

    check-cast v28, Lkotlin/jvm/functions/Function0;

    .line 188
    .end local v26    # "$i$a$-cache-PocketTripScreenKt$PocketTripScreen$3$2":I
    move-object/from16 v3, v28

    .line 189
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 190
    nop

    .line 187
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_18
    nop

    .line 186
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v36    # "it$iv":Ljava/lang/Object;
    nop

    .line 106
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv":Z
    .end local v17    # "$i$f$cache":I
    move-object/from16 v36, v3

    check-cast v36, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {v52 .. v52}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 111
    nop

    .line 112
    move-object/from16 v39, v31

    check-cast v39, Landroidx/compose/ui/graphics/Shape;

    .line 110
    sget-object v0, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$PocketTripScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$PocketTripScreenKt;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$PocketTripScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v45

    .line 105
    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v47, 0x30000030

    const/16 v48, 0x1e4

    move-object/from16 v46, v52

    invoke-static/range {v36 .. v48}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 77
    invoke-static/range {v52 .. v52}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 116
    nop

    .line 180
    .end local v30    # "$this$PocketTripScreen_u24lambda_u247":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v32    # "$changed":I
    .end local v33    # "$i$a$-Column-PocketTripScreenKt$PocketTripScreen$3":I
    .end local v52    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v49 .. v49}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 179
    .end local v12    # "$changed$iv":I
    .end local v29    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v49    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 192
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 193
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 194
    nop

    .end local v25    # "$i$f$ReusableComposeNode":I
    .end local v27    # "$changed$iv$iv$iv":I
    .end local v34    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 195
    nop

    .end local v21    # "$changed$iv$iv":I
    .end local v22    # "$i$f$Layout":I
    .end local v23    # "compositeKeyHash$iv$iv":I
    .end local v50    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 196
    nop

    .end local v9    # "$i$f$Column":I
    .end local v53    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p1    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 117
    .end local v8    # "rideSeconds$delegate":Landroidx/compose/runtime/MutableLongState;
    .end local v11    # "context":Landroid/content/Context;
    .end local v24    # "tts$delegate":Landroidx/compose/runtime/MutableState;
    :cond_23
    move-object/from16 v16, v10

    .end local v10    # "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .local v16, "aiOutput":Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    :goto_19
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_24

    new-instance v17, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide/from16 v2, v19

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v16

    move-object/from16 v18, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object v13, v12

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$4;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1a

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_24
    move-object/from16 v18, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1a
    return-void
.end method

.method private static final PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J
    .locals 4
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;

    .line 36
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/LongState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/LongState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 236
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/LongState;->getLongValue()J

    move-result-wide v0

    .line 36
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/LongState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return-wide v0
.end method

.method private static final PocketTripScreen$lambda$2(Landroidx/compose/runtime/MutableLongState;J)V
    .locals 4
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;
    .param p1, "value"    # J

    .line 36
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableLongState;
    const/4 v3, 0x0

    .line 237
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    .line 238
    nop

    .line 36
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableLongState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final PocketTripScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;
    .locals 4
    .param p0, "$tts$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;)",
            "Landroid/speech/tts/TextToSpeech;"
        }
    .end annotation

    .line 38
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 239
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroid/speech/tts/TextToSpeech;

    .line 38
    return-object v0
.end method

.method private static final PocketTripScreen$lambda$5(Landroidx/compose/runtime/MutableState;Landroid/speech/tts/TextToSpeech;)V
    .locals 4
    .param p0, "$tts$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroid/speech/tts/TextToSpeech;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;",
            "Landroid/speech/tts/TextToSpeech;",
            ")V"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 241
    nop

    .line 38
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public static final synthetic access$PocketStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketStatRow(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J
    .locals 2
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;

    .line 1
    invoke-static {p0}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$PocketTripScreen$lambda$2(Landroidx/compose/runtime/MutableLongState;J)V
    .locals 0
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;
    .param p1, "value"    # J

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen$lambda$2(Landroidx/compose/runtime/MutableLongState;J)V

    return-void
.end method

.method public static final synthetic access$PocketTripScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "$tts$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$PocketTripScreen$lambda$5(Landroidx/compose/runtime/MutableState;Landroid/speech/tts/TextToSpeech;)V
    .locals 0
    .param p0, "$tts$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroid/speech/tts/TextToSpeech;

    .line 1
    invoke-static {p0, p1}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen$lambda$5(Landroidx/compose/runtime/MutableState;Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method

.method public static final synthetic access$formatDuration(J)Ljava/lang/String;
    .locals 1
    .param p0, "seconds"    # J

    .line 1
    invoke-static {p0, p1}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final formatDuration(J)Ljava/lang/String;
    .locals 7
    .param p0, "seconds"    # J

    .line 131
    const/16 v0, 0x3c

    int-to-long v0, v0

    div-long v2, p0, v0

    .line 132
    .local v2, "mins":J
    rem-long v0, p0, v0

    .line 133
    .local v0, "secs":J
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02d:%02d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method
