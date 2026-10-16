package com.cgs.atvobserver.camera;

import android.content.Context;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageProxy;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.compose.runtime.ComposerKt;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwner;
import com.cgs.atvobserver.ai.RoadSurfaceClass;
import com.google.common.util.concurrent.ListenableFuture;
import java.nio.ByteBuffer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: CameraAnalyzerManager.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0012R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/cgs/atvobserver/camera/CameraAnalyzerManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_detectedSurface", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;", "cameraExecutor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "detectedSurface", "Lkotlinx/coroutines/flow/StateFlow;", "getDetectedSurface", "()Lkotlinx/coroutines/flow/StateFlow;", "lastAnalysisTimestamp", "", "analyzeImageFrame", "", "imageProxy", "Landroidx/camera/core/ImageProxy;", "startCameraAnalysis", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "stopCameraAnalysis", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes13.dex */
public final class CameraAnalyzerManager {
    public static final int $stable = 8;
    private final MutableStateFlow<RoadSurfaceClass> _detectedSurface;
    private final ExecutorService cameraExecutor;
    private final Context context;
    private final StateFlow<RoadSurfaceClass> detectedSurface;
    private long lastAnalysisTimestamp;

    public CameraAnalyzerManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this._detectedSurface = StateFlowKt.MutableStateFlow(RoadSurfaceClass.ASPHALT);
        this.detectedSurface = FlowKt.asStateFlow(this._detectedSurface);
        this.cameraExecutor = Executors.newSingleThreadExecutor();
    }

    public final StateFlow<RoadSurfaceClass> getDetectedSurface() {
        return this.detectedSurface;
    }

    public final void startCameraAnalysis(final LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        final ListenableFuture cameraProviderFuture = ProcessCameraProvider.getInstance(this.context);
        Intrinsics.checkNotNullExpressionValue(cameraProviderFuture, "getInstance(...)");
        cameraProviderFuture.addListener(new Runnable() { // from class: com.cgs.atvobserver.camera.CameraAnalyzerManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CameraAnalyzerManager.startCameraAnalysis$lambda$1(ListenableFuture.this, this, lifecycleOwner);
            }
        }, ContextCompat.getMainExecutor(this.context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void startCameraAnalysis$lambda$1(ListenableFuture cameraProviderFuture, final CameraAnalyzerManager this$0, LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(cameraProviderFuture, "$cameraProviderFuture");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "$lifecycleOwner");
        try {
            ProcessCameraProvider cameraProvider = (ProcessCameraProvider) cameraProviderFuture.get();
            CameraSelector DEFAULT_BACK_CAMERA = CameraSelector.DEFAULT_BACK_CAMERA;
            Intrinsics.checkNotNullExpressionValue(DEFAULT_BACK_CAMERA, "DEFAULT_BACK_CAMERA");
            ImageAnalysis imageAnalysis = new ImageAnalysis.Builder().setBackpressureStrategy(0).build();
            Intrinsics.checkNotNullExpressionValue(imageAnalysis, "build(...)");
            imageAnalysis.setAnalyzer(this$0.cameraExecutor, new ImageAnalysis.Analyzer() { // from class: com.cgs.atvobserver.camera.CameraAnalyzerManager$$ExternalSyntheticLambda0
                @Override // androidx.camera.core.ImageAnalysis.Analyzer
                public final void analyze(ImageProxy imageProxy) {
                    CameraAnalyzerManager.startCameraAnalysis$lambda$1$lambda$0(CameraAnalyzerManager.this, imageProxy);
                }
            });
            cameraProvider.unbindAll();
            cameraProvider.bindToLifecycle(lifecycleOwner, DEFAULT_BACK_CAMERA, imageAnalysis);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startCameraAnalysis$lambda$1$lambda$0(CameraAnalyzerManager this$0, ImageProxy imageProxy) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(imageProxy, "imageProxy");
        this$0.analyzeImageFrame(imageProxy);
    }

    private final void analyzeImageFrame(ImageProxy imageProxy) {
        byte[] bytes;
        long totalLuma;
        int sampleStep;
        int sampleCount;
        int length;
        RoadSurfaceClass surface;
        long now = System.currentTimeMillis();
        if (now - this.lastAnalysisTimestamp < 2000) {
            imageProxy.close();
            return;
        }
        this.lastAnalysisTimestamp = now;
        try {
            ImageProxy.PlaneProxy plane = imageProxy.getPlanes()[0];
            ByteBuffer buffer = plane.getBuffer();
            Intrinsics.checkNotNullExpressionValue(buffer, "getBuffer(...)");
            bytes = new byte[buffer.remaining()];
            buffer.get(bytes);
            totalLuma = 0;
            sampleStep = Math.max(1, bytes.length / ComposerKt.invocationKey);
            sampleCount = 0;
            length = bytes.length - 1;
        } catch (Exception e) {
        } catch (Throwable th) {
            imageProxy.close();
            throw th;
        }
        if (sampleStep <= 0) {
            throw new IllegalArgumentException("Step must be positive, was: " + sampleStep + ".");
        }
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, length, sampleStep);
        if (0 <= progressionLastElement) {
            while (true) {
                totalLuma += bytes[i] & UByte.MAX_VALUE;
                sampleCount++;
                if (i == progressionLastElement) {
                    break;
                } else {
                    i += sampleStep;
                }
            }
        }
        long avgLuma = sampleCount > 0 ? totalLuma / sampleCount : 128L;
        if (avgLuma < 75) {
            surface = RoadSurfaceClass.MUD;
        } else if (avgLuma < 100) {
            surface = RoadSurfaceClass.DIRT;
        } else {
            surface = avgLuma < 130 ? RoadSurfaceClass.GRAVEL : RoadSurfaceClass.ASPHALT;
        }
        this._detectedSurface.setValue(surface);
        imageProxy.close();
    }

    public final void stopCameraAnalysis() {
        this.cameraExecutor.shutdown();
    }
}
