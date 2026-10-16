.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cgs/atvobserver/data/model/RideMode;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "mode",
        "Lcom/cgs/atvobserver/data/model/RideMode;",
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
.field final synthetic $currentScreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedMode$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/RideMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/RideMode;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$selectedMode$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 214
    move-object v0, p1

    check-cast v0, Lcom/cgs/atvobserver/data/model/RideMode;

    invoke-virtual {p0, v0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->invoke(Lcom/cgs/atvobserver/data/model/RideMode;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/cgs/atvobserver/data/model/RideMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/cgs/atvobserver/data/model/RideMode;

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$selectedMode$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, p1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/cgs/atvobserver/data/model/RideMode;)V

    .line 216
    sget-object v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/model/RideMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "CARB_TUNE"

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "ATV_DIAG"

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "APP_DIAG"

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_3
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "TEST_TRACK"

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "POCKET"

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_5
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    const-string v1, "TRIP"

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
