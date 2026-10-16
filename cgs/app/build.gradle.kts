plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.kotlin.compose)
    alias(libs.plugins.ksp)
}

android {
    namespace = "com.cgs.atvobserver"
    compileSdk = 36

    defaultConfig {
        // Same package identity as the frozen v1.1.x line (in-place update with the universal key).
        applicationId = "com.cgs.atvobserver"
        minSdk = 28
        targetSdk = 36
        // Always above the patch line (17, CI: 100 + run_number).
        versionCode = 1000
        versionName = "2.0.0-CGS-stage1"
    }

    buildTypes {
        release {
            // Signing is configured only in CI from the universal-key secrets; never in this file.
            isMinifyEnabled = false
            isDebuggable = false
        }
        debug {
            isDebuggable = true
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    buildFeatures { compose = true }
    testOptions { unitTests.isIncludeAndroidResources = true }
    sourceSets {
        // Room schema JSON exported by KSP; read by the identity-hash host test.
        getByName("test").assets.srcDir("$projectDir/schemas")
    }
}

kotlin {
    compilerOptions { jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17) }
}

ksp {
    arg("room.schemaLocation", "$projectDir/schemas")
    arg("room.generateKotlin", "true")
}

dependencies {
    implementation(project(":core-engine"))
    implementation(libs.room.runtime)
    ksp(libs.room.compiler)
    implementation(platform(libs.compose.bom))
    implementation(libs.compose.ui)
    implementation(libs.compose.material3)
    implementation(libs.activity.compose)

    testImplementation(libs.junit)
    testImplementation(libs.robolectric)
    testImplementation(libs.androidx.test.core)
}
