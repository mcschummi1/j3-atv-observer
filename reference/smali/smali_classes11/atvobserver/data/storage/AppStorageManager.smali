.class public final Lcom/cgs/atvobserver/data/storage/AppStorageManager;
.super Ljava/lang/Object;
.source "AppStorageManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/storage/AppStorageManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_storageStatus",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/data/storage/StorageStatus;",
        "storageStatus",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getStorageStatus",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "checkStorageStatus",
        "compressRidesOlderThanOneMonth",
        "",
        "rideDao",
        "Lcom/cgs/atvobserver/data/db/RideDao;",
        "(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pruneTemporaryCache",
        "",
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
.field private final _storageStatus:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/data/storage/StorageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final storageStatus:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/data/storage/StorageStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->checkStorageStatus()Lcom/cgs/atvobserver/data/storage/StorageStatus;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->_storageStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    iget-object v0, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->_storageStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->storageStatus:Lkotlinx/coroutines/flow/StateFlow;

    .line 26
    return-void
.end method


# virtual methods
.method public final checkStorageStatus()Lcom/cgs/atvobserver/data/storage/StorageStatus;
    .locals 23

    .line 32
    nop

    .line 33
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 34
    .local v0, "path":Ljava/io/File;
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 36
    .local v3, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    .line 37
    .local v5, "availableBlocks":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v7

    .line 39
    .local v7, "totalBlocks":J
    mul-long v9, v5, v3

    const/high16 v11, 0x100000

    int-to-long v11, v11

    div-long/2addr v9, v11

    .line 40
    .local v9, "freeMb":J
    mul-long v13, v7, v3

    div-long v16, v13, v11

    .line 41
    .local v16, "totalMb":J
    const-wide/16 v11, 0xc8

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 43
    .local v11, "isLow":Z
    :goto_0
    if-eqz v11, :cond_1

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->pruneTemporaryCache()V

    .line 47
    :cond_1
    new-instance v12, Lcom/cgs/atvobserver/data/storage/StorageStatus;

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 51
    nop

    .line 47
    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object v13, v12

    move-wide v14, v9

    move/from16 v18, v11

    move/from16 v19, v11

    invoke-direct/range {v13 .. v22}, Lcom/cgs/atvobserver/data/storage/StorageStatus;-><init>(JJZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "path":Ljava/io/File;
    .end local v2    # "stat":Landroid/os/StatFs;
    .end local v3    # "blockSize":J
    .end local v5    # "availableBlocks":J
    .end local v7    # "totalBlocks":J
    .end local v9    # "freeMb":J
    .end local v11    # "isLow":Z
    .end local v16    # "totalMb":J
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "_":Ljava/lang/Exception;
    new-instance v12, Lcom/cgs/atvobserver/data/storage/StorageStatus;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/cgs/atvobserver/data/storage/StorageStatus;-><init>(JJZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .end local v0    # "_":Ljava/lang/Exception;
    :goto_1
    return-object v12
.end method

.method public final compressRidesOlderThanOneMonth(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/db/RideDao;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;

    iget v2, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;-><init>(Lcom/cgs/atvobserver/data/storage/AppStorageManager;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget v4, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->label:I

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v4, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->I$0:I

    .local v4, "count":I
    iget-object v6, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/cgs/atvobserver/data/db/RideDao;

    .local v7, "rideDao":Lcom/cgs/atvobserver/data/db/RideDao;
    iget-object v8, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/cgs/atvobserver/data/storage/AppStorageManager;

    .local v8, "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v8

    goto/16 :goto_3

    .end local v4    # "count":I
    .end local v7    # "rideDao":Lcom/cgs/atvobserver/data/db/RideDao;
    .end local v8    # "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    :pswitch_1
    iget-object v4, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/cgs/atvobserver/data/db/RideDao;

    .local v4, "rideDao":Lcom/cgs/atvobserver/data/db/RideDao;
    iget-object v6, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/cgs/atvobserver/data/storage/AppStorageManager;

    .local v6, "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v3

    goto :goto_1

    .end local v4    # "rideDao":Lcom/cgs/atvobserver/data/db/RideDao;
    .end local v6    # "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    .restart local v6    # "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    move-object/from16 v4, p1

    .line 64
    .restart local v4    # "rideDao":Lcom/cgs/atvobserver/data/db/RideDao;
    nop

    .line 65
    const-wide v7, 0x9a7ec800L

    .line 66
    .local v7, "thirtyDaysMs":J
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 68
    .end local v7    # "thirtyDaysMs":J
    .local v9, "cutoffTimestamp":J
    iput-object v6, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->label:I

    invoke-interface {v4, v9, v10, v1}, Lcom/cgs/atvobserver/data/db/RideDao;->getOldUncompressedRides(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v9    # "cutoffTimestamp":J
    if-ne v7, v0, :cond_1

    .line 63
    return-object v0

    :cond_1
    :goto_1
    check-cast v7, Ljava/util/List;

    .line 69
    .local v7, "oldRides":Ljava/util/List;
    const/4 v8, 0x0

    .line 71
    .local v8, "count":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v4

    move-object v15, v6

    move v4, v8

    move-object v6, v9

    .end local v6    # "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    .end local v8    # "count":I
    .local v4, "count":I
    .local v7, "rideDao":Lcom/cgs/atvobserver/data/db/RideDao;
    .local v15, "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    .line 72
    .local v16, "ride":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    nop

    .line 73
    .end local v16    # "ride":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    nop

    .line 72
    const v59, 0xffffff

    const/16 v60, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x1

    invoke-static/range {v16 .. v60}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->copy$default(Lcom/cgs/atvobserver/data/db/RideLogEntity;JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;ZILjava/lang/Object;)Lcom/cgs/atvobserver/data/db/RideLogEntity;

    move-result-object v8

    .line 75
    .local v8, "compressedRide":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    iput-object v15, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->L$2:Ljava/lang/Object;

    iput v4, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->I$0:I

    const/4 v9, 0x2

    iput v9, v1, Lcom/cgs/atvobserver/data/storage/AppStorageManager$compressRidesOlderThanOneMonth$1;->label:I

    invoke-interface {v7, v8, v1}, Lcom/cgs/atvobserver/data/db/RideDao;->updateRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    .end local v8    # "compressedRide":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    if-ne v9, v0, :cond_2

    .line 63
    return-object v0

    .line 76
    :cond_2
    :goto_3
    add-int/2addr v4, v5

    goto :goto_2

    .line 79
    .end local v7    # "rideDao":Lcom/cgs/atvobserver/data/db/RideDao;
    :cond_3
    iget-object v0, v15, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->_storageStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v5, v15, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->_storageStatus:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/cgs/atvobserver/data/storage/StorageStatus;

    const/16 v14, 0xf

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v4

    move-object/from16 v16, v15

    .end local v15    # "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    .local v16, "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    move-object v15, v5

    invoke-static/range {v6 .. v15}, Lcom/cgs/atvobserver/data/storage/StorageStatus;->copy$default(Lcom/cgs/atvobserver/data/storage/StorageStatus;JJZZIILjava/lang/Object;)Lcom/cgs/atvobserver/data/storage/StorageStatus;

    move-result-object v5

    invoke-interface {v0, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .end local v16    # "this":Lcom/cgs/atvobserver/data/storage/AppStorageManager;
    nop

    .end local v4    # "count":I
    goto :goto_4

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getStorageStatus()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/data/storage/StorageStatus;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->storageStatus:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final pruneTemporaryCache()V
    .locals 3

    .line 92
    nop

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 96
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cgs/atvobserver/data/storage/AppStorageManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "map_tiles_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v0, "mapCacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "mapCacheDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 101
    :cond_2
    :goto_0
    return-void
.end method
