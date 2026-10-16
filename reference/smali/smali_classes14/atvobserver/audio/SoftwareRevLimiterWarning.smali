.class public final Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;
.super Ljava/lang/Object;
.source "SoftwareRevLimiterWarning.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;",
        "",
        "()V",
        "checkRevLimit",
        "Lcom/cgs/atvobserver/audio/RevLimitStatus;",
        "currentRpm",
        "",
        "vehicleType",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
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

.field public static final INSTANCE:Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;

    invoke-direct {v0}, Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;->INSTANCE:Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkRevLimit(ILcom/cgs/atvobserver/data/model/VehicleType;)Lcom/cgs/atvobserver/audio/RevLimitStatus;
    .locals 4
    .param p1, "currentRpm"    # I
    .param p2, "vehicleType"    # Lcom/cgs/atvobserver/data/model/VehicleType;

    const-string v0, "vehicleType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/model/VehicleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x1d4c

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 30
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lkotlin/Pair;

    const/16 v2, 0x1964

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :pswitch_1
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0x1b58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :pswitch_2
    new-instance v0, Lkotlin/Pair;

    const/16 v2, 0x2134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :pswitch_3
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .local v1, "warnRpm":I
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 33
    .local v0, "critRpm":I
    nop

    .line 34
    if-lt p1, v0, :cond_0

    sget-object v2, Lcom/cgs/atvobserver/audio/RevLimitState;->CRITICAL_OVER_REV:Lcom/cgs/atvobserver/audio/RevLimitState;

    goto :goto_1

    .line 35
    :cond_0
    if-lt p1, v1, :cond_1

    sget-object v2, Lcom/cgs/atvobserver/audio/RevLimitState;->WARNING:Lcom/cgs/atvobserver/audio/RevLimitState;

    goto :goto_1

    .line 36
    :cond_1
    sget-object v2, Lcom/cgs/atvobserver/audio/RevLimitState;->NORMAL:Lcom/cgs/atvobserver/audio/RevLimitState;

    .line 33
    :goto_1
    nop

    .line 39
    .local v2, "state":Lcom/cgs/atvobserver/audio/RevLimitState;
    new-instance v3, Lcom/cgs/atvobserver/audio/RevLimitStatus;

    .line 40
    nop

    .line 41
    nop

    .line 42
    nop

    .line 43
    nop

    .line 39
    invoke-direct {v3, v2, p1, v1, v0}, Lcom/cgs/atvobserver/audio/RevLimitStatus;-><init>(Lcom/cgs/atvobserver/audio/RevLimitState;III)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
