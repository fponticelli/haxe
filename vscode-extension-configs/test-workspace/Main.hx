class Main {
    public static function main() {
        trace("Hello from traditional .hx file");
        
        var example = new Example();
        example.value = 100;
        trace("Example value: " + example.value);
        
        example.test();
    }
}
