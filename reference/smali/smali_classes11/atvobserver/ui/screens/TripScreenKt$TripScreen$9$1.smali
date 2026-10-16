.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$9$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->TripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
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
        "cond",
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
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
.field final synthetic $selectedWeather$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $weatherStepDone$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
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
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$9$1;->$selectedWeather$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$9$1;->$weatherStepDone$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 212
    move-object v0, p1

    check-cast v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    invoke-virtual {p0, v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$9$1;->invoke(Lcom/cgs/atvobserver/data/model/WeatherCondition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/cgs/atvobserver/data/model/WeatherCondition;)V
    .locals 2
    .param p1, "cond"    # Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const-string v0, "cond"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$9$1;->$selectedWeather$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, p1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$8(Landroidx/compose/runtime/MutableState;Lcom/cgs/atvobserver/data/model/WeatherCondition;)V

    .line 214
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$9$1;->$weatherStepDone$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$5(Landroidx/compose/runtime/MutableState;Z)V

    .line 215
    return-void
.end method
