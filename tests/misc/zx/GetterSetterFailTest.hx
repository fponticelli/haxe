// Test that TypeScript-like getter/setter syntax does NOT work in .hx files
class GetterSetterFailTest {
    private var _value: Int;
    
    public function new(value: Int) {
        this._value = value;
    }
    
    // This should NOT work in .hx files - should be treated as regular identifiers
    get value(): Int {
        return this._value;
    }
    
    set value(newValue: Int) {
        this._value = newValue;
    }
    
    public static function main() {
        var obj = new GetterSetterFailTest(42);
        trace("This should fail to compile if getter/setter syntax is attempted in .hx files");
    }
}
