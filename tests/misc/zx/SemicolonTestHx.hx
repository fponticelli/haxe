// Test .hx file - semicolons should still be required
class SemicolonTestHx {
    var name: String;
    var age: Int;
    
    public function new() {
        name = "Test";
        age = 25;
    }
    
    public function getName(): String {
        return name;
    }
    
    public function setAge(newAge: Int): Void {
        age = newAge;
    }
    
    public static function main() {
        var test = new SemicolonTestHx();
        test.setAge(30);
        trace("Name: " + test.getName());
        trace("Age: " + test.age);
        trace("Semicolon test completed!");
    }
}
