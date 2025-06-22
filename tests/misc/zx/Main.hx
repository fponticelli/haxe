// Test that .hx files can import and use .zx files

class Main {
    static function main() {
        // Test basic def syntax
        var test = new TestClass("John", 25);

        // Test accessing def-declared public members
        trace("Name: " + test.getName());
        trace("Age: " + test.age);

        // Test setting def-declared public members
        test.setName("Jane");
        test.age = 30;

        trace("Updated name: " + test.getName());
        trace("Updated age: " + test.age);

        // Test static def members
        TestClass.staticVar = 42;
        trace("Static var: " + TestClass.getStaticVar());

        // Test traditional members still work
        test.traditionalVar = "Hello";
        test.traditionalMethod();

        // Test advanced def features
        var advanced = new AdvancedTest();
        trace("Advanced getValue: " + advanced.getValue());
        advanced.setValue(100);
        trace("Advanced getValue after set: " + advanced.getValue());
        trace("Advanced property: " + advanced.property);

        // Test complex method
        var result = advanced.complexMethod(["a", "b", "c"], function(s) trace("Processing: " + s));
        trace("Complex method result: " + result);

        // Test static field
        AdvancedTest.staticField = true;
        trace("Static field: " + AdvancedTest.staticField);

        trace("All tests completed successfully!");
    }
}
