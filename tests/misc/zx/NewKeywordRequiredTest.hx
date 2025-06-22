class Person {
    var name: String;
    var age: Int;
    
    public function new(name: String, age: Int) {
        this.name = name;
        this.age = age;
    }
    
    public function greet(): String {
        return "Hello, I'm " + name + " and I'm " + age + " years old";
    }
}

class NewKeywordRequiredTest {
    public static function main() {
        // This should fail in .hx files - 'new' keyword is required
        var person = Person("Bob", 30);
        trace(person.greet());
    }
}
