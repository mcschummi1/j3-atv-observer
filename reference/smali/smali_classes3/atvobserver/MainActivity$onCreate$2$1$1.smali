.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/MainActivity$onCreate$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/cgs/atvobserver/MainActivity$onCreate$2$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 SnapshotLongState.kt\nandroidx/compose/runtime/SnapshotLongStateKt__SnapshotLongStateKt\n+ 5 SnapshotDoubleState.kt\nandroidx/compose/runtime/SnapshotDoubleStateKt__SnapshotDoubleStateKt\n+ 6 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n*L\n1#1,453:1\n1116#2,6:454\n1116#2,6:460\n1116#2,6:466\n1116#2,6:472\n1116#2,6:478\n1116#2,6:484\n1116#2,6:490\n1116#2,6:496\n1116#2,6:502\n1116#2,6:508\n1116#2,6:514\n1116#2,6:520\n1116#2,6:526\n1116#2,6:532\n1116#2,6:538\n1116#2,6:544\n1116#2,6:550\n1116#2,6:556\n1116#2,6:562\n1116#2,6:568\n1116#2,6:574\n81#3:580\n81#3:581\n107#3,2:582\n81#3:584\n107#3,2:585\n81#3:587\n81#3:588\n81#3:589\n81#3:590\n81#3:591\n76#4:592\n109#4,2:593\n80#5:595\n113#5,2:596\n80#5:601\n113#5,2:602\n75#6:598\n108#6,2:599\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/cgs/atvobserver/MainActivity$onCreate$2$1$1\n*L\n113#1:454,6\n114#1:460,6\n142#1:466,6\n143#1:472,6\n160#1:478,6\n161#1:484,6\n162#1:490,6\n164#1:496,6\n214#1:502,6\n225#1:508,6\n226#1:514,6\n227#1:520,6\n235#1:526,6\n242#1:532,6\n326#1:538,6\n370#1:544,6\n381#1:550,6\n388#1:556,6\n398#1:562,6\n406#1:568,6\n413#1:574,6\n109#1:580\n113#1:581\n113#1:582,2\n114#1:584\n114#1:585,2\n116#1:587\n117#1:588\n118#1:589\n119#1:590\n120#1:591\n142#1:592\n142#1:593,2\n160#1:595\n160#1:596,2\n162#1:601\n162#1:602,2\n161#1:598\n161#1:599,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;
    .locals 1
    .param p0, "$configState$delegate"    # Landroidx/compose/runtime/State;

    .line 108
    invoke-static {p0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$invoke$lambda$11(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .locals 1
    .param p0, "$aiOutput$delegate"    # Landroidx/compose/runtime/State;

    .line 108
    invoke-static {p0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$11(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$invoke$lambda$13(Landroidx/compose/runtime/MutableLongState;)J
    .locals 2
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;

    .line 108
    invoke-static {p0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$13(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$invoke$lambda$14(Landroidx/compose/runtime/MutableLongState;J)V
    .locals 0
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;
    .param p1, "value"    # J

    .line 108
    invoke-static {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$14(Landroidx/compose/runtime/MutableLongState;J)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$17(Landroidx/compose/runtime/MutableDoubleState;)D
    .locals 2
    .param p0, "$testSpeed$delegate"    # Landroidx/compose/runtime/MutableDoubleState;

    .line 108
    invoke-static {p0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$17(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$invoke$lambda$18(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 0
    .param p0, "$testSpeed$delegate"    # Landroidx/compose/runtime/MutableDoubleState;
    .param p1, "value"    # D

    .line 108
    invoke-static {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$18(Landroidx/compose/runtime/MutableDoubleState;D)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 1
    .param p0, "$currentScreen$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 108
    invoke-static {p0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$invoke$lambda$21(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0
    .param p0, "$testRpm$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 108
    invoke-static {p0, p1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$21(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$23(Landroidx/compose/runtime/MutableDoubleState;)D
    .locals 2
    .param p0, "$testDistance$delegate"    # Landroidx/compose/runtime/MutableDoubleState;

    .line 108
    invoke-static {p0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$23(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$invoke$lambda$24(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 0
    .param p0, "$testDistance$delegate"    # Landroidx/compose/runtime/MutableDoubleState;
    .param p1, "value"    # D

    .line 108
    invoke-static {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$24(Landroidx/compose/runtime/MutableDoubleState;D)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .param p0, "$currentScreen$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Ljava/lang/String;

    .line 108
    invoke-static {p0, p1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/cgs/atvobserver/data/model/RideMode;)V
    .locals 0
    .param p0, "$selectedMode$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Lcom/cgs/atvobserver/data/model/RideMode;

    .line 108
    invoke-static {p0, p1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/cgs/atvobserver/data/model/RideMode;)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;
    .locals 1
    .param p0, "$universalData$delegate"    # Landroidx/compose/runtime/State;

    .line 108
    invoke-static {p0}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;
    .locals 4
    .param p0, "$configState$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;)",
            "Lcom/cgs/atvobserver/data/config/AppConfig;"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 580
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/cgs/atvobserver/data/config/AppConfig;

    .line 109
    return-object v0
.end method

.method private static final invoke$lambda$10(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .locals 4
    .param p0, "$cameraSurface$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
            ">;)",
            "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;"
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 590
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 119
    return-object v0
.end method

.method private static final invoke$lambda$11(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;
    .locals 4
    .param p0, "$aiOutput$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            ">;)",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;"
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 591
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    .line 120
    return-object v0
.end method

.method private static final invoke$lambda$13(Landroidx/compose/runtime/MutableLongState;)J
    .locals 4
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;

    .line 142
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/LongState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/LongState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 592
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/LongState;->getLongValue()J

    move-result-wide v0

    .line 142
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/LongState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return-wide v0
.end method

.method private static final invoke$lambda$14(Landroidx/compose/runtime/MutableLongState;J)V
    .locals 4
    .param p0, "$rideSeconds$delegate"    # Landroidx/compose/runtime/MutableLongState;
    .param p1, "value"    # J

    .line 142
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableLongState;
    const/4 v3, 0x0

    .line 593
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    .line 594
    nop

    .line 142
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableLongState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$17(Landroidx/compose/runtime/MutableDoubleState;)D
    .locals 4
    .param p0, "$testSpeed$delegate"    # Landroidx/compose/runtime/MutableDoubleState;

    .line 160
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/DoubleState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/DoubleState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 595
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/DoubleState;->getDoubleValue()D

    move-result-wide v0

    .line 160
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/DoubleState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return-wide v0
.end method

.method private static final invoke$lambda$18(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 4
    .param p0, "$testSpeed$delegate"    # Landroidx/compose/runtime/MutableDoubleState;
    .param p1, "value"    # D

    .line 160
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableDoubleState;
    const/4 v3, 0x0

    .line 596
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->setDoubleValue(D)V

    .line 597
    nop

    .line 160
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableDoubleState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 4
    .param p0, "$currentScreen$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 113
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 581
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/String;

    .line 113
    return-object v0
.end method

.method private static final invoke$lambda$20(Landroidx/compose/runtime/MutableIntState;)I
    .locals 4
    .param p0, "$testRpm$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 161
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 598
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 161
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private static final invoke$lambda$21(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 4
    .param p0, "$testRpm$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 161
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v3, 0x0

    .line 599
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 600
    nop

    .line 161
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$23(Landroidx/compose/runtime/MutableDoubleState;)D
    .locals 4
    .param p0, "$testDistance$delegate"    # Landroidx/compose/runtime/MutableDoubleState;

    .line 162
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/DoubleState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/DoubleState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 601
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/DoubleState;->getDoubleValue()D

    move-result-wide v0

    .line 162
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/DoubleState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return-wide v0
.end method

.method private static final invoke$lambda$24(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 4
    .param p0, "$testDistance$delegate"    # Landroidx/compose/runtime/MutableDoubleState;
    .param p1, "value"    # D

    .line 162
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableDoubleState;
    const/4 v3, 0x0

    .line 602
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->setDoubleValue(D)V

    .line 603
    nop

    .line 162
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableDoubleState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$3(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 4
    .param p0, "$currentScreen$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 582
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 583
    nop

    .line 113
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$5(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/RideMode;
    .locals 4
    .param p0, "$selectedMode$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/RideMode;",
            ">;)",
            "Lcom/cgs/atvobserver/data/model/RideMode;"
        }
    .end annotation

    .line 114
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 584
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/cgs/atvobserver/data/model/RideMode;

    .line 114
    return-object v0
.end method

.method private static final invoke$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/cgs/atvobserver/data/model/RideMode;)V
    .locals 4
    .param p0, "$selectedMode$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Lcom/cgs/atvobserver/data/model/RideMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/RideMode;",
            ">;",
            "Lcom/cgs/atvobserver/data/model/RideMode;",
            ")V"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 585
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 586
    nop

    .line 114
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final invoke$lambda$7(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/location/GpsData;
    .locals 4
    .param p0, "$gpsData$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/location/GpsData;",
            ">;)",
            "Lcom/cgs/atvobserver/location/GpsData;"
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 587
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/cgs/atvobserver/location/GpsData;

    .line 116
    return-object v0
.end method

.method private static final invoke$lambda$8(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .locals 4
    .param p0, "$audioData$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            ">;)",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;"
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 588
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    .line 117
    return-object v0
.end method

.method private static final invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;
    .locals 4
    .param p0, "$universalData$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
            ">;)",
            "Lcom/cgs/atvobserver/sensor/UniversalSensorData;"
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 589
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    .line 118
    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 64
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    const-string v1, "C108@4799L16,112@5050L54,113@5145L42,115@5243L16,116@5326L16,117@5418L16,118@5514L16,119@5585L16,135@6501L215,141@6839L35,142@6925L342,142@6895L372,159@7745L39,160@7820L36,161@7897L38,163@7999L564,163@7957L606,193@9692L722:MainActivity.kt#n931v1"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 109
    and-int/lit8 v1, v14, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v15

    goto/16 :goto_21

    .line 109
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v3, "com.cgs.atvobserver.MainActivity.onCreate.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:108)"

    const v4, 0x6c4232

    invoke-static {v4, v14, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v1}, Lcom/cgs/atvobserver/MainActivity;->access$getConfigManager$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/config/AppConfigManager;

    move-result-object v1

    const-string v3, "configManager"

    const/4 v4, 0x0

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_3
    invoke-virtual {v1}, Lcom/cgs/atvobserver/data/config/AppConfigManager;->getConfigState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-static {v1, v4, v15, v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 110
    .local v13, "configState$delegate":Landroidx/compose/runtime/State;
    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getVehicleConfigs()Ljava/util/Map;

    move-result-object v1

    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    if-nez v1, :cond_4

    new-instance v1, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;

    const/16 v23, 0xf

    const/16 v24, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v24}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;-><init>(DDILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    move-object/from16 v26, v1

    .local v26, "activeVehicleCfg":Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;
    const v1, 0x77f896d3

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):MainActivity.kt#9igjgp"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 113
    const/16 v27, 0x0

    move/from16 v7, v27

    .local v7, "invalid$iv":Z
    move-object/from16 v8, p1

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 454
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 455
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_5

    .line 456
    const/4 v12, 0x0

    .line 113
    .local v12, "$i$a$-cache-MainActivity$onCreate$2$1$1$currentScreen$2":I
    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/cgs/atvobserver/data/config/AppConfig;->getStartupScreen()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v2, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 456
    .end local v12    # "$i$a$-cache-MainActivity$onCreate$2$1$1$currentScreen$2":I
    nop

    .line 457
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    nop

    .end local v5    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 459
    :cond_5
    move-object v5, v10

    .line 455
    :goto_1
    nop

    .line 454
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 113
    .end local v7    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v7, 0x77f8a2a7

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 114
    move-object/from16 v7, p1

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v8, v27

    .local v8, "invalid$iv":Z
    const/4 v9, 0x0

    .line 460
    .restart local v9    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 461
    .restart local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_6

    .line 462
    const/4 v12, 0x0

    .line 114
    .local v12, "$i$a$-cache-MainActivity$onCreate$2$1$1$selectedMode$2":I
    sget-object v6, Lcom/cgs/atvobserver/data/model/RideMode;->TRIP:Lcom/cgs/atvobserver/data/model/RideMode;

    invoke-static {v6, v4, v2, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 462
    .end local v12    # "$i$a$-cache-MainActivity$onCreate$2$1$1$selectedMode$2":I
    nop

    .line 463
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 464
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 465
    :cond_6
    move-object v2, v10

    .line 461
    :goto_2
    nop

    .line 460
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 114
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$i$f$cache":I
    move-object v6, v2

    check-cast v6, Landroidx/compose/runtime/MutableState;

    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 116
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity;->access$getGpsTracker$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/location/GpsTracker;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, "gpsTracker"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_7
    invoke-virtual {v2}, Lcom/cgs/atvobserver/location/GpsTracker;->getGpsData()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v7, 0x1

    const/16 v8, 0x8

    invoke-static {v2, v4, v15, v8, v7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v28

    .line 117
    .local v28, "gpsData$delegate":Landroidx/compose/runtime/State;
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity;->access$getAudioProcessor$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "audioProcessor"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_8
    invoke-virtual {v2}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->getAnalysisState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v7, 0x1

    const/16 v8, 0x8

    invoke-static {v2, v4, v15, v8, v7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v29

    .line 118
    .local v29, "audioData$delegate":Landroidx/compose/runtime/State;
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity;->access$getUniversalSensorManager$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/sensor/UniversalSensorManager;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "universalSensorManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_9
    invoke-virtual {v2}, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->getSensorData()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v7, 0x1

    const/16 v8, 0x8

    invoke-static {v2, v4, v15, v8, v7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v30

    .line 119
    .local v30, "universalData$delegate":Landroidx/compose/runtime/State;
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity;->access$getCameraAnalyzerManager$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v2, "cameraAnalyzerManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_a
    invoke-virtual {v2}, Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;->getDetectedSurface()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v7, 0x1

    const/16 v8, 0x8

    invoke-static {v2, v4, v15, v8, v7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v31

    .line 120
    .local v31, "cameraSurface$delegate":Landroidx/compose/runtime/State;
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity;->access$getAiEngine$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/ai/ObserverAiEngine;

    move-result-object v2

    if-nez v2, :cond_b

    const-string v2, "aiEngine"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_b
    invoke-virtual {v2}, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->getAiOutput()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v7, 0x1

    const/16 v8, 0x8

    invoke-static {v2, v4, v15, v8, v7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 123
    .local v2, "aiOutput$delegate":Landroidx/compose/runtime/State;
    new-instance v7, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    .line 124
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getGForceMagnitude()D

    move-result-wide v33

    .line 125
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getRawX()F

    move-result v35

    .line 126
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getRawY()F

    move-result v36

    .line 127
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getRawZ()F

    move-result v37

    .line 128
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getVibrationIntensity()D

    move-result-wide v38

    .line 129
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getHardBrakingDetected()Z

    move-result v40

    .line 130
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getHardLaunchDetected()Z

    move-result v41

    .line 131
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getCrashOrFallDetected()Z

    move-result v42

    .line 132
    invoke-static/range {v30 .. v30}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable()Z

    move-result v43

    .line 123
    const/16 v45, 0x200

    const/16 v46, 0x0

    const/16 v44, 0x0

    move-object/from16 v32, v7

    invoke-direct/range {v32 .. v46}, Lcom/cgs/atvobserver/sensor/MotionSensorData;-><init>(DFFFDZZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v7

    .line 136
    .local v12, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    invoke-static {v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$1;

    iget-object v9, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-direct {v8, v9, v5, v4}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$1;-><init>(Lcom/cgs/atvobserver/MainActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/16 v11, 0x40

    invoke-static {v7, v8, v15, v11}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v7, 0x77f97660

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 142
    move-object/from16 v7, p1

    .restart local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v8, v27

    .restart local v8    # "invalid$iv":Z
    const/4 v9, 0x0

    .line 466
    .restart local v9    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 467
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_c

    .line 468
    const/4 v11, 0x0

    .line 142
    .local v11, "$i$a$-cache-MainActivity$onCreate$2$1$1$rideSeconds$2":I
    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Landroidx/compose/runtime/SnapshotLongStateKt;->mutableLongStateOf(J)Landroidx/compose/runtime/MutableLongState;

    move-result-object v11

    .line 468
    .end local v11    # "$i$a$-cache-MainActivity$onCreate$2$1$1$rideSeconds$2":I
    nop

    .line 469
    .local v11, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 470
    nop

    .end local v11    # "value$iv":Ljava/lang/Object;
    goto :goto_3

    .line 471
    :cond_c
    move-object v11, v10

    .line 467
    :goto_3
    nop

    .line 466
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 142
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$i$f$cache":I
    check-cast v11, Landroidx/compose/runtime/MutableLongState;

    .local v11, "rideSeconds$delegate":Landroidx/compose/runtime/MutableLongState;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 143
    invoke-static {v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x77f98253

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v8, 0x0

    .restart local v8    # "invalid$iv":Z
    move-object/from16 v9, p1

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 472
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 473
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v33, v2

    .end local v2    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_d

    .line 474
    const/4 v2, 0x0

    .line 143
    .local v2, "$i$a$-cache-MainActivity$onCreate$2$1$1$2":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-cache-MainActivity$onCreate$2$1$1$2":I
    .local v17, "$i$a$-cache-MainActivity$onCreate$2$1$1$2":I
    new-instance v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;

    move-object/from16 v19, v12

    const/4 v12, 0x0

    .end local v12    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v19, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    invoke-direct {v2, v5, v11, v12}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 474
    .end local v17    # "$i$a$-cache-MainActivity$onCreate$2$1$1$2":I
    nop

    .line 475
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 476
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_4

    .line 477
    .end local v19    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v12    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :cond_d
    move-object/from16 v19, v12

    const/4 v12, 0x0

    .end local v12    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v19    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    move-object v2, v4

    .line 473
    :goto_4
    nop

    .line 472
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 143
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v4, 0x40

    invoke-static {v7, v2, v15, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 154
    const-wide/high16 v34, 0x4037000000000000L    # 23.0

    .line 155
    .local v34, "ambientTemp":D
    const-wide/high16 v36, 0x4056000000000000L    # 88.0

    .line 156
    .local v36, "targetOperatingTemp":D
    invoke-static {v11}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$13(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double v20, v7, v9

    const-wide/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v20 .. v25}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v38

    .line 157
    .local v38, "warmUpProgress":D
    sub-double v7, v36, v34

    mul-double v7, v7, v38

    add-double v40, v34, v7

    .local v40, "simulatedEngineTemp":D
    const v2, 0x77f9e7a4

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 160
    move/from16 v2, v27

    .local v2, "invalid$iv":Z
    move-object/from16 v7, p1

    .restart local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 478
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 479
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v9, v4, :cond_e

    .line 480
    const/4 v4, 0x0

    .line 160
    .local v4, "$i$a$-cache-MainActivity$onCreate$2$1$1$testSpeed$2":I
    const-wide v16, 0x4041800000000000L    # 35.0

    invoke-static/range {v16 .. v17}, Landroidx/compose/runtime/SnapshotDoubleStateKt;->mutableDoubleStateOf(D)Landroidx/compose/runtime/MutableDoubleState;

    move-result-object v4

    .line 480
    .end local v4    # "$i$a$-cache-MainActivity$onCreate$2$1$1$testSpeed$2":I
    nop

    .line 481
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 482
    nop

    .end local v4    # "value$iv":Ljava/lang/Object;
    goto :goto_5

    .line 483
    :cond_e
    move-object v4, v9

    .line 479
    :goto_5
    nop

    .line 478
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 160
    .end local v2    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    move-object/from16 v32, v4

    check-cast v32, Landroidx/compose/runtime/MutableDoubleState;

    .local v32, "testSpeed$delegate":Landroidx/compose/runtime/MutableDoubleState;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v2, 0x77f9f101

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 161
    move-object/from16 v2, p1

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v4, v27

    .local v4, "invalid$iv":Z
    const/4 v7, 0x0

    .line 484
    .local v7, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 485
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_f

    .line 486
    const/4 v10, 0x0

    .line 161
    .local v10, "$i$a$-cache-MainActivity$onCreate$2$1$1$testRpm$2":I
    const/16 v16, 0xd48

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v10

    .line 486
    .end local v10    # "$i$a$-cache-MainActivity$onCreate$2$1$1$testRpm$2":I
    nop

    .line 487
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 488
    nop

    .end local v10    # "value$iv":Ljava/lang/Object;
    goto :goto_6

    .line 489
    :cond_f
    move-object v10, v8

    .line 485
    :goto_6
    nop

    .line 484
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 161
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "invalid$iv":Z
    .end local v7    # "$i$f$cache":I
    move-object/from16 v42, v10

    check-cast v42, Landroidx/compose/runtime/MutableIntState;

    .local v42, "testRpm$delegate":Landroidx/compose/runtime/MutableIntState;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v2, 0x77f9faa3

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 162
    move/from16 v2, v27

    .local v2, "invalid$iv":Z
    move-object/from16 v4, p1

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 490
    .restart local v7    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 491
    .restart local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_10

    .line 492
    const/4 v10, 0x0

    .line 162
    .local v10, "$i$a$-cache-MainActivity$onCreate$2$1$1$testDistance$2":I
    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Landroidx/compose/runtime/SnapshotDoubleStateKt;->mutableDoubleStateOf(D)Landroidx/compose/runtime/MutableDoubleState;

    move-result-object v10

    .line 492
    .end local v10    # "$i$a$-cache-MainActivity$onCreate$2$1$1$testDistance$2":I
    nop

    .line 493
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 494
    nop

    .end local v10    # "value$iv":Ljava/lang/Object;
    goto :goto_7

    .line 495
    :cond_10
    move-object v10, v8

    .line 491
    :goto_7
    nop

    .line 490
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 162
    .end local v2    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    move-object/from16 v43, v10

    check-cast v43, Landroidx/compose/runtime/MutableDoubleState;

    .local v43, "testDistance$delegate":Landroidx/compose/runtime/MutableDoubleState;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 164
    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    const v4, 0x77fa0971

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv":Z
    move-object/from16 v10, p1

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 496
    .local v16, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 497
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_12

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v9, v7, :cond_11

    goto :goto_8

    .line 501
    :cond_11
    move/from16 v18, v4

    move-object/from16 v23, v9

    move-object v7, v10

    move-object/from16 v44, v11

    move-object/from16 v46, v12

    move-object/from16 v45, v19

    const/16 v4, 0x40

    goto :goto_9

    .line 498
    :cond_12
    :goto_8
    const/16 v20, 0x0

    .line 164
    .local v20, "$i$a$-cache-MainActivity$onCreate$2$1$1$3":I
    new-instance v21, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;

    const/16 v22, 0x0

    move-object/from16 v7, v21

    move-object v8, v13

    move-object/from16 v23, v9

    .end local v9    # "it$iv":Ljava/lang/Object;
    .local v23, "it$iv":Ljava/lang/Object;
    move-object/from16 v9, v43

    move-object/from16 v53, v10

    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v53, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v32

    move/from16 v18, v4

    move-object/from16 v44, v11

    const/16 v4, 0x40

    .end local v4    # "invalid$iv":Z
    .end local v11    # "rideSeconds$delegate":Landroidx/compose/runtime/MutableLongState;
    .local v18, "invalid$iv":Z
    .local v44, "rideSeconds$delegate":Landroidx/compose/runtime/MutableLongState;
    move-object/from16 v11, v42

    move-object/from16 v46, v12

    move-object/from16 v45, v19

    .end local v19    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v45, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    move-object/from16 v12, v22

    invoke-direct/range {v7 .. v12}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$3$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableDoubleState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 498
    .end local v20    # "$i$a$-cache-MainActivity$onCreate$2$1$1$3":I
    move-object/from16 v9, v21

    .line 499
    .local v9, "value$iv":Ljava/lang/Object;
    move-object/from16 v7, v53

    .end local v53    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 500
    nop

    .line 497
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 496
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v23    # "it$iv":Ljava/lang/Object;
    nop

    .line 164
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local v18    # "invalid$iv":Z
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v2, v9, v15, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 177
    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    sget-object v4, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v2, v4, :cond_13

    .line 178
    invoke-static/range {v28 .. v28}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$7(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v47

    .line 179
    invoke-static/range {v32 .. v32}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$17(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v48

    .line 180
    invoke-static/range {v28 .. v28}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$7(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/location/GpsData;->getMaxSpeedKmh()D

    move-result-wide v7

    invoke-static/range {v32 .. v32}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$17(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v50

    .line 181
    invoke-static/range {v43 .. v43}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$23(Landroidx/compose/runtime/MutableDoubleState;)D

    move-result-wide v52

    .line 182
    nop

    .line 178
    const/16 v60, 0x70

    const/16 v61, 0x0

    const/16 v54, 0x1

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v61}, Lcom/cgs/atvobserver/location/GpsData;->copy$default(Lcom/cgs/atvobserver/location/GpsData;DDDZDDFILjava/lang/Object;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v2

    goto :goto_a

    .line 184
    :cond_13
    invoke-static/range {v28 .. v28}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$7(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v2

    .line 177
    :goto_a
    move-object v12, v2

    .line 186
    .local v12, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    sget-object v4, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v2, v4, :cond_14

    .line 187
    new-instance v2, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    invoke-static/range {v42 .. v42}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$20(Landroidx/compose/runtime/MutableIntState;)I

    move-result v48

    const/16 v56, 0x30

    const/16 v57, 0x0

    const/16 v49, 0x19

    const/16 v50, 0x1

    const/16 v51, 0x1

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const-string v55, "SIMULATED"

    move-object/from16 v47, v2

    invoke-direct/range {v47 .. v57}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v48, v2

    goto :goto_b

    .line 188
    :cond_14
    invoke-static/range {v29 .. v29}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$8(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    move-result-object v2

    move-object/from16 v48, v2

    .line 186
    :goto_b
    nop

    .line 190
    .local v48, "effectiveAudio":Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    sget-object v4, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v2, v4, :cond_15

    move-wide/from16 v10, v40

    goto :goto_c

    :cond_15
    const-wide v7, -0x3f70c80000000000L    # -999.0

    move-wide v10, v7

    .line 193
    .local v10, "effectiveTemp":D
    :goto_c
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v53

    .line 194
    .local v53, "appContext":Landroid/content/Context;
    invoke-static/range {v31 .. v31}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$10(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    move-result-object v50

    invoke-static {v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v51

    invoke-static {v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v47, v12

    move-object/from16 v49, v45

    filled-new-array/range {v47 .. v52}, [Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;

    iget-object v7, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    const/16 v25, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v53

    move-object/from16 v19, v12

    move-object/from16 v20, v48

    move-object/from16 v21, v45

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    move-object/from16 v24, v30

    invoke-direct/range {v16 .. v25}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;-><init>(Lcom/cgs/atvobserver/MainActivity;Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0x48

    invoke-static {v2, v4, v15, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 207
    invoke-static {v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move-object v1, v5

    move-object v7, v12

    move-object v2, v15

    move-object/from16 v25, v33

    move-object/from16 v0, v45

    move-object/from16 v33, v6

    move-object/from16 v45, v13

    .end local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v6    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .end local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v0, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v1, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v7, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v25, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v45, "configState$delegate":Landroidx/compose/runtime/State;
    goto/16 :goto_1f

    .end local v0    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .end local v1    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v7    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v6    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v45, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :sswitch_0
    const-string v4, "CONFIG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object v1, v5

    move-object v7, v12

    move-object v2, v15

    move-object/from16 v25, v33

    move-object/from16 v0, v45

    move-object/from16 v33, v6

    move-object/from16 v45, v13

    goto/16 :goto_1f

    .line 231
    :cond_16
    const v2, -0x787e22bb

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "234@12119L31,231@11916L264"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 233
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity;->access$getConfigManager$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/config/AppConfigManager;

    move-result-object v2

    if-nez v2, :cond_17

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v46

    .line 234
    :cond_17
    iget-object v3, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v3}, Lcom/cgs/atvobserver/MainActivity;->access$getDaelimOdometerManager$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/domain/DaelimOdometerManager;

    move-result-object v3

    if-nez v3, :cond_18

    const-string v3, "daelimOdometerManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    move-object/from16 v46, v3

    :goto_d
    const v3, 0x77fc0a5c

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 235
    move/from16 v1, v27

    .local v1, "invalid$iv":Z
    move-object/from16 v3, p1

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 526
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 527
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_19

    .line 528
    const/4 v9, 0x0

    .line 235
    .local v9, "$i$a$-cache-MainActivity$onCreate$2$1$1$10":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$10$1;

    invoke-direct {v1, v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$10$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 528
    .end local v9    # "$i$a$-cache-MainActivity$onCreate$2$1$1$10":I
    nop

    .line 529
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 530
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_e

    .line 531
    .end local v16    # "invalid$iv":Z
    .local v1, "invalid$iv":Z
    :cond_19
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .restart local v16    # "invalid$iv":Z
    move-object v1, v7

    .line 527
    :goto_e
    nop

    .line 526
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 235
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 232
    const/16 v7, 0x1c8

    const/4 v8, 0x0

    move-object v1, v2

    move-object/from16 v9, v33

    .end local v33    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v9, "aiOutput$delegate":Landroidx/compose/runtime/State;
    move-object/from16 v2, v46

    move-object/from16 v4, p1

    move-object v14, v5

    .end local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v14, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    move v5, v7

    move-object v7, v6

    .end local v6    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v7, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/cgs/atvobserver/ui/screens/ConfigScreenKt;->ConfigScreen(Lcom/cgs/atvobserver/data/config/AppConfigManager;Lcom/cgs/atvobserver/domain/DaelimOdometerManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 231
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v33, v7

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v0, v45

    move-object/from16 v45, v13

    goto/16 :goto_20

    .line 207
    .end local v7    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .end local v9    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .end local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v6    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v33    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    :sswitch_1
    move-object v14, v5

    move-object/from16 v9, v33

    .end local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v33    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v9    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    const-string v3, "APP_DIAG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_10

    .line 385
    :cond_1a
    const v2, -0x77e8cfbc

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "387@21923L31,385@21783L201"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v12}, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable()Z

    move-result v2

    const v3, 0x7800d3dc

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 388
    move/from16 v1, v27

    .restart local v1    # "invalid$iv":Z
    move-object/from16 v3, p1

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 556
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 557
    .restart local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1b

    .line 558
    const/4 v7, 0x0

    .line 388
    .local v7, "$i$a$-cache-MainActivity$onCreate$2$1$1$18":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .restart local v16    # "invalid$iv":Z
    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$18$1;

    invoke-direct {v1, v14}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$18$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 558
    .end local v7    # "$i$a$-cache-MainActivity$onCreate$2$1$1$18":I
    nop

    .line 559
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 560
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_f

    .line 561
    .end local v16    # "invalid$iv":Z
    .local v1, "invalid$iv":Z
    :cond_1b
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .restart local v16    # "invalid$iv":Z
    move-object v1, v5

    .line 557
    :goto_f
    nop

    .line 556
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 388
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 386
    const/16 v3, 0x30

    invoke-static {v2, v1, v15, v3}, Lcom/cgs/atvobserver/ui/screens/AppDiagScreenKt;->AppDiagScreen(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 385
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v33, v6

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v0, v45

    move-object/from16 v45, v13

    goto/16 :goto_20

    .line 207
    .end local v9    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .end local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v33    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    :sswitch_2
    move-object v14, v5

    move-object/from16 v9, v33

    .end local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v33    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v9    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    const-string v3, "ATV_DIAG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_10
    move-object/from16 v33, v6

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v0, v45

    move-object/from16 v45, v13

    goto/16 :goto_1f

    .line 392
    :cond_1c
    const v2, -0x77e43d7c

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "397@22380L31,392@22080L361"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 394
    nop

    .line 395
    nop

    .line 396
    invoke-static {v9}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$11(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-result-object v2

    .line 397
    const v3, 0x78010cfc

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 398
    move/from16 v1, v27

    .restart local v1    # "invalid$iv":Z
    move-object/from16 v3, p1

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 562
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 563
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_1d

    .line 564
    const/4 v8, 0x0

    .line 398
    .local v8, "$i$a$-cache-MainActivity$onCreate$2$1$1$19":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .restart local v16    # "invalid$iv":Z
    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$19$1;

    invoke-direct {v1, v14}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$19$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 564
    .end local v8    # "$i$a$-cache-MainActivity$onCreate$2$1$1$19":I
    nop

    .line 565
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 566
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_11

    .line 567
    .end local v16    # "invalid$iv":Z
    .local v1, "invalid$iv":Z
    :cond_1d
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .restart local v16    # "invalid$iv":Z
    move-object v1, v5

    .line 563
    :goto_11
    nop

    .line 562
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 398
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 393
    const/16 v3, 0x6000

    const/4 v4, 0x0

    move-object/from16 v7, v48

    move-object/from16 v8, v45

    move-object v5, v9

    .end local v9    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v5, "aiOutput$delegate":Landroidx/compose/runtime/State;
    move-object v9, v2

    move-object v2, v12

    .end local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v2, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    move-object v12, v1

    move-object v1, v13

    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v1, "configState$delegate":Landroidx/compose/runtime/State;
    move-object/from16 v13, p1

    move-object/from16 v33, v6

    move-object v6, v14

    .end local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    move v14, v3

    move-object v3, v15

    move v15, v4

    invoke-static/range {v7 .. v15}, Lcom/cgs/atvobserver/ui/screens/AtvDiagScreenKt;->AtvDiagScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 392
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v7, v2

    move-object v2, v3

    move-object/from16 v25, v5

    move-object/from16 v0, v45

    move-object/from16 v45, v1

    move-object v1, v6

    goto/16 :goto_20

    .line 207
    .end local v1    # "configState$delegate":Landroidx/compose/runtime/State;
    .end local v2    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    :sswitch_3
    move-object v8, v12

    move-object v9, v13

    move-object v3, v15

    move-object/from16 v63, v6

    move-object v6, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v63

    .end local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v5, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v6, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v8, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v9, "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    const-string v4, "TRIP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v3

    move-object/from16 v25, v5

    move-object v1, v6

    move-object v7, v8

    move-object/from16 v0, v45

    move-object/from16 v45, v9

    goto/16 :goto_1f

    .line 246
    :cond_1e
    const v2, -0x7871a5bc

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "325@18153L31,246@12573L5641"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 248
    invoke-static {v9}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v12

    .line 249
    invoke-virtual/range {v26 .. v26}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->getTankCapacityL()D

    move-result-wide v13

    .line 252
    invoke-static {v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$11(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-result-object v17

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 247
    new-instance v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12;

    iget-object v4, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    move-object/from16 v7, v45

    .end local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v7, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    invoke-direct {v2, v4, v8, v7, v5}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12;-><init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/sensor/MotionSensorData;Landroidx/compose/runtime/State;)V

    move-object/from16 v20, v2

    check-cast v20, Lkotlin/jvm/functions/Function4;

    new-instance v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;

    iget-object v4, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-direct {v2, v4, v8, v9}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;-><init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;Landroidx/compose/runtime/State;)V

    move-object/from16 v21, v2

    check-cast v21, Lkotlin/jvm/functions/Function3;

    const v2, 0x77fefc9c

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 326
    move/from16 v1, v27

    .local v1, "invalid$iv":Z
    move-object/from16 v2, p1

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 538
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 539
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v1

    .end local v1    # "invalid$iv":Z
    .local v19, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v15, v1, :cond_1f

    .line 540
    const/4 v1, 0x0

    .line 326
    .local v1, "$i$a$-cache-MainActivity$onCreate$2$1$1$14":I
    move/from16 v18, v1

    .end local v1    # "$i$a$-cache-MainActivity$onCreate$2$1$1$14":I
    .local v18, "$i$a$-cache-MainActivity$onCreate$2$1$1$14":I
    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$14$1;

    invoke-direct {v1, v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$14$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 540
    .end local v18    # "$i$a$-cache-MainActivity$onCreate$2$1$1$14":I
    nop

    .line 541
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 542
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_12

    .line 543
    :cond_1f
    move-object v1, v15

    .line 539
    :goto_12
    nop

    .line 538
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 326
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v19    # "invalid$iv":Z
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 247
    const/high16 v24, 0x6000000

    const/16 v25, 0x0

    move-object v15, v8

    move-object/from16 v16, v48

    move-wide/from16 v18, v10

    move-object/from16 v23, p1

    invoke-static/range {v12 .. v25}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->TripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 246
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v3

    move-object/from16 v25, v5

    move-object v1, v6

    move-object v0, v7

    move-object v7, v8

    move-object/from16 v45, v9

    goto/16 :goto_20

    .line 207
    .end local v7    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .end local v8    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :sswitch_4
    move-object v8, v12

    move-object v9, v13

    move-object v3, v15

    move-object/from16 v7, v45

    move-object/from16 v63, v6

    move-object v6, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v63

    .end local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .end local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v5, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v6, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v7    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v8    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    const-string v4, "LOGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_16

    .line 410
    :cond_20
    const v2, -0x77d82e90

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "412@23010L31,410@22882L189"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 412
    iget-object v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v2}, Lcom/cgs/atvobserver/MainActivity;->access$getDatabase$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/db/AppDatabase;

    move-result-object v2

    if-nez v2, :cond_21

    const-string v2, "database"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v4, v46

    goto :goto_13

    :cond_21
    move-object v4, v2

    :goto_13
    invoke-virtual {v4}, Lcom/cgs/atvobserver/data/db/AppDatabase;->rideDao()Lcom/cgs/atvobserver/data/db/RideDao;

    move-result-object v2

    const v4, 0x78015bbc

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 413
    move/from16 v1, v27

    .local v1, "invalid$iv":Z
    move-object/from16 v4, p1

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 574
    .local v12, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 575
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_22

    .line 576
    const/4 v15, 0x0

    .line 413
    .local v15, "$i$a$-cache-MainActivity$onCreate$2$1$1$21":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$21$1;

    invoke-direct {v1, v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$21$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 576
    .end local v15    # "$i$a$-cache-MainActivity$onCreate$2$1$1$21":I
    nop

    .line 577
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 578
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_14

    .line 579
    .end local v16    # "invalid$iv":Z
    .local v1, "invalid$iv":Z
    :cond_22
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .restart local v16    # "invalid$iv":Z
    move-object v1, v13

    .line 575
    :goto_14
    nop

    .line 574
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 413
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 411
    const/16 v4, 0x30

    invoke-static {v2, v1, v3, v4}, Lcom/cgs/atvobserver/ui/screens/RideHistoryScreenKt;->RideHistoryScreen(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 410
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v3

    move-object/from16 v25, v5

    move-object v1, v6

    move-object v0, v7

    move-object v7, v8

    move-object/from16 v45, v9

    goto/16 :goto_20

    .line 207
    .end local v7    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .end local v8    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v12, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v13, "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :sswitch_5
    move-object v8, v12

    move-object v9, v13

    move-object v3, v15

    move-object/from16 v7, v45

    move-object/from16 v63, v6

    move-object v6, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v63

    .end local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .end local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v5, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v6, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v7    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v8    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    const-string v4, "TEST_TRACK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_16

    .line 374
    :cond_23
    const v2, -0x77f129e3

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "380@21626L31,374@21223L464"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 376
    invoke-static {v9}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v12

    .line 377
    invoke-virtual/range {v26 .. v26}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->getTankCapacityL()D

    move-result-wide v13

    .line 378
    nop

    .line 379
    nop

    .line 380
    const v2, 0x7800aebc

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 381
    move/from16 v1, v27

    .restart local v1    # "invalid$iv":Z
    move-object/from16 v2, p1

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 550
    .local v4, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 551
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v1

    .end local v1    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v15, v1, :cond_24

    .line 552
    const/4 v1, 0x0

    .line 381
    .local v1, "$i$a$-cache-MainActivity$onCreate$2$1$1$17":I
    move/from16 v17, v1

    .end local v1    # "$i$a$-cache-MainActivity$onCreate$2$1$1$17":I
    .local v17, "$i$a$-cache-MainActivity$onCreate$2$1$1$17":I
    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$17$1;

    invoke-direct {v1, v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$17$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 552
    .end local v17    # "$i$a$-cache-MainActivity$onCreate$2$1$1$17":I
    nop

    .line 553
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 554
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_15

    .line 555
    :cond_24
    move-object v1, v15

    .line 551
    :goto_15
    nop

    .line 550
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 381
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v18    # "invalid$iv":Z
    move-object/from16 v19, v1

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 375
    const/high16 v21, 0x30000

    const/16 v22, 0x0

    move-object v15, v8

    move-object/from16 v16, v48

    move-wide/from16 v17, v10

    move-object/from16 v20, p1

    invoke-static/range {v12 .. v22}, Lcom/cgs/atvobserver/ui/screens/TestTrackScreenKt;->TestTrackScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 374
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v3

    move-object/from16 v25, v5

    move-object v1, v6

    move-object v0, v7

    move-object v7, v8

    move-object/from16 v45, v9

    goto/16 :goto_20

    .line 207
    .end local v7    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .end local v8    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :sswitch_6
    move-object v8, v12

    move-object v9, v13

    move-object v3, v15

    move-object/from16 v7, v45

    move-object/from16 v63, v6

    move-object v6, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v63

    .end local v12    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .end local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v5, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v6, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v7    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v8    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    const-string v4, "MAIN_MENU"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :goto_16
    move-object v2, v3

    move-object/from16 v25, v5

    move-object v1, v6

    move-object v0, v7

    move-object v7, v8

    move-object/from16 v45, v9

    goto/16 :goto_1f

    .line 208
    :cond_25
    const v2, -0x7892a881

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "213@10846L709,224@11602L26,225@11682L33,226@11764L28,208@10528L1294"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 210
    invoke-static {v9}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    .line 209
    new-instance v4, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$5;

    iget-object v12, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-direct {v4, v12}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$5;-><init>(Lcom/cgs/atvobserver/MainActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const v12, 0x77fb6de2

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 214
    move/from16 v12, v27

    .local v12, "invalid$iv":Z
    move-object/from16 v13, p1

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 502
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .restart local v15    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 503
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v18, v5

    .end local v5    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v18, "aiOutput$delegate":Landroidx/compose/runtime/State;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v15, v5, :cond_26

    .line 504
    const/4 v5, 0x0

    .line 214
    .local v5, "$i$a$-cache-MainActivity$onCreate$2$1$1$6":I
    move/from16 v17, v5

    .end local v5    # "$i$a$-cache-MainActivity$onCreate$2$1$1$6":I
    .local v17, "$i$a$-cache-MainActivity$onCreate$2$1$1$6":I
    new-instance v5, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;

    move-object/from16 v45, v7

    move-object/from16 v7, v33

    .end local v33    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v7, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    invoke-direct {v5, v7, v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$6$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 504
    .end local v17    # "$i$a$-cache-MainActivity$onCreate$2$1$1$6":I
    nop

    .line 505
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 506
    nop

    .end local v5    # "value$iv":Ljava/lang/Object;
    goto :goto_17

    .line 507
    .end local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v7, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v33    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    :cond_26
    move-object/from16 v45, v7

    move-object/from16 v7, v33

    .end local v33    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v7, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    move-object v5, v15

    .line 503
    :goto_17
    nop

    .line 502
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 214
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v12, 0x77fbc9b7

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 225
    move/from16 v12, v27

    .restart local v12    # "invalid$iv":Z
    move-object/from16 v13, p1

    .restart local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 508
    .restart local v14    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .restart local v15    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 509
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v33, v7

    .end local v7    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v33    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v15, v7, :cond_27

    .line 510
    const/4 v7, 0x0

    .line 225
    .local v7, "$i$a$-cache-MainActivity$onCreate$2$1$1$7":I
    move/from16 v17, v7

    .end local v7    # "$i$a$-cache-MainActivity$onCreate$2$1$1$7":I
    .local v17, "$i$a$-cache-MainActivity$onCreate$2$1$1$7":I
    new-instance v7, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$7$1;

    invoke-direct {v7, v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$7$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 510
    .end local v17    # "$i$a$-cache-MainActivity$onCreate$2$1$1$7":I
    nop

    .line 511
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 512
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_18

    .line 513
    :cond_27
    move-object v7, v15

    .line 509
    :goto_18
    nop

    .line 508
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 225
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v12, 0x77fbd3be

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 226
    move/from16 v12, v27

    .restart local v12    # "invalid$iv":Z
    move-object/from16 v13, p1

    .restart local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 514
    .restart local v14    # "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .restart local v15    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 515
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v19, v8

    .end local v8    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v19, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v15, v8, :cond_28

    .line 516
    const/4 v8, 0x0

    .line 226
    .local v8, "$i$a$-cache-MainActivity$onCreate$2$1$1$8":I
    move/from16 v17, v8

    .end local v8    # "$i$a$-cache-MainActivity$onCreate$2$1$1$8":I
    .local v17, "$i$a$-cache-MainActivity$onCreate$2$1$1$8":I
    new-instance v8, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$8$1;

    invoke-direct {v8, v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$8$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 516
    .end local v17    # "$i$a$-cache-MainActivity$onCreate$2$1$1$8":I
    nop

    .line 517
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 518
    nop

    .end local v8    # "value$iv":Ljava/lang/Object;
    goto :goto_19

    .line 519
    :cond_28
    move-object v8, v15

    .line 515
    :goto_19
    nop

    .line 514
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 226
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v12, 0x77fbddf9

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 227
    move/from16 v1, v27

    .local v1, "invalid$iv":Z
    move-object/from16 v12, p1

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 520
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 521
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v17, v1

    .end local v1    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v14, v1, :cond_29

    .line 522
    const/4 v1, 0x0

    .line 227
    .local v1, "$i$a$-cache-MainActivity$onCreate$2$1$1$9":I
    move/from16 v16, v1

    .end local v1    # "$i$a$-cache-MainActivity$onCreate$2$1$1$9":I
    .local v16, "$i$a$-cache-MainActivity$onCreate$2$1$1$9":I
    new-instance v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$9$1;

    invoke-direct {v1, v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$9$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 522
    .end local v16    # "$i$a$-cache-MainActivity$onCreate$2$1$1$9":I
    nop

    .line 523
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_1a

    .line 525
    :cond_29
    move-object v1, v14

    .line 521
    :goto_1a
    nop

    .line 520
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 227
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local v17    # "invalid$iv":Z
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 209
    const v13, 0x36d80

    move-object v1, v2

    move-object v2, v4

    move-object v15, v3

    move-object v3, v5

    move-object v4, v7

    move-object/from16 v25, v18

    .end local v18    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    move-object v5, v8

    move-object v14, v6

    .end local v6    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v14, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    move-object v6, v12

    move-object/from16 v12, v45

    .end local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v12, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    move-object/from16 v7, p1

    move-object/from16 v62, v19

    .end local v19    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v62, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    move v8, v13

    invoke-static/range {v1 .. v8}, Lcom/cgs/atvobserver/ui/screens/MainMenuScreenKt;->MainMenuScreen(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 208
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v45, v9

    move-object v0, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v7, v62

    goto/16 :goto_20

    .line 207
    .end local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .end local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .end local v62    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v12, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v13, "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .restart local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :sswitch_7
    move-object v14, v5

    move-object/from16 v62, v12

    move-object v9, v13

    move-object/from16 v25, v33

    move-object/from16 v12, v45

    move-object/from16 v33, v6

    .end local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v6    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .end local v45    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v12, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v62    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    const-string v3, "CARB_TUNE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    move-object/from16 v45, v9

    move-object v0, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v7, v62

    goto/16 :goto_1f

    .line 402
    :cond_2a
    const v2, -0x77dd5bef

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "405@22729L31,402@22538L252"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 404
    nop

    .line 405
    const v2, 0x7801389c

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 406
    move/from16 v1, v27

    .local v1, "invalid$iv":Z
    move-object/from16 v2, p1

    .restart local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 568
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 569
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2b

    .line 570
    const/4 v6, 0x0

    .line 406
    .local v6, "$i$a$-cache-MainActivity$onCreate$2$1$1$20":I
    new-instance v7, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$20$1;

    invoke-direct {v7, v14}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$20$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 570
    .end local v6    # "$i$a$-cache-MainActivity$onCreate$2$1$1$20":I
    move-object v6, v7

    .line 571
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 572
    nop

    .end local v6    # "value$iv":Ljava/lang/Object;
    goto :goto_1b

    .line 573
    :cond_2b
    move-object v6, v4

    .line 569
    :goto_1b
    nop

    .line 568
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 406
    .end local v1    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 403
    const-wide/16 v4, 0x0

    const/16 v8, 0xc00

    const/4 v13, 0x4

    move-object/from16 v1, v48

    move-wide v2, v10

    move-object/from16 v7, p1

    move-object/from16 v45, v9

    .end local v9    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v45, "configState$delegate":Landroidx/compose/runtime/State;
    move v9, v13

    invoke-static/range {v1 .. v9}, Lcom/cgs/atvobserver/ui/screens/CarbTuneScreenKt;->CarbTuneScreen(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;DDLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 402
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v7, v62

    goto/16 :goto_20

    .line 207
    .end local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .end local v62    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v12, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v45, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :sswitch_8
    move-object v14, v5

    move-object/from16 v62, v12

    move-object/from16 v25, v33

    move-object/from16 v12, v45

    move-object/from16 v33, v6

    move-object/from16 v45, v13

    .end local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v6    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v12, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v45, "configState$delegate":Landroidx/compose/runtime/State;
    .restart local v62    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    const-string v3, "MAINTENANCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_1d

    .line 239
    :cond_2c
    const v2, -0x7878ab9d

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "241@12420L31,239@12279L202"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 241
    invoke-static/range {v45 .. v45}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    const v3, 0x77fc2ffc

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 242
    move/from16 v1, v27

    .restart local v1    # "invalid$iv":Z
    move-object/from16 v3, p1

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 532
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 533
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2d

    .line 534
    const/4 v7, 0x0

    .line 242
    .local v7, "$i$a$-cache-MainActivity$onCreate$2$1$1$11":I
    new-instance v8, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$11$1;

    invoke-direct {v8, v14}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$11$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 534
    .end local v7    # "$i$a$-cache-MainActivity$onCreate$2$1$1$11":I
    move-object v7, v8

    .line 535
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 536
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_1c

    .line 537
    :cond_2d
    move-object v7, v5

    .line 533
    :goto_1c
    nop

    .line 532
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 242
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 240
    const/16 v1, 0x30

    invoke-static {v2, v7, v15, v1}, Lcom/cgs/atvobserver/ui/screens/MaintenanceScreenKt;->MaintenanceScreen(Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 239
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v7, v62

    goto/16 :goto_20

    .line 207
    .end local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .end local v62    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v5, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v6, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v12, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .restart local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v33, "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v45, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    :sswitch_9
    move-object v14, v5

    move-object/from16 v62, v12

    move-object/from16 v25, v33

    move-object/from16 v12, v45

    move-object/from16 v33, v6

    move-object/from16 v45, v13

    .end local v5    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v6    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .end local v13    # "configState$delegate":Landroidx/compose/runtime/State;
    .local v12, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .restart local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .restart local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .local v33, "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .local v45, "configState$delegate":Landroidx/compose/runtime/State;
    .restart local v62    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    const-string v3, "POCKET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    :goto_1d
    move-object v0, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v7, v62

    goto/16 :goto_1f

    .line 330
    :cond_2e
    const v2, -0x781c2c94

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "369@21064L31,330@18308L2817"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 332
    invoke-static/range {v45 .. v45}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v2

    .line 333
    invoke-virtual/range {v26 .. v26}, Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;->getTankCapacityL()D

    move-result-wide v3

    .line 334
    nop

    .line 335
    nop

    .line 336
    invoke-static/range {v25 .. v25}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke$lambda$11(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-result-object v17

    .line 337
    nop

    .line 331
    new-instance v5, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;

    iget-object v6, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    move-object/from16 v7, v62

    .end local v62    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .local v7, "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    invoke-direct {v5, v6, v7, v12}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;-><init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/sensor/MotionSensorData;)V

    move-object/from16 v20, v5

    check-cast v20, Lkotlin/jvm/functions/Function4;

    const v5, 0x7800687c

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 370
    move/from16 v1, v27

    .restart local v1    # "invalid$iv":Z
    move-object/from16 v5, p1

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 544
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 545
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v8, v13, :cond_2f

    .line 546
    const/4 v13, 0x0

    .line 370
    .local v13, "$i$a$-cache-MainActivity$onCreate$2$1$1$16":I
    new-instance v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$16$1;

    invoke-direct {v0, v14}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$16$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 546
    .end local v13    # "$i$a$-cache-MainActivity$onCreate$2$1$1$16":I
    nop

    .line 547
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 548
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_1e

    .line 549
    :cond_2f
    move-object v0, v8

    .line 545
    :goto_1e
    nop

    .line 544
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 370
    .end local v1    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    move-object/from16 v21, v0

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 331
    const/high16 v23, 0xc00000

    const/16 v24, 0x0

    move-object v0, v12

    .end local v12    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .local v0, "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    move-object v12, v2

    move-object v1, v14

    .end local v14    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .local v1, "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    move-wide v13, v3

    move-object v2, v15

    move-object v15, v7

    move-object/from16 v16, v48

    move-wide/from16 v18, v10

    move-object/from16 v22, p1

    invoke-static/range {v12 .. v24}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 330
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_20

    .line 416
    :goto_1f
    const v3, -0x77d4419b

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_20
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 417
    .end local v0    # "motionData":Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .end local v1    # "currentScreen$delegate":Landroidx/compose/runtime/MutableState;
    .end local v7    # "effectiveGps":Lcom/cgs/atvobserver/location/GpsData;
    .end local v10    # "effectiveTemp":D
    .end local v25    # "aiOutput$delegate":Landroidx/compose/runtime/State;
    .end local v26    # "activeVehicleCfg":Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;
    .end local v28    # "gpsData$delegate":Landroidx/compose/runtime/State;
    .end local v29    # "audioData$delegate":Landroidx/compose/runtime/State;
    .end local v30    # "universalData$delegate":Landroidx/compose/runtime/State;
    .end local v31    # "cameraSurface$delegate":Landroidx/compose/runtime/State;
    .end local v32    # "testSpeed$delegate":Landroidx/compose/runtime/MutableDoubleState;
    .end local v33    # "selectedMode$delegate":Landroidx/compose/runtime/MutableState;
    .end local v34    # "ambientTemp":D
    .end local v36    # "targetOperatingTemp":D
    .end local v38    # "warmUpProgress":D
    .end local v40    # "simulatedEngineTemp":D
    .end local v42    # "testRpm$delegate":Landroidx/compose/runtime/MutableIntState;
    .end local v43    # "testDistance$delegate":Landroidx/compose/runtime/MutableDoubleState;
    .end local v44    # "rideSeconds$delegate":Landroidx/compose/runtime/MutableLongState;
    .end local v45    # "configState$delegate":Landroidx/compose/runtime/State;
    .end local v48    # "effectiveAudio":Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .end local v53    # "appContext":Landroid/content/Context;
    :cond_30
    :goto_21
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7303766a -> :sswitch_9
        -0x6cbd790d -> :sswitch_8
        -0x6a298977 -> :sswitch_7
        -0x671e8bdb -> :sswitch_6
        -0x31059cc2 -> :sswitch_5
        0x23bdaf -> :sswitch_4
        0x276c25 -> :sswitch_3
        0x53d357a7 -> :sswitch_2
        0x75fd56e9 -> :sswitch_1
        0x76d27742 -> :sswitch_0
    .end sparse-switch
.end method
