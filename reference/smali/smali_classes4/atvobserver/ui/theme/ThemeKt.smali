.class public final Lcom/cgs/atvobserver/ui/theme/ThemeKt;
.super Ljava/lang/Object;
.source "Theme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\u0002\u001a\u00020\u00032\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0008\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "DarkColorScheme",
        "Landroidx/compose/material3/ColorScheme;",
        "CgsAtvObserverTheme",
        "",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
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
.field private static final DarkColorScheme:Landroidx/compose/material3/ColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 75

    .line 8
    nop

    .line 9
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsAccent()J

    move-result-wide v0

    .line 10
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsGreen()J

    move-result-wide v10

    .line 11
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsYellow()J

    move-result-wide v18

    .line 12
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsBackground()J

    move-result-wide v26

    .line 13
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurface()J

    move-result-wide v30

    .line 14
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsSurfaceVariant()J

    move-result-wide v34

    .line 15
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v2

    .line 16
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v12

    .line 17
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v28

    .line 18
    invoke-static {}, Lcom/cgs/atvobserver/ui/theme/ColorKt;->getCgsTextPrimary()J

    move-result-wide v32

    .line 9
    nop

    .line 15
    nop

    .line 8
    nop

    .line 10
    nop

    .line 16
    nop

    .line 8
    nop

    .line 11
    nop

    .line 8
    nop

    .line 12
    nop

    .line 17
    nop

    .line 13
    nop

    .line 18
    nop

    .line 14
    nop

    .line 8
    const/16 v73, 0xf

    const/16 v74, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const v72, -0x3e264

    invoke-static/range {v0 .. v74}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    return-void
.end method

.method public static final CgsAtvObserverTheme(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 29
    .param p0, "content"    # Lkotlin/jvm/functions/Function2;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    const-string v0, "content"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const v0, 0x31db42a4

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CgsAtvObserverTheme)24@647L120:Theme.kt#mw8xw0"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, v8, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    move v10, v1

    .end local v1    # "$dirty":I
    .local v10, "$dirty":I
    and-int/lit8 v1, v10, 0xb

    if-ne v1, v3, :cond_3

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 24
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.cgs.atvobserver.ui.theme.CgsAtvObserverTheme (Theme.kt:23)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 26
    :cond_4
    sget-object v0, Lcom/cgs/atvobserver/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    .line 27
    new-instance v2, Landroidx/compose/material3/Typography;

    move-object v11, v2

    const/16 v27, 0x7fff

    const/16 v28, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v11 .. v28}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    shl-int/lit8 v1, v10, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit16 v5, v1, 0x186

    .line 25
    const/4 v1, 0x0

    const/4 v6, 0x2

    move-object/from16 v3, p0

    move-object v4, v9

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 30
    :cond_5
    :goto_2
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/cgs/atvobserver/ui/theme/ThemeKt$CgsAtvObserverTheme$1;

    invoke-direct {v1, v7, v8}, Lcom/cgs/atvobserver/ui/theme/ThemeKt$CgsAtvObserverTheme$1;-><init>(Lkotlin/jvm/functions/Function2;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method
