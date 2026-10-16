package com.cgs.atvobserver.patch;

/**
 * Detects the optional side-by-side DIAG build (scripts/build.sh with PACKAGE_SUFFIX=.diag).
 *
 * The DIAG build installs under another application id (com.cgs.atvobserver.diag) but keeps every
 * class in com.cgs.atvobserver.*. The "original" package is therefore derived from this class's own
 * (never renamed) name instead of a string literal, so no build-time string patch can touch it.
 * The DIAG build must not self-update from, or cross-update to, the normal releases.
 */
public final class Variant {
    private Variant() { }

    /** Package every class of the app lives in, e.g. {@code com.cgs.atvobserver}. */
    static String originalPackage() {
        String n = Variant.class.getName();
        return n.substring(0, n.lastIndexOf(".patch."));
    }

    /** True when {@code runtimePackage} is anything other than the normal application id. */
    public static boolean isDiagPackage(String runtimePackage, String originalPackage) {
        return runtimePackage != null && !runtimePackage.equals(originalPackage);
    }

    /** Pass {@code context.getPackageName()}; kept Android-free so the host tests can compile it. */
    public static boolean isDiag(String runtimePackage) {
        return isDiagPackage(runtimePackage, originalPackage());
    }

    public static final String UPDATER_DISABLED_TEXT =
            "This is the DIAG build (side-by-side diagnostic copy, different application id).\n\n"
            + "Its in-app updater is disabled so it can never download or install the normal J3 ATV Observer "
            + "releases over itself. Install it only to test whether Android accepts this app on your phone; "
            + "see docs/INSTALL_TROUBLESHOOTING.md in the repository.";
}
