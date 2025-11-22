package std.convert


/**
 * @description Provides an interface for formatting values into strings with custom format specifiers.
 */
@!APILevel[
    since: "22"
]
public interface Formattable {
    /**
     * @description Formats the value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the value formatted according to the format string.
     */
    @!APILevel[
        since: "22"
    ]
    func format(fmt: String): String
}

/**
 * @description Extends Int64 to support formatting with custom format specifiers.
 */
extend Int64 <: Formattable {
    /**
     * @description Formats the Int64 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Int64 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends Int32 to support formatting with custom format specifiers.
 */
extend Int32 <: Formattable {
    /**
     * @description Formats the Int32 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Int32 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends Int16 to support formatting with custom format specifiers.
 */
extend Int16 <: Formattable {
    /**
     * @description Formats the Int16 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Int16 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends Int8 to support formatting with custom format specifiers.
 */
extend Int8 <: Formattable {
    /**
     * @description Formats the Int8 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Int8 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends UInt64 to support formatting with custom format specifiers.
 */
extend UInt64 <: Formattable {
    /**
     * @description Formats the UInt64 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the UInt64 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends UInt32 to support formatting with custom format specifiers.
 */
extend UInt32 <: Formattable {
    /**
     * @description Formats the UInt32 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the UInt32 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends UInt16 to support formatting with custom format specifiers.
 */
extend UInt16 <: Formattable {
    /**
     * @description Formats the UInt16 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the UInt16 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends UInt8 to support formatting with custom format specifiers.
 */
extend UInt8 <: Formattable {
    /**
     * @description Formats the UInt8 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the UInt8 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected int format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends Float64 to support formatting with custom format specifiers.
 */
extend Float64 <: Formattable {
    /**
     * @description Formats the Float64 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Float64 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected float format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends Float32 to support formatting with custom format specifiers.
 */
extend Float32 <: Formattable {
    /**
     * @description Formats the Float32 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Float32 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected float format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends Float16 to support formatting with custom format specifiers.
 */
extend Float16 <: Formattable {
    /**
     * @description Formats the Float16 value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Float16 value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected float format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Extends Rune to support formatting with custom format specifiers.
 */
extend Rune <: Formattable {
    /**
     * @description Formats the Rune value according to the given format string.
     * @param fmt The format string specifying how the value should be formatted.
     * @returns A string representation of the Rune value formatted according to the format string.
     * @throws IllegalArgumentException if the format string does not match the expected char format pattern.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Provides an unified abstraction to support specific types of parsing from strings.
 */
@!APILevel[
    since: "22"
]
public interface Parsable<T> {
    /**
     * @description Provides an abstract function to support specific types of parsing from strings.
     * @param value The string to parse.
     * @returns The parsed value of type T.
     */
    @!APILevel[
        since: "22"
    ]
    static func parse(value: String): T
    
    /**
     * @description Provides an abstract function to support specific types of parsing from strings.
     * @param value The string to parse.
     * @returns An Option containing the parsed value of type T, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    static func tryParse(value: String): Option<T>
}

/**
 * @description Provides an interface for converting values to and from strings with radix support.
 */
@!APILevel[
    since: "22"
]
public interface RadixConvertible<T> {
    /**
     * @description Parses a string representation of a number with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed value of type T.
     */
    @!APILevel[
        since: "22"
    ]
    static func parse(value: String, radix!: Int64): T
    
    /**
     * @description Attempts to parse a string representation of a number with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed value of type T, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    static func tryParse(value: String, radix!: Int64): Option<T>
    
    /**
     * @description Converts the value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the value in the specified radix.
     */
    @!APILevel[
        since: "22"
    ]
    func toString(radix!: Int64): String
}

/**
 * @description Extends Int8 to support parsing from strings.
 */
extend Int8 <: Parsable<Int8> {
    /**
     * @description Convert a string of Int8 literals to an Int8 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Int8 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int8, or if the value after conversion is out of the Int8 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Int8
    
    /**
     * @description Convert a string of Int8 literals to an Option<Int8> value. If the failure occurs, Option<Int8>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Int8 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Int8>
}

/**
 * @description Extends Int8 to support radix conversion.
 */
extend Int8 <: RadixConvertible<Int8> {
    /**
     * @description Parses a string representation of an Int8 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed Int8 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int8, or if the value after conversion is out of the Int8 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): Int8
    
    /**
     * @description Attempts to parse a string representation of an Int8 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed Int8 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<Int8>
    
    /**
     * @description Converts the Int8 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the Int8 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends UInt8 to support parsing from strings.
 */
extend UInt8 <: Parsable<UInt8> {
    /**
     * @description Convert a string of UInt8 literals to a UInt8 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed UInt8 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt8, or if the value after conversion is out of the UInt8 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): UInt8
    
    /**
     * @description Convert a string of UInt8 literals to an Option<UInt8> value. If the failure occurs, Option<UInt8>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed UInt8 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<UInt8>
}

/**
 * @description Extends UInt8 to support radix conversion.
 */
extend UInt8 <: RadixConvertible<UInt8> {
    /**
     * @description Parses a string representation of a UInt8 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed UInt8 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt8, or if the value after conversion is out of the UInt8 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): UInt8
    
    /**
     * @description Attempts to parse a string representation of a UInt8 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed UInt8 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<UInt8>
    
    /**
     * @description Converts the UInt8 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the UInt8 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends Int16 to support parsing from strings.
 */
extend Int16 <: Parsable<Int16> {
    /**
     * @description Convert a string of Int16 literals to an Int16 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Int16 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int16, or if the value after conversion is out of the Int16 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Int16
    
    /**
     * @description Convert a string of Int16 literals to an Option<Int16> value. If the failure occurs, Option<Int16>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Int16 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Int16>
}

/**
 * @description Extends Int16 to support radix conversion.
 */
extend Int16 <: RadixConvertible<Int16> {
    /**
     * @description Parses a string representation of an Int16 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed Int16 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int16, or if the value after conversion is out of the Int16 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): Int16
    
    /**
     * @description Attempts to parse a string representation of an Int16 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed Int16 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<Int16>
    
    /**
     * @description Converts the Int16 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the Int16 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends UInt16 to support parsing from strings.
 */
extend UInt16 <: Parsable<UInt16> {
    /**
     * @description Convert a string of UInt16 literals to a UInt16 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed UInt16 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt16, or if the value after conversion is out of the UInt16 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): UInt16
    
    /**
     * @description Convert a string of UInt16 literals to an Option<UInt16> value. If the failure occurs, Option<UInt16>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed UInt16 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<UInt16>
}

/**
 * @description Extends UInt16 to support radix conversion.
 */
extend UInt16 <: RadixConvertible<UInt16> {
    /**
     * @description Parses a string representation of a UInt16 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed UInt16 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt16, or if the value after conversion is out of the UInt16 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): UInt16
    
    /**
     * @description Attempts to parse a string representation of a UInt16 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed UInt16 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<UInt16>
    
    /**
     * @description Converts the UInt16 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the UInt16 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends Int32 to support parsing from strings.
 */
extend Int32 <: Parsable<Int32> {
    /**
     * @description Convert a string of Int32 literals to an Int32 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Int32 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int32, or if the value after conversion is out of the Int32 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Int32
    
    /**
     * @description Convert a string of Int32 literals to an Option<Int32> value. If the failure occurs, Option<Int32>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Int32 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Int32>
}

/**
 * @description Extends Int32 to support radix conversion.
 */
extend Int32 <: RadixConvertible<Int32> {
    /**
     * @description Parses a string representation of an Int32 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed Int32 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int32, or if the value after conversion is out of the Int32 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): Int32
    
    /**
     * @description Attempts to parse a string representation of an Int32 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed Int32 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<Int32>
    
    /**
     * @description Converts the Int32 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the Int32 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends UInt32 to support parsing from strings.
 */
extend UInt32 <: Parsable<UInt32> {
    /**
     * @description Convert a string of UInt32 literals to a UInt32 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed UInt32 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt32, or if the value after conversion is out of the UInt32 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): UInt32
    
    /**
     * @description Convert a string of UInt32 literals to an Option<UInt32> value. If the failure occurs, Option<UInt32>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed UInt32 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<UInt32>
}

/**
 * @description Extends UInt32 to support radix conversion.
 */
extend UInt32 <: RadixConvertible<UInt32> {
    /**
     * @description Parses a string representation of a UInt32 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed UInt32 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt32, or if the value after conversion is out of the UInt32 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): UInt32
    
    /**
     * @description Attempts to parse a string representation of a UInt32 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed UInt32 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<UInt32>
    
    /**
     * @description Converts the UInt32 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the UInt32 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends Int64 to support parsing from strings.
 */
extend Int64 <: Parsable<Int64> {
    /**
     * @description Convert a string of Int64 literals to an Int64 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Int64 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int64, or if the value after conversion is out of the Int64 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Int64
    
    /**
     * @description Convert a string of Int64 literals to an Option<Int64> value. If the failure occurs, Option<Int64>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Int64 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Int64>
}

/**
 * @description Extends Int64 to support radix conversion.
 */
extend Int64 <: RadixConvertible<Int64> {
    /**
     * @description Parses a string representation of an Int64 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed Int64 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+", or if failing to convert to Int64, or if the value after conversion is out of the Int64 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): Int64
    
    /**
     * @description Attempts to parse a string representation of an Int64 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed Int64 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<Int64>
    
    /**
     * @description Converts the Int64 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the Int64 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends UInt64 to support parsing from strings.
 */
extend UInt64 <: Parsable<UInt64> {
    /**
     * @description Convert a string of UInt64 literals to a UInt64 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed UInt64 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt64, or if the value after conversion is out of the UInt64 range, or if there is an invalid utf8 code in the string.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): UInt64
    
    /**
     * @description Convert a string of UInt64 literals to an Option<UInt64> value. If the failure occurs, Option<UInt64>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed UInt64 value, or None if parsing failed.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<UInt64>
}

/**
 * @description Extends UInt64 to support radix conversion.
 */
extend UInt64 <: RadixConvertible<UInt64> {
    /**
     * @description Parses a string representation of a UInt64 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns The parsed UInt64 value.
     * @throws IllegalArgumentException if the string is empty, or if the string is starting with "+" or "-", or if failing to convert to UInt64, or if the value after conversion is out of the UInt64 range, or if there is an invalid utf8 code in the string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): UInt64
    
    /**
     * @description Attempts to parse a string representation of a UInt64 with the specified radix.
     * @param value The string to parse.
     * @param radix The radix (base) to use for parsing.
     * @returns An Option containing the parsed UInt64 value, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): Option<UInt64>
    
    /**
     * @description Converts the UInt64 value to a string representation with the specified radix.
     * @param radix The radix (base) to use for conversion.
     * @returns A string representation of the UInt64 value in the specified radix.
     * @throws IllegalArgumentException if the radix is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

/**
 * @description Extends Float16 to support parsing from strings.
 */
extend Float16 <: Parsable<Float16> {
    /**
     * @description Convert a string of Float16 literals to a Float16 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Float16 value.
     * @throws IllegalArgumentException if the string does not comply with the floating point number syntax.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Float16
    
    /**
     * @description Convert a string of Float16 literals to an Option<Float16> value. If the failure occurs, Option<Float16>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Float16 value, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Float16>
}

/**
 * @description Extends Float32 to support parsing from strings.
 */
extend Float32 <: Parsable<Float32> {
    /**
     * @description Convert a string of Float32 literals to a Float32 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Float32 value.
     * @throws IllegalArgumentException if the string does not comply with the floating point number syntax.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Float32
    
    /**
     * @description Convert a string of Float32 literals to an Option<Float32> value. If the failure occurs, Option<Float32>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Float32 value, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Float32>
}

/**
 * @description Extends Float64 to support parsing from strings.
 */
extend Float64 <: Parsable<Float64> {
    /**
     * @description Convert a string of Float64 literals to a Float64 value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Float64 value.
     * @throws IllegalArgumentException if the string does not comply with the floating point number syntax.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Float64
    
    /**
     * @description Convert a string of Float64 literals to an Option<Float64> value. If the failure occurs, Option<Float64>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Float64 value, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Float64>
}

/**
 * @description Extends Rune to support parsing from strings.
 */
extend Rune <: Parsable<Rune> {
    /**
     * @description Convert a string of Rune literals to a Rune value. If the failure occurs, Exception will be throwed.
     * @param data The string to parse.
     * @returns The parsed Rune value.
     * @throws IllegalArgumentException if the string is empty, or if failing to convert to Rune, or if there is an invalid utf8 code in the string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Rune
    
    /**
     * @description Convert a string of Rune literals to an Option<Rune> value. If the failure occurs, Option<Rune>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Rune value, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Rune>
}

/**
 * @description Extends Bool to support parsing from strings.
 */
extend Bool <: Parsable<Bool> {
    /**
     * @description Convert a string of Boolean literals to a Boolean value. If the failure occurs, IllegalArgumentException will be throwed.
     * @param data The string to parse.
     * @returns The parsed Bool value.
     * @throws IllegalArgumentException if the string is empty, or if failing to convert to Bool.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(data: String): Bool
    
    /**
     * @description Convert a string of Boolean literals to an Option<Bool> value. If the failure occurs, Option<Rune>.None will be returned.
     * @param data The string to parse.
     * @returns An Option containing the parsed Bool value, or None if parsing failed.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(data: String): Option<Bool>
}

