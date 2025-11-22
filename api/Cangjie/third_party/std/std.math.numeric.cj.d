package std.math.numeric
import std.convert.*
import std.math.*
import std.random.*


/**
 * @description Represents an arbitrarily large integer.
 */
@!APILevel[
    since: "22"
]
public struct BigInt <: Comparable<BigInt> & Hashable & ToString {
    /**
     * @description The sign of this BigInt.
     * @returns 1 for positive, -1 for negative, and 0 for zero.
     */
    @!APILevel[
        since: "22"
    ]
    public prop sign: Int64

    /**
     * @description The number of bits in the minimal two's-complement representation of this BigInt, excluding a sign bit.
     */
    @!APILevel[
        since: "22"
    ]
    public prop bitLen: Int64

    /**
     * @description Returns a positive BigInt that is probably prime, with the specified bitLength.
     * @param bitLen The bit length of the returned BigInt.
     * @param certainty A measure of the uncertainty that the caller is willing to tolerate. The returned BigInt will be prime with a probability exceeding (1 - 1/2^certainty).
     * @param rand The source of random bits to be used in selecting candidates.
     * @returns A positive BigInt that is probably prime.
     * @throws ArithmeticException if bitLen < 2.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func randomProbablePrime(bitLen: Int64, certainty: UInt64, rand!: Random = Random()): BigInt

    /**
     * @description Constructs a BigInt from a byte array containing the two's-complement binary representation.
     * @param bytes The byte array.
     * @throws IllegalArgumentException if the byte array is empty.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bytes: Array<Byte>)

    /**
     * @description Constructs a BigInt from a sign and a magnitude.
     * @param sign The sign of the number (true for negative, false for positive).
     * @param magnitude The magnitude of the number as a big-endian byte array.
     * @throws IllegalArgumentException if the magnitude array is empty.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(sign: Bool, magnitude: Array<Byte>)

    /**
     * @description Constructs a BigInt from an Int8 value.
     * @param n The Int8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: Int8)

    /**
     * @description Constructs a BigInt from an Int16 value.
     * @param n The Int16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: Int16)

    /**
     * @description Constructs a BigInt from an Int32 value.
     * @param n The Int32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: Int32)

    /**
     * @description Constructs a BigInt from an Int64 value.
     * @param n The Int64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: Int64)

    /**
     * @description Constructs a BigInt from a UInt8 value.
     * @param n The UInt8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: UInt8)

    /**
     * @description Constructs a BigInt from a UInt16 value.
     * @param n The UInt16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: UInt16)

    /**
     * @description Constructs a BigInt from a UInt32 value.
     * @param n The UInt32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: UInt32)

    /**
     * @description Constructs a BigInt from a UInt64 value.
     * @param n The UInt64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: UInt64)

    /**
     * @description Constructs a BigInt from a UIntNative value.
     * @param n The UIntNative value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: UIntNative)

    /**
     * @description Constructs a BigInt from an IntNative value.
     * @param n The IntNative value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(n: IntNative)

    /**
     * @description Constructs a BigInt from a Float16 value.
     * @param n The Float16 value.
     * @throws ArithmeticException if an arithmetic error occurs.
     * @throws PrecisionMismatchException if precision is lost.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(n: Float16)

    /**
     * @description Constructs a BigInt from a Float32 value.
     * @param n The Float32 value.
     * @throws ArithmeticException if an arithmetic error occurs.
     * @throws PrecisionMismatchException if precision is lost.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(n: Float32)

    /**
     * @description Constructs a BigInt from a Float64 value.
     * @param n The Float64 value.
     * @throws ArithmeticException if an arithmetic error occurs.
     * @throws PrecisionMismatchException if precision is lost.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(n: Float64)

    /**
     * @description Constructs a randomly generated BigInt, uniformly distributed over the range 0 to (2^bitLen - 1), inclusive.
     * @param sign The sign of the number (true for negative, false for positive).
     * @param bitLen The maximum bit length of the new BigInt.
     * @param rand The source of random bits to be used in constructing the new BigInt.
     * @throws IllegalArgumentException if bitLen is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(sign: Bool, bitLen: Int64, rand!: Random = Random())

    /**
     * @description Constructs a BigInt from a string representation in a given base.
     * @param s The string representation.
     * @param base The base to use for parsing.
     * @throws IllegalArgumentException if the string is not a valid representation of a BigInt or the base is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(s: String, base!: Int64 = 10)

    /**
     * @description Tests the value of the specified bit.
     * @param index The index of the bit to test.
     * @returns true if the specified bit is set, false otherwise.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func testBit(index: Int64): Bool

    /**
     * @description Returns the index of the rightmost (lowest-order) one bit in this BigInt.
     * @returns The index of the rightmost one bit.
     */
    @!APILevel[
        since: "22"
    ]
    public func lowestOneBit(): Int64

