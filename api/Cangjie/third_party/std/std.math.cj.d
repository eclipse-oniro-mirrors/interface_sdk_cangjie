package std.math

/**
 * @description Defines rounding behaviors for numerical operations that require rounding.
 * This enumeration provides several common rounding algorithms.
 */
@!APILevel[
    since: "22"
]
public enum RoundingMode <: Equatable<RoundingMode> & ToString {
    /**
     * @description Rounding mode to round towards positive infinity.
     */
    @!APILevel[
        since: "22"
    ]
    Ceiling |
    /**
     * @description Rounding mode to round towards zero.
     */
    @!APILevel[
        since: "22"
    ]
    Down |
    /**
     * @description Rounding mode to round towards negative infinity.
     */
    @!APILevel[
        since: "22"
    ]
    Floor |
    /**
     * @description Rounding mode to round to the "nearest neighbor" unless both neighbors are equidistant, in which case, round towards the even neighbor.
     */
    @!APILevel[
        since: "22"
    ]
    HalfEven |
    /**
     * @description Rounding mode to round to the "nearest neighbor" unless both neighbors are equidistant, in which case round up.
     */
    @!APILevel[
        since: "22"
    ]
    HalfUp |
    /**
     * @description Rounding mode to round away from zero.
     */
    @!APILevel[
        since: "22"
    ]
    Up
    /**
     * @description Compares this `RoundingMode` with another for equality.
     * @param other The other `RoundingMode` to compare with.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: RoundingMode): Bool

    /**
     * @description Returns a string representation of the rounding mode.
     * @returns The name of the rounding mode as a string.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Extends `Float64` with mathematical constants.
 */
extend Float64 <: MathExtension<Float64> {
    /**
     * @description Gets the value of PI (π).
     * @returns The double-precision floating-point value of PI.
     */
        @!APILevel[
        since: "22"
    ]
    public static func GetPI(): Float64

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The double-precision floating-point value of E.
     */
        @!APILevel[
        since: "22"
    ]
    public static func GetE(): Float64
}

/**
 * @description Extends `Float32` with mathematical constants.
 */
extend Float32 <: MathExtension<Float32> {
    /**
     * @description Gets the value of PI (π).
     * @returns The single-precision floating-point value of PI.
     */
        @!APILevel[
        since: "22"
    ]
    public static func GetPI(): Float32

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The single-precision floating-point value of E.
     */
        @!APILevel[
        since: "22"
    ]
    public static func GetE(): Float32
}

/**
 * @description Extends `Float16` with mathematical constants.
 */
extend Float16 <: MathExtension<Float16> {
    /**
     * @description Gets the value of PI (π).
     * @returns The half-precision floating-point value of PI.
     */
        @!APILevel[
        since: "22"
    ]
    public static func GetPI(): Float16

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The half-precision floating-point value of E.
     */
        @!APILevel[
        since: "22"
    ]
    public static func GetE(): Float16
}

extend Int8 <: MaxMinValue<Int8> {
    /**
     * @description Gets the maximum value for an 8-bit signed integer.
     * @returns The maximum `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): Int8

    /**
     * @description Gets the minimum value for an 8-bit signed integer.
     * @returns The minimum `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): Int8
}

extend Int16 <: MaxMinValue<Int16> {
    /**
     * @description Gets the maximum value for a 16-bit signed integer.
     * @returns The maximum `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): Int16

    /**
     * @description Gets the minimum value for a 16-bit signed integer.
     * @returns The minimum `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): Int16
}

extend Int32 <: MaxMinValue<Int32> {
    /**
     * @description Gets the maximum value for a 32-bit signed integer.
     * @returns The maximum `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): Int32

    /**
     * @description Gets the minimum value for a 32-bit signed integer.
     * @returns The minimum `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): Int32
}

extend Int64 <: MaxMinValue<Int64> {
    /**
     * @description Gets the maximum value for a 64-bit signed integer.
     * @returns The maximum `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): Int64

    /**
     * @description Gets the minimum value for a 64-bit signed integer.
     * @returns The minimum `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): Int64
}

extend IntNative <: MaxMinValue<IntNative> {
    /**
     * @description Gets the maximum value for a native-sized signed integer.
     * @returns The maximum `IntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): IntNative

    /**
     * @description Gets the minimum value for a native-sized signed integer.
     * @returns The minimum `IntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): IntNative
}

extend UInt8 <: MaxMinValue<UInt8> {
    /**
     * @description Gets the maximum value for an 8-bit unsigned integer.
     * @returns The maximum `UInt8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): UInt8

    /**
     * @description Gets the minimum value for an 8-bit unsigned integer.
     * @returns The minimum `UInt8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): UInt8
}

extend UInt16 <: MaxMinValue<UInt16> {
    /**
     * @description Gets the maximum value for a 16-bit unsigned integer.
     * @returns The maximum `UInt16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): UInt16

    /**
     * @description Gets the minimum value for a 16-bit unsigned integer.
     * @returns The minimum `UInt16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): UInt16
}

extend UInt32 <: MaxMinValue<UInt32> {
    /**
     * @description Gets the maximum value for a 32-bit unsigned integer.
     * @returns The maximum `UInt32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): UInt32

    /**
     * @description Gets the minimum value for a 32-bit unsigned integer.
     * @returns The minimum `UInt32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): UInt32
}

extend UInt64 <: MaxMinValue<UInt64> {
    /**
     * @description Gets the maximum value for a 64-bit unsigned integer.
     * @returns The maximum `UInt64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): UInt64

    /**
     * @description Gets the minimum value for a 64-bit unsigned integer.
     * @returns The minimum `UInt64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): UInt64
}

extend UIntNative <: MaxMinValue<UIntNative> {
    /**
     * @description Gets the maximum value for a native-sized unsigned integer.
     * @returns The maximum `UIntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): UIntNative

    /**
     * @description Gets the minimum value for a native-sized unsigned integer.
     * @returns The minimum `UIntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): UIntNative
}

extend Float16 <: MaxMinValue<Float16> {
    /**
     * @description Gets the maximum finite value for a half-precision float.
     * @returns The maximum `Float16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): Float16

    /**
     * @description Gets the minimum positive normal value for a half-precision float.
     * @returns The minimum `Float16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): Float16
}

extend Float32 <: MaxMinValue<Float32> {
    /**
     * @description Gets the maximum finite value for a single-precision float.
     * @returns The maximum `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): Float32

    /**
     * @description Gets the minimum positive normal value for a single-precision float.
     * @returns The minimum `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): Float32
}

extend Float64 <: MaxMinValue<Float64> {
    /**
     * @description Gets the maximum finite value for a double-precision float.
     * @returns The maximum `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMax(): Float64

    /**
     * @description Gets the minimum positive normal value for a double-precision float.
     * @returns The minimum `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMin(): Float64
}














extend Int8 <: Integer<Int8> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `true` for `Int8`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend Int16 <: Integer<Int16> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `true` for `Int16`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend Int32 <: Integer<Int32> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `true` for `Int32`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend Int64 <: Integer<Int64> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `true` for `Int64`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend IntNative <: Integer<IntNative> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `true` for `IntNative`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend UInt8 <: Integer<UInt8> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `false` for `UInt8`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend UInt16 <: Integer<UInt16> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `false` for `UInt16`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend UInt32 <: Integer<UInt32> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `false` for `UInt32`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend UInt64 <: Integer<UInt64> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `false` for `UInt64`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend UIntNative <: Integer<UIntNative> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `false` for `UIntNative`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func isSigned(): Bool
}

extend Float16 <: FloatingPoint<Float16> {
    /**
     * @description Gets the value of PI (π).
     * @returns The half-precision floating-point value of PI.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getPI(): Float16

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The half-precision floating-point value of E.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getE(): Float16

    /**
     * @description Gets the Not-a-Number (NaN) value.
     * @returns The `Float16` NaN value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getNaN(): Float16

    /**
     * @description Gets the positive infinity value.
     * @returns The `Float16` positive infinity value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getInf(): Float16

    /**
     * @description Gets the smallest positive non-zero denormal value.
     * @returns The smallest denormal `Float16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMinDenormal(): Float16

    /**
     * @description Gets the smallest positive normal value.
     * @returns The smallest normal `Float16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMinNormal(): Float16
}

extend Float32 <: FloatingPoint<Float32> {
    /**
     * @description Gets the value of PI (π).
     * @returns The single-precision floating-point value of PI.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getPI(): Float32

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The single-precision floating-point value of E.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getE(): Float32

    /**
     * @description Gets the Not-a-Number (NaN) value.
     * @returns The `Float32` NaN value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getNaN(): Float32

    /**
     * @description Gets the positive infinity value.
     * @returns The `Float32` positive infinity value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getInf(): Float32

    /**
     * @description Gets the smallest positive non-zero denormal value.
     * @returns The smallest denormal `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMinDenormal(): Float32

    /**
     * @description Gets the smallest positive normal value.
     * @returns The smallest normal `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMinNormal(): Float32
}

extend Float64 <: FloatingPoint<Float64> {
    /**
     * @description Gets the value of PI (π).
     * @returns The double-precision floating-point value of PI.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getPI(): Float64

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The double-precision floating-point value of E.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getE(): Float64

    /**
     * @description Gets the Not-a-Number (NaN) value.
     * @returns The `Float64` NaN value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getNaN(): Float64

    /**
     * @description Gets the positive infinity value.
     * @returns The `Float64` positive infinity value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getInf(): Float64

    /**
     * @description Gets the smallest positive non-zero denormal value.
     * @returns The smallest denormal `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMinDenormal(): Float64

    /**
     * @description Gets the smallest positive normal value.
     * @returns The smallest normal `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getMinNormal(): Float64
}

/**
 * @description Computes the cube root of a value.
 * @param x The value whose cube root is to be computed.
 * @returns The cube root of `x`.
 */
@!APILevel[
    since: "22"
]
public func cbrt(x: Float64): Float64

/**
 * @description Computes the cube root of a value.
 * @param x The value whose cube root is to be computed.
 * @returns The cube root of `x`.
 */
@!APILevel[
    since: "22"
]
public func cbrt(x: Float32): Float32

/**
 * @description Computes the cube root of a value.
 * @param x The value whose cube root is to be computed.
 * @returns The cube root of `x`.
 */
@!APILevel[
    since: "22"
]
public func cbrt(x: Float16): Float16

/**
 * @description Computes the logarithm of a value with a specified base.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @param base The base of the logarithm. Must be positive and not equal to 1.
 * @returns The logarithm of `x` to the given `base`.
 * @throws IllegalArgumentException if `x` is not positive, or if `base` is not positive or is equal to 1.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func logBase(x: Float32, base: Float32): Float32

/**
 * @description Computes the logarithm of a value with a specified base.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @param base The base of the logarithm. Must be positive and not equal to 1.
 * @returns The logarithm of `x` to the given `base`.
 * @throws IllegalArgumentException if `x` is not positive, or if `base` is not positive or is equal to 1.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func logBase(x: Float64, base: Float64): Float64

/**
 * @description Computes the logarithm of a value with a specified base.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @param base The base of the logarithm. Must be positive and not equal to 1.
 * @returns The logarithm of `x` to the given `base`.
 * @throws IllegalArgumentException if `x` is not positive, or if `base` is not positive or is equal to 1.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func logBase(x: Float16, base: Float16): Float16

/**
 * @description Computes the gamma function of a value.
 * @param x The input value.
 * @returns The value of the gamma function at `x`.
 */
@!APILevel[
    since: "22"
]
public func gamma(x: Float64): Float64

/**
 * @description Computes the gamma function of a value.
 * @param x The input value.
 * @returns The value of the gamma function at `x`.
 */
@!APILevel[
    since: "22"
]
public func gamma(x: Float32): Float32

/**
 * @description Computes the gamma function of a value.
 * @param x The input value.
 * @returns The value of the gamma function at `x`.
 */
@!APILevel[
    since: "22"
]
public func gamma(x: Float16): Float16

/**
 * @description Computes the error function of a value.
 * @param x The input value.
 * @returns The value of the error function at `x`.
 */
@!APILevel[
    since: "22"
]
public func erf(x: Float64): Float64

/**
 * @description Computes the error function of a value.
 * @param x The input value.
 * @returns The value of the error function at `x`.
 */
@!APILevel[
    since: "22"
]
public func erf(x: Float32): Float32

/**
 * @description Computes the error function of a value.
 * @param x The input value.
 * @returns The value of the error function at `x`.
 */
@!APILevel[
    since: "22"
]
public func erf(x: Float16): Float16

/**
 * @description Computes the tangent of an angle.
 * @param x The angle in radians.
 * @returns The tangent of `x`.
 */
@!APILevel[
    since: "22"
]
public func tan(x: Float64): Float64

/**
 * @description Computes the tangent of an angle.
 * @param x The angle in radians.
 * @returns The tangent of `x`.
 */
@!APILevel[
    since: "22"
]
public func tan(x: Float32): Float32

/**
 * @description Computes the tangent of an angle.
 * @param x The angle in radians.
 * @returns The tangent of `x`.
 */
@!APILevel[
    since: "22"
]
public func tan(x: Float16): Float16

/**
 * @description Computes the arc sine of a value.
 * @param x The value whose arc sine is to be computed, in the range [-1, 1].
 * @returns The arc sine of `x` in radians, in the range [-π/2, π/2].
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func asin(x: Float64): Float64

/**
 * @description Computes the arc sine of a value.
 * @param x The value whose arc sine is to be computed, in the range [-1, 1].
 * @returns The arc sine of `x` in radians, in the range [-π/2, π/2].
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func asin(x: Float32): Float32

/**
 * @description Computes the arc sine of a value.
 * @param x The value whose arc sine is to be computed, in the range [-1, 1].
 * @returns The arc sine of `x` in radians, in the range [-π/2, π/2].
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func asin(x: Float16): Float16

/**
 * @description Computes the arc cosine of a value.
 * @param x The value whose arc cosine is to be computed, in the range [-1, 1].
 * @returns The arc cosine of `x` in radians, in the range [0, π].
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func acos(x: Float64): Float64

/**
 * @description Computes the arc cosine of a value.
 * @param x The value whose arc cosine is to be computed, in the range [-1, 1].
 * @returns The arc cosine of `x` in radians, in the range [0, π].
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func acos(x: Float32): Float32

/**
 * @description Computes the arc cosine of a value.
 * @param x The value whose arc cosine is to be computed, in the range [-1, 1].
 * @returns The arc cosine of `x` in radians, in the range [0, π].
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func acos(x: Float16): Float16

/**
 * @description Computes the arc tangent of a value.
 * @param x The value whose arc tangent is to be computed.
 * @returns The arc tangent of `x` in radians, in the range [-π/2, π/2].
 */
@!APILevel[
    since: "22"
]
public func atan(x: Float64): Float64

/**
 * @description Computes the arc tangent of a value.
 * @param x The value whose arc tangent is to be computed.
 * @returns The arc tangent of `x` in radians, in the range [-π/2, π/2].
 */
@!APILevel[
    since: "22"
]
public func atan(x: Float32): Float32

/**
 * @description Computes the arc tangent of a value.
 * @param x The value whose arc tangent is to be computed.
 * @returns The arc tangent of `x` in radians, in the range [-π/2, π/2].
 */
@!APILevel[
    since: "22"
]
public func atan(x: Float16): Float16

/**
 * @description Computes the hyperbolic sine of a value.
 * @param x The input value.
 * @returns The hyperbolic sine of `x`.
 */
@!APILevel[
    since: "22"
]
public func sinh(x: Float64): Float64

/**
 * @description Computes the hyperbolic sine of a value.
 * @param x The input value.
 * @returns The hyperbolic sine of `x`.
 */
@!APILevel[
    since: "22"
]
public func sinh(x: Float32): Float32

/**
 * @description Computes the hyperbolic sine of a value.
 * @param x The input value.
 * @returns The hyperbolic sine of `x`.
 */
@!APILevel[
    since: "22"
]
public func sinh(x: Float16): Float16

/**
 * @description Computes the hyperbolic cosine of a value.
 * @param x The input value.
 * @returns The hyperbolic cosine of `x`.
 */
@!APILevel[
    since: "22"
]
public func cosh(x: Float64): Float64

/**
 * @description Computes the hyperbolic cosine of a value.
 * @param x The input value.
 * @returns The hyperbolic cosine of `x`.
 */
@!APILevel[
    since: "22"
]
public func cosh(x: Float32): Float32

/**
 * @description Computes the hyperbolic cosine of a value.
 * @param x The input value.
 * @returns The hyperbolic cosine of `x`.
 */
@!APILevel[
    since: "22"
]
public func cosh(x: Float16): Float16

/**
 * @description Computes the hyperbolic tangent of a value.
 * @param x The input value.
 * @returns The hyperbolic tangent of `x`.
 */
@!APILevel[
    since: "22"
]
public func tanh(x: Float64): Float64

/**
 * @description Computes the hyperbolic tangent of a value.
 * @param x The input value.
 * @returns The hyperbolic tangent of `x`.
 */
@!APILevel[
    since: "22"
]
public func tanh(x: Float32): Float32

/**
 * @description Computes the hyperbolic tangent of a value.
 * @param x The input value.
 * @returns The hyperbolic tangent of `x`.
 */
@!APILevel[
    since: "22"
]
public func tanh(x: Float16): Float16

/**
 * @description Computes the inverse hyperbolic sine of a value.
 * @param x The input value.
 * @returns The inverse hyperbolic sine of `x`.
 */
@!APILevel[
    since: "22"
]
public func asinh(x: Float64): Float64

/**
 * @description Computes the inverse hyperbolic sine of a value.
 * @param x The input value.
 * @returns The inverse hyperbolic sine of `x`.
 */
@!APILevel[
    since: "22"
]
public func asinh(x: Float32): Float32

/**
 * @description Computes the inverse hyperbolic sine of a value.
 * @param x The input value.
 * @returns The inverse hyperbolic sine of `x`.
 */
@!APILevel[
    since: "22"
]
public func asinh(x: Float16): Float16

/**
 * @description Computes the inverse hyperbolic cosine of a value.
 * @param x The value whose inverse hyperbolic cosine is to be computed, must be >= 1.
 * @returns The inverse hyperbolic cosine of `x`.
 * @throws IllegalArgumentException if `x` is less than 1.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func acosh(x: Float64): Float64

/**
 * @description Computes the inverse hyperbolic cosine of a value.
 * @param x The value whose inverse hyperbolic cosine is to be computed, must be >= 1.
 * @returns The inverse hyperbolic cosine of `x`.
 * @throws IllegalArgumentException if `x` is less than 1.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func acosh(x: Float32): Float32

/**
 * @description Computes the inverse hyperbolic cosine of a value.
 * @param x The value whose inverse hyperbolic cosine is to be computed, must be >= 1.
 * @returns The inverse hyperbolic cosine of `x`.
 * @throws IllegalArgumentException if `x` is less than 1.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func acosh(x: Float16): Float16

/**
 * @description Computes the inverse hyperbolic tangent of a value.
 * @param x The value whose inverse hyperbolic tangent is to be computed, in the range (-1, 1).
 * @returns The inverse hyperbolic tangent of `x`.
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func atanh(x: Float64): Float64

/**
 * @description Computes the inverse hyperbolic tangent of a value.
 * @param x The value whose inverse hyperbolic tangent is to be computed, in the range (-1, 1).
 * @returns The inverse hyperbolic tangent of `x`.
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func atanh(x: Float32): Float32

/**
 * @description Computes the inverse hyperbolic tangent of a value.
 * @param x The value whose inverse hyperbolic tangent is to be computed, in the range (-1, 1).
 * @returns The inverse hyperbolic tangent of `x`.
 * @throws IllegalArgumentException if `x` is outside the range [-1, 1].
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func atanh(x: Float16): Float16

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@!APILevel[
    since: "22"
]
public func leadingZeros(x: UInt64): Int64

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@!APILevel[
    since: "22"
]
public func leadingZeros(x: UInt32): Int64

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@!APILevel[
    since: "22"
]
public func leadingZeros(x: UInt16): Int64

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@!APILevel[
    since: "22"
]
public func leadingZeros(x: UInt8): Int64

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func leadingZeros(x: Int8): Int64

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func leadingZeros(x: Int16): Int64

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func leadingZeros(x: Int32): Int64

/**
 * @description Counts the number of leading zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of leading zero bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func leadingZeros(x: Int64): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@!APILevel[
    since: "22"
]
public func trailingZeros(x: UInt64): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@!APILevel[
    since: "22"
]
public func trailingZeros(x: UInt32): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@!APILevel[
    since: "22"
]
public func trailingZeros(x: UInt16): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@!APILevel[
    since: "22"
]
public func trailingZeros(x: UInt8): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func trailingZeros(x: Int8): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func trailingZeros(x: Int16): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func trailingZeros(x: Int32): Int64

/**
 * @description Counts the number of trailing zero bits in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of trailing zero bits. Returns the bit width if `x` is zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func trailingZeros(x: Int64): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOnes(x: UInt64): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOnes(x: UInt32): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOnes(x: UInt16): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOnes(x: UInt8): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func countOnes(x: Int8): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func countOnes(x: Int16): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func countOnes(x: Int32): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func countOnes(x: Int64): Int64

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: Int8): Int8

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: Int16): Int8

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: Int32): Int8

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: Int64): Int8

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: UInt8): Int8

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: UInt16): Int8

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: UInt32): Int8

/**
 * @description Counts the number of set bits (1s) in the binary representation of a value.
 * @param x The value to inspect.
 * @returns The number of set bits.
 */
@!APILevel[
    since: "22"
]
public func countOne(x: UInt64): Int8

/**
 * @description Reverses the order of bits in the binary representation of a value.
 * @param x The value to reverse.
 * @returns The value with the bit order reversed.
 */
@!APILevel[
    since: "22"
]
public func reverse(x: UInt64): UInt64

/**
 * @description Reverses the order of bits in the binary representation of a value.
 * @param x The value to reverse.
 * @returns The value with the bit order reversed.
 */
@!APILevel[
    since: "22"
]
public func reverse(x: UInt32): UInt32

/**
 * @description Reverses the order of bits in the binary representation of a value.
 * @param x The value to reverse.
 * @returns The value with the bit order reversed.
 */
@!APILevel[
    since: "22"
]
public func reverse(x: UInt16): UInt16

/**
 * @description Reverses the order of bits in the binary representation of a value.
 * @param x The value to reverse.
 * @returns The value with the bit order reversed.
 */
@!APILevel[
    since: "22"
]
public func reverse(x: UInt8): UInt8

/**
 * @description Computes the absolute value of an integer, checking for overflow.
 * @param x The integer.
 * @returns An `Option` containing the absolute value, or `None` if the operation would overflow (i.e., `abs(Int8.MIN)`).
 */
@!APILevel[
    since: "22"
]
public func checkedAbs(x: Int8): Option<Int8>

/**
 * @description Computes the absolute value of an integer, checking for overflow.
 * @param x The integer.
 * @returns An `Option` containing the absolute value, or `None` if the operation would overflow (i.e., `abs(Int16.MIN)`).
 */
@!APILevel[
    since: "22"
]
public func checkedAbs(x: Int16): Option<Int16>

/**
 * @description Computes the absolute value of an integer, checking for overflow.
 * @param x The integer.
 * @returns An `Option` containing the absolute value, or `None` if the operation would overflow (i.e., `abs(Int32.MIN)`).
 */
@!APILevel[
    since: "22"
]
public func checkedAbs(x: Int32): Option<Int32>

/**
 * @description Computes the absolute value of an integer, checking for overflow.
 * @param x The integer.
 * @returns An `Option` containing the absolute value, or `None` if the operation would overflow (i.e., `abs(Int64.MIN)`).
 */
@!APILevel[
    since: "22"
]
public func checkedAbs(x: Int64): Option<Int64>

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: UInt8, d: Int8): UInt8

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: UInt16, d: Int8): UInt16

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: UInt32, d: Int8): UInt32

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: UInt64, d: Int8): UInt64

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: Int8, d: Int8): Int8

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: Int16, d: Int8): Int16

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: Int32, d: Int8): Int32

