# VSCode Extension Support for .zx Files

This guide provides the necessary configuration files and instructions to add .zx file support to the vshaxe VSCode extension.

## Overview

The Haxe compiler already has complete support for .zx files built-in:
- Parser configuration detects .zx files and enables ZX syntax features
- Module resolution tries .zx files first, then .hx for backward compatibility  
- Language Server Protocol (LSP) works with .zx files without modification
- Display protocol handles .zx files correctly for all IDE features

The only missing piece is VSCode extension configuration to recognize .zx files and provide syntax highlighting.

## Required Changes for vshaxe Extension

### 1. package.json Updates

Add .zx file association and language configuration:

```json
{
  "contributes": {
    "languages": [
      {
        "id": "haxe",
        "aliases": ["Haxe", "haxe"],
        "extensions": [".hx", ".zx"],
        "configuration": "./language-configuration.json"
      }
    ],
    "grammars": [
      {
        "language": "haxe",
        "scopeName": "source.hx",
        "path": "./syntaxes/haxe.tmLanguage.json"
      }
    ]
  }
}
```

### 2. Language Configuration

Update `language-configuration.json` to handle both .hx and .zx files:

```json
{
  "comments": {
    "lineComment": "//",
    "blockComment": ["/*", "*/"]
  },
  "brackets": [
    ["{", "}"],
    ["[", "]"],
    ["(", ")"]
  ],
  "autoClosingPairs": [
    ["{", "}"],
    ["[", "]"],
    ["(", ")"],
    ["\"", "\""],
    ["'", "'"]
  ],
  "surroundingPairs": [
    ["{", "}"],
    ["[", "]"],
    ["(", ")"],
    ["\"", "\""],
    ["'", "'"]
  ],
  "folding": {
    "markers": {
      "start": "^\\s*#if",
      "end": "^\\s*#end"
    }
  }
}
```

### 3. Syntax Highlighting

The existing Haxe TextMate grammar should work for .zx files since they share the same base syntax. The grammar file `syntaxes/haxe.tmLanguage.json` doesn't need changes as it's applied based on the language ID, not file extension.

### 4. File Icon Theme (Optional)

Add .zx file icon support in `package.json`:

```json
{
  "contributes": {
    "iconThemes": [
      {
        "id": "haxe-icons",
        "label": "Haxe Icons",
        "path": "./icons/haxe-icon-theme.json"
      }
    ]
  }
}
```

And in `icons/haxe-icon-theme.json`:

```json
{
  "iconDefinitions": {
    "haxe-file": {
      "iconPath": "./haxe-file.svg"
    }
  },
  "fileExtensions": {
    "hx": "haxe-file",
    "zx": "haxe-file"
  }
}
```

## Implementation Steps

1. **Fork the vshaxe repository** from https://github.com/vshaxe/vshaxe
2. **Update package.json** to include .zx in the extensions array
3. **Test the changes** by:
   - Creating a test .zx file with ZX syntax features
   - Verifying syntax highlighting works
   - Testing LSP features (completion, go-to-definition, etc.)
   - Ensuring file icons display correctly
4. **Submit a pull request** to the vshaxe repository

## Testing Configuration

Create a test workspace with both .hx and .zx files to verify:

### Test Files

**Main.hx** (traditional Haxe):
```haxe
class Main {
    public static function main() {
        trace("Hello from .hx file");
    }
}
```

**Example.zx** (ZX syntax):
```haxe
class Example {
    // ZX features: optional semicolons, public by default
    function test() {
        let x = 42  // let keyword, no semicolon
        trace("Hello from .zx file")
    }
    
    // TypeScript-style getters/setters
    var _value: Int = 0
    get value() return _value
    set value(v) _value = v
}
```

### VSCode Settings

Add to `.vscode/settings.json`:
```json
{
  "files.associations": {
    "*.zx": "haxe"
  },
  "haxe.enableCompilationServer": true,
  "haxe.displayConfigurations": [
    {
      "label": "ZX Test",
      "args": ["-cp", "src", "-main", "Main", "--interp"]
    }
  ]
}
```

## Expected Behavior

After implementing these changes:

1. ✅ .zx files should be recognized as Haxe files
2. ✅ Syntax highlighting should work for both .hx and .zx files  
3. ✅ LSP features should work seamlessly:
   - Code completion
   - Go to definition
   - Find references
   - Hover information
   - Error diagnostics
4. ✅ File icons should display consistently
5. ✅ ZX-specific syntax should be highlighted correctly

## Notes

- The Haxe compiler's LSP implementation already supports .zx files completely
- No changes are needed to the language server itself
- The extension only needs to recognize .zx files and apply Haxe language features
- ZX syntax features are handled by the compiler parser, not the VSCode extension

## Compatibility

This change is backward compatible:
- Existing .hx files continue to work unchanged
- .zx files get the same IDE support as .hx files
- No breaking changes to existing functionality