    /**
     * @description Returns a BigInt whose value is equivalent to this BigInt with the designated bit set.
     * @param index The index of the bit to set.
     * @returns A new BigInt with the bit set.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setBit(index: Int64): BigInt

    /**
     * @description Returns a BigInt whose value is equivalent to this BigInt with the designated bit cleared.
     * @param index The index of the bit to clear.
     * @returns A new BigInt with the bit cleared.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clearBit(index: Int64): BigInt

    /**
     * @description Returns a BigInt whose value is equivalent to this BigInt with the designated bit flipped.
     * @param index The index of the bit to flip.
     * @returns A new BigInt with the bit flipped.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func flipBit(index: Int64): BigInt

    /**
     * @description Returns true if this BigInt is probably prime, false if it's definitely composite.
     * @param certainty A measure of the uncertainty that the caller is willing to tolerate.
     * @returns true if this BigInt is probably prime, false otherwise.
     * @throws ArithmeticException if an arithmetic error occurs.
     * @throws IllegalArgumentException if certainty is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isProbablePrime(certainty: UInt64): Bool

    /**
     * @description Adds another BigInt to this BigInt.
     * @param other The BigInt to add.
     * @returns The sum of this and that.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(other: BigInt): BigInt

    /**
     * @description Subtracts another BigInt from this BigInt.
     * @param other The BigInt to subtract.
     * @returns The result of this - that.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(other: BigInt): BigInt

    /**
     * @description Multiplies this BigInt by another BigInt.
     * @param other The BigInt to multiply by.
     * @returns The product of this and that.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func *(other: BigInt): BigInt

    /**
     * @description Divides this BigInt by another BigInt.
     * @param other The BigInt to divide by.
     * @returns The quotient of this / that.
     * @throws ArithmeticException if that is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func /(other: BigInt): BigInt

    /**
     * @description Computes the remainder of the division of this BigInt by another BigInt.
     * @param other The BigInt to divide by.
     * @returns The remainder of this % that.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func %(other: BigInt): BigInt

    /**
     * @description Computes the quotient and remainder of the division of this BigInt by another BigInt.
     * @param other The BigInt to divide by.
     * @returns A tuple containing the quotient and remainder.
     * @throws IllegalArgumentException if an argument is invalid.
     * @throws ArithmeticException if that is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func divAndMod(other: BigInt): (BigInt, BigInt)

    /**
     * @description Computes the quotient of the division of this BigInt by another BigInt.
     * @param other The BigInt to divide by.
     * @returns The quotient of this / that.
     * @throws ArithmeticException if that is zero.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func quo(other: BigInt): BigInt

    /**
     * @description Computes the remainder of the division of this BigInt by another BigInt.
     * @param other The BigInt to divide by.
     * @returns The remainder of this % that.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func rem(other: BigInt): BigInt

    /**
     * @description Computes the quotient and remainder of the division of this BigInt by another BigInt.
     * @param other The BigInt to divide by.
     * @returns A tuple containing the quotient and remainder.
     * @throws ArithmeticException if that is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func quoAndRem(other: BigInt): (BigInt, BigInt)

    /**
     * @description Computes the modular multiplicative inverse of this BigInt modulo another BigInt.
     * @param other The modulus.
     * @returns The modular inverse.
     * @throws ArithmeticException if that is not positive or if this BigInt has no inverse mod that.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func modInverse(other: BigInt): BigInt

    /**
     * @description Negates this BigInt.
     * @returns The negated BigInt.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(): BigInt

    /**
     * @description Raises this BigInt to the power of an exponent.
     * @param n The exponent.
     * @returns This BigInt raised to the power of n.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func **(n: UInt64): BigInt

    /**
     * @description Computes (this^n) mod m.
     * @param n The exponent.
     * @param m The modulus.
     * @returns The result of (this^n) mod m.
     * @throws ArithmeticException if m is not positive.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func modPow(n: BigInt, m!: ?BigInt = None): BigInt

    /**
     * @description Performs a bitwise AND operation.
     * @param other The BigInt to AND with.
     * @returns The result of the bitwise AND.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func &(other: BigInt): BigInt

    /**
     * @description Performs a bitwise OR operation.
     * @param other The BigInt to OR with.
     * @returns The result of the bitwise OR.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func |(other: BigInt): BigInt

    /**
     * @description Performs a bitwise XOR operation.
     * @param other The BigInt to XOR with.
     * @returns The result of the bitwise XOR.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ^(other: BigInt): BigInt

    /**
     * @description Performs a bitwise NOT operation.
     * @returns The result of the bitwise NOT.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !(): BigInt

    /**
     * @description Performs a right bit shift.
     * @param n The number of bits to shift.
     * @returns The result of the right shift.
     * @throws ArithmeticException if n is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func >>(n: Int64): BigInt

    /**
     * @description Performs a left bit shift.
     * @param n The number of bits to shift.
     * @returns The result of the left shift.
     * @throws ArithmeticException if n is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func <<(n: Int64): BigInt

    /**
     * @description Checks for equality with another BigInt.
     * @param other The BigInt to compare with.
     * @returns true if the values are equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: BigInt): Bool

    /**
     * @description Checks for inequality with another BigInt.
     * @param other The BigInt to compare with.
     * @returns true if the values are not equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: BigInt): Bool

    /**
     * @description Checks if this BigInt is greater than another.
     * @param other The BigInt to compare with.
     * @returns true if this is greater than that, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: BigInt): Bool

    /**
     * @description Checks if this BigInt is greater than or equal to another.
     * @param other The BigInt to compare with.
     * @returns true if this is greater than or equal to that, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: BigInt): Bool

    /**
     * @description Checks if this BigInt is less than another.
     * @param other The BigInt to compare with.
     * @returns true if this is less than that, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: BigInt): Bool

    /**
     * @description Checks if this BigInt is less than or equal to another.
     * @param other The BigInt to compare with.
     * @returns true if this is less than or equal to that, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: BigInt): Bool

    /**
     * @description Compares this BigInt with another.
     * @param other The BigInt to compare with.
     * @returns An Ordering value indicating the relationship.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: BigInt): Ordering

    /**
     * @description Computes the hash code for this BigInt.
     * @returns The hash code.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Converts this BigInt to its string representation.
     * @returns The string representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Converts this BigInt to a byte array.
     * @returns The byte array representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBytes(): Array<Byte>

    /**
     * @description Converts this BigInt to an Int8.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int8 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt8(overflowHandling!: OverflowStrategy = Throwing): Int8

    /**
     * @description Converts this BigInt to an Int16.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int16 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt16(overflowHandling!: OverflowStrategy = Throwing): Int16

    /**
     * @description Converts this BigInt to an Int32.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int32 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt32(overflowHandling!: OverflowStrategy = Throwing): Int32

    /**
     * @description Converts this BigInt to an Int64.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int64 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt64(overflowHandling!: OverflowStrategy = Throwing): Int64

    /**
     * @description Converts this BigInt to an IntNative.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The IntNative representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toIntNative(overflowHandling!: OverflowStrategy = Throwing): IntNative

    /**
     * @description Converts this BigInt to a Float16.
     * @returns The Float16 representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toFloat16(): Float16

    /**
     * @description Converts this BigInt to a Float32.
     * @returns The Float32 representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toFloat32(): Float32

    /**
     * @description Converts this BigInt to a Float64.
     * @returns The Float64 representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toFloat64(): Float64

    /**
     * @description Converts this BigInt to a UInt8.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt8 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8(overflowHandling!: OverflowStrategy = Throwing): UInt8

    /**
     * @description Converts this BigInt to a UInt16.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt16 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt16(overflowHandling!: OverflowStrategy = Throwing): UInt16

    /**
     * @description Converts this BigInt to a UInt32.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt32 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt32(overflowHandling!: OverflowStrategy = Throwing): UInt32

    /**
     * @description Converts this BigInt to a UInt64.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt64 representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt64(overflowHandling!: OverflowStrategy = Throwing): UInt64

    /**
     * @description Converts this BigInt to a UIntNative.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UIntNative representation.
     * @throws OverflowException if no overflow strategy or Throwing is specified and the value overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUIntNative(overflowHandling!: OverflowStrategy = Throwing): UIntNative
}

/**
 * @description Returns the absolute value of a BigInt.
 * @param i The BigInt.
 * @returns The absolute value of the BigInt.
 */
@!APILevel[
    since: "22"
]
public func abs(i: BigInt): BigInt

/**
 * @description Computes the integer square root of a BigInt.
 * @param i The BigInt.
 * @returns The integer square root.
 * @throws ArithmeticException if i is negative.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func sqrt(i: BigInt): BigInt

/**
 * @description Computes the greatest common divisor of two BigInts.
 * @param i1 The first BigInt.
 * @param i2 The second BigInt.
 * @returns The greatest common divisor.
 * @throws IllegalArgumentException if an argument is invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func gcd(i1: BigInt, i2: BigInt): BigInt

/**
 * @description Computes the least common multiple of two BigInts.
 * @param i1 The first BigInt.
 * @param i2 The second BigInt.
 * @returns The least common multiple.
 * @throws ArithmeticException if the result overflows.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(i1: BigInt, i2: BigInt): BigInt

/**
 * @description Counts the number of set bits in a BigInt.
 * @param i The BigInt.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(i: BigInt): Int64

/**
 * @description Counts the number of set bits in a BigInt.
 * @param i The BigInt.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOnes(i: BigInt): Int64

/**
 * @description Returns the number of trailing zero bits in the two's complement representation of the specified BigInt value.
 * @param x The BigInt value.
 * @returns The number of trailing zero bits.
 */
@!APILevel[
    since: "22"
]
public func trailingZeros(x: BigInt): Int64


extend BigInt <: Integer<BigInt> {
    /**
     * @description Checks if the integer type is signed.
     * @returns true if the type is signed, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend BigInt <: Parsable<BigInt> {
    /**
     * @description Parses a string into a BigInt.
     * @param value The string to parse.
     * @returns The parsed BigInt.
     * @throws IllegalArgumentException if the string is not a valid BigInt.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String): BigInt

    /**
     * @description Tries to parse a string into a BigInt.
     * @param value The string to parse.
     * @returns The parsed BigInt, or null if parsing fails.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String): ?BigInt
}

extend BigInt <: RadixConvertible<BigInt> {
    /**
     * @description Parses a string with a given radix into a BigInt.
     * @param value The string to parse.
     * @param radix The radix to use.
     * @returns The parsed BigInt.
     * @throws IllegalArgumentException if the string is not a valid BigInt for the given radix.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String, radix!: Int64): BigInt

    /**
     * @description Tries to parse a string with a given radix into a BigInt.
     * @param value The string to parse.
     * @param radix The radix to use.
     * @returns The parsed BigInt, or null if parsing fails.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String, radix!: Int64): ?BigInt

    /**
     * @description Converts the BigInt to a string representation in a given radix.
     * @param radix The radix to use.
     * @returns The string representation.
     * @throws IllegalArgumentException if the radix is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(radix!: Int64): String
}

extend BigInt <: Formattable {
    /**
     * @description Formats the BigInt according to a format string.
     * @param fmt The format string.
     * @returns The formatted string.
     * @throws IllegalArgumentException if the format string is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

/**
 * @description Represents a decimal number with arbitrary precision.
 * @see Comparable
 * @see Hashable
 * @see ToString
 */
@!APILevel[
    since: "22"
]
public struct Decimal <: Comparable<Decimal> & Hashable & ToString {
    /**
     * @description The scale of this Decimal.
     * @returns The number of digits to the right of the decimal point.
     */
    @!APILevel[
        since: "22"
    ]
    public prop scale: Int32

    /**
     * @description The precision of this Decimal.
     * @returns The total number of digits in the unscaled value.
     */
    @!APILevel[
        since: "22"
    ]
    public prop precision: Int64

    /**
     * @description The unscaled value of this Decimal as a BigInt.
     */
    @!APILevel[
        since: "22"
    ]
    public prop value: BigInt

    /**
     * @description The sign of this Decimal.
     * @returns 1 for positive, -1 for negative, and 0 for zero.
     */
    @!APILevel[
        since: "22"
    ]
    public prop sign: Int64

    /**
     * @description Constructs a Decimal from a string representation.
     * @param val The string representation.
     * @throws OverflowException if the value overflows.
     * @throws IllegalArgumentException if the string is not a valid Decimal.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(val: String)

    /**
     * @description Constructs a Decimal from a BigInt value and a scale.
     * @param val The BigInt value.
     * @param scale The scale.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(val: BigInt, scale: Int32)

    /**
     * @description Constructs a Decimal from a BigInt value with a scale of 0.
     * @param val The BigInt value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: BigInt)

    /**
     * @description Constructs a Decimal from an Int8 value.
     * @param val The Int8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int8)

    /**
     * @description Constructs a Decimal from an Int16 value.
     * @param val The Int16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int16)

    /**
     * @description Constructs a Decimal from an Int32 value.
     * @param val The Int32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int32)

    /**
     * @description Constructs a Decimal from an IntNative value.
     * @param val The IntNative value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: IntNative)

    /**
     * @description Constructs a Decimal from an Int64 value.
     * @param val The Int64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int64)

    /**
     * @description Constructs a Decimal from a UInt8 value.
     * @param val The UInt8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt8)

    /**
     * @description Constructs a Decimal from a UInt16 value.
     * @param val The UInt16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt16)

    /**
     * @description Constructs a Decimal from a UInt32 value.
     * @param val The UInt32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt32)

    /**
     * @description Constructs a Decimal from a UIntNative value.
     * @param val The UIntNative value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UIntNative)

    /**
     * @description Constructs a Decimal from a UInt64 value.
     * @param val The UInt64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt64)

    /**
     * @description Constructs a Decimal from a Float16 value.
     * @param val The Float16 value.
     * @throws IllegalArgumentException if val is -inf, inf or nan.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(val: Float16)

    /**
     * @description Constructs a Decimal from a Float32 value.
     * @param val The Float32 value.
     * @throws IllegalArgumentException if val is -inf, inf or nan.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(val: Float32)

    /**
     * @description Constructs a Decimal from a Float64 value.
     * @param val The Float64 value.
     * @throws IllegalArgumentException if val is -inf, inf or nan.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(val: Float64)

    /**
     * @description Adds another Decimal to this Decimal.
     * @param d The Decimal to add.
     * @returns The sum of the two Decimals.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(d: Decimal): Decimal

    /**
     * @description Subtracts another Decimal from this Decimal.
     * @param d The Decimal to subtract.
     * @returns The difference between the two Decimals.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(d: Decimal): Decimal

    /**
     * @description Multiplies this Decimal by another Decimal.
     * @param d The Decimal to multiply by.
     * @returns The product of the two Decimals.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func *(d: Decimal): Decimal

    /**
     * @description Divides this Decimal by another Decimal.
     * @param d The Decimal to divide by.
     * @returns The quotient of the division.
     * @throws OverflowException if the result overflows.
     * @throws ArithmeticException if d is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func /(d: Decimal): Decimal

    /**
     * @description Divides this Decimal by another, with a specified precision and rounding mode.
     * @param d The divisor.
     * @param precision The number of digits to the right of the decimal point in the result.
     * @param roundingMode The rounding mode to apply.
     * @returns The result of the division.
     * @throws OverflowException if the result overflows.
     * @throws ArithmeticException if d is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func divWithPrecision(d: Decimal, precision: Int64, roundingMode!: RoundingMode = HalfEven): Decimal

    /**
     * @description Computes the quotient and remainder of the division of this Decimal by another.
     * @param d The divisor.
     * @returns A tuple containing the integer part of the quotient and the remainder.
     * @throws ArithmeticException if d is zero.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func divAndRem(d: Decimal): (BigInt, Decimal)

    /**
     * @description Computes the quotient and remainder of the division of this Decimal by another.
     * @param d The divisor.
     * @returns A tuple containing the integer part of the quotient and the remainder.
     * @throws ArithmeticException if d is zero.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func divAndMod(d: Decimal): (BigInt, Decimal)

    /**
     * @description Negates this Decimal.
     * @returns The negated Decimal.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(): Decimal

    /**
     * @description Moves the decimal point of this Decimal.
     * @param n The number of places to move the decimal point. A positive value moves it to the right, a negative value to the left.
     * @returns A new Decimal with the decimal point shifted.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func shiftPoint(n: Int32): Decimal

    /**
     * @description Rounds this Decimal to a specified precision.
     * @param precision The number of digits to the right of the decimal point.
     * @param roundingMode The rounding mode to apply.
     * @returns The rounded Decimal.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func roundWithPrecision(precision: Int64, roundingMode!: RoundingMode = RoundingMode.HalfEven): Decimal

    /**
     * @description Checks if this Decimal is less than another.
     * @param d The Decimal to compare with.
     * @returns true if this is less than d, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <(d: Decimal): Bool

    /**
     * @description Checks if this Decimal is greater than another.
     * @param d The Decimal to compare with.
     * @returns true if this is greater than d, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >(d: Decimal): Bool

    /**
     * @description Checks if this Decimal is less than or equal to another.
     * @param d The Decimal to compare with.
     * @returns true if this is less than or equal to d, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(d: Decimal): Bool

    /**
     * @description Checks if this Decimal is greater than or equal to another.
     * @param d The Decimal to compare with.
     * @returns true if this is greater than or equal to d, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >=(d: Decimal): Bool

    /**
     * @description Checks for equality with another Decimal.
     * @param d The Decimal to compare with.
     * @returns true if the values are equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(d: Decimal): Bool

    /**
     * @description Checks for inequality with another Decimal.
     * @param d The Decimal to compare with.
     * @returns true if the values are not equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(d: Decimal): Bool

    /**
     * @description Compares this Decimal with another.
     * @param d The Decimal to compare with.
     * @returns An Ordering value indicating the relationship.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(d: Decimal): Ordering

    /**
     * @description Raises this Decimal to the power of an exponent.
     * @param n The exponent.
     * @returns The result of the exponentiation.
     * @throws PrecisionMismatchException if the exact result requires more precision.
     * @throws ArithmeticException if an arithmetic error occurs.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func **(n: Int64): Decimal

    /**
     * @description Raises this Decimal to a power with a specified precision and rounding mode.
     * @param n The exponent.
     * @param precision The number of digits to the right of the decimal point in the result.
     * @param roundingMode The rounding mode to apply.
     * @returns The result of the exponentiation.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func powWithPrecision(n: Int64, precision: Int64, roundingMode!: RoundingMode = RoundingMode.HalfEven): Decimal

    /**
     * @description Computes the square root of this Decimal with a specified precision and rounding mode.
     * @param precision The number of digits to the right of the decimal point in the result.
     * @param roundingMode The rounding mode to apply.
     * @returns The square root.
     * @throws IllegalArgumentException if this Decimal is negative.
     * @throws OverflowException if the result overflows.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func sqrtWithPrecision(precision: Int64, roundingMode!: RoundingMode = RoundingMode.HalfEven): Decimal

    /**
     * @description Computes the hash code for this Decimal.
     * @returns The hash code.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Converts this Decimal to its string representation.
     * @returns The string representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Returns a Decimal whose value is numerically equal to this one, but with a new scale.
     * @param newScale The new scale.
     * @param roundingMode The rounding mode to apply if rounding is necessary.
     * @returns The rescaled Decimal.
     */
    @!APILevel[
        since: "22"
    ]
    public func reScale(newScale: Int32, roundingMode!: RoundingMode = HalfEven): Decimal

    /**
     * @description Returns a Decimal numerically equal to this one but with any trailing zeros removed from the representation.
     * @returns A new Decimal with trailing zeros removed.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeTrailingZeros(): Decimal

    /**
     * @description Returns the value of 1 at the scale of this Decimal.
     * @returns A Decimal representing 1 with the same scale as this instance.
     */
    @!APILevel[
        since: "22"
    ]
    public func scaleUnit(): Decimal

    /**
     * @description Checks if this Decimal represents an integer value.
     * @returns true if the value is an integer, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isInteger(): Bool

    /**
     * @description Converts this Decimal to an Int8.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int8 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt8(overflowHandling!: OverflowStrategy = Throwing): Int8

    /**
     * @description Converts this Decimal to an Int16.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int16 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt16(overflowHandling!: OverflowStrategy = Throwing): Int16

    /**
     * @description Converts this Decimal to an Int32.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int32 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt32(overflowHandling!: OverflowStrategy = Throwing): Int32

    /**
     * @description Converts this Decimal to an Int64.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The Int64 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt64(overflowHandling!: OverflowStrategy = Throwing): Int64

    /**
     * @description Converts this Decimal to an IntNative.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The IntNative representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toIntNative(overflowHandling!: OverflowStrategy = Throwing): IntNative

    /**
     * @description Converts this Decimal to a UInt8.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt8 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8(overflowHandling!: OverflowStrategy = Throwing): UInt8

    /**
     * @description Converts this Decimal to a UInt16.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt16 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt16(overflowHandling!: OverflowStrategy = Throwing): UInt16

    /**
     * @description Converts this Decimal to a UInt32.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt32 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt32(overflowHandling!: OverflowStrategy = Throwing): UInt32

    /**
     * @description Converts this Decimal to a UInt64.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UInt64 representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt64(overflowHandling!: OverflowStrategy = Throwing): UInt64

    /**
     * @description Converts this Decimal to a UIntNative.
     * @param overflowHandling The strategy for handling overflow.
     * @returns The UIntNative representation.
     * @throws OverflowException if the value overflows and the strategy is Throwing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUIntNative(overflowHandling!: OverflowStrategy = Throwing): UIntNative

    /**
     * @description Converts this Decimal to a BigInt.
     * @returns The BigInt representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBigInt(): BigInt

    /**
     * @description Converts this Decimal to a Float16.
     * @returns The Float16 representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toFloat16(): Float16

    /**
     * @description Converts this Decimal to a Float32.
     * @returns The Float32 representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toFloat32(): Float32

    /**
     * @description Converts this Decimal to a Float64.
     * @returns The Float64 representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toFloat64(): Float64

    /**
     * @description Engineering notation.
     * @returns Decimal string in engineering notation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toEngString(): String

    /**
     * @description Scientific notation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toSciString(): String
}

/**
 * @description Computes the absolute value of a decimal.
 * @param d The decimal.
 * @returns The absolute value of `d`.
 */
@!APILevel[
    since: "22"
]
public func abs(d: Decimal): Decimal

/**
 * @description Rounds a Decimal to the nearest integer value.
 * @param d The Decimal to round.
 * @param roundingMode The rounding mode to apply.
 * @returns The rounded Decimal.
 * @throws OverflowException if the result overflows.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func round(d: Decimal, roundingMode!: RoundingMode = RoundingMode.HalfEven): Decimal

/**
 * @description Computes the square root of a Decimal.
 * @param d The Decimal.
 * @returns The square root.
 * @throws OverflowException if the result overflows.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func sqrt(d: Decimal): Decimal


/**
 * @description Specifies how to handle integer overflow.
 * @see Equatable
 * @see ToString
 */
@!APILevel[
    since: "22"
]
public enum OverflowStrategy <: Equatable<OverflowStrategy> & ToString {
    /**
     * @description On overflow, the value is clamped to the maximum or minimum value of the target type.
     */
    @!APILevel[
        since: "22"
    ]
    Saturating |
    /**
     * @description On overflow, an OverflowException is thrown.
     */
    @!APILevel[
        since: "22"
    ]
    Throwing |
    /**
     * @description On overflow, the value wraps around (e.g., Int8.max + 1 becomes Int8.min).
     */
    @!APILevel[
        since: "22"
    ]
    Wrapping
    /**
     * @description Checks for equality with another OverflowStrategy.
     * @param other The OverflowStrategy to compare with.
     * @returns true if the strategies are equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: OverflowStrategy): Bool

    /**
     * @description Converts the OverflowStrategy to its string representation.
     * @returns The string representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Decimal <: Parsable<Decimal> {
    /**
     * @description Parses a string into a Decimal.
     * @param value The string to parse.
     * @returns The parsed Decimal.
     * @throws OverflowException if the value overflows.
     * @throws IllegalArgumentException if the string is not a valid Decimal.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(value: String): Decimal

    /**
     * @description Tries to parse a string into a Decimal.
     * @param value The string to parse.
     * @returns The parsed Decimal, or null if parsing fails.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(value: String): ?Decimal
}

extend Decimal <: Formattable {
    /**
     * @description Formats the Decimal according to a format string.
     * @param fmt The format string.
     * @returns The formatted string.
     * @throws IllegalArgumentException if the format string is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
}