/**
 * @description Rotates the bits of a number by a specified amount.
 * @param num The number to rotate.
 * @param d The number of positions to rotate. A positive value rotates left; a negative value rotates right.
 * @returns The result of the rotation.
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func rotate(num: Int64, d: Int8): Int64

/**
 * @description Computes the greatest common divisor (GCD) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`.
 * @throws IllegalArgumentException if both `x` and `y` are zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22",
    throwexception: true
]
public func gcd(x: Int8, y: Int8): Int8

/**
 * @description Computes the greatest common divisor (GCD) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`.
 * @throws IllegalArgumentException if both `x` and `y` are zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22",
    throwexception: true
]
public func gcd(x: Int16, y: Int16): Int16

/**
 * @description Computes the greatest common divisor (GCD) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`.
 * @throws IllegalArgumentException if both `x` and `y` are zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22",
    throwexception: true
]
public func gcd(x: Int32, y: Int32): Int32

/**
 * @description Computes the greatest common divisor (GCD) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`.
 * @throws IllegalArgumentException if both `x` and `y` are zero.
 */
@OverflowWrapping
@!APILevel[
    since: "22",
    throwexception: true
]
public func gcd(x: Int64, y: Int64): Int64

/**
 * @description Computes the greatest common divisor (GCD) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`. Returns 0 if both inputs are 0.
 */
