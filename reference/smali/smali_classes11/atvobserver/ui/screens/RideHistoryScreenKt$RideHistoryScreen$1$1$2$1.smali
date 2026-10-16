.class final Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RideHistoryScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt;->RideHistoryScreen(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $filteredRides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;->$filteredRides:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 111
    sget-object v0, Lcom/cgs/atvobserver/data/export/CSVExporter;->INSTANCE:Lcom/cgs/atvobserver/data/export/CSVExporter;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;->$filteredRides:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/cgs/atvobserver/data/export/CSVExporter;->exportRidesToCsv(Landroid/content/Context;Ljava/util/List;)Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, "csvFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to Downloads!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt$RideHistoryScreen$1$1$2$1;->$context:Landroid/content/Context;

    const-string v2, "No rides to export."

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return-void
.end method
