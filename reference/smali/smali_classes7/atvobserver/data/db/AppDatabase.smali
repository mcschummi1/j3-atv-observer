.class public abstract Lcom/cgs/atvobserver/data/db/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "EntitiesAndDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/data/db/AppDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/db/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "rideDao",
        "Lcom/cgs/atvobserver/data/db/RideDao;",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/cgs/atvobserver/data/db/AppDatabase$Companion;

.field private static volatile INSTANCE:Lcom/cgs/atvobserver/data/db/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cgs/atvobserver/data/db/AppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cgs/atvobserver/data/db/AppDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cgs/atvobserver/data/db/AppDatabase;->Companion:Lcom/cgs/atvobserver/data/db/AppDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/cgs/atvobserver/data/db/AppDatabase;
    .locals 1

    .line 109
    sget-object v0, Lcom/cgs/atvobserver/data/db/AppDatabase;->INSTANCE:Lcom/cgs/atvobserver/data/db/AppDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/cgs/atvobserver/data/db/AppDatabase;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/cgs/atvobserver/data/db/AppDatabase;

    .line 109
    sput-object p0, Lcom/cgs/atvobserver/data/db/AppDatabase;->INSTANCE:Lcom/cgs/atvobserver/data/db/AppDatabase;

    return-void
.end method


# virtual methods
.method public abstract rideDao()Lcom/cgs/atvobserver/data/db/RideDao;
.end method
