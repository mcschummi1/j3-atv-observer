.class final Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TestTrackScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $startingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

.field final synthetic $tankCapacityL:D


# direct methods
.method constructor <init>(DLandroidx/compose/runtime/MutableDoubleState;)V
    .locals 1

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;->$tankCapacityL:D

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;->$startingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;->$startingFuelL$delegate:Landroidx/compose/runtime/MutableDoubleState;

    iget-wide v1, p0, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt$TestTrackScreen$4$2$1$2$2$1;->$tankCapacityL:D

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->access$TestTrackScreen$lambda$26(Landroidx/compose/runtime/MutableDoubleState;D)V

    return-void
.end method
