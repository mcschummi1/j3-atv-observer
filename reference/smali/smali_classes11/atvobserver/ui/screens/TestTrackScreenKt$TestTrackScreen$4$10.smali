.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10;
.super Lkotlin/jvm/internal/Lambda;
.source "TestTrackScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestTrackScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,337:1\n1116#2,6:338\n*S KotlinDebug\n*F\n+ 1 TestTrackScreen.kt\ncom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10\n*L\n308#1:338,6\n*E\n"
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
.field final synthetic $onBackToMenu:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showPostTestCalibDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10;->$showPostTestCalibDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 306
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    const-string v1, "C307@14462L130,311@14642L39,306@14420L414:TestTrackScreen.kt#xkugs2"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 307
    and-int/lit8 v1, v15, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 307
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.cgs.atvobserver.ui.screens.TestTrackScreen.<anonymous>.<anonymous> (TestTrackScreen.kt:306)"

    const v3, -0x7ed6c925

    invoke-static {v3, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, 0x2336f8a5

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):TestTrackScreen.kt#9igjgp"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 308
    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10;->$showPostTestCalibDialog$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v4, p1

    .local v1, "invalid$iv":Z
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 338
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 339
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_4

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_3

    goto :goto_1

    .line 343
    :cond_3
    move-object v2, v6

    goto :goto_2

    .line 340
    :cond_4
    :goto_1
    const/4 v8, 0x0

    .line 308
    .local v8, "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$10$1":I
    new-instance v9, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10$1$1;

    invoke-direct {v9, v2, v3}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$10$1$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 340
    .end local v8    # "$i$a$-cache-TestTrackScreenKt$TestTrackScreen$4$10$1":I
    move-object v2, v9

    .line 341
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 342
    nop

    .line 339
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 338
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 308
    .end local v1    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 312
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v4, v4, 0xc

    or-int/lit8 v11, v4, 0x6

    const/16 v12, 0xe

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v5

    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TestTrackScreenKt;->getLambda-11$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .line 307
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x30000000

    const/16 v16, 0x1ee

    move-object v1, v13

    move-object/from16 v11, p1

    move/from16 v13, v16

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 316
    :cond_5
    :goto_3
    return-void
.end method
