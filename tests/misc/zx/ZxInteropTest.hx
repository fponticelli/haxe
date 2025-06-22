// Test interoperability between .hx and .zx files
class ZxInteropTest {
    public static function main() {
        // Test that .hx files can use .zx classes
        var zxTest = new ZxSyntaxTest();
        
        // Test accessing .zx public members from .hx
        zxTest.name = "Interop Test";
        zxTest.age = 35;
        
        trace("Interop - Name: " + zxTest.getName());
        trace("Interop - Age: " + zxTest.getAge());
        
        // Test static members
        ZxSyntaxTest.count = 100;
        trace("Interop - Count: " + ZxSyntaxTest.getCount());
        
        trace("ZX interoperability test completed successfully!");
    }
}
