package std.unittest.prop_test
import std.collection.*
import std.math.abs

import std.random.Random
import std.math.*
import std.collection.filter
import std.unittest.common.*

/**
 * @description Represents a generator for arbitrary values of a given type.
 */
@!APILevel[
    since: "22"
]
public interface Arbitrary<T> {
    /**
     * @description Creates a generator for arbitrary values of type `T`.
     * @param random The source of randomness to use for generation.
     * @returns A `Generator<T>` that produces random instances.
     */
    @!APILevel[
        since: "22"
    ]
    static func arbitrary(random: RandomSource): Generator<T>
}

extend Unit <: Arbitrary<Unit> {
    /**
     * @description Creates a generator that always produces `Unit`.
     * @param _ The random source (unused).
     * @returns A `Generator<Unit>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(_: RandomSource): Generator<Unit>
}

extend Bool <: Arbitrary<Bool> {
    /**
     * @description Creates a generator for arbitrary `Bool` values.
     * @param random The source of randomness.
     * @returns A `Generator<Bool>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Bool>
}

extend Int8 <: Arbitrary<Int8> {
    /**
     * @description Creates a generator for arbitrary `Int8` values.
     * @param random The source of randomness.
     * @returns A `Generator<Int8>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Int8>
}

extend Int16 <: Arbitrary<Int16> {
    /**
     * @description Creates a generator for arbitrary `Int16` values.
     * @param random The source of randomness.
     * @returns A `Generator<Int16>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Int16>
}

extend Int32 <: Arbitrary<Int32> {
    /**
     * @description Creates a generator for arbitrary `Int32` values.
     * @param random The source of randomness.
     * @returns A `Generator<Int32>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Int32>
}

extend Int64 <: Arbitrary<Int64> {
    /**
     * @description Creates a generator for arbitrary `Int64` values.
     * @param random The source of randomness.
     * @returns A `Generator<Int64>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Int64>
}

extend IntNative <: Arbitrary<IntNative> {
    /**
     * @description Creates a generator for arbitrary `IntNative` values.
     * @param random The source of randomness.
     * @returns A `Generator<IntNative>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<IntNative>
}

extend UInt8 <: Arbitrary<UInt8> {
    /**
     * @description Creates a generator for arbitrary `UInt8` values.
     * @param random The source of randomness.
     * @returns A `Generator<UInt8>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<UInt8>
}

extend UInt16 <: Arbitrary<UInt16> {
    /**
     * @description Creates a generator for arbitrary `UInt16` values.
     * @param random The source of randomness.
     * @returns A `Generator<UInt16>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<UInt16>
}

extend UInt32 <: Arbitrary<UInt32> {
    /**
     * @description Creates a generator for arbitrary `UInt32` values.
     * @param random The source of randomness.
     * @returns A `Generator<UInt32>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<UInt32>
}

extend UInt64 <: Arbitrary<UInt64> {
    /**
     * @description Creates a generator for arbitrary `UInt64` values.
     * @param random The source of randomness.
     * @returns A `Generator<UInt64>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<UInt64>
}

extend UIntNative <: Arbitrary<UIntNative> {
    /**
     * @description Creates a generator for arbitrary `UIntNative` values.
     * @param random The source of randomness.
     * @returns A `Generator<UIntNative>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<UIntNative>
}

extend Float16 <: Arbitrary<Float16> {
    /**
     * @description Creates a generator for arbitrary `Float16` values, including special values like infinity and NaN.
     * @param random The source of randomness.
     * @returns A `Generator<Float16>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Float16>
}

extend Float32 <: Arbitrary<Float32> {
    /**
     * @description Creates a generator for arbitrary `Float32` values, including special values like infinity and NaN.
     * @param random The source of randomness.
     * @returns A `Generator<Float32>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Float32>
}

extend Float64 <: Arbitrary<Float64> {
    /**
     * @description Creates a generator for arbitrary `Float64` values, including special values like infinity and NaN.
     * @param random The source of randomness.
     * @returns A `Generator<Float64>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Float64>
}

extend Rune <: Arbitrary<Rune> {
    /**
     * @description Creates a generator for arbitrary `Rune` values from the full Unicode range.
     * @param random The source of randomness.
     * @returns A `Generator<Rune>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Rune>
}

extend<T> Array<T> <: Arbitrary<Array<T>> where T <: Arbitrary<T> {
    /**
     * @description Creates a generator for arbitrary `Array`s of type `T`.
     * @param random The source of randomness.
     * @returns A `Generator<Array<T>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Array<T>>
}

extend<T> ArrayList<T> <: Arbitrary<ArrayList<T>> where T <: Arbitrary<T> {
    /**
     * @description Creates a generator for arbitrary `ArrayList`s of type `T`.
     * @param random The source of randomness.
     * @returns A `Generator<ArrayList<T>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<ArrayList<T>>
}

extend<T> HashSet<T> <: Arbitrary<HashSet<T>> where T <: Arbitrary<T> {
    /**
     * @description Creates a generator for arbitrary `HashSet`s of type `T`.
     * @param random The source of randomness.
     * @returns A `Generator<HashSet<T>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<HashSet<T>>
}

extend<K, V> HashMap<K, V> <: Arbitrary<HashMap<K, V>> where K <: Arbitrary<K>, V <: Arbitrary<V> {
    /**
     * @description Creates a generator for arbitrary `HashMap`s with keys of type `K` and values of type `V`.
     * @param random The source of randomness.
     * @returns A `Generator<HashMap<K, V>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<HashMap<K, V>>
}

extend String <: Arbitrary<String> {
    /**
     * @description Creates a generator for arbitrary `String` values containing various Unicode characters.
     * @param random The source of randomness.
     * @returns A `Generator<String>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<String>
}

extend<T> Option<T> <: Arbitrary<Option<T>> where T <: Arbitrary<T> {
    /**
     * @description Creates a generator for `Option<T>`, which will produce either `Some(T)` or `None`.
     * @param random The source of randomness.
     * @returns A `Generator<Option<T>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Option<T>>
}

extend Ordering <: Arbitrary<Ordering> {
    /**
     * @description Creates a generator for `Ordering` which will produce `Less`, `Equal`, or `Greater`.
     * @param random The source of randomness.
     * @returns A `Generator<Ordering>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Ordering>
}

extend<R> Function0Wrapper<R> <: Arbitrary<Function0Wrapper<R>> where R <: Arbitrary<R> {
    /**
     * @description Creates a generator for `Function0Wrapper<R>`, which wraps a function that returns an arbitrary value of type `R`.
     * @param random The source of randomness.
     * @returns A `Generator<Function0Wrapper<R>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<Function0Wrapper<R>>
}

extend<T0, T1> TupleWrapper2<T0, T1> <: Arbitrary<TupleWrapper2<T0, T1>>
        where T0 <: Arbitrary<T0>,
              T1 <: Arbitrary<T1> {
    /**
     * @description Creates a generator for `TupleWrapper2<T0, T1>`, containing two arbitrary values.
     * @param random The source of randomness.
     * @returns A `Generator<TupleWrapper2<T0, T1>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<TupleWrapper2<T0, T1>>
}

extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Arbitrary<TupleWrapper3<T0, T1, T2>>
        where T0 <: Arbitrary<T0>,
              T1 <: Arbitrary<T1>,
              T2 <: Arbitrary<T2> {
    /**
     * @description Creates a generator for `TupleWrapper3<T0, T1, T2>`, containing three arbitrary values.
     * @param random The source of randomness.
     * @returns A `Generator<TupleWrapper3<T0, T1, T2>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<TupleWrapper3<T0, T1, T2>>
}

extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: Arbitrary<TupleWrapper4<T0, T1, T2, T3>>
        where T0 <: Arbitrary<T0>,
              T1 <: Arbitrary<T1>,
              T2 <: Arbitrary<T2>,
              T3 <: Arbitrary<T3> {
    /**
     * @description Creates a generator for `TupleWrapper4<T0, T1, T2, T3>`, containing four arbitrary values.
     * @param random The source of randomness.
     * @returns A `Generator<TupleWrapper4<T0, T1, T2, T3>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<TupleWrapper4<T0, T1, T2, T3>>
}

extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: Arbitrary<TupleWrapper5<T0, T1, T2, T3, T4>>
        where T0 <: Arbitrary<T0>,
              T1 <: Arbitrary<T1>,
              T2 <: Arbitrary<T2>,
              T3 <: Arbitrary<T3>,
              T4 <: Arbitrary<T4> {
    /**
     * @description Creates a generator for `TupleWrapper5<T0, T1, T2, T3, T4>`, containing five arbitrary values.
     * @param random The source of randomness.
     * @returns A `Generator<TupleWrapper5<T0, T1, T2, T3, T4>>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func arbitrary(random: RandomSource): Generator<TupleWrapper5<T0, T1, T2, T3, T4>>
}

/**
 * @description An interface for types that can generate arbitrary values within a specified range.
 */
@!APILevel[
    since: "22"
]
public interface ArbitraryRange<T> where T <: Arbitrary<T> & Comparable<T> {
    /**
     * @description Returns the minimum value of the type's range.
     * @returns The minimum value.
     */
    @!APILevel[
        since: "22"
    ]
    static func min(): T

    /**
     * @description Returns the maximum value of the type's range.
     * @returns The maximum value.
     */
    @!APILevel[
        since: "22"
    ]
    static func max(): T

    /**
     * @description Creates a generator for arbitrary values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value of the range.
     * @param max The maximum value of the range.
     * @returns A `Generator<T>` that produces values between `min` and `max`.
     */
    @!APILevel[
        since: "22"
    ]
    static func arbitraryRange(random: RandomSource, min: T, max: T): Generator<T>
}

extend Int64 <: ArbitraryRange<Int64> {
    /**
     * @description Returns `Int64.MIN_VALUE`.
     * @returns The minimum `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): Int64

    /**
     * @description Returns `Int64.MAX_VALUE`.
     * @returns The maximum `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): Int64

    /**
     * @description Creates a generator for `Int64` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<Int64>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: Int64, max: Int64): Generator<Int64>
}

extend UInt64 <: ArbitraryRange<UInt64> {
    /**
     * @description Returns `UInt64.MIN_VALUE`.
     * @returns The minimum `UInt64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): UInt64

    /**
     * @description Returns `UInt64.MAX_VALUE`.
     * @returns The maximum `UInt64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): UInt64

    /**
     * @description Creates a generator for `UInt64` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<UInt64>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: UInt64, max: UInt64): Generator<UInt64>
}

extend Int32 <: ArbitraryRange<Int32> {
    /**
     * @description Returns `Int32.MIN_VALUE`.
     * @returns The minimum `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): Int32

    /**
     * @description Returns `Int32.MAX_VALUE`.
     * @returns The maximum `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): Int32

    /**
     * @description Creates a generator for `Int32` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<Int32>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: Int32, max: Int32): Generator<Int32>
}

extend UInt32 <: ArbitraryRange<UInt32> {
    /**
     * @description Returns `UInt32.MIN_VALUE`.
     * @returns The minimum `UInt32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): UInt32

    /**
     * @description Returns `UInt32.MAX_VALUE`.
     * @returns The maximum `UInt32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): UInt32

    /**
     * @description Creates a generator for `UInt32` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<UInt32>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: UInt32, max: UInt32): Generator<UInt32>
}

extend Int16 <: ArbitraryRange<Int16> {
    /**
     * @description Returns `Int16.MIN_VALUE`.
     * @returns The minimum `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): Int16

    /**
     * @description Returns `Int16.MAX_VALUE`.
     * @returns The maximum `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): Int16

    /**
     * @description Creates a generator for `Int16` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<Int16>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: Int16, max: Int16): Generator<Int16>
}

extend UInt16 <: ArbitraryRange<UInt16> {
    /**
     * @description Returns `UInt16.MIN_VALUE`.
     * @returns The minimum `UInt16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): UInt16

    /**
     * @description Returns `UInt16.MAX_VALUE`.
     * @returns The maximum `UInt16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): UInt16

    /**
     * @description Creates a generator for `UInt16` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<UInt16>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: UInt16, max: UInt16): Generator<UInt16>
}

extend Int8 <: ArbitraryRange<Int8> {
    /**
     * @description Returns `Int8.MIN_VALUE`.
     * @returns The minimum `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): Int8

    /**
     * @description Returns `Int8.MAX_VALUE`.
     * @returns The maximum `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): Int8

    /**
     * @description Creates a generator for `Int8` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<Int8>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: Int8, max: Int8): Generator<Int8>
}

extend UInt8 <: ArbitraryRange<UInt8> {
    /**
     * @description Returns `UInt8.MIN_VALUE`.
     * @returns The minimum `UInt8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): UInt8

    /**
     * @description Returns `UInt8.MAX_VALUE`.
     * @returns The maximum `UInt8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): UInt8

    /**
     * @description Creates a generator for `UInt8` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<UInt8>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: UInt8, max: UInt8): Generator<UInt8>
}

extend IntNative <: ArbitraryRange<IntNative> {
    /**
     * @description Returns `IntNative.MIN_VALUE`.
     * @returns The minimum `IntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): IntNative

    /**
     * @description Returns `IntNative.MAX_VALUE`.
     * @returns The maximum `IntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): IntNative

    /**
     * @description Creates a generator for `IntNative` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<IntNative>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: IntNative, max: IntNative): Generator<IntNative>
}

extend UIntNative <: ArbitraryRange<UIntNative> {
    /**
     * @description Returns `UIntNative.MIN_VALUE`.
     * @returns The minimum `UIntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): UIntNative

    /**
     * @description Returns `UIntNative.MAX_VALUE`.
     * @returns The maximum `UIntNative` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): UIntNative

    /**
     * @description Creates a generator for `UIntNative` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<UIntNative>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: UIntNative, max: UIntNative): Generator<UIntNative>
}

extend Float64 <: ArbitraryRange<Float64> {
    /**
     * @description Returns a large negative `Float64` value, used as a practical minimum for generation.
     * @returns A minimum `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): Float64

    /**
     * @description Returns a large positive `Float64` value, used as a practical maximum for generation.
     * @returns A maximum `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): Float64

    /**
     * @description Creates a generator for `Float64` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<Float64>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: Float64, max: Float64): Generator<Float64>
}

extend Float32 <: ArbitraryRange<Float32> {
    /**
     * @description Returns a large negative `Float32` value, used as a practical minimum for generation.
     * @returns A minimum `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): Float32

    /**
     * @description Returns a large positive `Float32` value, used as a practical maximum for generation.
     * @returns A maximum `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): Float32

    /**
     * @description Creates a generator for `Float32` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<Float32>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: Float32, max: Float32): Generator<Float32>
}

extend Float16 <: ArbitraryRange<Float16> {
    /**
     * @description Returns a large negative `Float16` value, used as a practical minimum for generation.
     * @returns A minimum `Float16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(): Float16

    /**
     * @description Returns a large positive `Float16` value, used as a practical maximum for generation.
     * @returns A maximum `Float16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(): Float16

    /**
     * @description Creates a generator for `Float16` values within the given inclusive range.
     * @param random The source of randomness.
     * @param min The minimum value.
     * @param max The maximum value.
     * @returns A `Generator<Float16>`.
     * @throws IllegalArgumentException if either min or max is NaN, or if max is less than min forming an empty interval
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func arbitraryRange(random: RandomSource, min: Float16, max: Float16): Generator<Float16>
}

/**
 * @description Returns an `Iterable` that produces no elements.
 * @returns An empty `Iterable<T>`.
 */
@!APILevel[
    since: "22"
]
public func emptyIterable<T>(): Iterable<T>

/**
 * @description An interface for an object that can generate values of type `T`.
 */
@!APILevel[
    since: "22"
]
public interface Generator<T> {
    /**
     * @description Generates and returns the next value.
     * @returns A value of type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    func next(): T
}

/**
 * @description A utility class providing static methods for creating and combining `Generator` instances.
 */
@!APILevel[
    since: "22"
]
public class Generators {
    /**
     * @description Creates a generator that produces values by repeatedly applying a binary function.
     * @param l The first initial value.
     * @param r The second initial value.
     * @param body A function that takes two values and produces a new one.
     * @returns A `Generator<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func generate<T>(l: T, r: T, body: (T, T) -> T): Generator<T>

    /**
     * @description Creates a generator that always returns the same single value.
     * @param value The value to be returned by the generator.
     * @returns A `Generator<T>` that always produces `value`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func single<T>(value: T): Generator<T>

    /**
     * @description Creates a generator that produces values by repeatedly calling a factory function.
     * @param body A function that produces a value of type `T`.
     * @returns A `Generator<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func generate<T>(body: () -> T): Generator<T>

    /**
     * @description Creates a generator that randomly picks elements from a given array.
     * @param random The source of randomness.
     * @param collection The array of elements to pick from.
     * @returns A `Generator<T>` that produces elements from the collection.
     */
    @!APILevel[
        since: "22"
    ]
    public static func iterable<T>(random: RandomSource, collection: Array<T>): Generator<T>

    /**
     * @description Creates a generator that selects from a collection of other generators based on assigned weights.
     * @param random The source of randomness.
     * @param variants An array of tuples, where each tuple contains a weight (UInt64) and a `Generator<T>`.
     * @returns A `Generator<T>` that delegates to one of the provided generators based on weight.
     */
    @!APILevel[
        since: "22"
    ]
    public static func weighted<T>(random: RandomSource, variants: Array<(UInt64, Generator<T>)>): Generator<T>

    /**
     * @description Creates a generator that randomly picks one of the provided generators to delegate to, with equal probability.
     * @param random The source of randomness.
     * @param variants An array of `Generator<T>`s to choose from.
     * @returns A `Generator<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func pick<T>(random: RandomSource, variants: Array<Generator<T>>): Generator<T>

    /**
     * @description Creates a generator for a type `T` by looking up its `Arbitrary` implementation.
     * @param random The source of randomness.
     * @returns A `Generator<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func lookup<T>(random: RandomSource): Generator<T> where T <: Arbitrary<T>

    /**
     * @description Creates a generator by generating a value of type `T` and then applying a mapping function to it.
     * @param random The source of randomness.
     * @param body The function to transform a `T` into an `R`.
     * @returns A `Generator<R>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mapped<T, R>(random: RandomSource, body: (T) -> R): Generator<R> where T <: Arbitrary<T>

    /**
     * @description Creates a generator by generating two values (`T1`, `T2`) and applying a mapping function to them.
     * @param random The source of randomness.
     * @param body The function to transform `(T1, T2)` into an `R`.
     * @returns A `Generator<R>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mapped<T1, T2, R>(random: RandomSource, body: (T1, T2) -> R): Generator<R> where T1 <: Arbitrary<T1>,
        T2 <: Arbitrary<T2>

    /**
     * @description Creates a generator by generating three values (`T1`, `T2`, `T3`) and applying a mapping function to them.
     * @param random The source of randomness.
     * @param body The function to transform `(T1, T2, T3)` into an `R`.
     * @returns A `Generator<R>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mapped<T1, T2, T3, R>(random: RandomSource, body: (T1, T2, T3) -> R): Generator<R> where T1 <: Arbitrary<T1>,
        T2 <: Arbitrary<T2>, T3 <: Arbitrary<T3>

    /**
     * @description Creates a generator by generating four values (`T1`, `T2`, `T3`, `T4`) and applying a mapping function to them.
     * @param random The source of randomness.
     * @param body The function to transform `(T1, T2, T3, T4)` into an `R`.
     * @returns A `Generator<R>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mapped<T1, T2, T3, T4, R>(random: RandomSource, body: (T1, T2, T3, T4) -> R): Generator<R> where T1 <: Arbitrary<T1>,
        T2 <: Arbitrary<T2>, T3 <: Arbitrary<T3>, T4 <: Arbitrary<T4>
}

/**
 * @description A class representing a lazy, potentially infinite sequence of values.
 */
@!APILevel[
    since: "22"
]
public class LazySeq<T> <: Iterable<T> {
    /**
     * @description Creates a `LazySeq` from an existing `Iterable`.
     * @param iterable The iterable to convert.
     * @returns A new `LazySeq<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func of(iterable: Iterable<T>)

    /**
     * @description Creates a `LazySeq` from an `Array`.
     * @param array The array to convert.
     * @returns A new `LazySeq<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func of(array: Array<T>)

    /**
     * @description Creates a `LazySeq` containing a single element.
     * @param element The single element in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public init(element: T)

    /**
     * @description Creates an empty `LazySeq`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Returns an iterator for this lazy sequence.
     * @returns An `Iterator<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description Concatenates another `LazySeq` to the end of this one.
     * @param other The `LazySeq` to append.
     * @returns A new `LazySeq` representing the concatenation.
     */
    @!APILevel[
        since: "22"
    ]
    public func concat(other: LazySeq<T>): LazySeq<T>

    /**
     * @description Adds an element to the beginning of the sequence.
     * @param element The element to prepend.
     * @returns A new `LazySeq` with the element at the front.
     */
    @!APILevel[
        since: "22"
    ]
    public func prepend(element: T): LazySeq<T>

    /**
     * @description Adds an element to the end of the sequence.
     * @param element The element to append.
     * @returns A new `LazySeq` with the element at the end.
     */
    @!APILevel[
        since: "22"
    ]
    public func append(element: T): LazySeq<T>

    /**
     * @description Interleaves the elements of this sequence with another.
     * @param other The `LazySeq` to mix with.
     * @returns A new `LazySeq` with interleaved elements.
     */
    @!APILevel[
        since: "22"
    ]
    public func mixWith(other: LazySeq<T>): LazySeq<T>

    /**
     * @description Interleaves the elements of two lazy sequences.
     * @param l1 The first sequence.
     * @param l2 The second sequence.
     * @returns A new `LazySeq` with interleaved elements.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mix(l1: LazySeq<T>, l2: LazySeq<T>)

    /**
     * @description Interleaves the elements of three lazy sequences.
     * @param l1 The first sequence.
     * @param l2 The second sequence.
     * @param l3 The third sequence.
     * @returns A new `LazySeq` with interleaved elements.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mix(l1: LazySeq<T>, l2: LazySeq<T>, l3: LazySeq<T>)

    /**
     * @description Interleaves the elements of four lazy sequences.
     * @param l1 The first sequence.
     * @param l2 The second sequence.
     * @param l3 The third sequence.
     * @param l4 The fourth sequence.
     * @returns A new `LazySeq` with interleaved elements.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mix(l1: LazySeq<T>, l2: LazySeq<T>, l3: LazySeq<T>, l4: LazySeq<T>)

    /**
     * @description Interleaves the elements of five lazy sequences.
     * @param l1 The first sequence.
     * @param l2 The second sequence.
     * @param l3 The third sequence.
     * @param l4 The fourth sequence.
     * @param l5 The fifth sequence.
     * @returns A new `LazySeq` with interleaved elements.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mix(l1: LazySeq<T>, l2: LazySeq<T>, l3: LazySeq<T>, l4: LazySeq<T>, l5: LazySeq<T>)

    /**
     * @description Creates a new `LazySeq` by applying a function to each element of this sequence.
     * @param body The function to apply to each element.
     * @returns A new `LazySeq<U>` containing the transformed elements.
     */
    @!APILevel[
        since: "22"
    ]
    public func map<U>(body: (T) -> U): LazySeq<U>
}

extend Random <: RandomSource {
    /**
     * @description Suggests a random `Bool` value.
     * @returns A random `Bool`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestBool(): Bool

    /**
     * @description Suggests a random `Int8` value.
     * @returns A random `Int8`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt8(): Int8

    /**
     * @description Suggests a random `Int16` value.
     * @returns A random `Int16`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt16(): Int16

    /**
     * @description Suggests a random `Int32` value.
     * @returns A random `Int32`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt32(): Int32

    /**
     * @description Suggests a random `Int64` value.
     * @returns A random `Int64`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt64(): Int64

    /**
     * @description Suggests a random `IntNative` value.
     * @returns A random `IntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func suggestIntNative(): IntNative

    /**
     * @description Suggests a random `UInt8` value.
     * @returns A random `UInt8`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt8(): UInt8

    /**
     * @description Suggests a random `UInt16` value.
     * @returns A random `UInt16`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt16(): UInt16

    /**
     * @description Suggests a random `UInt32` value.
     * @returns A random `UInt32`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt32(): UInt32

    /**
     * @description Suggests a random `UInt64` value.
     * @returns A random `UInt64`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt64(): UInt64

    /**
     * @description Suggests a random `UIntNative` value.
     * @returns A random `UIntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func suggestUIntNative(): UIntNative

    /**
     * @description Suggests a random `Float16` value.
     * @returns A random `Float16`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestFloat16(): Float16

    /**
     * @description Suggests a random `Float32` value.
     * @returns A random `Float32`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestFloat32(): Float32

    /**
     * @description Suggests a random `Float64` value.
     * @returns A random `Float64`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestFloat64(): Float64

    /**
     * @description Suggests a random `Rune` value.
     * @returns A random `Rune`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestRune(): Rune

    /**
     * @description Generates a random `IntNative` value.
     * @returns A random `IntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextIntNative(): IntNative

    /**
     * @description Generates a random `UIntNative` value.
     * @returns A random `UIntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextUIntNative(): UIntNative

    /**
     * @description Suggests a random `Int64` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int64` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt64(l: Int64, r: Int64): Int64

    /**
     * @description Suggests a random `UInt64` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt64` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt64(l: UInt64, r: UInt64): UInt64

    /**
     * @description Suggests a random `Int32` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int32` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt32(l: Int32, r: Int32): Int32

    /**
     * @description Suggests a random `UInt32` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt32` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt32(l: UInt32, r: UInt32): UInt32

    /**
     * @description Suggests a random `Int16` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int16` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt16(l: Int16, r: Int16): Int16

    /**
     * @description Suggests a random `UInt16` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt16` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt16(l: UInt16, r: UInt16): UInt16

    /**
     * @description Suggests a random `Int8` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int8` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestInt8(l: Int8, r: Int8): Int8

    /**
     * @description Suggests a random `UInt8` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt8` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUInt8(l: UInt8, r: UInt8): UInt8

    /**
     * @description Suggests a random `IntNative` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `IntNative` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestIntNative(l: IntNative, r: IntNative): IntNative

    /**
     * @description Suggests a random `UIntNative` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UIntNative` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestUIntNative(l: UIntNative, r: UIntNative): UIntNative

    /**
     * @description Suggests a random `Float64` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Float64` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestFloat64(l: Float64, r: Float64): Float64

    /**
     * @description Suggests a random `Float32` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Float32` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestFloat32(l: Float32, r: Float32): Float32

    /**
     * @description Suggests a random `Float16` value within a given range.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Float16` in the range `[l, r]`.
     */
    @!APILevel[
        since: "22"
    ]
    public func suggestFloat16(l: Float16, r: Float16): Float16
}

/**
 * @description An interface defining a source of random data for generators.
 */
@!APILevel[
    since: "22"
]
public interface RandomSource {
    /**
     * @description Generates a random `Bool` value.
     * @returns A random `Bool`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextBool(): Bool

    /**
     * @description Generates a random `Int8` value over its full range.
     * @returns A random `Int8`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func nextInt8(): Int8

    /**
     * @description Generates a random `Int16` value over its full range.
     * @returns A random `Int16`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func nextInt16(): Int16

    /**
     * @description Generates a random `Int32` value over its full range.
     * @returns A random `Int32`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func nextInt32(): Int32

    /**
     * @description Generates a random `Int64` value over its full range.
     * @returns A random `Int64`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func nextInt64(): Int64

    /**
     * @description Generates a random `Int8` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `Int8`.
     * @throws IllegalArgumentException if `max` is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func nextInt8(max: Int8): Int8

    /**
     * @description Generates a random `Int16` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `Int16`.
     * @throws IllegalArgumentException if `max` is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func nextInt16(max: Int16): Int16

    /**
     * @description Generates a random `Int32` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `Int32`.
     * @throws IllegalArgumentException if `max` is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func nextInt32(max: Int32): Int32

    /**
     * @description Generates a random `Int64` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `Int64`.
     * @throws IllegalArgumentException if `max` is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func nextInt64(max: Int64): Int64

    /**
     * @description Generates a random `UInt8` value over its full range.
     * @returns A random `UInt8`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextUInt8(): UInt8

    /**
     * @description Generates a random `UInt16` value over its full range.
     * @returns A random `UInt16`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextUInt16(): UInt16

    /**
     * @description Generates a random `UInt32` value over its full range.
     * @returns A random `UInt32`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextUInt32(): UInt32

    /**
     * @description Generates a random `UInt64` value over its full range.
     * @returns A random `UInt64`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextUInt64(): UInt64

    /**
     * @description Generates a random `UInt8` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `UInt8`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextUInt8(max: UInt8): UInt8

    /**
     * @description Generates a random `UInt16` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `UInt16`.
     * @throws IllegalArgumentException if `max` is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func nextUInt16(max: UInt16): UInt16

    /**
     * @description Generates a random `UInt32` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `UInt32`.
     * @throws IllegalArgumentException if `max` is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func nextUInt32(max: UInt32): UInt32

    /**
     * @description Generates a random `UInt64` value in `[0, max)`.
     * @param max The exclusive upper bound.
     * @returns A random `UInt64`.
     * @throws IllegalArgumentException if `max` is not positive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func nextUInt64(max: UInt64): UInt64

    /**
     * @description Generates a random `Float16` value in `[0.0, 1.0)`.
     * @returns A random `Float16`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextFloat16(): Float16

    /**
     * @description Generates a random `Float32` value in `[0.0, 1.0)`.
     * @returns A random `Float32`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextFloat32(): Float32

    /**
     * @description Generates a random `Float64` value in `[0.0, 1.0)`.
     * @returns A random `Float64`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextFloat64(): Float64

    /**
     * @description Generates a `Float64` value from a Gaussian (normal) distribution.
     * @param mean The mean of the distribution.
     * @param sigma The standard deviation of the distribution.
     * @returns A random `Float64`.
     */
    @!APILevel[
        since: "22"
    ]
    func nextGaussianFloat64(mean!: Float64, sigma!: Float64): Float64

    /**
     * @description Generates a random `IntNative` value over its full range.
     * @returns A random `IntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func nextIntNative(): IntNative

    /**
     * @description Generates a random `UIntNative` value over its full range.
     * @returns A random `UIntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func nextUIntNative(): UIntNative

    /**
     * @description Suggests a random `UInt8` value, biased towards edge cases.
     * @returns A random `UInt8`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt8(): UInt8

    /**
     * @description Suggests a random `UInt16` value, biased towards edge cases.
     * @returns A random `UInt16`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt16(): UInt16

    /**
     * @description Suggests a random `UInt32` value, biased towards edge cases.
     * @returns A random `UInt32`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt32(): UInt32

    /**
     * @description Suggests a random `UInt64` value, biased towards edge cases.
     * @returns A random `UInt64`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt64(): UInt64

    /**
     * @description Suggests a random `UIntNative` value, biased towards edge cases.
     * @returns A random `UIntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func suggestUIntNative(): UIntNative

    /**
     * @description Suggests a random `Int8` value, biased towards edge cases.
     * @returns A random `Int8`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt8(): Int8

    /**
     * @description Suggests a random `Int16` value, biased towards edge cases.
     * @returns A random `Int16`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt16(): Int16

    /**
     * @description Suggests a random `Int32` value, biased towards edge cases.
     * @returns A random `Int32`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt32(): Int32

    /**
     * @description Suggests a random `Int64` value, biased towards edge cases.
     * @returns A random `Int64`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt64(): Int64

    /**
     * @description Suggests a random `IntNative` value, biased towards edge cases.
     * @returns A random `IntNative`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    func suggestIntNative(): IntNative

    /**
     * @description Suggests a random `Float16` value, biased towards edge cases (0, 1, -1, NaN, infinities).
     * @returns A random `Float16`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestFloat16(): Float16

    /**
     * @description Suggests a random `Float32` value, biased towards edge cases (0, 1, -1, NaN, infinities).
     * @returns A random `Float32`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestFloat32(): Float32

    /**
     * @description Suggests a random `Float64` value, biased towards edge cases (0, 1, -1, NaN, infinities).
     * @returns A random `Float64`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestFloat64(): Float64

    /**
     * @description Suggests a random `Bool` value.
     * @returns A random `Bool`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestBool(): Bool

    /**
     * @description Suggests a random `Rune` value, biased towards ASCII and edge cases.
     * @returns A random `Rune`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestRune(): Rune

    /**
     * @description Suggests a random `Int64` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int64`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt64(l: Int64, r: Int64): Int64

    /**
     * @description Suggests a random `UInt64` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt64`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt64(l: UInt64, r: UInt64): UInt64

    /**
     * @description Suggests a random `Int32` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int32`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt32(l: Int32, r: Int32): Int32

    /**
     * @description Suggests a random `UInt32` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt32`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt32(l: UInt32, r: UInt32): UInt32

    /**
     * @description Suggests a random `Int16` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int16`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt16(l: Int16, r: Int16): Int16

    /**
     * @description Suggests a random `UInt16` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt16`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt16(l: UInt16, r: UInt16): UInt16

    /**
     * @description Suggests a random `Int8` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Int8`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestInt8(l: Int8, r: Int8): Int8

    /**
     * @description Suggests a random `UInt8` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UInt8`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUInt8(l: UInt8, r: UInt8): UInt8

    /**
     * @description Suggests a random `IntNative` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `IntNative`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestIntNative(l: IntNative, r: IntNative): IntNative

    /**
     * @description Suggests a random `UIntNative` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `UIntNative`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestUIntNative(l: UIntNative, r: UIntNative): UIntNative

    /**
     * @description Suggests a random `Float64` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Float64`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestFloat64(l: Float64, r: Float64): Float64

    /**
     * @description Suggests a random `Float32` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Float32`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestFloat32(l: Float32, r: Float32): Float32

    /**
     * @description Suggests a random `Float16` value within a given range, biased towards the bounds.
     * @param l The lower bound (inclusive).
     * @param r The upper bound (inclusive).
     * @returns A random `Float16`.
     */
    @!APILevel[
        since: "22"
    ]
    func suggestFloat16(l: Float16, r: Float16): Float16
}

/**
 * @description A configuration key for providing a `RandomSource` to property-based tests.
 */
@!APILevel[
    since: "22"
]
public struct KeyRandom <: KeyFor<RandomSource> {
    /**
     * @description The singleton instance of `KeyRandom`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop random: KeyRandom

    /**
     * @description The name of the configuration key, "random".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A data provider that generates random instances of a type `T`.
 */
@!APILevel[
    since: "22"
]
public class RandomDataProvider<T> <: DataProvider<T> where T <: Arbitrary<T> {
    /**
     * @description Creates a new `RandomDataProvider` with the given test configuration.
     * @param configuration The configuration for the property test.
     * @throws IllegalArgumentException if the configuration does not contain instance of random
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public RandomDataProvider(private let configuration: Configuration)

    /**
     * @description Provides an iterable sequence of randomly generated data.
     * @returns An `Iterable<T>` of random values.
     */
    @!APILevel[
        since: "22"
    ]
    public override func provide(): Iterable<T>
}

/**
 * @description A data shrinker that attempts to simplify a failing test case by generating "smaller" or "simpler" values.
 */
@!APILevel[
    since: "22"
]
public class RandomDataShrinker<T> <: DataShrinker<T> {
    /**
     * @description Shrinks the given value to an iterable of simpler values.
     * @param value The value to shrink.
     * @returns An `Iterable<T>` of shrunk values.
     */
    @!APILevel[
        since: "22"
    ]
    public override func shrink(value: T): Iterable<T>
}

/**
 * @description A data strategy that combines a `RandomDataProvider` and a `RandomDataShrinker` for property-based testing.
 */
@!APILevel[
    since: "22"
]
public class RandomDataStrategy<T> <: DataStrategy<T> where T <: Arbitrary<T> {
    /**
     * @description Creates a data provider for this strategy.
     * @param configuration The test configuration.
     * @returns A `RandomDataProvider<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public override func provider(configuration: Configuration): RandomDataProvider<T>

    /**
     * @description Creates a data shrinker for this strategy.
     * @param _ The test configuration (unused).
     * @returns A `RandomDataShrinker<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public override func shrinker(_: Configuration): RandomDataShrinker<T>

    /**
     * @description Indicates that this strategy can generate an infinite stream of values.
     */
    @!APILevel[
        since: "22"
    ]
    public override prop isInfinite: Bool
}

/**
 * @description Creates a `RandomDataStrategy` for a type `T` that can generate arbitrary values.
 * @returns A `RandomDataStrategy<T>`.
 */
@!APILevel[
    since: "22"
]
public func random<T>(): RandomDataStrategy<T> where T <: Arbitrary<T>

/**
 * @description A data provider that generates random instances of a type `T` within a specified range.
 */
@!APILevel[
    since: "22"
]
public class RandomDataProviderRange<T> <: DataProvider<T> where T <: ArbitraryRange<T> {
    /**
     * @description Creates a new `RandomDataProviderRange`.
     * @param configuration The test configuration.
     * @param min The minimum value of the range.
     * @param max The maximum value of the range.
     * @throws IllegalArgumentException Thrown when no random number generator is provided in the configuration
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public RandomDataProviderRange(private let configuration: Configuration, private let min: T, private let max: T)

    /**
     * @description Provides an iterable sequence of randomly generated data within the specified range.
     * @returns An `Iterable<T>` of random values.
     */
    @!APILevel[
        since: "22"
    ]
    public override func provide(): Iterable<T>
}

/**
 * @description A data shrinker for values within a range. It attempts to simplify a value by moving it closer to a "zero" or origin point.
 */
@!APILevel[
    since: "22"
]
public class RandomDataShrinkerRange<T> <: DataShrinker<T> where T <: Comparable<T> {
    /**
     * @description Shrinks the given value to an iterable of simpler values within its range.
     * @param value The value to shrink.
     * @returns An `Iterable<T>` of shrunk values.
     */
    @!APILevel[
        since: "22"
    ]
    public override func shrink(value: T): Iterable<T>
}

/**
 * @description A data strategy that generates random values within a specified range.
 */
@!APILevel[
    since: "22"
]
public class RandomDataStrategyRange<T> <: DataStrategy<T> where T <: ArbitraryRange<T> {
    /**
     * @description Creates a data provider for this strategy.
     * @param configuration The test configuration.
     * @returns A `RandomDataProviderRange<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public override func provider(configuration: Configuration): RandomDataProviderRange<T>

    /**
     * @description Creates a data shrinker for this strategy.
     * @param _ The test configuration (unused).
     * @returns A `RandomDataShrinkerRange<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public override func shrinker(_: Configuration): RandomDataShrinkerRange<T>

    /**
     * @description Indicates that this strategy can generate an infinite stream of values.
     */
    @!APILevel[
        since: "22"
    ]
    public override prop isInfinite: Bool
}

/**
 * @description Creates a `RandomDataStrategyRange` for a type `T` that can generate arbitrary values within a range.
 * @param min The minimum value of the range (inclusive). If `None`, the type's default minimum is used.
 * @param max The maximum value of the range (inclusive). If `None`, the type's default maximum is used.
 * @returns A `RandomDataStrategyRange<T>`.
 * @throws IllegalArgumentException if `min` is greater than `max`.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func randomInRange<T>(min!: Option<T> = None, max!: Option<T> = None): RandomDataStrategyRange<T> where T <: ArbitraryRange<T>

/**
 * @description An interface for types that can be "shrunk" to a set of simpler or smaller values.
 * This is used in property-based testing to find the minimal failing case.
 */
@!APILevel[
    since: "22"
]
public interface Shrink<T> {
    /**
     * @description Produces an iterable of "shrunk" versions of this value.
     * @returns An `Iterable<T>` of simpler values.
     */
    @!APILevel[
        since: "22"
    ]
    func shrink(): Iterable<T>
}



extend Int8 <: Shrink<Int8> {
    /**
     * @description Shrinks an `Int8` value towards zero.
     * @returns An `Iterable` of smaller `Int8` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Int8>
}

extend Int16 <: Shrink<Int16> {
    /**
     * @description Shrinks an `Int16` value towards zero.
     * @returns An `Iterable` of smaller `Int16` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Int16>
}

extend Int32 <: Shrink<Int32> {
    /**
     * @description Shrinks an `Int32` value towards zero.
     * @returns An `Iterable` of smaller `Int32` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Int32>
}

extend Int64 <: Shrink<Int64> {
    /**
     * @description Shrinks an `Int64` value towards zero.
     * @returns An `Iterable` of smaller `Int64` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Int64>
}

extend IntNative <: Shrink<IntNative> {
    /**
     * @description Shrinks an `IntNative` value towards zero.
     * @returns An `Iterable` of smaller `IntNative` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<IntNative>
}

extend UInt8 <: Shrink<UInt8> {
    /**
     * @description Shrinks a `UInt8` value towards zero.
     * @returns An `Iterable` of smaller `UInt8` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<UInt8>
}

extend UInt16 <: Shrink<UInt16> {
    /**
     * @description Shrinks a `UInt16` value towards zero.
     * @returns An `Iterable` of smaller `UInt16` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<UInt16>
}

extend UInt32 <: Shrink<UInt32> {
    /**
     * @description Shrinks a `UInt32` value towards zero.
     * @returns An `Iterable` of smaller `UInt32` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<UInt32>
}

extend UInt64 <: Shrink<UInt64> {
    /**
     * @description Shrinks a `UInt64` value towards zero.
     * @returns An `Iterable` of smaller `UInt64` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<UInt64>
}

extend UIntNative <: Shrink<UIntNative> {
    /**
     * @description Shrinks a `UIntNative` value towards zero.
     * @returns An `Iterable` of smaller `UIntNative` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<UIntNative>
}

extend Float16 <: Shrink<Float16> {
    /**
     * @description Shrinks a `Float16` value towards zero.
     * @returns An `Iterable` of smaller `Float16` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Float16>
}

extend Float32 <: Shrink<Float32> {
    /**
     * @description Shrinks a `Float32` value towards zero.
     * @returns An `Iterable` of smaller `Float32` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Float32>
}

extend Float64 <: Shrink<Float64> {
    /**
     * @description Shrinks a `Float64` value towards zero.
     * @returns An `Iterable` of smaller `Float64` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Float64>
}

extend Rune <: Shrink<Rune> {
    /**
     * @description Shrinks a `Rune` value towards the null character.
     * @returns An `Iterable` of simpler `Rune` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Rune>
}

extend<T> Array<T> <: Shrink<Array<T>> {
    /**
     * @description Shrinks an array by reducing its length and by shrinking its individual elements.
     * @returns An `Iterable` of smaller or simpler arrays.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Array<T>>
}

extend<T> ArrayList<T> <: Shrink<ArrayList<T>> {
    /**
     * @description Shrinks an `ArrayList` by reducing its length and by shrinking its individual elements.
     * @returns An `Iterable` of smaller or simpler array lists.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<ArrayList<T>>
}

extend<T> HashSet<T> <: Shrink<HashSet<T>> {
    /**
     * @description Shrinks a `HashSet` by reducing its size and by shrinking its individual elements.
     * @returns An `Iterable` of smaller or simpler hash sets.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<HashSet<T>>
}

extend<K, V> HashMap<K, V> <: Shrink<HashMap<K, V>> {
    /**
     * @description Shrinks a `HashMap` by reducing its size and by shrinking its keys and values.
     * @returns An `Iterable` of smaller or simpler hash maps.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<HashMap<K, V>>
}

extend String <: Shrink<String> {
    /**
     * @description Shrinks a `String` by reducing its length and by shrinking its characters.
     * @returns An `Iterable` of smaller or simpler strings.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<String>
}

extend<T> Option<T> <: Shrink<Option<T>> {
    /**
     * @description Shrinks an `Option<T>`. If `Some(value)`, it can shrink to `None` or to `Some(shrunk_value)`.
     * @returns An `Iterable` of simpler `Option<T>` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<Option<T>>
}


extend<T0, T1> TupleWrapper2<T0, T1> <: Shrink<TupleWrapper2<T0, T1>>
        where T0 <: Shrink<T0>,
              T1 <: Shrink<T1> {
    /**
     * @description Shrinks a 2-element tuple by shrinking each of its components.
     * @returns An `Iterable` of simpler `TupleWrapper2` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<TupleWrapper2<T0, T1>>
}

extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Shrink<TupleWrapper3<T0, T1, T2>>
        where T0 <: Shrink<T0>,
              T1 <: Shrink<T1>,
              T2 <: Shrink<T2> {
    /**
     * @description Shrinks a 3-element tuple by shrinking each of its components.
     * @returns An `Iterable` of simpler `TupleWrapper3` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<TupleWrapper3<T0, T1, T2>>
}

extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: Shrink<TupleWrapper4<T0, T1, T2, T3>>
        where T0 <: Shrink<T0>,
              T1 <: Shrink<T1>,
              T2 <: Shrink<T2>,
              T3 <: Shrink<T3> {
    /**
     * @description Shrinks a 4-element tuple by shrinking each of its components.
     * @returns An `Iterable` of simpler `TupleWrapper4` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<TupleWrapper4<T0, T1, T2, T3>>
}

extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: Shrink<TupleWrapper5<T0, T1, T2, T3, T4>>
        where T0 <: Shrink<T0>,
              T1 <: Shrink<T1>,
              T2 <: Shrink<T2>,
              T3 <: Shrink<T3>,
              T4 <: Shrink<T4> {
    /**
     * @description Shrinks a 5-element tuple by shrinking each of its components.
     * @returns An `Iterable` of simpler `TupleWrapper5` values.
     */
    @!APILevel[
        since: "22"
    ]
    public func shrink(): Iterable<TupleWrapper5<T0, T1, T2, T3, T4>>
}

/**
 * @description A utility class providing helper methods for shrinking complex data structures.
 */
@!APILevel[
    since: "22"
]
public class ShrinkHelpers {
    /**
     * @description Shrinks a 2-element tuple by combining the shrink results of its components.
     * @param tuple The original tuple.
     * @param t0 An iterable of shrunk values for the first element.
     * @param t1 An iterable of shrunk values for the second element.
     * @returns An `Iterable` of shrunk tuples.
     */
    @!APILevel[
        since: "22"
    ]
    public static func shrinkTuple<T0, T1>(
        tuple: (T0, T1),
        t0: Iterable<T0>,
        t1: Iterable<T1>
    ): Iterable<(T0, T1)>

    /**
     * @description Shrinks a 3-element tuple by combining the shrink results of its components.
     * @param tuple The original tuple.
     * @param t0 An iterable of shrunk values for the first element.
     * @param t1 An iterable of shrunk values for the second element.
     * @param t2 An iterable of shrunk values for the third element.
     * @returns An `Iterable` of shrunk tuples.
     */
    @!APILevel[
        since: "22"
    ]
    public static func shrinkTuple<T0, T1, T2>(
        tuple: (T0, T1, T2),
        t0: Iterable<T0>,
        t1: Iterable<T1>,
        t2: Iterable<T2>
    ): Iterable<(T0, T1, T2)>

    /**
     * @description Shrinks a 4-element tuple by combining the shrink results of its components.
     * @param tuple The original tuple.
     * @param t0 An iterable of shrunk values for the first element.
     * @param t1 An iterable of shrunk values for the second element.
     * @param t2 An iterable of shrunk values for the third element.
     * @param t3 An iterable of shrunk values for the fourth element.
     * @returns An `Iterable` of shrunk tuples.
     */
    @!APILevel[
        since: "22"
    ]
    public static func shrinkTuple<T0, T1, T2, T3>(
        tuple: (T0, T1, T2, T3),
        t0: Iterable<T0>,
        t1: Iterable<T1>,
        t2: Iterable<T2>,
        t3: Iterable<T3>
    ): Iterable<(T0, T1, T2, T3)>

    /**
     * @description Shrinks a 5-element tuple by combining the shrink results of its components.
     * @param tuple The original tuple.
     * @param t0 An iterable of shrunk values for the first element.
     * @param t1 An iterable of shrunk values for the second element.
     * @param t2 An iterable of shrunk values for the third element.
     * @param t3 An iterable of shrunk values for the fourth element.
     * @param t4 An iterable of shrunk values for the fifth element.
     * @returns An `Iterable` of shrunk tuples.
     */
    @!APILevel[
        since: "22"
    ]
    public static func shrinkTuple<T0, T1, T2, T3, T4>(
        tuple: (T0, T1, T2, T3, T4),
        t0: Iterable<T0>,
        t1: Iterable<T1>,
        t2: Iterable<T2>,
        t3: Iterable<T3>,
        t4: Iterable<T4>
    ): Iterable<(T0, T1, T2, T3, T4)>

    /**
     * @description Interleaves multiple iterables into a single iterable.
     * @param iterables An array of iterables to mix.
     * @returns A single `Iterable` containing elements from all input iterables.
     */
    @!APILevel[
        since: "22"
    ]
    public static func mix<T>(iterables: Array<Iterable<T>>): Iterable<T>
}

/**
 * @description A wrapper for a zero-argument function, allowing functions to be treated as data in property tests.
 */
@!APILevel[
    since: "22"
]
public struct Function0Wrapper<R> {
    /**
     * @description Creates a new `Function0Wrapper`.
     * @param function The zero-argument function to wrap.
     */
    @!APILevel[
        since: "22"
    ]
    public Function0Wrapper(public let function: () -> R)

    /**
     * @description Invokes the wrapped function.
     * @returns The result of calling the wrapped function.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func () (): R
}

/**
 * @description A wrapper for a 2-element tuple, used to provide additional functionality for testing.
 */
@!APILevel[
    since: "22"
]
public struct TupleWrapper2<T0, T1> {
    /**
     * @description Creates a new `TupleWrapper2`.
     * @param tuple The 2-element tuple to wrap.
     */
    @!APILevel[
        since: "22"
    ]
    public TupleWrapper2(public let tuple: (T0, T1))

    /**
     * @description Applies a function to the elements of the wrapped tuple.
     * @param f The function to apply.
     * @returns The result of applying the function.
     */
    @!APILevel[
        since: "22"
    ]
    public func apply<R>(f: (T0, T1) -> R): R
}

/**
 * @description A wrapper for a 3-element tuple, used to provide additional functionality for testing.
 */
@!APILevel[
    since: "22"
]
public struct TupleWrapper3<T0, T1, T2> {
    /**
     * @description Creates a new `TupleWrapper3`.
     * @param tuple The 3-element tuple to wrap.
     */
    @!APILevel[
        since: "22"
    ]
    public TupleWrapper3(public let tuple: (T0, T1, T2))

    /**
     * @description Applies a function to the elements of the wrapped tuple.
     * @param f The function to apply.
     * @returns The result of applying the function.
     */
    @!APILevel[
        since: "22"
    ]
    public func apply<R>(f: (T0, T1, T2) -> R): R
}

/**
 * @description A wrapper for a 4-element tuple, used to provide additional functionality for testing.
 */
@!APILevel[
    since: "22"
]
public struct TupleWrapper4<T0, T1, T2, T3> {
    /**
     * @description Creates a new `TupleWrapper4`.
     * @param tuple The 4-element tuple to wrap.
     */
    @!APILevel[
        since: "22"
    ]
    public TupleWrapper4(public let tuple: (T0, T1, T2, T3))

    /**
     * @description Applies a function to the elements of the wrapped tuple.
     * @param f The function to apply.
     * @returns The result of applying the function.
     */
    @!APILevel[
        since: "22"
    ]
    public func apply<R>(f: (T0, T1, T2, T3) -> R): R
}

/**
 * @description A wrapper for a 5-element tuple, used to provide additional functionality for testing.
 */
@!APILevel[
    since: "22"
]
public struct TupleWrapper5<T0, T1, T2, T3, T4> {
    /**
     * @description Creates a new `TupleWrapper5`.
     * @param tuple The 5-element tuple to wrap.
     */
    @!APILevel[
        since: "22"
    ]
    public TupleWrapper5(public let tuple: (T0, T1, T2, T3, T4))

    /**
     * @description Applies a function to the elements of the wrapped tuple.
     * @param f The function to apply.
     * @returns The result of applying the function.
     */
    @!APILevel[
        since: "22"
    ]
    public func apply<R>(f: (T0, T1, T2, T3, T4) -> R): R
}

extend<T0, T1> TupleWrapper2<T0, T1> <: ToString
        where T0 <: ToString, T1 <: ToString {
    /**
     * @description Returns a string representation of the wrapped tuple.
     * @returns A string representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString()
}

extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: ToString
        where T0 <: ToString, T1 <: ToString, T2 <: ToString {
    /**
     * @description Returns a string representation of the wrapped tuple.
     * @returns A string representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString()
}

extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: ToString
        where T0 <: ToString, T1 <: ToString, T2 <: ToString, T3 <: ToString {
    /**
     * @description Returns a string representation of the wrapped tuple.
     * @returns A string representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString()
}

extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: ToString
        where T0 <: ToString, T1 <: ToString, T2 <: ToString, T3 <: ToString, T4 <: ToString {
    /**
     * @description Returns a string representation of the wrapped tuple.
     * @returns A string representation.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString()
}

extend<T0, T1> TupleWrapper2<T0, T1> <: Equatable<TupleWrapper2<T0, T1>> where T0 <: Equatable<T0>, T1 <: Equatable<T1> {
    /**
     * @description Checks if this tuple wrapper is equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TupleWrapper2<T0, T1>)

    /**
     * @description Checks if this tuple wrapper is not equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TupleWrapper2<T0, T1>)
}

extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Equatable<TupleWrapper3<T0, T1, T2>>
        where T0 <: Equatable<T0>, T1 <: Equatable<T1>, T2 <: Equatable<T2> {
    /**
     * @description Checks if this tuple wrapper is equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TupleWrapper3<T0, T1, T2>)

    /**
     * @description Checks if this tuple wrapper is not equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TupleWrapper3<T0, T1, T2>)
}

extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: Equatable<TupleWrapper4<T0, T1, T2, T3>>
        where T0 <: Equatable<T0>, T1 <: Equatable<T1>, T2 <: Equatable<T2>, T3 <: Equatable<T3> {
    /**
     * @description Checks if this tuple wrapper is equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TupleWrapper4<T0, T1, T2, T3>)

    /**
     * @description Checks if this tuple wrapper is not equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TupleWrapper4<T0, T1, T2, T3>)
}

extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: Equatable<TupleWrapper5<T0, T1, T2, T3, T4>>
        where T0 <: Equatable<T0>, T1 <: Equatable<T1>, T2 <: Equatable<T2>, T3 <: Equatable<T3>, T4 <: Equatable<T4> {
    /**
     * @description Checks if this tuple wrapper is equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TupleWrapper5<T0, T1, T2, T3, T4>)

    /**
     * @description Checks if this tuple wrapper is not equal to another.
     * @param other The other tuple wrapper to compare with.
     * @returns `true` if the wrapped tuples are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TupleWrapper5<T0, T1, T2, T3, T4>)
}

/**
 * @description An interface for accessing elements of a collection by index, returning them as `?Any`.
 */
@!APILevel[
    since: "22"
]
public interface IndexAccess {
    /**
     * @description Gets the element at the specified index.
     * @param index The index of the element to retrieve.
     * @returns The element as `?Any`, or `null` if the index is out of bounds.
     */
    @!APILevel[
        since: "22"
    ]
    func getElementAsAny(index: Int64): ?Any
}

extend<T0, T1> TupleWrapper2<T0, T1> <: IndexAccess {
    /**
     * @description Gets the element at the specified index from the wrapped tuple.
     * @param index The index (0 or 1).
     * @returns The element as `?Any`, or `null` if the index is out of bounds.
     */
    @!APILevel[
        since: "22"
    ]
    public func getElementAsAny(index: Int64): ?Any
}

extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: IndexAccess {
    /**
     * @description Gets the element at the specified index from the wrapped tuple.
     * @param index The index (0, 1, or 2).
     * @returns The element as `?Any`, or `null` if the index is out of bounds.
     */
    @!APILevel[
        since: "22"
    ]
    public func getElementAsAny(index: Int64): ?Any
}

extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: IndexAccess {
    /**
     * @description Gets the element at the specified index from the wrapped tuple.
     * @param index The index (0, 1, 2, or 3).
     * @returns The element as `?Any`, or `null` if the index is out of bounds.
     */
    @!APILevel[
        since: "22"
    ]
    public func getElementAsAny(index: Int64): ?Any
}

extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: IndexAccess {
    /**
     * @description Gets the element at the specified index from the wrapped tuple.
     * @param index The index (0, 1, 2, 3, or 4).
     * @returns The element as `?Any`, or `null` if the index is out of bounds.
     */
    @!APILevel[
        since: "22"
    ]
    public func getElementAsAny(index: Int64): ?Any
}

