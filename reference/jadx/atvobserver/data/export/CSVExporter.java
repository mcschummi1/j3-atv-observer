package com.cgs.atvobserver.data.export;

import android.content.Context;
import android.os.Environment;
import com.cgs.atvobserver.data.db.RideLogEntity;
import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: CSVExporter.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¨\u0006\n"}, d2 = {"Lcom/cgs/atvobserver/data/export/CSVExporter;", "", "()V", "exportRidesToCsv", "Ljava/io/File;", "context", "Landroid/content/Context;", "rides", "", "Lcom/cgs/atvobserver/data/db/RideLogEntity;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CSVExporter {
    public static final int $stable = 0;
    public static final CSVExporter INSTANCE = new CSVExporter();

    private CSVExporter() {
    }

    public final File exportRidesToCsv(Context context, List<RideLogEntity> rides) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rides, "rides");
        if (rides.isEmpty()) {
            return null;
        }
        try {
            File downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
            if (!downloadsDir.exists()) {
                downloadsDir.mkdirs();
            }
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault());
            String filename = "CGS_Ride_Logs_" + dateFormat.format(new Date()) + ".csv";
            File csvFile = new File(downloadsDir, filename);
            FileWriter writer = new FileWriter(csvFile);
            writer.append((CharSequence) "ID,Vehicle,Mode,StartTime,EndTime,DurationSec,DistanceKm,MaxSpeedKmh,AvgSpeedKmh,FuelUsedL,Weather,PeakGForce,SmoothnessScore,TerrainSummary\n");
            SimpleDateFormat rideDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
            for (RideLogEntity ride : rides) {
                SimpleDateFormat dateFormat2 = dateFormat;
                writer.append((CharSequence) (ride.getId() + ","));
                writer.append((CharSequence) (ride.getVehicleType() + ","));
                writer.append((CharSequence) (ride.getMode() + ","));
                File downloadsDir2 = downloadsDir;
                writer.append((CharSequence) (rideDateFormat.format(new Date(ride.getStartTime())) + ","));
                writer.append((CharSequence) ((ride.getEndTime() > 0 ? rideDateFormat.format(new Date(ride.getEndTime())) : "N/A") + ","));
                writer.append((CharSequence) (ride.getDurationSeconds() + ","));
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.US, "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(ride.getDistanceKm())}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                writer.append((CharSequence) (format + ","));
                writer.append((CharSequence) (((int) ride.getMaxSpeedKmh()) + ","));
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                String format2 = String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(ride.getAvgSpeedKmh())}, 1));
                Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                writer.append((CharSequence) (format2 + ","));
                StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                String format3 = String.format(Locale.US, "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(ride.getEstimatedFuelUsedL())}, 1));
                Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
                writer.append((CharSequence) (format3 + ","));
                writer.append((CharSequence) ("\"" + ride.getWeatherCondition() + "\","));
                StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
                String format4 = String.format(Locale.US, "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(ride.getPeakGForce())}, 1));
                Intrinsics.checkNotNullExpressionValue(format4, "format(...)");
                writer.append((CharSequence) (format4 + ","));
                writer.append((CharSequence) (ride.getSmoothnessScore() + ","));
                writer.append((CharSequence) ("\"" + ride.getTerrainSummary() + "\"\n"));
                downloadsDir = downloadsDir2;
                dateFormat = dateFormat2;
            }
            writer.flush();
            writer.close();
            return csvFile;
        } catch (Exception e) {
            return null;
        }
    }
}
