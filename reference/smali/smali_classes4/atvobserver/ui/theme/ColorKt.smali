.class public final Lcom/cgs/atvobserver/ui/theme/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\"\u0013\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0006\u0010\u0003\"\u0013\u0010\u0007\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0003\"\u0013\u0010\t\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\n\u0010\u0003\"\u0013\u0010\u000b\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0003\"\u0013\u0010\r\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u0003\"\u0013\u0010\u000f\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0003\"\u0013\u0010\u0011\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0012\u0010\u0003\"\u0013\u0010\u0013\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0014\u0010\u0003\"\u0013\u0010\u0015\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0003\u00a8\u0006\u0017"
    }
    d2 = {
        "CgsAccent",
        "Landroidx/compose/ui/graphics/Color;",
        "getCgsAccent",
        "()J",
        "J",
        "CgsBackground",
        "getCgsBackground",
        "CgsGreen",
        "getCgsGreen",
        "CgsPink",
        "getCgsPink",
        "CgsRed",
        "getCgsRed",
        "CgsSurface",
        "getCgsSurface",
        "CgsSurfaceVariant",
        "getCgsSurfaceVariant",
        "CgsTextPrimary",
        "getCgsTextPrimary",
        "CgsTextSecondary",
        "getCgsTextSecondary",
        "CgsYellow",
        "getCgsYellow",
        "app_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CgsAccent:J

.field private static final CgsBackground:J

.field private static final CgsGreen:J

.field private static final CgsPink:J

.field private static final CgsRed:J

.field private static final CgsSurface:J

.field private static final CgsSurfaceVariant:J

.field private static final CgsTextPrimary:J

.field private static final CgsTextSecondary:J

.field private static final CgsYellow:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    const-wide v0, 0xff121212L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsBackground:J

    .line 6
    const-wide v0, 0xff1e1e1eL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsSurface:J

    .line 7
    const-wide v0, 0xff2c2c2cL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsSurfaceVariant:J

    .line 8
    const-wide v0, 0xffffffffL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsTextPrimary:J

    .line 9
    const-wide v0, 0xffb0b0b0L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsTextSecondary:J

    .line 12
    const-wide v0, 0xff2e7d32L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsGreen:J

    .line 13
    const-wide v0, 0xfffbc02dL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsYellow:J

    .line 14
    const-wide v0, 0xffd32f2fL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsRed:J

    .line 15
    const-wide v0, 0xffff1493L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsPink:J

    .line 17
    const-wide v0, 0xff0288d1L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsAccent:J

    return-void
.end method

.method public static final getCgsAccent()J
    .locals 2

    .line 17
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsAccent:J

    return-wide v0
.end method

.method public static final getCgsBackground()J
    .locals 2

    .line 5
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsBackground:J

    return-wide v0
.end method

.method public static final getCgsGreen()J
    .locals 2

    .line 12
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsGreen:J

    return-wide v0
.end method

.method public static final getCgsPink()J
    .locals 2

    .line 15
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsPink:J

    return-wide v0
.end method

.method public static final getCgsRed()J
    .locals 2

    .line 14
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsRed:J

    return-wide v0
.end method

.method public static final getCgsSurface()J
    .locals 2

    .line 6
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsSurface:J

    return-wide v0
.end method

.method public static final getCgsSurfaceVariant()J
    .locals 2

    .line 7
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsSurfaceVariant:J

    return-wide v0
.end method

.method public static final getCgsTextPrimary()J
    .locals 2

    .line 8
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsTextPrimary:J

    return-wide v0
.end method

.method public static final getCgsTextSecondary()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsTextSecondary:J

    return-wide v0
.end method

.method public static final getCgsYellow()J
    .locals 2

    .line 13
    sget-wide v0, Lcom/cgs/atvobserver/ui/theme/ColorKt;->CgsYellow:J

    return-wide v0
.end method
