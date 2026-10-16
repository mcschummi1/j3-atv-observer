.class public final Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;
.super Ljava/lang/Object;
.source "HeadsetAudioDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeadsetAudioDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadsetAudioDetector.kt\ncom/cgs/atvobserver/audio/HeadsetAudioDetector\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,30:1\n12474#2,2:31\n*S KotlinDebug\n*F\n+ 1 HeadsetAudioDetector.kt\ncom/cgs/atvobserver/audio/HeadsetAudioDetector\n*L\n18#1:31,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;",
        "",
        "()V",
        "isHeadsetConnected",
        "",
        "context",
        "Landroid/content/Context;",
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

.field public static final INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    invoke-direct {v0}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHeadsetConnected(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 16
    .local v0, "audioManager":Landroid/media/AudioManager;
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 18
    .local v2, "devices":[Landroid/media/AudioDeviceInfo;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .local v3, "$this$any$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 31
    .local v4, "$i$f$any":I
    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "device":Landroid/media/AudioDeviceInfo;
    const/4 v9, 0x0

    .line 19
    .local v9, "$i$a$-any-HeadsetAudioDetector$isHeadsetConnected$1":I
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    sparse-switch v10, :sswitch_data_0

    .line 25
    move v10, v1

    goto :goto_2

    .line 24
    :sswitch_0
    move v10, v11

    .line 19
    :goto_2
    nop

    .line 31
    .end local v8    # "device":Landroid/media/AudioDeviceInfo;
    .end local v9    # "$i$a$-any-HeadsetAudioDetector$isHeadsetConnected$1":I
    if-eqz v10, :cond_2

    move v1, v11

    goto :goto_3

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 32
    :cond_3
    nop

    .line 18
    .end local v3    # "$this$any$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$any":I
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x16 -> :sswitch_0
    .end sparse-switch
.end method