@!APILevel[
    since: "22"
]
public func gcd(x: UInt8, y: UInt8): UInt8

/**
 * @description Computes the greatest common divisor (GCD) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`. Returns 0 if both inputs are 0.
 */
@!APILevel[
    since: "22"
]
public func gcd(x: UInt16, y: UInt16): UInt16

/**
 * @description Computes the greatest common divisor (GCD) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`. Returns 0 if both inputs are 0.
 */
@!APILevel[
    since: "22"
]
public func gcd(x: UInt32, y: UInt32): UInt32

/**
 * @description Computes the greatest common divisor (GCD) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The greatest common divisor of `x` and `y`. Returns 0 if both inputs are 0.
 */
@!APILevel[
    since: "22"
]
public func gcd(x: UInt64, y: UInt64): UInt64

/**
 * @description Computes the least common multiple (LCM) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 8-bit signed integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: Int8, y: Int8): Int8

/**
 * @description Computes the least common multiple (LCM) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 16-bit signed integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: Int16, y: Int16): Int16

/**
 * @description Computes the least common multiple (LCM) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 32-bit signed integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: Int32, y: Int32): Int32

/**
 * @description Computes the least common multiple (LCM) of two integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 64-bit signed integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: Int64, y: Int64): Int64

/**
 * @description Computes the least common multiple (LCM) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 8-bit unsigned integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: UInt8, y: UInt8): UInt8

/**
 * @description Computes the least common multiple (LCM) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 16-bit unsigned integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: UInt16, y: UInt16): UInt16

/**
 * @description Computes the least common multiple (LCM) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 32-bit unsigned integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: UInt32, y: UInt32): UInt32

/**
 * @description Computes the least common multiple (LCM) of two unsigned integers.
 * @param x The first integer.
 * @param y The second integer.
 * @returns The least common multiple of `x` and `y`.
 * @throws IllegalArgumentException if the return value exceeds the maximum value of a 64-bit unsigned integer.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lcm(x: UInt64, y: UInt64): UInt64

/**
 * @description Clamps a value between a minimum and maximum value.
 * @param v The value to clamp.
 * @param min The minimum value.
 * @param max The maximum value.
 * @returns `v` if it is between `min` and `max`, `min` if `v` is less than `min`, or `max` if `v` is greater than `max`.
 * @throws IllegalArgumentException if `min` is greater than `max`.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func clamp(v: Float16, min: Float16, max: Float16): Float16

/**
 * @description Clamps a value between a minimum and maximum value.
 * @param v The value to clamp.
 * @param min The minimum value.
 * @param max The maximum value.
 * @returns `v` if it is between `min` and `max`, `min` if `v` is less than `min`, or `max` if `v` is greater than `max`.
 * @throws IllegalArgumentException if `min` is greater than `max`.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func clamp(v: Float32, min: Float32, max: Float32): Float32

/**
 * @description Clamps a value between a minimum and maximum value.
 * @param v The value to clamp.
 * @param min The minimum value.
 * @param max The maximum value.
 * @returns `v` if it is between `min` and `max`, `min` if `v` is less than `min`, or `max` if `v` is greater than `max`.
 * @throws IllegalArgumentException if `min` is greater than `max`.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func clamp(v: Float64, min: Float64, max: Float64): Float64

/**
 * @description Rounds a floating-point value to the nearest integer.
 * @param x The value to round.
 * @returns The rounded value.
 */
