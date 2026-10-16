package com.cgs.atvobserver.data.storage;

import android.content.Context;
import android.os.StatFs;
import androidx.camera.video.AudioStats;
import com.cgs.atvobserver.data.db.RideDao;
import com.cgs.atvobserver.data.db.RideLogEntity;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: AppStorageManager.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\f\u001a\u00020\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/cgs/atvobserver/data/storage/AppStorageManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_storageStatus", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/data/storage/StorageStatus;", "storageStatus", "Lkotlinx/coroutines/flow/StateFlow;", "getStorageStatus", "()Lkotlinx/coroutines/flow/StateFlow;", "checkStorageStatus", "compressRidesOlderThanOneMonth", "", "rideDao", "Lcom/cgs/atvobserver/data/db/RideDao;", "(Lcom/cgs/atvobserver/data/db/RideDao;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pruneTemporaryCache", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final class AppStorageManager {
    public static final int $stable = 8;
    private final MutableStateFlow<StorageStatus> _storageStatus;
    private final Context context;
    private final StateFlow<StorageStatus> storageStatus;

    public AppStorageManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this._storageStatus = StateFlowKt.MutableStateFlow(checkStorageStatus());
        this.storageStatus = FlowKt.asStateFlow(this._storageStatus);
    }

    public final StateFlow<StorageStatus> getStorageStatus() {
        return this.storageStatus;
    }

    public final StorageStatus checkStorageStatus() {
        try {
            File path = this.context.getFilesDir();
            StatFs stat = new StatFs(path.getPath());
            long blockSize = stat.getBlockSizeLong();
            long availableBlocks = stat.getAvailableBlocksLong();
            long totalBlocks = stat.getBlockCountLong();
            long j = 1048576;
            long freeMb = (availableBlocks * blockSize) / j;
            long totalMb = (totalBlocks * blockSize) / j;
            boolean isLow = freeMb < 200;
            if (isLow) {
                pruneTemporaryCache();
            }
            return new StorageStatus(freeMb, totalMb, isLow, isLow, 0, 16, null);
        } catch (Exception e) {
            return new StorageStatus(0L, 0L, false, false, 0, 31, null);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:0|1|(2:3|(4:5|6|7|8))|35|6|7|8) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0101, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086 A[Catch: Exception -> 0x0100, TryCatch #0 {Exception -> 0x0100, blocks: (B:13:0x0043, B:15:0x00dd, B:16:0x0080, B:18:0x0086, B:21:0x00df, B:26:0x0051, B:28:0x0075, B:30:0x0063), top: B:7:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00df A[Catch: Exception -> 0x0100, TRY_LEAVE, TryCatch #0 {Exception -> 0x0100, blocks: (B:13:0x0043, B:15:0x00dd, B:16:0x0080, B:18:0x0086, B:21:0x00df, B:26:0x0051, B:28:0x0075, B:30:0x0063), top: B:7:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00da -> B:15:0x00dd). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object compressRidesOlderThanOneMonth(RideDao rideDao, Continuation<? super Integer> continuation) {
        AppStorageManager$compressRidesOlderThanOneMonth$1 appStorageManager$compressRidesOlderThanOneMonth$1;
        int count;
        AppStorageManager appStorageManager;
        RideDao rideDao2;
        Object oldUncompressedRides;
        RideDao rideDao3;
        AppStorageManager appStorageManager2;
        Iterator it;
        StorageStatus copy;
        RideLogEntity compressedRide;
        if (continuation instanceof AppStorageManager$compressRidesOlderThanOneMonth$1) {
            appStorageManager$compressRidesOlderThanOneMonth$1 = (AppStorageManager$compressRidesOlderThanOneMonth$1) continuation;
            if ((appStorageManager$compressRidesOlderThanOneMonth$1.label & Integer.MIN_VALUE) != 0) {
                appStorageManager$compressRidesOlderThanOneMonth$1.label -= Integer.MIN_VALUE;
                Object $result = appStorageManager$compressRidesOlderThanOneMonth$1.result;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (appStorageManager$compressRidesOlderThanOneMonth$1.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        appStorageManager = this;
                        rideDao2 = rideDao;
                        long cutoffTimestamp = System.currentTimeMillis() - 2592000000L;
                        appStorageManager$compressRidesOlderThanOneMonth$1.L$0 = appStorageManager;
                        appStorageManager$compressRidesOlderThanOneMonth$1.L$1 = rideDao2;
                        appStorageManager$compressRidesOlderThanOneMonth$1.label = 1;
                        oldUncompressedRides = rideDao2.getOldUncompressedRides(cutoffTimestamp, appStorageManager$compressRidesOlderThanOneMonth$1);
                        if (oldUncompressedRides == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        List oldRides = (List) oldUncompressedRides;
                        Iterator it2 = oldRides.iterator();
                        rideDao3 = rideDao2;
                        appStorageManager2 = appStorageManager;
                        count = 0;
                        it = it2;
                        if (!it.hasNext()) {
                            compressedRide = r16.copy((r60 & 1) != 0 ? r16.id : 0L, (r60 & 2) != 0 ? r16.startTime : 0L, (r60 & 4) != 0 ? r16.midTime : 0L, (r60 & 8) != 0 ? r16.endTime : 0L, (r60 & 16) != 0 ? r16.durationSeconds : 0L, (r60 & 32) != 0 ? r16.distanceKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 64) != 0 ? r16.maxSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 128) != 0 ? r16.avgSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 256) != 0 ? r16.estimatedFuelUsedL : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 512) != 0 ? r16.weatherCondition : null, (r60 & 1024) != 0 ? r16.mode : null, (r60 & 2048) != 0 ? r16.vehicleType : null, (r60 & 4096) != 0 ? r16.warningCount : 0, (r60 & 8192) != 0 ? r16.isFinished : false, (r60 & 16384) != 0 ? r16.startLat : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 32768) != 0 ? r16.startLon : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 65536) != 0 ? r16.midLat : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 131072) != 0 ? r16.midLon : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 262144) != 0 ? r16.endLat : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 524288) != 0 ? r16.endLon : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 1048576) != 0 ? r16.peakGForce : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 2097152) != 0 ? r16.smoothnessScore : 0, (4194304 & r60) != 0 ? r16.launchAccelTimeSec : AudioStats.AUDIO_AMPLITUDE_NONE, (r60 & 8388608) != 0 ? r16.terrainSummary : null, (r60 & 16777216) != 0 ? ((RideLogEntity) it.next()).isCompressed : true);
                            appStorageManager$compressRidesOlderThanOneMonth$1.L$0 = appStorageManager2;
                            appStorageManager$compressRidesOlderThanOneMonth$1.L$1 = rideDao3;
                            appStorageManager$compressRidesOlderThanOneMonth$1.L$2 = it;
                            appStorageManager$compressRidesOlderThanOneMonth$1.I$0 = count;
                            appStorageManager$compressRidesOlderThanOneMonth$1.label = 2;
                            if (rideDao3.updateRide(compressedRide, appStorageManager$compressRidesOlderThanOneMonth$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            count++;
                            if (!it.hasNext()) {
                                MutableStateFlow<StorageStatus> mutableStateFlow = appStorageManager2._storageStatus;
                                copy = r6.copy((r16 & 1) != 0 ? r6.freeSpaceMb : 0L, (r16 & 2) != 0 ? r6.totalSpaceMb : 0L, (r16 & 4) != 0 ? r6.isStorageLow : false, (r16 & 8) != 0 ? r6.isAutoPruneActive : false, (r16 & 16) != 0 ? appStorageManager2._storageStatus.getValue().compressedRideCount : count);
                                mutableStateFlow.setValue(copy);
                                return Boxing.boxInt(count);
                            }
                        }
                    case 1:
                        rideDao2 = (RideDao) appStorageManager$compressRidesOlderThanOneMonth$1.L$1;
                        appStorageManager = (AppStorageManager) appStorageManager$compressRidesOlderThanOneMonth$1.L$0;
                        ResultKt.throwOnFailure($result);
                        oldUncompressedRides = $result;
                        List oldRides2 = (List) oldUncompressedRides;
                        Iterator it22 = oldRides2.iterator();
                        rideDao3 = rideDao2;
                        appStorageManager2 = appStorageManager;
                        count = 0;
                        it = it22;
                        if (!it.hasNext()) {
                        }
                        break;
                    case 2:
                        count = appStorageManager$compressRidesOlderThanOneMonth$1.I$0;
                        it = (Iterator) appStorageManager$compressRidesOlderThanOneMonth$1.L$2;
                        rideDao3 = (RideDao) appStorageManager$compressRidesOlderThanOneMonth$1.L$1;
                        AppStorageManager appStorageManager3 = (AppStorageManager) appStorageManager$compressRidesOlderThanOneMonth$1.L$0;
                        ResultKt.throwOnFailure($result);
                        appStorageManager2 = appStorageManager3;
                        count++;
                        if (!it.hasNext()) {
                        }
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }
        appStorageManager$compressRidesOlderThanOneMonth$1 = new AppStorageManager$compressRidesOlderThanOneMonth$1(this, continuation);
        Object $result2 = appStorageManager$compressRidesOlderThanOneMonth$1.result;
        Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (appStorageManager$compressRidesOlderThanOneMonth$1.label) {
        }
    }

    public final void pruneTemporaryCache() {
        try {
            File cacheDir = this.context.getCacheDir();
            if (cacheDir != null) {
                FilesKt.deleteRecursively(cacheDir);
            }
            File externalCacheDir = this.context.getExternalCacheDir();
            if (externalCacheDir != null) {
                FilesKt.deleteRecursively(externalCacheDir);
            }
            File mapCacheDir = new File(this.context.getFilesDir(), "map_tiles_cache");
            if (mapCacheDir.exists()) {
                FilesKt.deleteRecursively(mapCacheDir);
            }
        } catch (Exception e) {
        }
    }
}
