class SemicolonRequiredTest {
    public static function main() {
        var x = 42
        var y = "hello"
        trace("x = " + x)
        trace("y = " + y)
        trace("This should fail without semicolons in .hx files!")
    }
}
