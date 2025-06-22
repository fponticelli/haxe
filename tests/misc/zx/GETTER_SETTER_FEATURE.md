# TypeScript-like Getter/Setter Syntax for .zx Files

## Overview

This feature adds support for TypeScript-like getter and setter syntax in .zx files only. The syntax allows you to define getters and setters using the familiar TypeScript pattern:

```typescript
get propertyName(): Type {
    // getter implementation
}

set propertyName(value: Type) {
    // setter implementation  
}
```

## Implementation Details

### Syntax Support

- **Getter syntax**: `get propertyName(): ReturnType { ... }`
- **Setter syntax**: `set propertyName(value: ParameterType) { ... }`
- **File restriction**: Only works in `.zx` files, not in `.hx` files
- **Function creation**: Creates `get_propertyName()` and `set_propertyName()` functions

### Generated Functions

When you write:
```typescript
get name(): String {
    return this._name;
}

set name(value: String) {
    this._name = value;
}
```

The compiler generates:
```haxe
function get_name(): String {
    return this._name;
}

function set_name(value: String): String {
    this._name = value;
    return this._name;  // Setters must return the value in Haxe
}
```

### Integration with Haxe Properties

You can combine TypeScript-style getter/setter functions with traditional Haxe property declarations:

```typescript
// .zx file
class MyClass {
    private _value: Int;
    
    // Traditional Haxe property declaration
    var value(get, set): Int;
    
    // TypeScript-style getter/setter implementation
    get value(): Int {
        return this._value;
    }
    
    set value(newValue: Int) {
        this._value = newValue;
    }
}
```

This allows you to use both:
- Property access: `obj.value = 42` and `var x = obj.value`
- Function access: `obj.set_value(42)` and `var x = obj.get_value()`

## Usage Examples

### Basic Getter/Setter
```typescript
class Person {
    private _name: String;
    
    get name(): String {
        trace("Getting name");
        return this._name;
    }
    
    set name(value: String) {
        trace("Setting name to: " + value);
        this._name = value;
    }
}

// Usage
var person = new Person();
person.set_name("Alice");  // Calls the setter function
var name = person.get_name();  // Calls the getter function
```

### With Validation
```typescript
class Counter {
    private _count: Int = 0;
    
    get count(): Int {
        return this._count;
    }
    
    set count(value: Int) {
        if (value >= 0) {
            this._count = value;
        } else {
            trace("Invalid count: " + value);
        }
    }
}
```

### Integration with Properties
```typescript
class Temperature {
    private _celsius: Float;
    
    var celsius(get, set): Float;
    
    get celsius(): Float {
        return this._celsius;
    }
    
    set celsius(value: Float) {
        this._celsius = value;
    }
    
    // Now you can use: obj.celsius = 25.0 or obj.set_celsius(25.0)
}
```

## Benefits

1. **Familiar Syntax**: Developers coming from TypeScript/JavaScript will find this syntax natural
2. **Flexibility**: Can use either function calls or property access (when combined with property declarations)
3. **Validation**: Easy to add validation logic in setters
4. **Debugging**: Easy to add logging/tracing in getters and setters
5. **Backward Compatibility**: Doesn't affect existing .hx files

## Limitations

1. **File Restriction**: Only works in .zx files
2. **Function Names**: Creates functions with `get_` and `set_` prefixes
3. **Manual Property Declaration**: For property access syntax, you still need to declare the property manually
4. **Return Requirement**: Setters must return a value (Haxe requirement)

## Test Files

- `GetterSetterTest.zx`: Basic functionality test
- `PropertyIntegrationTest.zx`: Integration with Haxe properties
- `GetterSetterFailTest.hx`: Confirms syntax doesn't work in .hx files