@!APILevel[
    since: "22"
]
public func round(x: Float64): Float64

/**
 * @description Rounds a floating-point value to the nearest integer.
 * @param x The value to round.
 * @returns The rounded value.
 */
@!APILevel[
    since: "22"
]
public func round(x: Float32): Float32

/**
 * @description Rounds a floating-point value to the nearest integer.
 * @param x The value to round.
 * @returns The rounded value.
 */
@!APILevel[
    since: "22"
]
public func round(x: Float16): Float16

/**
 * @description Computes the arc tangent of `y / x`, using the signs of the arguments to determine the correct quadrant.
 * @param y The y-coordinate.
 * @param x The x-coordinate.
 * @returns The angle in radians, in the range [-π, π].
 */
@!APILevel[
    since: "22"
]
public func atan2(y: Float64, x: Float64): Float64

/**
 * @description Computes the arc tangent of `y / x`, using the signs of the arguments to determine the correct quadrant.
 * @param y The y-coordinate.
 * @param x The x-coordinate.
 * @returns The angle in radians, in the range [-π, π].
 */
@!APILevel[
    since: "22"
]
public func atan2(y: Float32, x: Float32): Float32

/**
 * @description Computes the arc tangent of `y / x`, using the signs of the arguments to determine the correct quadrant.
 * @param y The y-coordinate.
 * @param x The x-coordinate.
 * @returns The angle in radians, in the range [-π, π].
 */
