class LetKeywordFailTest {
    public static function main() {
        // This should fail in .hx files - 'let' keyword is only for .zx files
        let name = "Alice";
        trace("This should not compile: " + name);
    }
}
