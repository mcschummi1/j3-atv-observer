.class public final Lcom/cgs/atvobserver/AppVersion;
.super Ljava/lang/Object;
.source "AppVersion.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cgs/atvobserver/AppVersion;",
        "",
        "()V",
        "FULL_DISPLAY",
        "",
        "VERSION_CODE",
        "",
        "VERSION_NAME",
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


# static fields
.field public static final $stable:I = 0x0

.field public static final FULL_DISPLAY:Ljava/lang/String; = "v1.1.6-Mk.I (Build 16)"

.field public static final INSTANCE:Lcom/cgs/atvobserver/AppVersion;

.field public static final VERSION_CODE:I = 0x10

.field public static final VERSION_NAME:Ljava/lang/String; = "1.1.6-Mk.I"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/AppVersion;

    invoke-direct {v0}, Lcom/cgs/atvobserver/AppVersion;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/AppVersion;->INSTANCE:Lcom/cgs/atvobserver/AppVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
