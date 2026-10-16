.class public final Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;
.super Landroid/os/Binder;
.source "ObserverForegroundService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cgs/atvobserver/service/ObserverForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;",
        "Landroid/os/Binder;",
        "(Lcom/cgs/atvobserver/service/ObserverForegroundService;)V",
        "getService",
        "Lcom/cgs/atvobserver/service/ObserverForegroundService;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cgs/atvobserver/service/ObserverForegroundService;


# direct methods
.method public constructor <init>(Lcom/cgs/atvobserver/service/ObserverForegroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cgs/atvobserver/service/ObserverForegroundService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;->this$0:Lcom/cgs/atvobserver/service/ObserverForegroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getService()Lcom/cgs/atvobserver/service/ObserverForegroundService;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cgs/atvobserver/service/ObserverForegroundService$LocalBinder;->this$0:Lcom/cgs/atvobserver/service/ObserverForegroundService;

    return-object v0
.end method
