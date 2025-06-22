# .zx File Format Tests

This directory contains tests for the new `.zx` file format, which provides a more compact syntax while maintaining full compatibility with existing `.hx` files.

## Features

### 1. Default Public Visibility
In `.zx` files, class members default to `public` visibility when no access modifier is specified:

```zaxe
class MyClass {
    var name: String;        // public by default
    function getName(): String;  // public by default
    private var secret: String;  // explicit private
}
```

### 2. Optional Keywords
In `.zx` files, the `var` and `function` keywords are optional for class members:

```zaxe
class MyClass {
    name: String;           // equivalent to: public var name: String;
    getName(): String;      // equivalent to: public function getName(): String;
    new() { ... }          // equivalent to: public function new() { ... }
}
```

### 3. Full Compatibility
- `.zx` files can import and use `.hx` files
- `.hx` files can import and use `.zx` files
- All existing Haxe features work in `.zx` files
- The compilation pipeline is unchanged

## Test Files

- `ZxSyntaxTest.zx` - Tests all .zx syntax features
- `ZxInteropTest.hx` - Tests interoperability between .hx and .zx files
- `compile.hxml` - Compilation configuration for tests

## Running Tests

```bash
haxe compile.hxml
node zx-syntax-test.js
node zx-interop-test.js
```

## Implementation Details

The .zx format is implemented at the parser level and generates the same AST as traditional .hx syntax, ensuring full compatibility with all Haxe targets and features.
