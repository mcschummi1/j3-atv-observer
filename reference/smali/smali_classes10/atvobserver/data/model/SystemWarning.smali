.class public final Lcom/cgs/atvobserver/data/model/SystemWarning;
.super Ljava/lang/Object;
.source "Models.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/model/SystemWarning;",
        "",
        "title",
        "",
        "message",
        "level",
        "Lcom/cgs/atvobserver/data/model/WarningLevel;",
        "timestamp",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;J)V",
        "getLevel",
        "()Lcom/cgs/atvobserver/data/model/WarningLevel;",
        "getMessage",
        "()Ljava/lang/String;",
        "getTimestamp",
        "()J",
        "getTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final level:Lcom/cgs/atvobserver/data/model/WarningLevel;

.field private final message:Ljava/lang/String;

.field private final timestamp:J

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;J)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/cgs/atvobserver/data/model/WarningLevel;
    .param p4, "timestamp"    # J

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    .line 58
    iput-wide p4, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    .line 54
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 54
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    move-wide v4, p4

    goto :goto_0

    .line 54
    :cond_0
    move-wide v4, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/cgs/atvobserver/data/model/SystemWarning;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;J)V

    .line 59
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/data/model/SystemWarning;Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;JILjava/lang/Object;)Lcom/cgs/atvobserver/data/model/SystemWarning;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/cgs/atvobserver/data/model/SystemWarning;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;J)Lcom/cgs/atvobserver/data/model/SystemWarning;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/cgs/atvobserver/data/model/WarningLevel;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;J)Lcom/cgs/atvobserver/data/model/SystemWarning;
    .locals 7

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/data/model/SystemWarning;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/cgs/atvobserver/data/model/SystemWarning;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/data/model/SystemWarning;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/data/model/SystemWarning;

    iget-object v3, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    iget-object v4, v1, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLevel()Lcom/cgs/atvobserver/data/model/WarningLevel;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/model/WarningLevel;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->level:Lcom/cgs/atvobserver/data/model/WarningLevel;

    iget-wide v3, p0, Lcom/cgs/atvobserver/data/model/SystemWarning;->timestamp:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemWarning(title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