@!APILevel[
    since: "22"
]
public func atan2(y: Float16, x: Float16): Float16

/**
 * @description Computes the floating-point remainder of `x / y`.
 * @param x The dividend.
 * @param y The divisor.
 * @returns The remainder of `x` divided by `y`.
 * @throws IllegalArgumentException if `y` is zero.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func fmod(x: Float64, y: Float64): Float64

/**
 * @description Computes the floating-point remainder of `x / y`.
 * @param x The dividend.
 * @param y The divisor.
 * @returns The remainder of `x` divided by `y`.
 * @throws IllegalArgumentException if `y` is zero.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func fmod(x: Float32, y: Float32): Float32

/**
 * @description Computes the floating-point remainder of `x / y`.
 * @param x The dividend.
 * @param y The divisor.
 * @returns The remainder of `x` divided by `y`.
 * @throws IllegalArgumentException if `y` is zero.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func fmod(x: Float16, y: Float16): Float16

/**
 * @description Computes the absolute value of a floating-point number.
 * @param x The number.
 * @returns The absolute value of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func abs(x: Float64): Float64

/**
 * @description Computes the absolute value of a floating-point number.
 * @param x The number.
 * @returns The absolute value of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func abs(x: Float32): Float32

/**
 * @description Computes the absolute value of a floating-point number.
 * @param x The number.
 * @returns The absolute value of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func abs(x: Float16): Float16

/**
 * @description Computes the absolute value of an integer.
 * @param x The integer.
 * @returns The absolute value of `x`.
 * @throws OverflowException if `x` is the minimum value of its type, as its absolute value cannot be represented.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func abs(x: Int64): Int64

/**
 * @description Computes the absolute value of an integer.
 * @param x The integer.
 * @returns The absolute value of `x`.
 * @throws OverflowException if `x` is the minimum value of its type, as its absolute value cannot be represented.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func abs(x: Int32): Int32

/**
 * @description Computes the absolute value of an integer.
 * @param x The integer.
 * @returns The absolute value of `x`.
 * @throws OverflowException if `x` is the minimum value of its type, as its absolute value cannot be represented.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func abs(x: Int16): Int16

/**
 * @description Computes the absolute value of an integer.
 * @param x The integer.
 * @returns The absolute value of `x`.
 * @throws OverflowException if `x` is the minimum value of its type, as its absolute value cannot be represented.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func abs(x: Int8): Int8

/**
 * @description Computes the square root of a value.
 * @param x The value, must be non-negative.
 * @returns The square root of `x`.
 * @throws IllegalArgumentException if `x` is negative.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func sqrt(x: Float16): Float16

/**
 * @description Computes the square root of a value.
 * @param x The value, must be non-negative.
 * @returns The square root of `x`.
 * @throws IllegalArgumentException if `x` is negative.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func sqrt(x: Float32): Float32

/**
 * @description Computes the square root of a value.
 * @param x The value, must be non-negative.
 * @returns The square root of `x`.
 * @throws IllegalArgumentException if `x` is negative.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func sqrt(x: Float64): Float64

/**
 * @description Computes Euler's number e raised to the power of a value (e^x).
 * @param x The exponent.
 * @returns The value of e^x.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func exp(x: Float64): Float64

/**
 * @description Computes Euler's number e raised to the power of a value (e^x).
 * @param x The exponent.
 * @returns The value of e^x.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func exp(x: Float32): Float32

/**
 * @description Computes Euler's number e raised to the power of a value (e^x).
 * @param x The exponent.
 * @returns The value of e^x.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func exp(x: Float16): Float16

/**
 * @description Computes 2 raised to the power of a value (2^x).
 * @param x The exponent.
 * @returns The value of 2^x.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func exp2(x: Float64): Float64

/**
 * @description Computes 2 raised to the power of a value (2^x).
 * @param x The exponent.
 * @returns The value of 2^x.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func exp2(x: Float32): Float32

/**
 * @description Computes 2 raised to the power of a value (2^x).
 * @param x The exponent.
 * @returns The value of 2^x.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func exp2(x: Float16): Float16

/**
 * @description Computes the base-10 logarithm of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The base-10 logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log10(x: Float64): Float64

/**
 * @description Computes the base-10 logarithm of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The base-10 logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log10(x: Float32): Float32

/**
 * @description Computes the base-10 logarithm of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The base-10 logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log10(x: Float16): Float16

/**
 * @description Computes the base-2 logarithm of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The base-2 logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log2(x: Float64): Float64

/**
 * @description Computes the base-2 logarithm of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The base-2 logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log2(x: Float32): Float32

/**
 * @description Computes the base-2 logarithm of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The base-2 logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log2(x: Float16): Float16

/**
 * @description Computes the natural logarithm (base e) of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The natural logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log(x: Float64): Float64

/**
 * @description Computes the natural logarithm (base e) of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The natural logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log(x: Float32): Float32

/**
 * @description Computes the natural logarithm (base e) of a value.
 * @param x The value whose logarithm is to be computed. Must be positive.
 * @returns The natural logarithm of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func log(x: Float16): Float16

/**
 * @description Computes the largest integer value not greater than the argument.
 * @param x The value to floor.
 * @returns The floored value.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func floor(x: Float64): Float64

/**
 * @description Computes the largest integer value not greater than the argument.
 * @param x The value to floor.
 * @returns The floored value.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func floor(x: Float32): Float32

/**
 * @description Computes the largest integer value not greater than the argument.
 * @param x The value to floor.
 * @returns The floored value.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func floor(x: Float16): Float16

/**
 * @description Computes the smallest integer value not less than the argument.
 * @param x The value to ceil.
 * @returns The ceiled value.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func ceil(x: Float64): Float64

/**
 * @description Computes the smallest integer value not less than the argument.
 * @param x The value to ceil.
 * @returns The ceiled value.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func ceil(x: Float32): Float32

/**
 * @description Computes the smallest integer value not less than the argument.
 * @param x The value to ceil.
 * @returns The ceiled value.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func ceil(x: Float16): Float16

/**
 * @description Truncates the decimal part of a floating-point value.
 * @param x The value to truncate.
 * @returns The integer part of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func trunc(x: Float64): Float64

/**
 * @description Truncates the decimal part of a floating-point value.
 * @param x The value to truncate.
 * @returns The integer part of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func trunc(x: Float32): Float32

/**
 * @description Truncates the decimal part of a floating-point value.
 * @param x The value to truncate.
 * @returns The integer part of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func trunc(x: Float16): Float16

/**
 * @description Computes the sine of an angle.
 * @param x The angle in radians.
 * @returns The sine of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func sin(x: Float64): Float64

/**
 * @description Computes the sine of an angle.
 * @param x The angle in radians.
 * @returns The sine of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func sin(x: Float32): Float32

/**
 * @description Computes the sine of an angle.
 * @param x The angle in radians.
 * @returns The sine of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func sin(x: Float16): Float16

/**
 * @description Computes the cosine of an angle.
 * @param x The angle in radians.
 * @returns The cosine of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func cos(x: Float64): Float64

/**
 * @description Computes the cosine of an angle.
 * @param x The angle in radians.
 * @returns The cosine of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func cos(x: Float32): Float32

/**
 * @description Computes the cosine of an angle.
 * @param x The angle in radians.
 * @returns The cosine of `x`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func cos(x: Float16): Float16

/**
 * @description Computes `base` raised to the power of `exponent`.
 * @param base The base value.
 * @param exponent The exponent value.
 * @returns The result of `base` raised to the power of `exponent`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func pow(base: Float64, exponent: Float64): Float64

/**
 * @description Computes `base` raised to the power of `exponent`.
 * @param base The base value.
 * @param exponent The exponent value.
 * @returns The result of `base` raised to the power of `exponent`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func pow(base: Float32, exponent: Float32): Float32

/**
 * @description Computes `base` raised to the power of `exponent`.
 * @param base The base value.
 * @param exponent The integer exponent value.
 * @returns The result of `base` raised to the power of `exponent`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func pow(base: Float64, exponent: Int64): Float64

/**
 * @description Computes `base` raised to the power of `exponent`.
 * @param base The base value.
 * @param exponent The integer exponent value.
 * @returns The result of `base` raised to the power of `exponent`.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func pow(base: Float32, exponent: Int32): Float32

/**
 * @description An interface providing mathematical constants.
 * @typeparam T The numeric type (e.g., Float64, Float32).
 */
