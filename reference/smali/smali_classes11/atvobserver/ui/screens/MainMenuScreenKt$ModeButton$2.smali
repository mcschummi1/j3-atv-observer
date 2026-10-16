.class final Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainMenuScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $backgroundColor:J

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subtitle:Ljava/lang/String;

.field final synthetic $textColor:J

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$subtitle:Ljava/lang/String;

    iput-wide p3, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$backgroundColor:J

    iput-wide p5, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$textColor:J

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iput p8, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$$changed:I

    iput p9, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$$default:I

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

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$subtitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$backgroundColor:J

    iget-wide v4, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$textColor:J

    iget-object v6, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iget v7, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$$changed:I

    or-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    iget v9, p0, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt$ModeButton$2;->$$default:I

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->access$ModeButton-t6yy7ic(Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
