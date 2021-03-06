package java.lang;

@:forward abstract Character(CharacterClass) from CharacterClass to CharacterClass
{
	@:to @:extern inline public function toCharacter():java.types.Char16
		return this.charValue();
	@:from @:extern inline public static function fromCharacter(b:java.types.Char16):Character
		return CharacterClass.valueOf(b);
}

@:native("java.lang.Character") extern class CharacterClass implements Comparable<Character>
{
	@:overload function new(param1 : java.types.Char16) : Void;
	@:overload function charValue() : java.types.Char16;
	@:overload function compareTo(param1 : Character) : Int;
	@:overload function compareTo(param1 : Dynamic) : Int;
	@:overload function equals(param1 : Dynamic) : Bool;
	@:overload function hashCode() : Int;
	@:overload function toString() : String;
	@:final static var COMBINING_SPACING_MARK(default,null) : java.types.Char16;
	@:final static var CONNECTOR_PUNCTUATION(default,null) : java.types.Char16;
	@:final static var CONTROL(default,null) : java.types.Char16;
	@:final static var CURRENCY_SYMBOL(default,null) : java.types.Char16;
	@:final static var DASH_PUNCTUATION(default,null) : java.types.Char16;
	@:final static var DECIMAL_DIGIT_NUMBER(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_ARABIC_NUMBER(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_BOUNDARY_NEUTRAL(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_COMMON_NUMBER_SEPARATOR(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_EUROPEAN_NUMBER(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_LEFT_TO_RIGHT(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_NONSPACING_MARK(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_OTHER_NEUTRALS(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_PARAGRAPH_SEPARATOR(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_POP_DIRECTIONAL_FORMAT(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_RIGHT_TO_LEFT(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_SEGMENT_SEPARATOR(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_UNDEFINED(default,null) : java.types.Char16;
	@:final static var DIRECTIONALITY_WHITESPACE(default,null) : java.types.Char16;
	@:final static var ENCLOSING_MARK(default,null) : java.types.Char16;
	@:final static var END_PUNCTUATION(default,null) : java.types.Char16;
	@:final static var FINAL_QUOTE_PUNCTUATION(default,null) : java.types.Char16;
	@:final static var FORMAT(default,null) : java.types.Char16;
	@:final static var INITIAL_QUOTE_PUNCTUATION(default,null) : java.types.Char16;
	@:final static var LETTER_NUMBER(default,null) : java.types.Char16;
	@:final static var LINE_SEPARATOR(default,null) : java.types.Char16;
	@:final static var LOWERCASE_LETTER(default,null) : java.types.Char16;
	@:final static var MATH_SYMBOL(default,null) : java.types.Char16;
	@:final static var MAX_CODE_POINT(default,null) : Int;
	@:final static var MAX_HIGH_SURROGATE(default,null) : java.types.Char16;
	@:final static var MAX_LOW_SURROGATE(default,null) : java.types.Char16;
	@:final static var MAX_RADIX(default,null) : Int;
	@:final static var MAX_SURROGATE(default,null) : java.types.Char16;
	@:final static var MAX_VALUE(default,null) : java.types.Char16;
	@:final static var MIN_CODE_POINT(default,null) : Int;
	@:final static var MIN_HIGH_SURROGATE(default,null) : java.types.Char16;
	@:final static var MIN_LOW_SURROGATE(default,null) : java.types.Char16;
	@:final static var MIN_RADIX(default,null) : Int;
	@:final static var MIN_SUPPLEMENTARY_CODE_POINT(default,null) : Int;
	@:final static var MIN_SURROGATE(default,null) : java.types.Char16;
	@:final static var MIN_VALUE(default,null) : java.types.Char16;
	@:final static var MODIFIER_LETTER(default,null) : java.types.Char16;
	@:final static var MODIFIER_SYMBOL(default,null) : java.types.Char16;
	@:final static var NON_SPACING_MARK(default,null) : java.types.Char16;
	@:final static var OTHER_LETTER(default,null) : java.types.Char16;
	@:final static var OTHER_NUMBER(default,null) : java.types.Char16;
	@:final static var OTHER_PUNCTUATION(default,null) : java.types.Char16;
	@:final static var OTHER_SYMBOL(default,null) : java.types.Char16;
	@:final static var PARAGRAPH_SEPARATOR(default,null) : java.types.Char16;
	@:final static var PRIVATE_USE(default,null) : java.types.Char16;
	@:final static var SIZE(default,null) : Int;
	@:final static var SPACE_SEPARATOR(default,null) : java.types.Char16;
	@:final static var START_PUNCTUATION(default,null) : java.types.Char16;
	@:final static var SURROGATE(default,null) : java.types.Char16;
	@:final static var TITLECASE_LETTER(default,null) : java.types.Char16;
	@:final static var TYPE : Class<Character>;
	@:final static var UNASSIGNED(default,null) : java.types.Char16;
	@:final static var UPPERCASE_LETTER(default,null) : java.types.Char16;
	@:overload static function charCount(param1 : Int) : Int;
	@:overload static function codePointAt(param1 : CharSequence, param2 : Int) : Int;
	@:overload static function codePointAt(param1 : java.NativeArray<java.types.Char16>, param2 : Int, param3 : Int) : Int;
	@:overload static function codePointAt(param1 : java.NativeArray<java.types.Char16>, param2 : Int) : Int;
	@:overload static function codePointBefore(param1 : CharSequence, param2 : Int) : Int;
	@:overload static function codePointBefore(param1 : java.NativeArray<java.types.Char16>, param2 : Int, param3 : Int) : Int;
	@:overload static function codePointBefore(param1 : java.NativeArray<java.types.Char16>, param2 : Int) : Int;
	@:overload static function codePointCount(param1 : CharSequence, param2 : Int, param3 : Int) : Int;
	@:overload static function codePointCount(param1 : java.NativeArray<java.types.Char16>, param2 : Int, param3 : Int) : Int;
	@:overload static function compare(param1 : java.types.Char16, param2 : java.types.Char16) : Int;
	@:overload static function digit(param1 : java.types.Char16, param2 : Int) : Int;
	@:overload static function digit(param1 : Int, param2 : Int) : Int;
	@:overload static function forDigit(param1 : Int, param2 : Int) : java.types.Char16;
	@:overload static function getDirectionality(param1 : java.types.Char16) : java.types.Char16;
	@:overload static function getDirectionality(param1 : Int) : java.types.Char16;
	@:overload static function getName(param1 : Int) : String;
	@:overload static function getNumericValue(param1 : java.types.Char16) : Int;
	@:overload static function getNumericValue(param1 : Int) : Int;
	@:overload static function getType(param1 : java.types.Char16) : Int;
	@:overload static function getType(param1 : Int) : Int;
	@:overload static function highSurrogate(param1 : Int) : java.types.Char16;
	@:overload static function isAlphabetic(param1 : Int) : Bool;
	@:overload static function isBmpCodePoint(param1 : Int) : Bool;
	@:overload static function isDefined(param1 : java.types.Char16) : Bool;
	@:overload static function isDefined(param1 : Int) : Bool;
	@:overload static function isDigit(param1 : java.types.Char16) : Bool;
	@:overload static function isDigit(param1 : Int) : Bool;
	@:overload static function isHighSurrogate(param1 : java.types.Char16) : Bool;
	@:overload static function isISOControl(param1 : java.types.Char16) : Bool;
	@:overload static function isISOControl(param1 : Int) : Bool;
	@:overload static function isIdentifierIgnorable(param1 : java.types.Char16) : Bool;
	@:overload static function isIdentifierIgnorable(param1 : Int) : Bool;
	@:overload static function isIdeographic(param1 : Int) : Bool;
	@:overload static function isJavaIdentifierPart(param1 : java.types.Char16) : Bool;
	@:overload static function isJavaIdentifierPart(param1 : Int) : Bool;
	@:overload static function isJavaIdentifierStart(param1 : java.types.Char16) : Bool;
	@:overload static function isJavaIdentifierStart(param1 : Int) : Bool;
	@:overload @:deprecated static function isJavaLetter(param1 : java.types.Char16) : Bool;
	@:overload @:deprecated static function isJavaLetterOrDigit(param1 : java.types.Char16) : Bool;
	@:overload static function isLetter(param1 : java.types.Char16) : Bool;
	@:overload static function isLetter(param1 : Int) : Bool;
	@:overload static function isLetterOrDigit(param1 : java.types.Char16) : Bool;
	@:overload static function isLetterOrDigit(param1 : Int) : Bool;
	@:overload static function isLowSurrogate(param1 : java.types.Char16) : Bool;
	@:overload static function isLowerCase(param1 : java.types.Char16) : Bool;
	@:overload static function isLowerCase(param1 : Int) : Bool;
	@:overload static function isMirrored(param1 : java.types.Char16) : Bool;
	@:overload static function isMirrored(param1 : Int) : Bool;
	@:overload @:deprecated static function isSpace(param1 : java.types.Char16) : Bool;
	@:overload static function isSpaceChar(param1 : java.types.Char16) : Bool;
	@:overload static function isSpaceChar(param1 : Int) : Bool;
	@:overload static function isSupplementaryCodePoint(param1 : Int) : Bool;
	@:overload static function isSurrogate(param1 : java.types.Char16) : Bool;
	@:overload static function isSurrogatePair(param1 : java.types.Char16, param2 : java.types.Char16) : Bool;
	@:overload static function isTitleCase(param1 : java.types.Char16) : Bool;
	@:overload static function isTitleCase(param1 : Int) : Bool;
	@:overload static function isUnicodeIdentifierPart(param1 : java.types.Char16) : Bool;
	@:overload static function isUnicodeIdentifierPart(param1 : Int) : Bool;
	@:overload static function isUnicodeIdentifierStart(param1 : java.types.Char16) : Bool;
	@:overload static function isUnicodeIdentifierStart(param1 : Int) : Bool;
	@:overload static function isUpperCase(param1 : java.types.Char16) : Bool;
	@:overload static function isUpperCase(param1 : Int) : Bool;
	@:overload static function isValidCodePoint(param1 : Int) : Bool;
	@:overload static function isWhitespace(param1 : java.types.Char16) : Bool;
	@:overload static function isWhitespace(param1 : Int) : Bool;
	@:overload static function lowSurrogate(param1 : Int) : java.types.Char16;
	@:overload static function offsetByCodePoints(param1 : CharSequence, param2 : Int, param3 : Int) : Int;
	@:overload static function offsetByCodePoints(param1 : java.NativeArray<java.types.Char16>, param2 : Int, param3 : Int, param4 : Int, param5 : Int) : Int;
	@:overload static function reverseBytes(param1 : java.types.Char16) : java.types.Char16;
	@:overload static function toChars(param1 : Int, param2 : java.NativeArray<java.types.Char16>, param3 : Int) : Int;
	@:overload static function toChars(param1 : Int) : java.NativeArray<java.types.Char16>;
	@:overload static function toCodePoint(param1 : java.types.Char16, param2 : java.types.Char16) : Int;
	@:overload static function toLowerCase(param1 : java.types.Char16) : java.types.Char16;
	@:overload static function toLowerCase(param1 : Int) : Int;
	@:native("toString") @:overload static function _toString(param1 : java.types.Char16) : String;
	@:overload static function toTitleCase(param1 : java.types.Char16) : java.types.Char16;
	@:overload static function toTitleCase(param1 : Int) : Int;
	@:overload static function toUpperCase(param1 : java.types.Char16) : java.types.Char16;
	@:overload static function toUpperCase(param1 : Int) : Int;
	@:overload static function valueOf(param1 : java.types.Char16) : Character;

}

