.class final Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;
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
    value = "SMAP\nMaintenanceScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaintenanceScreen.kt\ncom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,316:1\n1116#2,6:317\n*S KotlinDebug\n*F\n+ 1 MaintenanceScreen.kt\ncom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4\n*L\n236#1:317,6\n*E\n"
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
.field final synthetic $activeEditingTarget$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $chainLubeKm$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $editingKmInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $oilIntervalKm$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showEditDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sparkPlugKm$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Double;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Double;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Double;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$editingKmInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$activeEditingTarget$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$oilIntervalKm$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$chainLubeKm$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$sparkPlugKm$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 234
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->invoke(Landroidx/compose/runtime/Composer;I)V

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

    const-string v1, "C235@12247L417,244@12714L39,234@12205L664:MaintenanceScreen.kt#xkugs2"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 235
    and-int/lit8 v1, v15, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 235
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.cgs.atvobserver.ui.screens.MaintenanceScreen.<anonymous>.<anonymous> (MaintenanceScreen.kt:234)"

    const v3, 0x10e9558f

    invoke-static {v3, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, -0xe89b7e2

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):MaintenanceScreen.kt#9igjgp"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 236
    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$editingKmInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$activeEditingTarget$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$oilIntervalKm$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$chainLubeKm$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$sparkPlugKm$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    move v9, v2

    .local v9, "invalid$iv":Z
    const/4 v10, 0x0

    .line 317
    .local v10, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 318
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v11, v2, :cond_3

    .line 319
    const/4 v13, 0x0

    .line 236
    .local v13, "$i$a$-cache-MaintenanceScreenKt$MaintenanceScreen$1$4$1":I
    new-instance v16, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v8}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 319
    .end local v13    # "$i$a$-cache-MaintenanceScreenKt$MaintenanceScreen$1$4$1":I
    move-object/from16 v2, v16

    .line 320
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 321
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 322
    :cond_3
    move-object v2, v11

    .line 318
    :goto_1
    nop

    .line 317
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 236
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "invalid$iv":Z
    .end local v10    # "$i$f$cache":I
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 245
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

    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MaintenanceScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MaintenanceScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$MaintenanceScreenKt;->getLambda-7$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .line 235
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v12, 0x30000006

    const/16 v16, 0x1ee

    move-object v1, v13

    move-object/from16 v11, p1

    move/from16 v13, v16

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 249
    :cond_4
    :goto_2
    return-void
.end method
