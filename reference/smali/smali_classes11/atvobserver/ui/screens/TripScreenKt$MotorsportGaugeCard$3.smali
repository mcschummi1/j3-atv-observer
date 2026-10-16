.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->MotorsportGaugeCard-cd68TDI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $accentColor:J

.field final synthetic $digitalValue:Ljava/lang/String;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $progressFraction:F

.field final synthetic $subText:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $unit:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;JLandroidx/compose/ui/Modifier;II)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$digitalValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$unit:Ljava/lang/String;

    iput p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$progressFraction:F

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$subText:Ljava/lang/String;

    iput-wide p6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$accentColor:J

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput p9, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$$changed:I

    iput p10, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$$default:I

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

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$digitalValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$unit:Ljava/lang/String;

    iget v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$progressFraction:F

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$subText:Ljava/lang/String;

    iget-wide v5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$accentColor:J

    iget-object v7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget v8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$$changed:I

    or-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$3;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$MotorsportGaugeCard-cd68TDI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
