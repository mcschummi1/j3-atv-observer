.class public final synthetic Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$1:Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

.field public final synthetic f$2:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;->f$1:Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    iput-object p3, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;->f$2:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;->f$1:Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    iget-object v2, p0, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager$$ExternalSyntheticLambda1;->f$2:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v1, v2}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->$r8$lambda$ApnK2lxKNdIC4sSTcNSi0lN0uyw(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