@!APILevel[
    since: "22"
]
public interface MathExtension<T> {
    /**
     * @description Gets the value of PI (π).
     * @returns The value of PI for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func GetPI(): T

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The value of E for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func GetE(): T
}

/**
 * @description An interface for types that have a maximum and minimum value.
 * @typeparam T The numeric type.
 */
@!APILevel[
    since: "22"
]
public interface MaxMinValue<T> {
    /**
     * @description Gets the maximum representable value for the type `T`.
     * @returns The maximum value.
     */
    @!APILevel[
        since: "22"
    ]
    static func getMax(): T

    /**
     * @description Gets the minimum representable value for the type `T`.
     * @returns The minimum value.
     */
    @!APILevel[
        since: "22"
    ]
    static func getMin(): T
}

/**
 * @description An interface representing a numeric type that supports basic arithmetic operations.
 * @typeparam T The numeric type.
 */
@!APILevel[
    since: "22"
]
public interface Number<T> {
    /**
     * @description Adds two numbers.
     * @param other The right-hand side operand.
     * @returns The sum of the two numbers.
     */
    @!APILevel[
        since: "22"
    ]
    operator func +(other: T): T

    /**
     * @description Subtracts one number from another.
     * @param other The right-hand side operand.
     * @returns The difference between the two numbers.
     */
    @!APILevel[
        since: "22"
    ]
    operator func -(other: T): T

