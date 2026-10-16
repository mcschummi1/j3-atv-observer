.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$5;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
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
        "newVehicle",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
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
.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$5;->this$0:Lcom/cgs/atvobserver/MainActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 209
    move-object v0, p1

    check-cast v0, Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-virtual {p0, v0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$5;->invoke(Lcom/cgs/atvobserver/data/model/VehicleType;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/cgs/atvobserver/data/model/VehicleType;)V
    .locals 1
    .param p1, "newVehicle"    # Lcom/cgs/atvobserver/data/model/VehicleType;

    const-string v0, "newVehicle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$5;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v0}, Lcom/cgs/atvobserver/MainActivity;->access$getConfigManager$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/config/AppConfigManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "configManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/cgs/atvobserver/data/config/AppConfigManager;->setActiveVehicle(Lcom/cgs/atvobserver/data/model/VehicleType;)V

    .line 213
    return-void
.end method
