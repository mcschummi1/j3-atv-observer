.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->PostRideCalibrationDialog(DDDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $onConfirmSave:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDismiss:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $predictedFuelUsedL:D

.field final synthetic $predictedRemainingL:D

.field final synthetic $tankCapacityL:D


# direct methods
.method constructor <init>(DDDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$predictedFuelUsedL:D

    iput-wide p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$predictedRemainingL:D

    iput-wide p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$tankCapacityL:D

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$onConfirmSave:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iput p9, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$$changed:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    iget-wide v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$predictedFuelUsedL:D

    iget-wide v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$predictedRemainingL:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$tankCapacityL:D

    iget-object v6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$onConfirmSave:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iget v8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$PostRideCalibrationDialog$4;->$$changed:I

    or-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$PostRideCalibrationDialog(DDDLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
