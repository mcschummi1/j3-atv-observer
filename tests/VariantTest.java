import com.cgs.atvobserver.patch.Variant;

/** Host-JVM test of the DIAG-variant detection (the class name, not a literal, defines the original package). */
public class VariantTest {
    static int fails = 0;
    static void check(String what, boolean ok) { System.out.println((ok ? "PASS " : "FAIL ") + what); if (!ok) fails++; }

    public static void main(String[] a) {
        String orig = "com.cgs.atvobserver";
        check("normal package is not DIAG", !Variant.isDiagPackage("com.cgs.atvobserver", orig));
        check(".diag package is DIAG", Variant.isDiagPackage("com.cgs.atvobserver.diag", orig));
        check("any other id is DIAG", Variant.isDiagPackage("com.example.other", orig));
        check("original package derived from class name", Variant.isDiag("com.cgs.atvobserver") == false);
        check("null is not DIAG", !Variant.isDiagPackage(null, orig));
        check("updater-disabled text mentions DIAG", Variant.UPDATER_DISABLED_TEXT.contains("DIAG"));
        System.out.println(fails == 0 ? "VariantTest: all passed" : "VariantTest: " + fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