    /**
     * @description Multiplies two numbers.
     * @param other The right-hand side operand.
     * @returns The product of the two numbers.
     */
    @!APILevel[
        since: "22"
    ]
    operator func *(other: T): T

    /**
     * @description Divides one number by another.
     * @param other The right-hand side operand (divisor).
     * @returns The quotient of the two numbers.
     */
    @!APILevel[
        since: "22"
    ]
    operator func /(other: T): T

    /**
     * @description Negates a number.
     * @returns The negated value.
     */
    @!APILevel[
        since: "22"
    ]
    operator func -(): T
}

/**
 * @description An interface representing an integer type, extending basic number operations with bitwise and modulo operations.
 * @typeparam T The integer type.
 */
@!APILevel[
    since: "22"
]
public interface Integer<T> <: Number<T> {
    /**
     * @description Checks if the integer type is signed.
     * @returns `true` if the type is signed, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    static func isSigned(): Bool

    /**
     * @description Computes the remainder of a division.
     * @param other The divisor.
     * @returns The remainder.
     */
    @!APILevel[
        since: "22"
    ]
    operator func %(other: T): T

    /**
     * @description Performs a bitwise AND operation.
     * @param other The right-hand side operand.
     * @returns The result of the bitwise AND.
     */
    @!APILevel[
        since: "22"
    ]
    operator func &(other: T): T

