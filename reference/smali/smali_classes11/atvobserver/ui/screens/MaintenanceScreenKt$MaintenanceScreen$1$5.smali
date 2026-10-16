.class final Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "MaintenanceScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->MaintenanceScreen(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMaintenanceScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaintenanceScreen.kt\ncom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,316:1\n1116#2,6:317\n*S KotlinDebug\n*F\n+ 1 MaintenanceScreen.kt\ncom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5\n*L\n251#1:317,6\n*E\n"
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
.field final synthetic $showEditDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 250
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v13, p1

    move/from16 v14, p2

    const-string v0, "C250@12960L26,250@12943L107:MaintenanceScreen.kt#xkugs2"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 251
    and-int/lit8 v0, v14, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p0

    goto :goto_2

    .line 251
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.cgs.atvobserver.ui.screens.MaintenanceScreen.<anonymous>.<anonymous> (MaintenanceScreen.kt:250)"

    const v2, -0xb4bab33

    invoke-static {v2, v14, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v0, -0xe896049

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):MaintenanceScreen.kt#9igjgp"

    invoke-static {v13, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v15, p0

    .local v0, "invalid$iv":Z
    iget-object v1, v15, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v2, p1

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 317
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 318
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_3

    .line 319
    const/4 v6, 0x0

    .line 251
    .local v6, "$i$a$-cache-MaintenanceScreenKt$MaintenanceScreen$1$5$1":I
    new-instance v7, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5$1$1;

    invoke-direct {v7, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$5$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 319
    .end local v6    # "$i$a$-cache-MaintenanceScreenKt$MaintenanceScreen$1$5$1":I
    move-object v1, v7

    .line 320
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 321
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 322
    :cond_3
    move-object v1, v4

    .line 318
    :goto_1
    nop

    .line 317
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 251
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    move-object v0, v1

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MaintenanceScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MaintenanceScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MaintenanceScreenKt;->getLambda-8$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v9

    const v11, 0x30000006

    const/16 v12, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 254
    :cond_4
    :goto_2
    return-void
.end method
