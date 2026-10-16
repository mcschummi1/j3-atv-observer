.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->FuelEntryStep(Lcom/cgs/atvobserver/data/model/VehicleType;DDLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,887:1\n1116#2,6:888\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6\n*L\n862#1:888,6\n*E\n"
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
.field final synthetic $customInputText$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedFuel$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $showCustomDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tankCapacityL:D


# direct methods
.method constructor <init>(DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableDoubleState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$tankCapacityL:D

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$customInputText$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$selectedFuel$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$showCustomDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 860
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->invoke(Landroidx/compose/runtime/Composer;I)V

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

    const-string v1, "C861@36284L251,866@36585L39,860@36242L496:TripScreen.kt#xkugs2"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 861
    and-int/lit8 v1, v15, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 861
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.cgs.atvobserver.ui.screens.FuelEntryStep.<anonymous>.<anonymous> (TripScreen.kt:860)"

    const v3, 0x67f4fa5

    invoke-static {v3, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, -0x7d84fd3f

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):TripScreen.kt#9igjgp"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$tankCapacityL:D

    invoke-interface {v14, v1, v2}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v1

    .line 862
    iget-wide v3, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$tankCapacityL:D

    iget-object v5, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$customInputText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$selectedFuel$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->$showCustomDialog$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v8, p1

    .local v1, "invalid$iv":Z
    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 888
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 889
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_4

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v10, v2, :cond_3

    goto :goto_1

    .line 893
    :cond_3
    move-object v2, v10

    goto :goto_2

    .line 890
    :cond_4
    :goto_1
    const/4 v12, 0x0

    .line 862
    .local v12, "$i$a$-cache-TripScreenKt$FuelEntryStep$1$6$1":I
    new-instance v13, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;

    move-object v2, v13

    invoke-direct/range {v2 .. v7}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;-><init>(DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableState;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 890
    .end local v12    # "$i$a$-cache-TripScreenKt$FuelEntryStep$1$6$1":I
    move-object v2, v13

    .line 891
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 892
    nop

    .line 889
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 888
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 862
    .end local v1    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 867
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

    sget-object v1, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TripScreenKt;->INSTANCE:Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TripScreenKt;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ui/screens/ComposableSingletons$TripScreenKt;->getLambda-12$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .line 861
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

    .line 871
    :cond_5
    :goto_3
    return-void
.end method
