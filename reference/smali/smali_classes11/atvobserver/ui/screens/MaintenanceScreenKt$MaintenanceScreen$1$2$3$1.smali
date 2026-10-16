.class final Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MaintenanceScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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

.field final synthetic $editingServiceTitle$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
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


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Double;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$editingServiceTitle$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$chainLubeKm$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$editingKmInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$activeEditingTarget$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$editingServiceTitle$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "Chain Lube"

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$23(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$editingKmInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$chainLubeKm$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$4(Landroidx/compose/runtime/MutableState;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$26(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$activeEditingTarget$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$29(Landroidx/compose/runtime/MutableState;I)V

    .line 173
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt$MaintenanceScreen$1$2$3$1;->$showEditDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->access$MaintenanceScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 174
    return-void
.end method
