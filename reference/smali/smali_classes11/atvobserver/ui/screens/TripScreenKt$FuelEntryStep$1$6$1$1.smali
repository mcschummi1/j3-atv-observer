.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6;->invoke(Landroidx/compose/runtime/Composer;I)V
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

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$tankCapacityL:D

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$customInputText$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$selectedFuel$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$showCustomDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 863
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$customInputText$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$FuelEntryStep$lambda$93(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$selectedFuel$delegate:Landroidx/compose/runtime/MutableDoubleState;

    invoke-static {v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$FuelEntryStep$lambda$87(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 864
    .local v2, "customL":D
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$selectedFuel$delegate:Landroidx/compose/runtime/MutableDoubleState;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$tankCapacityL:D

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$FuelEntryStep$lambda$88(Landroidx/compose/runtime/MutableDoubleState;D)V

    .line 865
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$FuelEntryStep$1$6$1$1;->$showCustomDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$FuelEntryStep$lambda$91(Landroidx/compose/runtime/MutableState;Z)V

    .line 866
    return-void
.end method
