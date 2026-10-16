.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
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
.field final synthetic $accentColor:J

.field final synthetic $progressFraction:F


# direct methods
.method constructor <init>(FJ)V
    .locals 1

    iput p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;->$progressFraction:F

    iput-wide p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;->$accentColor:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 564
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 21
    .param p1, "$this$Canvas"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    move-object/from16 v0, p0

    const-string v1, "$this$Canvas"

    move-object/from16 v15, p1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    const/high16 v1, 0x40e00000    # 7.0f

    .line 567
    .local v1, "strokeWidth":F
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getDarkGray-0d7_KjU()J

    move-result-wide v10

    .line 571
    new-instance v12, Landroidx/compose/ui/graphics/drawscope/Stroke;

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v5

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    move v3, v1

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 572
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v13

    .line 566
    nop

    .line 567
    nop

    .line 568
    nop

    .line 569
    nop

    .line 570
    nop

    .line 566
    nop

    .line 572
    nop

    .line 566
    nop

    .line 571
    move-object/from16 v16, v12

    check-cast v16, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 566
    const/16 v17, 0x350

    const/16 v18, 0x0

    const/high16 v5, 0x43070000    # 135.0f

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move-wide v3, v10

    move-wide v10, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-static/range {v2 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 577
    const/high16 v2, 0x43870000    # 270.0f

    iget v3, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;->$progressFraction:F

    mul-float v10, v3, v2

    .line 579
    new-instance v11, Landroidx/compose/ui/graphics/drawscope/Stroke;

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v5

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move v3, v1

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 580
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v12

    .line 574
    nop

    .line 575
    iget-wide v3, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$MotorsportGaugeCard$2$1$1$1;->$accentColor:J

    .line 576
    nop

    .line 577
    nop

    .line 578
    nop

    .line 574
    nop

    .line 580
    nop

    .line 574
    nop

    .line 579
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 574
    const/16 v16, 0x350

    const/16 v17, 0x0

    const/high16 v5, 0x43070000    # 135.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v2, p1

    move v6, v10

    move-wide v10, v12

    move v12, v15

    move-object v13, v14

    move-object/from16 v14, v18

    move/from16 v15, v19

    invoke-static/range {v2 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 582
    return-void
.end method
