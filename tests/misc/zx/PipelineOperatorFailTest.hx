// This test should fail to compile because pipeline operator is not available in .hx files
class PipelineOperatorFailTest {
    static function main() {
        // This should cause a compilation error
        var result = 5 |> double;
        trace(result);
    }

    static function double(x: Int): Int {
        return x * 2;
    }
}
