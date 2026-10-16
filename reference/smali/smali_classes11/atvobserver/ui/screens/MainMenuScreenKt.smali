.class public final Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;
.super Ljava/lang/Object;
.source "MainMenuScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainMenuScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainMenuScreen.kt\ncom/cgs/atvobserver/ui/screens/MainMenuScreenKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 9 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,269:1\n1#2:270\n154#3:271\n154#3:303\n154#3:339\n154#3:340\n154#3:346\n154#3:422\n154#3:457\n154#3:458\n154#3:459\n154#3:460\n154#3:461\n154#3:462\n154#3:463\n154#3:464\n154#3:465\n154#3:482\n154#3:483\n78#4,2:272\n80#4:302\n74#4,6:304\n80#4:338\n84#4:345\n75#4,5:347\n80#4:380\n84#4:421\n84#4:481\n79#5,11:274\n79#5,11:310\n92#5:344\n79#5,11:352\n92#5:420\n79#5,11:428\n92#5:475\n92#5:480\n456#6,8:285\n464#6,3:299\n456#6,8:321\n464#6,3:335\n467#6,3:341\n456#6,8:363\n464#6,3:377\n467#6,3:417\n456#6,8:439\n464#6,3:453\n467#6,3:472\n467#6,3:477\n3737#7,6:293\n3737#7,6:329\n3737#7,6:371\n3737#7,6:447\n1116#8,6:381\n1116#8,6:387\n1116#8,6:393\n1116#8,6:399\n1116#8,6:405\n1116#8,6:411\n1116#8,6:466\n88#9,5:423\n93#9:456\n97#9:476\n*S KotlinDebug\n*F\n+ 1 MainMenuScreen.kt\ncom/cgs/atvobserver/ui/screens/MainMenuScreenKt\n*L\n39#1:271\n47#1:303\n61#1:339\n66#1:340\n154#1:346\n203#1:422\n208#1:457\n209#1:458\n210#1:459\n218#1:460\n219#1:461\n220#1:462\n228#1:463\n229#1:464\n230#1:465\n249#1:482\n252#1:483\n35#1:272,2\n35#1:302\n45#1:304,6\n45#1:338\n45#1:345\n152#1:347,5\n152#1:380\n152#1:421\n35#1:481\n35#1:274,11\n45#1:310,11\n45#1:344\n152#1:352,11\n152#1:420\n201#1:428,11\n201#1:475\n35#1:480\n35#1:285,8\n35#1:299,3\n45#1:321,8\n45#1:335,3\n45#1:341,3\n152#1:363,8\n152#1:377,3\n152#1:417,3\n201#1:439,8\n201#1:453,3\n201#1:472,3\n35#1:477,3\n35#1:293,6\n45#1:329,6\n152#1:371,6\n201#1:447,6\n160#1:381,6\n167#1:387,6\n174#1:393,6\n181#1:399,6\n189#1:405,6\n196#1:411,6\n226#1:466,6\n201#1:423,5\n201#1:456\n201#1:476\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001ag\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\tH\u0007\u00a2\u0006\u0002\u0010\u000c\u001aB\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\tH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "MainMenuScreen",
        "",
        "activeVehicle",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        "onSwitchVehicle",
        "Lkotlin/Function1;",
        "onSelectMode",
        "Lcom/cgs/atvobserver/data/model/RideMode;",
        "onOpenLogs",
        "Lkotlin/Function0;",
        "onOpenMaintenance",
        "onOpenConfig",
        "(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "ModeButton",
        "title",
        "",
        "subtitle",
        "backgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "textColor",
        "onClick",
        "ModeButton-t6yy7ic",
        "(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "app_debug"
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
.method public static final MainMenuScreen(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 109
    .param p0, "activeVehicle"    # Lcom/cgs/atvobserver/data/model/VehicleType;
    .param p1, "onSwitchVehicle"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onSelectMode"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onOpenLogs"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onOpenMaintenance"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onOpenConfig"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cgs/atvobserver/data/model/RideMode;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v7, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v4, p7

    const-string v0, "activeVehicle"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSwitchVehicle"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelectMode"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpenLogs"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpenMaintenance"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpenConfig"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const v0, 0x6a5762d2

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(MainMenuScreen)P(!1,5,4,2,3)39@1412L21,34@1254L8918:MainMenuScreen.kt#xkugs2"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, v4, 0xe

    if-nez v2, :cond_1

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v4, 0x70

    if-nez v2, :cond_3

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v4, 0x380

    if-nez v2, :cond_5

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v4, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    const v2, 0xe000

    and-int/2addr v2, v4

    if-nez v2, :cond_9

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_4

    :cond_8
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x70000

    and-int/2addr v2, v4

    if-nez v2, :cond_b

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v1, v2

    :cond_b
    move v2, v1

    .end local v1    # "$dirty":I
    .local v2, "$dirty":I
    const v1, 0x5b6db

    and-int/2addr v1, v2

    const v12, 0x12492

    if-ne v1, v12, :cond_d

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    .line 236
    :cond_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v71, v3

    goto/16 :goto_29

    .line 30
    :cond_d
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    const-string v12, "com.cgs.atvobserver.ui.screens.MainMenuScreen (MainMenuScreen.kt:29)"

    invoke-static {v0, v2, v1, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 31
    :cond_e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "Device"

    .line 32
    .local v0, "deviceModel":Ljava/lang/String;
    :cond_f
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_12

    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_10

    move v12, v14

    goto :goto_7

    :cond_10
    move v12, v15

    :goto_7
    if-eqz v12, :cond_11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 270
    nop

    .local v13, "it":C
    const/16 v16, 0x0

    .line 32
    .local v16, "$i$a$-replaceFirstCharWithCharSequence-MainMenuScreenKt$MainMenuScreen$deviceBrand$1":I
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const-string v15, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "toUpperCase(...)"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v13    # "it":C
    .end local v16    # "$i$a$-replaceFirstCharWithCharSequence-MainMenuScreenKt$MainMenuScreen$deviceBrand$1":I
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "substring(...)"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_11
    if-nez v1, :cond_13

    :cond_12
    const-string v1, ""

    .line 33
    .local v1, "deviceBrand":Ljava/lang/String;
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " OBSERVER"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "toUpperCase(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v11

    .line 36
    .local v24, "dynamicTitle":Ljava/lang/String;
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v11, Landroidx/compose/ui/Modifier;

    .line 37
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v14, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 38
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsBackground()J

    move-result-wide v19

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 39
    const/16 v15, 0xa

    .local v15, "$this$dp$iv":I
    const/16 v16, 0x0

    .line 271
    .local v16, "$i$f$getDp":I
    int-to-float v12, v15

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    .line 39
    .end local v15    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v25

    .line 40
    const/4 v11, 0x0

    invoke-static {v11, v3, v11, v14}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v26

    const/16 v30, 0xe

    const/16 v31, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/ScrollKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 41
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v12

    .line 42
    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v15

    .line 35
    const/16 v16, 0x1b0

    move/from16 v49, v16

    .local v49, "$changed$iv":I
    const/16 v50, 0x0

    .local v50, "$i$f$Column":I
    const v13, -0x1cd0f17e

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v3, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 272
    check-cast v15, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    shr-int/lit8 v20, v49, 0x3

    and-int/lit8 v20, v20, 0xe

    shr-int/lit8 v21, v49, 0x3

    and-int/lit8 v21, v21, 0x70

    or-int v13, v20, v21

    invoke-static {v15, v12, v3, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .local v15, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v49, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 273
    move/from16 v51, v12

    .local v51, "$changed$iv$iv":I
    const/16 v52, 0x0

    .local v52, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 274
    const/4 v12, 0x0

    invoke-static {v3, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v53

    .line 275
    .local v53, "compositeKeyHash$iv$iv":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 277
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    .line 284
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v11

    move-object/from16 v54, v0

    .end local v0    # "deviceModel":Ljava/lang/String;
    .local v54, "deviceModel":Ljava/lang/String;
    shl-int/lit8 v0, v51, 0x9

    and-int/lit16 v0, v0, 0x1c00

    move-object/from16 v55, v1

    .end local v1    # "deviceBrand":Ljava/lang/String;
    .local v55, "deviceBrand":Ljava/lang/String;
    const/4 v1, 0x6

    or-int/2addr v0, v1

    .line 276
    nop

    .local v0, "$changed$iv$iv$iv":I
    .local v11, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v56, v21

    .local v56, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v57, 0x0

    .line 285
    .local v57, "$i$f$ReusableComposeNode":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 286
    :cond_14
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 287
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 288
    move-object/from16 v1, v56

    .end local v56    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 290
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v56    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_15
    move-object/from16 v1, v56

    .end local v56    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 292
    :goto_8
    move-object/from16 v56, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v56    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 279
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v15, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 282
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 293
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v1

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 294
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_17

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_9

    :cond_16
    move-object/from16 v7, v25

    goto :goto_a

    .line 295
    :cond_17
    :goto_9
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 296
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 298
    :goto_a
    nop

    .line 293
    .end local v7    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 298
    nop

    .line 283
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 292
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 299
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v1, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const v1, 0x7ab4aae9

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 301
    shr-int/lit8 v4, v0, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v6, v3

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 302
    .local v7, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v1, 0x107e0298

    move/from16 v58, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v58, "$changed$iv$iv$iv":I
    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v6, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v23, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v25, v49, 0x6

    and-int/lit8 v25, v25, 0x70

    const/16 v26, 0x6

    or-int/lit8 v59, v25, 0x6

    .local v59, "$changed":I
    move-object/from16 v60, v23

    check-cast v60, Landroidx/compose/foundation/layout/ColumnScope;

    .local v60, "$this$MainMenuScreen_u24lambda_u2411":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v61, v6

    .local v61, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v62, 0x0

    .line 45
    .local v62, "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1":I
    const v1, 0x4d6af39

    move/from16 v63, v4

    .end local v4    # "$changed$iv":I
    .local v63, "$changed$iv":I
    const-string v4, "C44@1615L5168,151@6853L1690,200@8609L1557:MainMenuScreen.kt#xkugs2"

    move/from16 v64, v7

    move-object/from16 v7, v61

    .end local v61    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    .local v64, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    invoke-static {v7, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 46
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 47
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v25, v4

    check-cast v25, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x2

    .local v4, "$this$dp$iv":I
    const/16 v26, 0x0

    .line 303
    .local v26, "$i$f$getDp":I
    move-object/from16 v61, v11

    .end local v11    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v61, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    int-to-float v11, v4

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v27

    .line 47
    .end local v4    # "$this$dp$iv":I
    .end local v26    # "$i$f$getDp":I
    const/16 v30, 0xd

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 45
    const/16 v11, 0x186

    .local v11, "$changed$iv":I
    const/16 v65, 0x0

    move-object/from16 v66, v12

    const v12, -0x1cd0f17e

    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v65, "$i$f$Column":I
    .local v66, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 304
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v12

    .line 308
    .local v12, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v25, v11, 0x3

    and-int/lit8 v25, v25, 0xe

    shr-int/lit8 v26, v11, 0x3

    and-int/lit8 v26, v26, 0x70

    move-object/from16 v67, v15

    .end local v15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v67, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    or-int v15, v25, v26

    invoke-static {v12, v1, v7, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .local v1, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v15, v11, 0x3

    and-int/lit8 v15, v15, 0x70

    .line 309
    nop

    .local v15, "$changed$iv$iv":I
    const/16 v68, 0x0

    move-object/from16 v69, v12

    const v12, -0x4ee9b9da

    .end local v12    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v68, "$i$f$Layout":I
    .local v69, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 310
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v70

    .line 311
    .local v70, "compositeKeyHash$iv$iv":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 313
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v25

    .line 320
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v4

    move-object/from16 v71, v3

    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v71, "$composer":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v3, v15, 0x9

    and-int/lit16 v3, v3, 0x1c00

    const/16 v26, 0x6

    or-int/lit8 v3, v3, 0x6

    .line 312
    move-object/from16 v72, v25

    .local v3, "$changed$iv$iv$iv":I
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v72, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v73, 0x0

    .line 321
    .local v73, "$i$f$ReusableComposeNode":I
    move/from16 v74, v15

    .end local v15    # "$changed$iv$iv":I
    .local v74, "$changed$iv$iv":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 322
    :cond_18
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 323
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_19

    .line 324
    move-object/from16 v15, v72

    .end local v72    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v15, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 326
    .end local v15    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v72    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_19
    move-object/from16 v15, v72

    .end local v72    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v15    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 328
    :goto_b
    move-object/from16 v72, v15

    .end local v15    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v72    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .local v15, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 315
    .local v25, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v75, v6

    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v75, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v15, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 316
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v15, v12, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .local v6, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v26, 0x0

    .line 329
    .local v26, "$i$f$set-impl":I
    move-object/from16 v27, v15

    .local v27, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 330
    .local v28, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v29

    if-nez v29, :cond_1b

    move-object/from16 v76, v1

    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v76, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v77, v12

    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v77, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_c

    :cond_1a
    move-object/from16 v12, v27

    goto :goto_d

    .end local v76    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v77    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_1b
    move-object/from16 v76, v1

    move-object/from16 v77, v12

    .line 331
    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v76    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v77    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_c
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v12, v27

    .end local v27    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v12, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 332
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    :goto_d
    nop

    .line 329
    .end local v12    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 334
    nop

    .line 319
    .end local v6    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v26    # "$i$f$set-impl":I
    nop

    .line 328
    .end local v15    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 335
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v6, v3, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v1, v7, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const v1, 0x7ab4aae9

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 337
    shr-int/lit8 v1, v3, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v6, v7

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 338
    .local v12, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v15, 0x107e0298

    invoke-static {v6, v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v15, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v25, v11, 0x6

    and-int/lit8 v25, v25, 0x70

    const/16 v26, 0x6

    or-int/lit8 v78, v25, 0x6

    .local v78, "$changed":I
    check-cast v15, Landroidx/compose/foundation/layout/ColumnScope;

    .local v15, "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v104, v6

    .local v104, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v100, v104

    move-object/from16 v45, v104

    const/16 v105, 0x0

    .line 49
    .local v105, "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1$1":I
    move/from16 v106, v1

    .end local v1    # "$changed$iv":I
    .local v106, "$changed$iv":I
    const v1, 0x6fafba4f

    move/from16 v107, v3

    .end local v3    # "$changed$iv$iv$iv":I
    .local v107, "$changed$iv$iv$iv":I
    const-string v3, "C48@1763L175,54@1951L177,60@2142L40,64@2303L39,63@2259L4514:MainMenuScreen.kt#xkugs2"

    move-object/from16 v108, v4

    move-object/from16 v4, v104

    .end local v104    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v108, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 51
    const/16 v1, 0x11

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v28

    .line 52
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v31

    .line 53
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v26

    .line 50
    nop

    .line 53
    nop

    .line 51
    nop

    .line 52
    nop

    .line 49
    const/16 v25, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v46, 0x30d80

    const/16 v47, 0x0

    const v48, 0x1ffd2

    invoke-static/range {v24 .. v48}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 57
    const/16 v1, 0xa

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v83

    .line 58
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextSecondary()J

    move-result-wide v81

    .line 56
    nop

    .line 58
    nop

    .line 57
    nop

    .line 55
    const-string v79, "Catalin Garage Standard (CGS) v1.1.6-Mk.I (Build 16)"

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

    const/16 v102, 0x0

    const v103, 0x1fff2

    invoke-static/range {v79 .. v103}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 61
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x6

    .local v3, "$this$dp$iv":I
    const/16 v25, 0x0

    .line 339
    .local v25, "$i$f$getDp":I
    move/from16 v37, v11

    .end local v11    # "$changed$iv":I
    .local v37, "$changed$iv":I
    int-to-float v11, v3

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 61
    .end local v3    # "$this$dp$iv":I
    .end local v25    # "$i$f$getDp":I
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v4, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 65
    sget-object v25, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v26

    sget v1, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v1, v1, 0xc

    or-int/lit8 v35, v1, 0x6

    const/16 v36, 0xe

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v34, v4

    invoke-virtual/range {v25 .. v36}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v27

    .line 66
    const/16 v1, 0x8

    .local v1, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 340
    .local v3, "$i$f$getDp":I
    int-to-float v11, v1

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 66
    .end local v1    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    .line 67
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move/from16 v34, v12

    move-object/from16 v35, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    .end local v12    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v15    # "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .local v34, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .local v35, "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    invoke-static {v3, v12, v15, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    .line 66
    move-object/from16 v26, v1

    check-cast v26, Landroidx/compose/ui/graphics/Shape;

    .line 65
    nop

    .line 68
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;

    invoke-direct {v1, v8, v9}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$1$1;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;)V

    const v3, -0x9f2c250

    invoke-static {v4, v3, v15, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lkotlin/jvm/functions/Function3;

    .line 64
    const/16 v28, 0x0

    const/16 v29, 0x0

    const v32, 0x30006

    const/16 v33, 0x18

    move-object/from16 v31, v4

    invoke-static/range {v25 .. v33}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 49
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 149
    nop

    .line 338
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v35    # "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u241":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v78    # "$changed":I
    .end local v105    # "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1$1":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 337
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v34    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v106    # "$changed$iv":I
    nop

    .line 341
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 342
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 343
    nop

    .end local v72    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v73    # "$i$f$ReusableComposeNode":I
    .end local v107    # "$changed$iv$iv$iv":I
    .end local v108    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 344
    nop

    .end local v68    # "$i$f$Layout":I
    .end local v70    # "compositeKeyHash$iv$iv":I
    .end local v74    # "$changed$iv$iv":I
    .end local v77    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 345
    nop

    .line 153
    .end local v37    # "$changed$iv":I
    .end local v65    # "$i$f$Column":I
    .end local v69    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v76    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v4, v6, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 154
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v4, 0x5

    .local v4, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 346
    .local v6, "$i$f$getDp":I
    int-to-float v11, v4

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 154
    .end local v4    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 152
    nop

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v3, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/16 v4, 0x36

    .local v4, "$changed$iv":I
    const/4 v6, 0x0

    const v11, -0x1cd0f17e

    .local v6, "$i$f$Column":I
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 347
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v11

    .line 350
    .local v11, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v12, v4, 0x3

    and-int/lit8 v12, v12, 0xe

    shr-int/lit8 v14, v4, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v12, v14

    invoke-static {v3, v11, v7, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    .local v12, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v4, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 351
    nop

    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    move-object/from16 v22, v3

    const v3, -0x4ee9b9da

    .end local v3    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v15, "$i$f$Layout":I
    .local v22, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 352
    const/4 v3, 0x0

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v25

    .line 353
    .local v25, "compositeKeyHash$iv$iv":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 355
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v26

    .line 362
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v27

    move-object/from16 v28, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v28, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v14, 0x9

    and-int/lit16 v1, v1, 0x1c00

    const/16 v29, 0x6

    or-int/lit8 v1, v1, 0x6

    .line 354
    move-object/from16 v29, v26

    .local v29, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v26, v27

    .local v1, "$changed$iv$iv$iv":I
    .local v26, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v27, 0x0

    .line 363
    .local v27, "$i$f$ReusableComposeNode":I
    move/from16 v30, v6

    .end local v6    # "$i$f$Column":I
    .local v30, "$i$f$Column":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 364
    :cond_1c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 365
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 366
    move-object/from16 v6, v29

    .end local v29    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    .line 368
    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_1d
    move-object/from16 v6, v29

    .end local v29    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 370
    :goto_e
    move-object/from16 v29, v6

    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 357
    .local v31, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v32, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 358
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v32, 0x0

    .line 371
    .local v32, "$i$f$set-impl":I
    move-object/from16 v33, v6

    .local v33, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v34, 0x0

    .line 372
    .local v34, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v35

    if-nez v35, :cond_1f

    move-object/from16 v35, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v35, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_f

    :cond_1e
    move-object/from16 v9, v33

    goto :goto_10

    .end local v35    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_1f
    move-object/from16 v35, v3

    .line 373
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v35    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_f
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v9, v33

    .end local v33    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 374
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 376
    :goto_10
    nop

    .line 371
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v34    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 376
    nop

    .line 361
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v32    # "$i$f$set-impl":I
    nop

    .line 370
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 377
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v6, v1, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v26

    .end local v26    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v8, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8, v3, v7, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const v3, 0x7ab4aae9

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 379
    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v6, v7

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 380
    .local v9, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v26, v1

    const v1, 0x107e0298

    .end local v1    # "$changed$iv$iv$iv":I
    .local v26, "$changed$iv$iv$iv":I
    invoke-static {v6, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v23, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u248":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v23, v6

    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 156
    .local v31, "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1$2":I
    move-object/from16 v32, v0

    .end local v0    # "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u248":Landroidx/compose/foundation/layout/ColumnScope;
    .local v32, "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u248":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x6ffd441e

    move/from16 v33, v1

    .end local v1    # "$changed":I
    .local v33, "$changed":I
    const-string v1, "C159@7185L31,155@6994L236,166@7442L33,162@7244L245,173@7692L37,169@7503L240,180@7942L35,176@7757L234,188@8227L35,183@8005L271,195@8483L36,191@8290L243:MainMenuScreen.kt#xkugs2"

    move/from16 v34, v3

    move-object/from16 v3, v23

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v34, "$changed$iv":I
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 157
    nop

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/cgs/atvobserver/data/model/VehicleType;->getShortName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v4

    .end local v4    # "$changed$iv":I
    .local v23, "$changed$iv":I
    const-string v4, "Dashboard & "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Logging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 159
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v38

    const v0, -0x3e73a17f

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):MainMenuScreen.kt#9igjgp"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v2, 0x380

    const/16 v4, 0x100

    if-ne v1, v4, :cond_20

    const/4 v1, 0x1

    goto :goto_11

    :cond_20
    const/4 v1, 0x0

    .line 160
    :goto_11
    move-object v4, v3

    .local v1, "invalid$iv":Z
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v36, 0x0

    .line 381
    .local v36, "$i$f$cache":I
    move-object/from16 v46, v8

    .end local v8    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v46, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 382
    .local v40, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_22

    sget-object v41, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v42, v1

    .end local v1    # "invalid$iv":Z
    .local v42, "invalid$iv":Z
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_21

    goto :goto_12

    .line 386
    :cond_21
    move-object v1, v8

    goto :goto_13

    .line 382
    .end local v42    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_22
    move/from16 v42, v1

    .line 383
    .end local v1    # "invalid$iv":Z
    .restart local v42    # "invalid$iv":Z
    :goto_12
    const/4 v1, 0x0

    .line 160
    .local v1, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$1":I
    move/from16 v41, v1

    .end local v1    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$1":I
    .local v41, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$1":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$1$1;

    invoke-direct {v1, v10}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 383
    .end local v41    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$1":I
    nop

    .line 384
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 385
    nop

    .line 382
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_13
    nop

    .line 381
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v40    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 160
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$f$cache":I
    .end local v42    # "invalid$iv":Z
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 156
    const-string v36, "TRIP"

    const-wide/16 v40, 0x0

    const/16 v44, 0x186

    const/16 v45, 0x8

    move-object/from16 v43, v3

    invoke-static/range {v36 .. v45}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 164
    nop

    .line 165
    nop

    .line 166
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v38

    const v1, -0x3e73815d

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v2, 0x380

    const/16 v4, 0x100

    if-ne v1, v4, :cond_23

    const/4 v1, 0x1

    goto :goto_14

    :cond_23
    const/4 v1, 0x0

    .line 167
    :goto_14
    move-object v4, v3

    .local v1, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 387
    .local v8, "$i$f$cache":I
    move/from16 v36, v8

    .end local v8    # "$i$f$cache":I
    .restart local v36    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v37, 0x0

    .line 388
    .local v37, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_25

    sget-object v40, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v41, v1

    .end local v1    # "invalid$iv":Z
    .local v41, "invalid$iv":Z
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_24

    goto :goto_15

    .line 392
    :cond_24
    move-object v1, v8

    goto :goto_16

    .line 388
    .end local v41    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_25
    move/from16 v41, v1

    .line 389
    .end local v1    # "invalid$iv":Z
    .restart local v41    # "invalid$iv":Z
    :goto_15
    const/4 v1, 0x0

    .line 167
    .local v1, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$2":I
    move/from16 v40, v1

    .end local v1    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$2":I
    .local v40, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$2":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$2$1;

    invoke-direct {v1, v10}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 389
    .end local v40    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$2":I
    nop

    .line 390
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 391
    nop

    .line 388
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 387
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v37    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 167
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$f$cache":I
    .end local v41    # "invalid$iv":Z
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 163
    const-string v36, "\ud83d\udc5d POCKET MODE"

    const-string v37, "Hands-Free Background Ride & Voice Updates"

    const-wide/16 v40, 0x0

    const/16 v44, 0x1b6

    const/16 v45, 0x8

    move-object/from16 v43, v3

    invoke-static/range {v36 .. v45}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 171
    nop

    .line 172
    nop

    .line 173
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v38

    const v1, -0x3e736219

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v2, 0x380

    const/16 v4, 0x100

    if-ne v1, v4, :cond_26

    const/4 v1, 0x1

    goto :goto_17

    :cond_26
    const/4 v1, 0x0

    .line 174
    :goto_17
    move-object v4, v3

    .local v1, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 393
    .local v8, "$i$f$cache":I
    move/from16 v36, v8

    .end local v8    # "$i$f$cache":I
    .restart local v36    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v37, 0x0

    .line 394
    .restart local v37    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_28

    sget-object v40, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v41, v1

    .end local v1    # "invalid$iv":Z
    .restart local v41    # "invalid$iv":Z
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_27

    goto :goto_18

    .line 398
    :cond_27
    move-object v1, v8

    goto :goto_19

    .line 394
    .end local v41    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_28
    move/from16 v41, v1

    .line 395
    .end local v1    # "invalid$iv":Z
    .restart local v41    # "invalid$iv":Z
    :goto_18
    const/4 v1, 0x0

    .line 174
    .local v1, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$3":I
    move/from16 v40, v1

    .end local v1    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$3":I
    .local v40, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$3":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$3$1;

    invoke-direct {v1, v10}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$3$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 395
    .end local v40    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$3":I
    nop

    .line 396
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 397
    nop

    .line 394
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_19
    nop

    .line 393
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v37    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 174
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$f$cache":I
    .end local v41    # "invalid$iv":Z
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 170
    const-string v36, "TEST TRACK"

    const-string v37, "Isolated Calibration Sessions"

    const-wide/16 v40, 0x0

    const/16 v44, 0x1b6

    const/16 v45, 0x8

    move-object/from16 v43, v3

    invoke-static/range {v36 .. v45}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 178
    nop

    .line 179
    nop

    .line 180
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v38

    const v1, -0x3e7342db

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v2, 0x380

    const/16 v4, 0x100

    if-ne v1, v4, :cond_29

    const/4 v1, 0x1

    goto :goto_1a

    :cond_29
    const/4 v1, 0x0

    .line 181
    :goto_1a
    move-object v4, v3

    .local v1, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 399
    .local v8, "$i$f$cache":I
    move/from16 v36, v8

    .end local v8    # "$i$f$cache":I
    .restart local v36    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v37, 0x0

    .line 400
    .restart local v37    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_2b

    sget-object v40, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v41, v1

    .end local v1    # "invalid$iv":Z
    .restart local v41    # "invalid$iv":Z
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_2a

    goto :goto_1b

    .line 404
    :cond_2a
    move-object v1, v8

    goto :goto_1c

    .line 400
    .end local v41    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_2b
    move/from16 v41, v1

    .line 401
    .end local v1    # "invalid$iv":Z
    .restart local v41    # "invalid$iv":Z
    :goto_1b
    const/4 v1, 0x0

    .line 181
    .local v1, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$4":I
    move/from16 v40, v1

    .end local v1    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$4":I
    .local v40, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$4":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$4$1;

    invoke-direct {v1, v10}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$4$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 401
    .end local v40    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$4":I
    nop

    .line 402
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 403
    nop

    .line 400
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_1c
    nop

    .line 399
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v37    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 181
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$f$cache":I
    .end local v41    # "invalid$iv":Z
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 177
    const-string v36, "APP DIAG"

    const-string v37, "System & Hardware Self-Test"

    const-wide/16 v40, 0x0

    const/16 v44, 0x1b6

    const/16 v45, 0x8

    move-object/from16 v43, v3

    invoke-static/range {v36 .. v45}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 185
    nop

    .line 186
    nop

    .line 187
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v38

    .line 188
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v40

    const v1, -0x3e731f3b

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v2, 0x380

    const/16 v4, 0x100

    if-ne v1, v4, :cond_2c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_2c
    const/4 v1, 0x0

    .line 189
    :goto_1d
    move-object v4, v3

    .local v1, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 405
    .local v8, "$i$f$cache":I
    move/from16 v36, v8

    .end local v8    # "$i$f$cache":I
    .restart local v36    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v37, 0x0

    .line 406
    .restart local v37    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_2e

    sget-object v42, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v43, v1

    .end local v1    # "invalid$iv":Z
    .local v43, "invalid$iv":Z
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_2d

    goto :goto_1e

    .line 410
    :cond_2d
    move-object v1, v8

    goto :goto_1f

    .line 406
    .end local v43    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_2e
    move/from16 v43, v1

    .line 407
    .end local v1    # "invalid$iv":Z
    .restart local v43    # "invalid$iv":Z
    :goto_1e
    const/4 v1, 0x0

    .line 189
    .local v1, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$5":I
    move/from16 v42, v1

    .end local v1    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$5":I
    .local v42, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$5":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$5$1;

    invoke-direct {v1, v10}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$5$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 407
    .end local v42    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$5":I
    nop

    .line 408
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 409
    nop

    .line 406
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_1f
    nop

    .line 405
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v37    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 189
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$f$cache":I
    .end local v43    # "invalid$iv":Z
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 184
    const-string v36, "ATV DIAG"

    const-string v37, "Stationary Live Engine Observer"

    const/16 v44, 0xdb6

    const/16 v45, 0x0

    move-object/from16 v43, v3

    invoke-static/range {v36 .. v45}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 193
    nop

    .line 194
    nop

    .line 195
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v38

    const v1, -0x3e72ff3a

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v1, v2, 0x380

    const/16 v4, 0x100

    if-ne v1, v4, :cond_2f

    const/4 v1, 0x1

    goto :goto_20

    :cond_2f
    const/4 v1, 0x0

    .line 196
    :goto_20
    move-object v4, v3

    .local v1, "invalid$iv":Z
    .restart local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 411
    .local v8, "$i$f$cache":I
    move/from16 p6, v8

    .end local v8    # "$i$f$cache":I
    .local p6, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v36, 0x0

    .line 412
    .local v36, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_31

    sget-object v37, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v40, v1

    .end local v1    # "invalid$iv":Z
    .local v40, "invalid$iv":Z
    invoke-virtual/range {v37 .. v37}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_30

    goto :goto_21

    .line 416
    :cond_30
    move-object v1, v8

    goto :goto_22

    .line 412
    .end local v40    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_31
    move/from16 v40, v1

    .line 413
    .end local v1    # "invalid$iv":Z
    .restart local v40    # "invalid$iv":Z
    :goto_21
    const/4 v1, 0x0

    .line 196
    .local v1, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$6":I
    move/from16 v37, v1

    .end local v1    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$6":I
    .local v37, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$6":I
    new-instance v1, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$6$1;

    invoke-direct {v1, v10}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$2$6$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 413
    .end local v37    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$2$6":I
    nop

    .line 414
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 415
    nop

    .line 412
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_22
    nop

    .line 411
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v36    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 196
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v40    # "invalid$iv":Z
    .end local p6    # "$i$f$cache":I
    move-object/from16 v42, v1

    check-cast v42, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 192
    const-string v36, "CARB TUNE"

    const-string v37, "Carburetor & Idle Tuning Assistant"

    const-wide/16 v40, 0x0

    const/16 v44, 0x1b6

    const/16 v45, 0x8

    move-object/from16 v43, v3

    invoke-static/range {v36 .. v45}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 156
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 198
    nop

    .line 380
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1$2":I
    .end local v32    # "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u248":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v33    # "$changed":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 379
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v34    # "$changed$iv":I
    nop

    .line 417
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 418
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 419
    nop

    .end local v26    # "$changed$iv$iv$iv":I
    .end local v27    # "$i$f$ReusableComposeNode":I
    .end local v29    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v46    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 420
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$Layout":I
    .end local v25    # "compositeKeyHash$iv$iv":I
    .end local v35    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 421
    nop

    .line 202
    .end local v11    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v12    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v22    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v23    # "$changed$iv":I
    .end local v28    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v30    # "$i$f$Column":I
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v4, v6, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 203
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v4, 0x4

    .local v4, "$this$dp$iv":I
    const/4 v8, 0x0

    .line 422
    .local v8, "$i$f$getDp":I
    int-to-float v9, v4

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 203
    .end local v4    # "$this$dp$iv":I
    .end local v8    # "$i$f$getDp":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 201
    nop

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v3, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v4, 0x36

    .local v4, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$Row":I
    const v9, 0x2952b718

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 423
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    .line 426
    .local v9, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v11, v4, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v4, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v3, v9, v7, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .local v15, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v4, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 427
    move/from16 v25, v11

    .local v25, "$changed$iv$iv":I
    const/16 v26, 0x0

    const v11, -0x4ee9b9da

    .local v26, "$i$f$Layout":I
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 428
    const/4 v14, 0x0

    invoke-static {v7, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v27

    .line 429
    .local v27, "compositeKeyHash$iv$iv":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 431
    .local v13, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 438
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    shl-int/lit8 v6, v25, 0x9

    and-int/lit16 v6, v6, 0x1c00

    const/16 v16, 0x6

    or-int/lit8 v6, v6, 0x6

    .line 430
    nop

    .local v6, "$changed$iv$iv$iv":I
    .local v11, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v28, 0x0

    .line 439
    .local v28, "$i$f$ReusableComposeNode":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 440
    :cond_32
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 441
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_33

    .line 442
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    .line 444
    :cond_33
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 446
    :goto_23
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .local v14, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 433
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p6, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p6, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v14, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 434
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v14, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 436
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v18, 0x0

    .line 447
    .local v18, "$i$f$set-impl":I
    move-object/from16 v20, v14

    .local v20, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 448
    .local v22, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v23

    if-nez v23, :cond_35

    move-object/from16 v29, v3

    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v29, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move/from16 v30, v8

    .end local v8    # "$i$f$Row":I
    .local v30, "$i$f$Row":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_24

    :cond_34
    move-object/from16 v8, v20

    goto :goto_25

    .end local v29    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v30    # "$i$f$Row":I
    .restart local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v8    # "$i$f$Row":I
    :cond_35
    move-object/from16 v29, v3

    move/from16 v30, v8

    .line 449
    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v8    # "$i$f$Row":I
    .restart local v29    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v30    # "$i$f$Row":I
    :goto_24
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v8, v20

    .end local v20    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 450
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 452
    :goto_25
    nop

    .line 447
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 452
    nop

    .line 437
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "$i$f$set-impl":I
    nop

    .line 446
    .end local v14    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 453
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v3, v6, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v1, v7, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const v1, 0x7ab4aae9

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 455
    shr-int/lit8 v1, v6, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v3, v7

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 456
    .local v8, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v14, -0x1378c42b

    move/from16 v31, v1

    .end local v1    # "$changed$iv":I
    .local v31, "$changed$iv":I
    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v3, v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v14, v4, 0x6

    and-int/lit8 v14, v14, 0x70

    const/16 v16, 0x6

    or-int/lit8 v32, v14, 0x6

    .local v32, "$changed":I
    move-object/from16 v33, v1

    check-cast v33, Landroidx/compose/foundation/layout/RowScope;

    .local v33, "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410":Landroidx/compose/foundation/layout/RowScope;
    move-object v1, v3

    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v47, 0x0

    .line 205
    .local v47, "$i$a$-Row-MainMenuScreenKt$MainMenuScreen$1$3":I
    const v14, 0x7017c4c2

    move/from16 v48, v4

    .end local v4    # "$changed$iv":I
    .local v48, "$changed$iv":I
    const-string v4, "C206@8835L41,204@8749L433,216@9289L48,214@9196L473,226@9777L48,225@9717L18,224@9683L473:MainMenuScreen.kt#xkugs2"

    invoke-static {v1, v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 207
    sget-object v34, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v35

    sget v4, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v4, v4, 0xc

    const/4 v14, 0x6

    or-int/lit8 v44, v4, 0x6

    const/16 v45, 0xe

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    move-object/from16 v43, v1

    invoke-virtual/range {v34 .. v45}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v4

    .line 208
    const/4 v14, 0x6

    .local v14, "$this$dp$iv":I
    const/16 v16, 0x0

    .line 457
    .local v16, "$i$f$getDp":I
    move/from16 v65, v6

    .end local v6    # "$changed$iv$iv$iv":I
    .local v65, "$changed$iv$iv$iv":I
    int-to-float v6, v14

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 208
    .end local v14    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    .line 209
    const/4 v14, 0x2

    .restart local v14    # "$this$dp$iv":I
    const/16 v16, 0x0

    .line 458
    .restart local v16    # "$i$f$getDp":I
    move/from16 v68, v8

    .end local v8    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v68, "$i$a$-Layout-RowKt$Row$1$iv":I
    int-to-float v8, v14

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 209
    .end local v14    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    const/4 v14, 0x2

    .restart local v14    # "$this$dp$iv":I
    const/16 v16, 0x0

    .line 458
    .restart local v16    # "$i$f$getDp":I
    move-object/from16 v69, v9

    .end local v9    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v69, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    int-to-float v9, v14

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 209
    .end local v14    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v18

    .line 210
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v34, v8

    check-cast v34, Landroidx/compose/ui/Modifier;

    const/16 v37, 0x2

    const/16 v38, 0x0

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0x0

    invoke-static/range {v33 .. v38}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/16 v9, 0x2a

    .local v9, "$this$dp$iv":I
    const/4 v14, 0x0

    .line 459
    .local v14, "$i$f$getDp":I
    int-to-float v10, v9

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 210
    .end local v9    # "$this$dp$iv":I
    .end local v14    # "$i$f$getDp":I
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 206
    nop

    .line 210
    nop

    .line 208
    move-object v14, v6

    check-cast v14, Landroidx/compose/ui/graphics/Shape;

    .line 207
    nop

    .line 209
    sget-object v6, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;

    invoke-virtual {v6}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->getLambda-2$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v20

    shr-int/lit8 v6, v2, 0x9

    and-int/lit8 v6, v6, 0xe

    const/high16 v9, 0x30c00000

    or-int v22, v6, v9

    .line 205
    const/4 v6, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x164

    move-object/from16 v70, v11

    .end local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v70, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v11, p3

    move-object/from16 v72, v12

    .end local v12    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v72, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object v12, v8

    move-object v8, v13

    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v8, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move v13, v6

    const/4 v6, 0x0

    const/16 v46, 0x1

    move-object/from16 v73, v15

    .end local v15    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v73, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v15, v4

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v1

    invoke-static/range {v11 .. v23}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 217
    sget-object v34, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v35

    sget v4, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v4, v4, 0xc

    const/4 v9, 0x6

    or-int/lit8 v44, v4, 0x6

    const-wide/16 v37, 0x0

    invoke-virtual/range {v34 .. v45}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v15

    .line 218
    const/4 v4, 0x6

    .local v4, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 460
    .local v9, "$i$f$getDp":I
    int-to-float v10, v4

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 218
    .end local v4    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    .line 219
    const/4 v9, 0x2

    .local v9, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 461
    .local v10, "$i$f$getDp":I
    int-to-float v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 219
    .end local v9    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    const/4 v10, 0x2

    .local v10, "$this$dp$iv":I
    const/4 v11, 0x0

    .line 461
    .local v11, "$i$f$getDp":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 219
    .end local v10    # "$this$dp$iv":I
    .end local v11    # "$i$f$getDp":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v18

    .line 220
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v35, v9

    check-cast v35, Landroidx/compose/ui/Modifier;

    const/16 v38, 0x2

    const/16 v39, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    const/16 v37, 0x0

    move-object/from16 v34, v33

    invoke-static/range {v34 .. v39}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/16 v10, 0x2a

    .restart local v10    # "$this$dp$iv":I
    const/4 v11, 0x0

    .line 462
    .restart local v11    # "$i$f$getDp":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 220
    .end local v10    # "$this$dp$iv":I
    .end local v11    # "$i$f$getDp":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 216
    nop

    .line 220
    nop

    .line 218
    move-object v14, v4

    check-cast v14, Landroidx/compose/ui/graphics/Shape;

    .line 217
    nop

    .line 219
    sget-object v4, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->getLambda-3$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v20

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xe

    const/high16 v9, 0x30c00000

    or-int v22, v4, v9

    .line 215
    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v11, p4

    invoke-static/range {v11 .. v23}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 227
    sget-object v34, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v35

    sget v4, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v4, v4, 0xc

    const/4 v9, 0x6

    or-int/lit8 v44, v4, 0x6

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    invoke-virtual/range {v34 .. v45}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v38

    .line 228
    const/4 v4, 0x6

    .restart local v4    # "$this$dp$iv":I
    const/4 v9, 0x0

    .line 463
    .local v9, "$i$f$getDp":I
    int-to-float v10, v4

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 228
    .end local v4    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    .line 229
    const/4 v9, 0x2

    .local v9, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 464
    .local v10, "$i$f$getDp":I
    int-to-float v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 229
    .end local v9    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    const/4 v10, 0x2

    .local v10, "$this$dp$iv":I
    const/4 v11, 0x0

    .line 464
    .restart local v11    # "$i$f$getDp":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 229
    .end local v10    # "$this$dp$iv":I
    .end local v11    # "$i$f$getDp":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v41

    .line 230
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/Modifier;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v10, v33

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/16 v10, 0x2a

    .restart local v10    # "$this$dp$iv":I
    const/4 v11, 0x0

    .line 465
    .restart local v11    # "$i$f$getDp":I
    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 230
    .end local v10    # "$this$dp$iv":I
    .end local v11    # "$i$f$getDp":I
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v35

    const v9, -0x3e72650c

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v0, 0x70000

    and-int/2addr v0, v2

    const/high16 v9, 0x20000

    if-ne v0, v9, :cond_36

    move/from16 v15, v46

    goto :goto_26

    :cond_36
    move v15, v6

    .line 226
    :goto_26
    move v0, v15

    .local v0, "invalid$iv":Z
    move-object v6, v1

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 466
    .local v9, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 467
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_38

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_37

    goto :goto_27

    .line 471
    :cond_37
    move-object v12, v10

    goto :goto_28

    .line 468
    :cond_38
    :goto_27
    const/4 v12, 0x0

    .line 226
    .local v12, "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$3$1":I
    new-instance v13, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$3$1$1;

    invoke-direct {v13, v5}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$1$3$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 468
    .end local v12    # "$i$a$-cache-MainMenuScreenKt$MainMenuScreen$1$3$1":I
    move-object v12, v13

    .line 469
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 470
    nop

    .line 467
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_28
    nop

    .line 466
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 226
    .end local v0    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    move-object/from16 v34, v12

    check-cast v34, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 230
    nop

    .line 228
    move-object/from16 v37, v4

    check-cast v37, Landroidx/compose/ui/graphics/Shape;

    .line 227
    nop

    .line 229
    sget-object v0, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MainMenuScreenKt;->getLambda-4$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v43

    .line 225
    const/16 v36, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/high16 v45, 0x30c00000

    const/16 v46, 0x164

    move-object/from16 v44, v1

    invoke-static/range {v34 .. v46}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 205
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 234
    nop

    .line 456
    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v32    # "$changed":I
    .end local v33    # "$this$MainMenuScreen_u24lambda_u2411_u24lambda_u2410":Landroidx/compose/foundation/layout/RowScope;
    .end local v47    # "$i$a$-Row-MainMenuScreenKt$MainMenuScreen$1$3":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 455
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v31    # "$changed$iv":I
    .end local v68    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 472
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 473
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 474
    nop

    .end local v28    # "$i$f$ReusableComposeNode":I
    .end local v65    # "$changed$iv$iv$iv":I
    .end local v70    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v72    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 475
    nop

    .end local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v25    # "$changed$iv$iv":I
    .end local v26    # "$i$f$Layout":I
    .end local v27    # "compositeKeyHash$iv$iv":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 476
    nop

    .line 45
    .end local v29    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v30    # "$i$f$Row":I
    .end local v48    # "$changed$iv":I
    .end local v69    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v73    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 235
    nop

    .line 302
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v59    # "$changed":I
    .end local v60    # "$this$MainMenuScreen_u24lambda_u2411":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v62    # "$i$a$-Column-MainMenuScreenKt$MainMenuScreen$1":I
    invoke-static/range {v75 .. v75}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 301
    .end local v63    # "$changed$iv":I
    .end local v64    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v75    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 477
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 478
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 479
    nop

    .end local v56    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v57    # "$i$f$ReusableComposeNode":I
    .end local v58    # "$changed$iv$iv$iv":I
    .end local v61    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 480
    nop

    .end local v51    # "$changed$iv$iv":I
    .end local v52    # "$i$f$Layout":I
    .end local v53    # "compositeKeyHash$iv$iv":I
    .end local v66    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 481
    nop

    .end local v49    # "$changed$iv":I
    .end local v50    # "$i$f$Column":I
    .end local v67    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 236
    .end local v24    # "dynamicTitle":Ljava/lang/String;
    .end local v54    # "deviceModel":Ljava/lang/String;
    .end local v55    # "deviceBrand":Ljava/lang/String;
    :cond_39
    :goto_29
    invoke-interface/range {v71 .. v71}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_3a

    new-instance v9, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move v10, v2

    .end local v2    # "$dirty":I
    .local v10, "$dirty":I
    move-object/from16 v2, p1

    move-object/from16 v11, v71

    .end local v71    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$MainMenuScreen$2;-><init>(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_2a

    .end local v10    # "$dirty":I
    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$dirty":I
    .restart local v71    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_3a
    move v10, v2

    move-object/from16 v11, v71

    .end local v2    # "$dirty":I
    .end local v71    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$dirty":I
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_2a
    return-void
.end method

.method private static final ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "subtitle"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # J
    .param p4, "textColor"    # J
    .param p6, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 245
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p8

    const v0, 0x57c02adf

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ModeButton)P(4,2,0:c#ui.graphics.Color,3:c#ui.graphics.Color)247@10416L46,245@10349L659:MainMenuScreen.kt#xkugs2"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-wide/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v12, 0x380

    if-nez v2, :cond_8

    move-wide/from16 v7, p2

    invoke-interface {v9, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p2

    :goto_5
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-wide/from16 v3, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v12, 0x1c00

    if-nez v3, :cond_b

    move-wide/from16 v3, p4

    invoke-interface {v9, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_b
    move-wide/from16 v3, p4

    :goto_7
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v5, p6

    goto :goto_9

    :cond_c
    const v5, 0xe000

    and-int/2addr v5, v12

    if-nez v5, :cond_e

    move-object/from16 v5, p6

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v1, v6

    goto :goto_9

    :cond_e
    move-object/from16 v5, p6

    :goto_9
    move v6, v1

    .end local v1    # "$dirty":I
    .local v6, "$dirty":I
    const v1, 0xb6db

    and-int/2addr v1, v6

    const/16 v13, 0x2492

    if-ne v1, v13, :cond_10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    .line 268
    :cond_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide v13, v3

    goto/16 :goto_c

    .line 245
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 243
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v1

    .end local p4    # "textColor":J
    .local v1, "textColor":J
    goto :goto_b

    .line 245
    .end local v1    # "textColor":J
    .restart local p4    # "textColor":J
    :cond_11
    move-wide v1, v3

    .line 243
    .end local p4    # "textColor":J
    .restart local v1    # "textColor":J
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 245
    const/4 v3, -0x1

    const-string v4, "com.cgs.atvobserver.ui.screens.ModeButton (MainMenuScreen.kt:244)"

    invoke-static {v0, v6, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 248
    :cond_12
    sget-object v13, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    shr-int/lit8 v0, v6, 0x6

    and-int/lit8 v0, v0, 0xe

    sget v3, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    or-int v23, v0, v3

    const/16 v24, 0xe

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v14, p2

    move-object/from16 v22, v9

    invoke-virtual/range {v13 .. v24}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v17

    .line 249
    const/16 v0, 0x8

    .local v0, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 482
    .local v3, "$i$f$getDp":I
    int-to-float v4, v0

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 249
    .end local v0    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    .line 250
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 251
    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v3, v4, v14, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 252
    const/16 v4, 0x32

    .local v4, "$this$dp$iv":I
    const/4 v13, 0x0

    .line 483
    .local v13, "$i$f$getDp":I
    int-to-float v15, v4

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 252
    .end local v4    # "$this$dp$iv":I
    .end local v13    # "$i$f$getDp":I
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 247
    nop

    .line 252
    nop

    .line 249
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/graphics/Shape;

    .line 248
    nop

    .line 253
    new-instance v0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;

    invoke-direct {v0, v10, v1, v2, v11}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$1;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    const v4, -0x55101d31

    invoke-static {v9, v4, v14, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v0, v6, 0xc

    and-int/lit8 v0, v0, 0xe

    const v4, 0x30000030

    or-int v24, v0, v4

    .line 246
    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x1e4

    move-object/from16 v13, p6

    move-object v14, v3

    move-object/from16 v23, v9

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 268
    :cond_13
    move-wide v13, v1

    .end local v1    # "textColor":J
    .local v13, "textColor":J
    :goto_c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_14

    new-instance v16, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v17, v6

    .end local v6    # "$dirty":I
    .local v17, "$dirty":I
    move-wide v5, v13

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v18, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;-><init>(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_d

    .end local v17    # "$dirty":I
    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$dirty":I
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_14
    move/from16 v17, v6

    move-object/from16 v18, v9

    .end local v6    # "$dirty":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$dirty":I
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_d
    return-void
.end method

.method public static final synthetic access$ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "subtitle"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # J
    .param p4, "textColor"    # J
    .param p6, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .param p9, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
