.class final Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AtvDiagScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->AtvDiagScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

.field final synthetic $audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

.field final synthetic $motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

.field final synthetic $onBackToMenu:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $temperatureCelsius:D


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            "D",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-wide p4, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$temperatureCelsius:D

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$$changed:I

    iput p8, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$$default:I

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

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-wide v3, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$temperatureCelsius:D

    iget-object v5, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$onBackToMenu:Lkotlin/jvm/functions/Function0;

    iget v6, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$$changed:I

    or-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt$AtvDiagScreen$3;->$$default:I

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->AtvDiagScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
