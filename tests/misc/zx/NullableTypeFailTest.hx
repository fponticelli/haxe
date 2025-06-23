// Test file to verify that T? syntax is NOT allowed in .hx files
class NullableTypeFailTest {
    static function main() {
        // This should fail to compile because T? syntax is only allowed in .zx files
        var nullableInt: Int? = null;
        trace("This should not compile: " + nullableInt);
    }
}
