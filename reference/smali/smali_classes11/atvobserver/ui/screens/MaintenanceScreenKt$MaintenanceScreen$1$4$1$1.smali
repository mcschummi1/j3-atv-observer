.class final Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MaintenanceScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$editingKmInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$activeEditingTarget$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$oilIntervalKm$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$chainLubeKm$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$sparkPlugKm$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$editingKmInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 238
    .local v0, "kmVal":D
    :goto_0
    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$activeEditingTarget$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$28(Landroidx/compose/runtime/MutableState;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 241
    :pswitch_0
    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$sparkPlugKm$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2, v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$8(Landroidx/compose/runtime/MutableState;D)V

    goto :goto_1

    .line 240
    :pswitch_1
    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$chainLubeKm$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2, v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$5(Landroidx/compose/runtime/MutableState;D)V

    goto :goto_1

    .line 239
    :pswitch_2
    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$oilIntervalKm$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2, v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$2(Landroidx/compose/runtime/MutableState;D)V

    .line 243
    :goto_1
    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$4$1$1;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 244
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