    /**
     * @description Performs a bitwise OR operation.
     * @param other The right-hand side operand.
     * @returns The result of the bitwise OR.
     */
    @!APILevel[
        since: "22"
    ]
    operator func |(other: T): T

    /**
     * @description Performs a bitwise XOR operation.
     * @param other The right-hand side operand.
     * @returns The result of the bitwise XOR.
     */
    @!APILevel[
        since: "22"
    ]
    operator func ^(other: T): T

    /**
     * @description Performs a bitwise NOT (complement) operation.
     * @returns The bitwise complement of the value.
     */
    @!APILevel[
        since: "22"
    ]
    operator func !(): T

    /**
     * @description Performs a right bit shift.
     * @param n The number of positions to shift.
     * @returns The value after shifting right.
     */
    @!APILevel[
        since: "22"
    ]
    operator func >>(n: Int64): T

    /**
     * @description Performs a left bit shift.
     * @param n The number of positions to shift.
     * @returns The value after shifting left.
     */
    @!APILevel[
        since: "22"
    ]
    operator func <<(n: Int64): T
}

/**
 * @description An interface representing a floating-point type, providing standard constants and classification methods.
 * @typeparam T The floating-point type.
 */
@!APILevel[
    since: "22"
]
public interface FloatingPoint<T> <: Number<T> {
    /**
     * @description Gets the value of PI (π).
     * @returns The value of PI for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func getPI(): T

    /**
     * @description Gets the value of E, the base of natural logarithms.
     * @returns The value of E for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func getE(): T

    /**
     * @description Gets the Not-a-Number (NaN) value.
     * @returns The NaN value for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func getNaN(): T

    /**
     * @description Gets the positive infinity value.
     * @returns The positive infinity value for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func getInf(): T

    /**
     * @description Gets the smallest positive non-zero denormal value.
     * @returns The smallest denormal value for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func getMinDenormal(): T

    /**
     * @description Gets the smallest positive normal value.
     * @returns The smallest normal value for the type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    static func getMinNormal(): T

    /**
     * @description Checks if the value is positive or negative infinity.
     * @returns `true` if the value is infinite, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func isInf(): Bool

    /**
     * @description Checks if the value is Not-a-Number (NaN).
     * @returns `true` if the value is NaN, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func isNaN(): Bool

    /**
     * @description Checks if the value is a normal number (i.e., not zero, subnormal, infinite, or NaN).
     * @returns `true` if the value is normal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func isNormal(): Bool
}

