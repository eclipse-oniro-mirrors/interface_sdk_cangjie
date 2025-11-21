package std.core


/**
 * @description Represents the kind of annotation in the Cangjie language.
 */
@!APILevel[
    since: "22"
]
public enum AnnotationKind {
    /**
     * @description Annotation applied to a type.
     */
    @!APILevel[
        since: "22"
    ]
    Type |
    /**
     * @description Annotation applied to a parameter.
     */
    @!APILevel[
        since: "22"
    ]
    Parameter |
    /**
     * @description Annotation applied to an initializer.
     */
    @!APILevel[
        since: "22"
    ]
    Init |
    /**
     * @description Annotation applied to a member property.
     */
    @!APILevel[
        since: "22"
    ]
    MemberProperty |
    /**
     * @description Annotation applied to a member function.
     */
    @!APILevel[
        since: "22"
    ]
    MemberFunction |
    /**
     * @description Annotation applied to a member variable.
     */
    @!APILevel[
        since: "22"
    ]
    MemberVariable |
    /**
     * @description Annotation applied to an enum constructor.
     */
    @!APILevel[
        since: "22"
    ]
    EnumConstructor |
    /**
     * @description Annotation applied to a global function.
     */
    @!APILevel[
        since: "22"
    ]
    GlobalFunction |
    /**
     * @description Annotation applied to a global variable.
     */
    @!APILevel[
        since: "22"
    ]
    GlobalVariable |
    /**
     * @description Annotation applied to an extension.
     */
    @!APILevel[
        since: "22"
    ]
    Extension |
    ...
}

/**
 * @description Exception thrown when an arithmetic operation overflows or underflows.
 */
@!APILevel[
    since: "22"
]
public open class ArithmeticException <: Exception {
    /**
     * @description Constructs a new ArithmeticException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new ArithmeticException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * A generic array structure used to store elements.
 *
 * @param <T> The type of elements stored in the array.
 */
@ConstSafe
@!APILevel[
    since: "22"
]
public struct Array<T> {
    /**
     * @description Constructs an empty Array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public const init()

    /**
     * @description Constructs an Array with the specified size, with all elements initialized to the given value.
     * @param size The size of the array.
     * @param repeat The value to initialize all elements with.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(size: Int64, repeat!: T)

    /**
     * @description Constructs an Array with the specified size, with elements initialized using the provided function.
     * @param size The size of the array.
     * @param initElement A function that takes an index and returns the value to initialize the element at that index.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(size: Int64, initElement: (Int64) -> T)

    /**
     * @description Gets the first element of the array as an Option.
     * @returns Some(value) if the array is not empty, None otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop first: Option<T>

    /**
     * @description Gets the last element of the array as an Option.
     * @returns Some(value) if the array is not empty, None otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop last: Option<T>

    /**
     * @description Returns a slice of this array.
     * @param start The starting index of the slice.
     * @param len The length of the slice.
     * @returns A new Array containing the specified slice.
     * @throws IndexOutOfBoundsException if start is negative, or len is negative, or start + len is greater than the size of array.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func slice(start: Int64, len: Int64): Array<T>

    /**
     * @description Gets the element at the specified index as an Option.
     * @param index The index of the element to get.
     * @returns Some(value) if the index is valid, None otherwise.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func get(index: Int64): Option<T>

    /**
     * @description Gets the element at the specified index.
     * @param index The index of the element to get.
     * @returns The element at the specified index.
     * @throws IndexOutOfBoundsException if index is negative or greater than or equal to the size of array.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): T

    /**
     * @description Sets the element at the specified index.
     * @param index The index of the element to set.
     * @param value The value to set.
     * @throws IndexOutOfBoundsException if index is negative or greater than or equal to the size of array.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: T): Unit

    /**
     * @description Gets a slice of this array based on the specified range.
     * @param range The range to slice.
     * @returns A new Array containing the specified slice.
     * @throws IllegalArgumentException if the step of range is not equal to 1.
     * @throws IndexOutOfBoundsException if the range is invalid for this array.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](range: Range<Int64>): Array<T>

    /**
     * @description Fills the entire array with the specified value.
     * @param value The value to fill the array with.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fill(value: T): Unit

    /**
     * @description Sets the elements in the specified range to the values from another array.
     * @param range The range to set values for.
     * @param value The array containing the values to set.
     * @throws IllegalArgumentException if the step of range is not equal to 1, or the size of value is not equal to the length of range.
     * @throws IndexOutOfBoundsException if range is invalid for this array.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](range: Range<Int64>, value!: Array<T>): Unit

    /**
     * @description Reverses the elements of the array in place.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func reverse(): Unit

    /**
     * @description Creates a copy of the array.
     * @returns A new Array that is a copy of this array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func clone(): Array<T>

    /**
     * @description Creates a copy of a specified range of the array.
     * @param range The range of elements to clone.
     * @returns A new array containing the elements in the specified range.
     * @throws IndexOutOfBoundsException if the range is invalid for this array.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clone(range: Range<Int64>): Array<T>

    /**
     * @description Copies elements from this array to another array.
     * @param dst The destination array.
     * @param srcStart The starting index in this array.
     * @param dstStart The starting index in the destination array.
     * @param copyLen The number of elements to copy.
     * @throws IllegalArgumentException if copyLen is negative.
     * @throws IndexOutOfBoundsException if srcStart or dstStart is negative, or srcStart + copyLen is greater than the size of this array, or dstStart + copyLen is greater than the size of dst.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func copyTo(dst: Array<T>, srcStart: Int64, dstStart: Int64, copyLen: Int64): Unit

    /**
     * @description Copies all elements from this array to another array.
     * @param dst The destination array.
     * @throws IllegalArgumentException if the size of dst is not equal to the size of this array.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func copyTo(dst: Array<T>): Unit

    /**
     * @description Concatenates this array with another array.
     * @param other The array to concatenate with.
     * @returns A new Array containing the elements of this array followed by the elements of other.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func concat(other: Array<T>): Array<T>

    /**
     * @description Swaps the elements at the specified indices.
     * @param index1 The first index.
     * @param index2 The second index.
     * @throws IllegalArgumentException if index1 or index2 is negative, or index1 or index2 is greater than or equal to the size of array.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func swap(index1: Int64, index2: Int64): Unit

    /**
     * @description Splits the array into two arrays at the specified index.
     * @param mid The index to split at.
     * @returns A tuple containing the first half and the second half of the array.
     * @throws IllegalArgumentException if mid is negative, or mid is greater than the size of array.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func splitAt(mid: Int64): (Array<T>, Array<T>)

    /**
     * @description Repeats the elements of the array n times.
     * @param n The number of times to repeat the elements.
     * @returns A new Array containing the elements of this array repeated n times.
     * @throws IllegalArgumentException if n is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func repeat(n: Int64): Array<T>

    /**
     * @description Applies a transformation function to each element of the array.
     * @param transform The transformation function.
     * @returns A new Array containing the transformed elements.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func map<R>(transform: (T) -> R): Array<R>
}

extend<T> Array<Array<T>> {
    /**
     * @description Flattens a 2D array into a 1D array.
     * @returns A new Array containing all the elements of the 2D array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func flatten(): Array<T>
}

extend<T> Array<T> <: Collection<T> {
    /**
     * @description Returns an iterator over the elements of the array.
     * @returns An iterator over the elements of the array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description Gets the size of the array.
     * @returns The number of elements in the array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Checks if the array is empty.
     * @returns true if the array is empty, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Converts the array to a new array.
     * @returns A new Array containing the same elements as this array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>
}

extend<T> Array<T> <: ToString where T <: ToString {
    /**
     * @description Converts the array to a string.
     * @returns A string representation of the array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

@ConstSafe
extend<T> Array<T> <: Equatable<Array<T>> where T <: Equatable<T> {
    /**
     * @description Checks if this array is equal to another array.
     * @param other The array to compare with.
     * @returns true if the arrays are equal, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func ==(other: Array<T>): Bool

    /**
     * @description Checks if this array is not equal to another array.
     * @param other The array to compare with.
     * @returns true if the arrays are not equal, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func !=(other: Array<T>): Bool

    /**
     * @description Checks if the array contains a specific element.
     * @param element The element to check for.
     * @returns true if the element is found, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(element: T): Bool

    /**
     * @description Finds the index of the first occurrence of a specific element.
     * @param element The element to find.
     * @returns The index of the first occurrence of the element, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(element: T): Option<Int64>

    /**
     * @description Finds the index of the first occurrence of a specific element starting from a given index.
     * @param element The element to find.
     * @param fromIndex The index to start searching from.
     * @returns The index of the first occurrence of the element, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(element: T, fromIndex: Int64): Option<Int64>

    /**
     * @description Finds the index of the first occurrence of a specific subarray.
     * @param elements The subarray to find.
     * @returns The index of the first occurrence of the subarray, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(elements: Array<T>): Option<Int64>

    /**
     * @description Finds the index of the first occurrence of a specific subarray starting from a given index.
     * @param elements The subarray to find.
     * @param fromIndex The index to start searching from.
     * @returns The index of the first occurrence of the subarray, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(elements: Array<T>, fromIndex: Int64): Option<Int64>

    /**
     * @description Finds the index of the last occurrence of a specific element.
     * @param element The element to find.
     * @returns The index of the last occurrence of the element, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(element: T): Option<Int64>

    /**
     * @description Finds the index of the last occurrence of a specific element starting from a given index.
     * @param element The element to find.
     * @param fromIndex The index to start searching from.
     * @returns The index of the last occurrence of the element, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(element: T, fromIndex: Int64): Option<Int64>

    /**
     * @description Finds the index of the last occurrence of a specific subarray.
     * @param elements The subarray to find.
     * @returns The index of the last occurrence of the subarray, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(elements: Array<T>): Option<Int64>

    /**
     * @description Finds the index of the last occurrence of a specific subarray starting from a given index.
     * @param elements The subarray to find.
     * @param fromIndex The index to start searching from.
     * @returns The index of the last occurrence of the subarray, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(elements: Array<T>, fromIndex: Int64): Option<Int64>

    /**
     * @description Removes leading elements that are in the specified set.
     * @param set The set of elements to remove.
     * @returns A new Array with the leading elements removed.
     * @throws IllegalArgumentException if set is empty.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func trimStart(set: Array<T>): Array<T>

    /**
     * @description Removes trailing elements that are in the specified set.
     * @param set The set of elements to remove.
     * @returns A new Array with the trailing elements removed.
     * @throws IllegalArgumentException if set is empty.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func trimEnd(set: Array<T>): Array<T>

    /**
     * @description Removes leading elements that satisfy the specified predicate.
     * @param predicate The predicate to apply.
     * @returns A new Array with the leading elements removed.
     * @throws IllegalArgumentException if predicate is null.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func trimStart(predicate: (T) -> Bool): Array<T>

    /**
     * @description Removes trailing elements that satisfy the specified predicate.
     * @param predicate The predicate to apply.
     * @returns A new Array with the trailing elements removed.
     * @throws IllegalArgumentException if predicate is null.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func trimEnd(predicate: (T) -> Bool): Array<T>

    /**
     * @description Removes the specified prefix from the array.
     * @param prefix The prefix to remove.
     * @returns A new Array with the prefix removed.
     * @throws IllegalArgumentException if prefix is empty.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removePrefix(prefix: Array<T>): Array<T>

    /**
     * @description Removes the specified suffix from the array.
     * @param suffix The suffix to remove.
     * @returns A new Array with the suffix removed.
     * @throws IllegalArgumentException if suffix is empty.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeSuffix(suffix: Array<T>): Array<T>
}

/**
 * @description An iterator over the elements of an Array.
 */
@!APILevel[
    since: "22"
]
public class ArrayIterator<T> <: Iterator<T> {
    /**
     * @description Constructs an ArrayIterator with the specified array data.
     * @param data The array to iterate over.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(data: Array<T>)

    /**
     * @description Gets the next element of the iterator.
     * @returns The next element, or None if there are no more elements.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func next(): Option<T>
}

/**
 * @description A handle for C pointer and array data.
 */
@!APILevel[
    since: "22"
]
public struct CPointerHandle<T> where T <: CType {
    /**
     * @description The C pointer.
     */
    @!APILevel[
        since: "22"
    ]
    public let pointer: CPointer<T>

    /**
     * @description The array data.
     */
    @!APILevel[
        since: "22"
    ]
    public let array: Array<T>

    /**
     * @description Constructs an empty CPointerHandle.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a CPointerHandle with the specified C pointer and array data.
     * @param ptr The C pointer.
     * @param arr The array data.
     */
    @!APILevel[
        since: "22"
    ]
    public init(ptr: CPointer<T>, arr: Array<T>)
}

/**
 * @description Acquires raw data from an array as a C pointer handle.
 * @param arr The array to acquire raw data from.
 * @returns A CPointerHandle containing the raw data.
 */
@Frozen
@!APILevel[
    since: "22"
]
public unsafe func acquireArrayRawData<T>(arr: Array<T>): CPointerHandle<T> where T <: CType

/**
 * @description Releases a C pointer handle.
 * @param handle The handle to release.
 */
@Frozen
@!APILevel[
    since: "22"
]
public unsafe func releaseArrayRawData<T>(handle: CPointerHandle<T>): Unit where T <: CType

/**
 * @description A container for a value that provides reference semantics.
 */
@!APILevel[
    since: "22"
]
public class Box<T> {
    /**
     * @description The boxed value.
     */
    @!APILevel[
        since: "22"
    ]
    public var value: T

    /**
     * @description Constructs a Box with the specified value.
     * @param v The value to box.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: T)
}

extend<T> Box<T> <: Hashable where T <: Hashable {
    /**
     * @description Returns a hash code value for the boxed object.
     * @returns A hash code value for this object.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

extend<T> Box<T> <: Comparable<Box<T>> where T <: Comparable<T> {
    /**
     * @description Indicates whether some other boxed object is "equal to" this one.
     * @param other The reference object with which to compare.
     * @returns True if this object is the same as the that argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Box<T>): Bool

    /**
     * @description Indicates whether some other boxed object is "not equal to" this one.
     * @param other The reference object with which to compare.
     * @returns True if this object is not the same as the that argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Box<T>): Bool

    /**
     * @description Indicates whether this boxed object is "greater than" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is greater than the that argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Box<T>): Bool

    /**
     * @description Indicates whether this boxed object is "less than" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is less than the that argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Box<T>): Bool

    /**
     * @description Indicates whether this boxed object is "greater than or equal to" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is greater than or equal to the that argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Box<T>): Bool

    /**
     * @description Indicates whether this boxed object is "less than or equal to" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is less than or equal to the that argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Box<T>): Bool

    /**
     * @description Compares this boxed object with the specified boxed object for order.
     * @param other The boxed object to be compared.
     * @returns An Ordering value indicating the relative order of the two objects.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Box<T>): Ordering
}

extend<T> Box<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of the boxed value.
     * @returns A string representation of the boxed value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Byte {
    /**
     * @description Checks if this byte is an ASCII letter.
     * @returns true if this byte is an ASCII letter, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiLetter(): Bool

    /**
     * @description Checks if this byte is an ASCII number.
     * @returns true if this byte is an ASCII number, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiNumber(): Bool

    /**
     * @description Checks if this byte is an ASCII hexadecimal digit.
     * @returns true if this byte is an ASCII hexadecimal digit, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiHex(): Bool

    /**
     * @description Checks if this byte is an ASCII octal digit.
     * @returns true if this byte is an ASCII octal digit, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiOct(): Bool

    /**
     * @description Checks if this byte is an ASCII punctuation character.
     * @returns true if this byte is an ASCII punctuation character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiPunctuation(): Bool

    /**
     * @description Checks if this byte is an ASCII graphic character.
     * @returns true if this byte is an ASCII graphic character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiGraphic(): Bool

    /**
     * @description Checks if this byte is an ASCII control character.
     * @returns true if this byte is an ASCII control character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiControl(): Bool

    /**
     * @description Checks if this byte is an ASCII letter or number.
     * @returns true if this byte is an ASCII letter or number, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiNumberOrLetter(): Bool

    /**
     * @description Checks if this byte is an ASCII lowercase letter.
     * @returns true if this byte is an ASCII lowercase letter, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiLowerCase(): Bool

    /**
     * @description Checks if this byte is an ASCII uppercase letter.
     * @returns true if this byte is an ASCII uppercase letter, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiUpperCase(): Bool

    /**
     * @description Checks if this byte is an ASCII character.
     * @returns true if this byte is an ASCII character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAscii(): Bool

    /**
     * @description Checks if this byte is an ASCII whitespace character.
     * @returns true if this byte is an ASCII whitespace character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiWhiteSpace(): Bool

    /**
     * @description Converts this ASCII byte to uppercase.
     * @returns The uppercase version of this ASCII byte.
     */
    @!APILevel[
        since: "22"
    ]
    public func toAsciiUpperCase(): Byte

    /**
     * @description Converts this ASCII byte to lowercase.
     * @returns The lowercase version of this ASCII byte.
     */
    @!APILevel[
        since: "22"
    ]
    public func toAsciiLowerCase(): Byte
}

extend<T> CPointer<T> {
    /**
     * @description Checks if this pointer is null.
     * @returns true if this pointer is null, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNull(): Bool

    /**
     * @description Checks if this pointer is not null.
     * @returns true if this pointer is not null, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNotNull(): Bool

    /**
     * @description Converts this pointer to a UIntNative value.
     * @returns The UIntNative representation of this pointer.
     */
    @!APILevel[
        since: "22"
    ]
    public func toUIntNative(): UIntNative

    /**
     * @description Reads the value pointed to by this pointer.
     * @returns The value pointed to by this pointer.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public unsafe func read(): T

    /**
     * @description Writes a value to the location pointed to by this pointer.
     * @param value The value to write.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public unsafe func write(value: T): Unit

    /**
     * @description Reads the value at the specified index from this pointer.
     * @param idx The index to read from.
     * @returns The value at the specified index.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public unsafe func read(idx: Int64): T

    /**
     * @description Writes a value at the specified index from this pointer.
     * @param idx The index to write to.
     * @param value The value to write.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public unsafe func write(idx: Int64, value: T): Unit

    /**
     * @description Adds an offset to this pointer.
     * @param offset The offset to add.
     * @returns A new pointer with the offset added.
     */
    @!APILevel[
        since: "22"
    ]
    public unsafe operator func +(offset: Int64): CPointer<T>

    /**
     * @description Subtracts an offset from this pointer.
     * @param offset The offset to subtract.
     * @returns A new pointer with the offset subtracted.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public unsafe operator func -(offset: Int64): CPointer<T>

    /**
     * @description Converts this pointer to a resource.
     * @returns A CPointerResource wrapping this pointer.
     */
    @!APILevel[
        since: "22"
    ]
    public func asResource(): CPointerResource<T>
}

/**
 * @description A resource wrapper for a C pointer.
 */
@!APILevel[
    since: "22"
]
public struct CPointerResource<T> <: Resource where T <: CType {
    /**
     * @description The wrapped pointer value.
     */
    @!APILevel[
        since: "22"
    ]
    public let value: CPointer<T>

    /**
     * @description Checks if this resource is closed.
     * @returns true if this resource is closed, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool

    /**
     * @description Closes this resource.
     */
    @!APILevel[
        since: "22"
    ]
    public func close(): Unit
}

/**
 * @description A marker interface for C types. This interface has no members.
 */
@!APILevel[
    since: "22"
]
sealed interface CType {
}

extend CString <: ToString {
    /**
     * @description Gets the characters of this C string as a C pointer.
     * @returns A C pointer to the characters of this C string.
     */
    @!APILevel[
        since: "22"
    ]
    public func getChars(): CPointer<UInt8>

    /**
     * @description Checks if this C string is null.
     * @returns true if this C string is null, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNull(): Bool

    /**
     * @description Gets the size of this C string.
     * @returns The size of this C string.
     */
    @!APILevel[
        since: "22"
    ]
    public func size(): Int64

    /**
     * @description Checks if this C string is empty.
     * @returns true if this C string is empty, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Checks if this C string is not empty.
     * @returns true if this C string is not empty, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNotEmpty(): Bool

    /**
     * @description Checks if this C string starts with the specified prefix.
     * @param prefix The prefix to check for.
     * @returns true if this C string starts with the prefix, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func startsWith(prefix: CString): Bool

    /**
     * @description Checks if this C string ends with the specified suffix.
     * @param suffix The suffix to check for.
     * @returns true if this C string ends with the suffix, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func endsWith(suffix: CString): Bool

    /**
     * @description Checks if this C string equals the specified C string.
     * @param other The C string to compare with.
     * @returns true if this C string equals the rhs argument, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func equals(other: CString): Bool

    /**
     * @description Checks if this C string equals the specified C string ignoring case.
     * @param other The C string to compare with.
     * @returns true if this C string equals the rhs argument ignoring case, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func equalsLower(other: CString): Bool

    /**
     * @description Creates a substring from this C string starting at the specified index.
     * @param beginIndex The starting index.
     * @returns A new C string containing the substring.
     * @throws IllegalArgumentException if beginIndex is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func subCString(beginIndex: UIntNative): CString

    /**
     * @description Creates a substring from this C string with the specified starting index and length.
     * @param beginIndex The starting index.
     * @param subLen The length of the substring.
     * @returns A new C string containing the substring.
     * @throws IllegalArgumentException if beginIndex or subLen is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func subCString(beginIndex: UIntNative, subLen: UIntNative): CString

    /**
     * @description Compares this C string with the specified C string.
     * @param str The C string to compare with.
     * @returns An Int32 indicating the result of the comparison.
     * @throws Exception if self is null or str is null
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func compare(str: CString): Int32

    /**
     * @description Converts this C string to a String.
     * @returns A String representation of this C string.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Converts this C string to a resource.
     * @returns A CStringResource wrapping this C string.
     */
    @!APILevel[
        since: "22"
    ]
    public func asResource(): CStringResource
}

/**
 * @description A resource wrapper for a C string.
 */
@!APILevel[
    since: "22"
]
public struct CStringResource <: Resource {
    /**
     * @description The wrapped C string value.
     */
    @!APILevel[
        since: "22"
    ]
    public let value: CString

    /**
     * @description Checks if this resource is closed.
     * @returns true if this resource is closed, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool

    /**
     * @description Closes this resource.
     */
    @!APILevel[
        since: "22"
    ]
    public func close(): Unit
}

extend Rune {
    /**
     * @description Checks if this rune is an ASCII letter.
     * @returns true if this rune is an ASCII letter, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiLetter(): Bool

    /**
     * @description Checks if this rune is an ASCII number.
     * @returns true if this rune is an ASCII number, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiNumber(): Bool

    /**
     * @description Checks if this rune is an ASCII hexadecimal digit.
     * @returns true if this rune is an ASCII hexadecimal digit, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiHex(): Bool

    /**
     * @description Checks if this rune is an ASCII octal digit.
     * @returns true if this rune is an ASCII octal digit, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiOct(): Bool

    /**
     * @description Checks if this rune is an ASCII punctuation character.
     * @returns true if this rune is an ASCII punctuation character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiPunctuation(): Bool

    /**
     * @description Checks if this rune is an ASCII graphic character.
     * @returns true if this rune is an ASCII graphic character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiGraphic(): Bool

    /**
     * @description Checks if this rune is an ASCII control character.
     * @returns true if this rune is an ASCII control character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiControl(): Bool

    /**
     * @description Checks if this rune is an ASCII letter or number.
     * @returns true if this rune is an ASCII letter or number, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiNumberOrLetter(): Bool

    /**
     * @description Checks if this rune is an ASCII lowercase letter.
     * @returns true if this rune is an ASCII lowercase letter, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiLowerCase(): Bool

    /**
     * @description Checks if this rune is an ASCII uppercase letter.
     * @returns true if this rune is an ASCII uppercase letter, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiUpperCase(): Bool

    /**
     * @description Checks if this rune is an ASCII character.
     * @returns true if this rune is an ASCII character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAscii(): Bool

    /**
     * @description Checks if this rune is an ASCII whitespace character.
     * @returns true if this rune is an ASCII whitespace character, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAsciiWhiteSpace(): Bool

    /**
     * @description Converts this ASCII rune to uppercase.
     * @returns The uppercase version of this ASCII rune.
     */
    @!APILevel[
        since: "22"
    ]
    public func toAsciiUpperCase(): Rune

    /**
     * @description Converts this ASCII rune to lowercase.
     * @returns The lowercase version of this ASCII rune.
     */
    @!APILevel[
        since: "22"
    ]
    public func toAsciiLowerCase(): Rune

    /**
     * @description Gets the UTF-8 size of a rune in an array at the specified index.
     * @param arr The array containing UTF-8 data.
     * @param index The index in the array.
     * @returns The UTF-8 size of the rune.
     * @throws IllegalArgumentException if the UTF-8 data is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func utf8Size(arr: Array<UInt8>, index: Int64): Int64

    /**
     * @description Gets the UTF-8 size of the specified rune.
     * @param c The rune.
     * @returns The UTF-8 size of the rune.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func utf8Size(c: Rune): Int64

    /**
     * @description Creates a rune from UTF-8 data in an array at the specified index.
     * @param arr The array containing UTF-8 data.
     * @param index The index in the array.
     * @returns A tuple containing the rune and the number of bytes consumed.
     * @throws IllegalArgumentException if the UTF-8 data is invalid.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromUtf8(arr: Array<UInt8>, index: Int64): (Rune, Int64)

    /**
     * @description Gets the previous rune from UTF-8 data in an array at the specified index.
     * @param arr The array containing UTF-8 data.
     * @param index The index in the array.
     * @returns A tuple containing the rune and the number of bytes consumed.
     * @throws IllegalArgumentException if the UTF-8 data is invalid.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func getPreviousFromUtf8(arr: Array<UInt8>, index: Int64): (Rune, Int64)

    /**
     * @description Converts a rune to UTF-8 data in an array at the specified index.
     * @param c The rune to convert.
     * @param arr The array to store the UTF-8 data.
     * @param index The index in the array.
     * @returns The number of bytes written.
     * @throws IllegalArgumentException if index is invalid.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func intoUtf8Array(c: Rune, arr: Array<UInt8>, index: Int64): Int64
}

extend Rune <: Comparable<Rune> {
    /**
     * @description Compares this rune with the specified rune for order.
     * @param other The rune to be compared.
     * @returns An Ordering value indicating the relative order of the two runes.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Rune): Ordering
}

/**
 * @description A collection of elements.
 */
@!APILevel[
    since: "22"
]
public interface Collection<T> <: Iterable<T> {
    /**
     * @description The size of the collection.
     */
    @!APILevel[
        since: "22"
    ]
    prop size: Int64

    /**
     * @description Checks if the collection is empty.
     * @returns true if the collection is empty, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func isEmpty(): Bool

    /**
     * @description Converts the collection to an array.
     * @returns An array containing the elements of the collection.
     */
    @!APILevel[
        since: "22"
    ]
    func toArray(): Array<T>
}

/**
 * @description The ordering of two values.
 */
@!APILevel[
    since: "22"
]
public enum Ordering {
    /**
     * @description Less than.
     */
    @!APILevel[
        since: "22"
    ]
    LT |
    /**
     * @description Greater than.
     */
    @!APILevel[
        since: "22"
    ]
    GT |
    /**
     * @description Equal.
     */
    @!APILevel[
        since: "22"
    ]
    EQ
}

/**
 * @description Interface for types that can be compared with the less-than operator.
 */
@!APILevel[
    since: "22"
]
public interface Less<T> {
    /**
     * @description Indicates whether this object is "less than" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is less than the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func <(other: T): Bool
}

/**
 * @description Interface for types that can be compared with the greater-than operator.
 */
@!APILevel[
    since: "22"
]
public interface Greater<T> {
    /**
     * @description Indicates whether this object is "greater than" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is greater than the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func >(other: T): Bool
}

/**
 * @description Interface for types that can be compared with the less-than-or-equal operator.
 */
@!APILevel[
    since: "22"
]
public interface LessOrEqual<T> {
    /**
     * @description Indicates whether this object is "less than or equal to" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is less than or equal to the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func <=(other: T): Bool
}

/**
 * @description Interface for types that can be compared with the greater-than-or-equal operator.
 */
@!APILevel[
    since: "22"
]
public interface GreaterOrEqual<T> {
    /**
     * @description Indicates whether this object is "greater than or equal to" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is greater than or equal to the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func >=(other: T): Bool
}

/**
 * @description Interface for types that can be compared with ordering operations.
 */
@!APILevel[
    since: "22"
]
public interface Comparable<T> <: Equatable<T> & Less<T> & Greater<T> & LessOrEqual<T> & GreaterOrEqual<T> {
    /**
     * @description Compares this object with the specified object for order.
     * @param other The object to be compared.
     * @returns An Ordering value indicating the relative order of the two objects.
     */
    @!APILevel[
        since: "22"
    ]
    func compare(other: T): Ordering

    /**
     * @description Indicates whether some other object is "equal to" this one.
     * @param other The reference object with which to compare.
     * @returns True if this object is the same as the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func ==(other: T): Bool

    /**
     * @description Indicates whether this object is "less than" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is less than the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func <(other: T): Bool

    /**
     * @description Indicates whether this object is "greater than" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is greater than the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func >(other: T): Bool

    /**
     * @description Indicates whether this object is "less than or equal to" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is less than or equal to the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func <=(other: T): Bool

    /**
     * @description Indicates whether this object is "greater than or equal to" the specified object.
     * @param other The reference object with which to compare.
     * @returns True if this object is greater than or equal to the rhs argument; false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func >=(other: T): Bool
}

extend Ordering <: ToString {
    /**
     * @description Returns a string representation of this Ordering.
     * @returns A string representation of this Ordering.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Ordering <: Comparable<Ordering> {
    /**
     * @description Compares this Ordering with the specified Ordering for order.
     * @param other The Ordering to be compared.
     * @returns An Ordering value indicating the relative order of the two Ordering values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Ordering): Ordering
}

extend IntNative <: Comparable<IntNative> {
    /**
     * @description Compares this IntNative with the specified IntNative for order.
     * @param other The IntNative to be compared.
     * @returns An Ordering value indicating the relative order of the two IntNative values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: IntNative): Ordering
}

extend Int64 <: Comparable<Int64> {
    /**
     * @description Compares this Int64 with the specified Int64 for order.
     * @param other The Int64 to be compared.
     * @returns An Ordering value indicating the relative order of the two Int64 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Int64): Ordering

    /**
     * @description Indicates whether this Int64 is "less than" the specified Int64.
     * @param other The reference Int64 with which to compare.
     * @returns True if this Int64 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Int64): Bool

    /**
     * @description Indicates whether this Int64 is "greater than" the specified Int64.
     * @param other The reference Int64 with which to compare.
     * @returns True if this Int64 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Int64): Bool

    /**
     * @description Indicates whether this Int64 is "less than or equal to" the specified Int64.
     * @param other The reference Int64 with which to compare.
     * @returns True if this Int64 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Int64): Bool

    /**
     * @description Indicates whether this Int64 is "greater than or equal to" the specified Int64.
     * @param other The reference Int64 with which to compare.
     * @returns True if this Int64 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Int64): Bool

    /**
     * @description Indicates whether some other Int64 is "equal to" this one.
     * @param other The reference Int64 with which to compare.
     * @returns True if this Int64 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Int64): Bool

    /**
     * @description Indicates whether some other Int64 is "not equal to" this one.
     * @param other The reference Int64 with which to compare.
     * @returns True if this Int64 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Int64): Bool
}

extend Int32 <: Comparable<Int32> {
    /**
     * @description Compares this Int32 with the specified Int32 for order.
     * @param other The Int32 to be compared.
     * @returns An Ordering value indicating the relative order of the two Int32 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Int32): Ordering

    /**
     * @description Indicates whether this Int32 is "less than" the specified Int32.
     * @param other The reference Int32 with which to compare.
     * @returns True if this Int32 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Int32): Bool

    /**
     * @description Indicates whether this Int32 is "greater than" the specified Int32.
     * @param other The reference Int32 with which to compare.
     * @returns True if this Int32 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Int32): Bool

    /**
     * @description Indicates whether this Int32 is "less than or equal to" the specified Int32.
     * @param other The reference Int32 with which to compare.
     * @returns True if this Int32 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Int32): Bool

    /**
     * @description Indicates whether this Int32 is "greater than or equal to" the specified Int32.
     * @param other The reference Int32 with which to compare.
     * @returns True if this Int32 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Int32): Bool

    /**
     * @description Indicates whether some other Int32 is "equal to" this one.
     * @param other The reference Int32 with which to compare.
     * @returns True if this Int32 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Int32): Bool

    /**
     * @description Indicates whether some other Int32 is "not equal to" this one.
     * @param other The reference Int32 with which to compare.
     * @returns True if this Int32 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Int32): Bool
}

extend Int16 <: Comparable<Int16> {
    /**
     * @description Compares this Int16 with the specified Int16 for order.
     * @param other The Int16 to be compared.
     * @returns An Ordering value indicating the relative order of the two Int16 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Int16): Ordering

    /**
     * @description Indicates whether this Int16 is "less than" the specified Int16.
     * @param other The reference Int16 with which to compare.
     * @returns True if this Int16 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Int16): Bool

    /**
     * @description Indicates whether this Int16 is "greater than" the specified Int16.
     * @param other The reference Int16 with which to compare.
     * @returns True if this Int16 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Int16): Bool

    /**
     * @description Indicates whether this Int16 is "less than or equal to" the specified Int16.
     * @param other The reference Int16 with which to compare.
     * @returns True if this Int16 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Int16): Bool

    /**
     * @description Indicates whether this Int16 is "greater than or equal to" the specified Int16.
     * @param other The reference Int16 with which to compare.
     * @returns True if this Int16 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Int16): Bool

    /**
     * @description Indicates whether some other Int16 is "equal to" this one.
     * @param other The reference Int16 with which to compare.
     * @returns True if this Int16 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Int16): Bool

    /**
     * @description Indicates whether some other Int16 is "not equal to" this one.
     * @param other The reference Int16 with which to compare.
     * @returns True if this Int16 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Int16): Bool
}

extend Int8 <: Comparable<Int8> {
    /**
     * @description Compares this Int8 with the specified Int8 for order.
     * @param other The Int8 to be compared.
     * @returns An Ordering value indicating the relative order of the two Int8 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Int8): Ordering

    /**
     * @description Indicates whether this Int8 is "less than" the specified Int8.
     * @param other The reference Int8 with which to compare.
     * @returns True if this Int8 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Int8): Bool

    /**
     * @description Indicates whether this Int8 is "greater than" the specified Int8.
     * @param other The reference Int8 with which to compare.
     * @returns True if this Int8 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Int8): Bool

    /**
     * @description Indicates whether this Int8 is "less than or equal to" the specified Int8.
     * @param other The reference Int8 with which to compare.
     * @returns True if this Int8 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Int8): Bool

    /**
     * @description Indicates whether this Int8 is "greater than or equal to" the specified Int8.
     * @param other The reference Int8 with which to compare.
     * @returns True if this Int8 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Int8): Bool

    /**
     * @description Indicates whether some other Int8 is "equal to" this one.
     * @param other The reference Int8 with which to compare.
     * @returns True if this Int8 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Int8): Bool

    /**
     * @description Indicates whether some other Int8 is "not equal to" this one.
     * @param other The reference Int8 with which to compare.
     * @returns True if this Int8 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Int8): Bool
}

extend UIntNative <: Comparable<UIntNative> {
    /**
     * @description Compares this UIntNative with the specified UIntNative for order.
     * @param other The UIntNative to be compared.
     * @returns An Ordering value indicating the relative order of the two UIntNative values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: UIntNative): Ordering
}

extend UInt64 <: Comparable<UInt64> {
    /**
     * @description Compares this UInt64 with the specified UInt64 for order.
     * @param other The UInt64 to be compared.
     * @returns An Ordering value indicating the relative order of the two UInt64 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: UInt64): Ordering

    /**
     * @description Indicates whether this UInt64 is "less than" the specified UInt64.
     * @param other The reference UInt64 with which to compare.
     * @returns True if this UInt64 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: UInt64): Bool

    /**
     * @description Indicates whether this UInt64 is "greater than" the specified UInt64.
     * @param other The reference UInt64 with which to compare.
     * @returns True if this UInt64 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: UInt64): Bool

    /**
     * @description Indicates whether this UInt64 is "less than or equal to" the specified UInt64.
     * @param other The reference UInt64 with which to compare.
     * @returns True if this UInt64 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: UInt64): Bool

    /**
     * @description Indicates whether this UInt64 is "greater than or equal to" the specified UInt64.
     * @param other The reference UInt64 with which to compare.
     * @returns True if this UInt64 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: UInt64): Bool

    /**
     * @description Indicates whether some other UInt64 is "equal to" this one.
     * @param other The reference UInt64 with which to compare.
     * @returns True if this UInt64 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: UInt64): Bool

    /**
     * @description Indicates whether some other UInt64 is "not equal to" this one.
     * @param other The reference UInt64 with which to compare.
     * @returns True if this UInt64 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: UInt64): Bool
}

extend UInt32 <: Comparable<UInt32> {
    /**
     * @description Compares this UInt32 with the specified UInt32 for order.
     * @param other The UInt32 to be compared.
     * @returns An Ordering value indicating the relative order of the two UInt32 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: UInt32): Ordering

    /**
     * @description Indicates whether this UInt32 is "less than" the specified UInt32.
     * @param other The reference UInt32 with which to compare.
     * @returns True if this UInt32 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: UInt32): Bool

    /**
     * @description Indicates whether this UInt32 is "greater than" the specified UInt32.
     * @param other The reference UInt32 with which to compare.
     * @returns True if this UInt32 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: UInt32): Bool

    /**
     * @description Indicates whether this UInt32 is "less than or equal to" the specified UInt32.
     * @param other The reference UInt32 with which to compare.
     * @returns True if this UInt32 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: UInt32): Bool

    /**
     * @description Indicates whether this UInt32 is "greater than or equal to" the specified UInt32.
     * @param other The reference UInt32 with which to compare.
     * @returns True if this UInt32 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: UInt32): Bool

    /**
     * @description Indicates whether some other UInt32 is "equal to" this one.
     * @param other The reference UInt32 with which to compare.
     * @returns True if this UInt32 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: UInt32): Bool

    /**
     * @description Indicates whether some other UInt32 is "not equal to" this one.
     * @param other The reference UInt32 with which to compare.
     * @returns True if this UInt32 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: UInt32): Bool
}

extend UInt16 <: Comparable<UInt16> {
    /**
     * @description Compares this UInt16 with the specified UInt16 for order.
     * @param other The UInt16 to be compared.
     * @returns An Ordering value indicating the relative order of the two UInt16 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: UInt16): Ordering

    /**
     * @description Indicates whether this UInt16 is "less than" the specified UInt16.
     * @param other The reference UInt16 with which to compare.
     * @returns True if this UInt16 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: UInt16): Bool

    /**
     * @description Indicates whether this UInt16 is "greater than" the specified UInt16.
     * @param other The reference UInt16 with which to compare.
     * @returns True if this UInt16 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: UInt16): Bool

    /**
     * @description Indicates whether this UInt16 is "less than or equal to" the specified UInt16.
     * @param other The reference UInt16 with which to compare.
     * @returns True if this UInt16 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: UInt16): Bool

    /**
     * @description Indicates whether this UInt16 is "greater than or equal to" the specified UInt16.
     * @param other The reference UInt16 with which to compare.
     * @returns True if this UInt16 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: UInt16): Bool

    /**
     * @description Indicates whether some other UInt16 is "equal to" this one.
     * @param other The reference UInt16 with which to compare.
     * @returns True if this UInt16 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: UInt16): Bool

    /**
     * @description Indicates whether some other UInt16 is "not equal to" this one.
     * @param other The reference UInt16 with which to compare.
     * @returns True if this UInt16 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: UInt16): Bool
}

extend UInt8 <: Comparable<UInt8> {
    /**
     * @description Compares this UInt8 with the specified UInt8 for order.
     * @param other The UInt8 to be compared.
     * @returns An Ordering value indicating the relative order of the two UInt8 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: UInt8): Ordering

    /**
     * @description Indicates whether this UInt8 is "less than" the specified UInt8.
     * @param other The reference UInt8 with which to compare.
     * @returns True if this UInt8 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: UInt8): Bool

    /**
     * @description Indicates whether this UInt8 is "greater than" the specified UInt8.
     * @param other The reference UInt8 with which to compare.
     * @returns True if this UInt8 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: UInt8): Bool

    /**
     * @description Indicates whether this UInt8 is "less than or equal to" the specified UInt8.
     * @param other The reference UInt8 with which to compare.
     * @returns True if this UInt8 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: UInt8): Bool

    /**
     * @description Indicates whether this UInt8 is "greater than or equal to" the specified UInt8.
     * @param other The reference UInt8 with which to compare.
     * @returns True if this UInt8 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: UInt8): Bool

    /**
     * @description Indicates whether some other UInt8 is "equal to" this one.
     * @param other The reference UInt8 with which to compare.
     * @returns True if this UInt8 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: UInt8): Bool

    /**
     * @description Indicates whether some other UInt8 is "not equal to" this one.
     * @param other The reference UInt8 with which to compare.
     * @returns True if this UInt8 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: UInt8): Bool
}

extend Float64 <: Comparable<Float64> {
    /**
     * @description Compares this Float64 with the specified Float64 for order.
     * @param other The Float64 to be compared.
     * @returns An Ordering value indicating the relative order of the two Float64 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Float64): Ordering

    /**
     * @description Indicates whether this Float64 is "less than" the specified Float64.
     * @param other The reference Float64 with which to compare.
     * @returns True if this Float64 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Float64): Bool

    /**
     * @description Indicates whether this Float64 is "greater than" the specified Float64.
     * @param other The reference Float64 with which to compare.
     * @returns True if this Float64 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Float64): Bool

    /**
     * @description Indicates whether this Float64 is "less than or equal to" the specified Float64.
     * @param other The reference Float64 with which to compare.
     * @returns True if this Float64 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Float64): Bool

    /**
     * @description Indicates whether this Float64 is "greater than or equal to" the specified Float64.
     * @param other The reference Float64 with which to compare.
     * @returns True if this Float64 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Float64): Bool

    /**
     * @description Indicates whether some other Float64 is "equal to" this one.
     * @param other The reference Float64 with which to compare.
     * @returns True if this Float64 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Float64): Bool

    /**
     * @description Indicates whether some other Float64 is "not equal to" this one.
     * @param other The reference Float64 with which to compare.
     * @returns True if this Float64 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Float64): Bool
}

extend Float32 <: Comparable<Float32> {
    /**
     * @description Compares this Float32 with the specified Float32 for order.
     * @param other The Float32 to be compared.
     * @returns An Ordering value indicating the relative order of the two Float32 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Float32): Ordering

    /**
     * @description Indicates whether this Float32 is "less than" the specified Float32.
     * @param other The reference Float32 with which to compare.
     * @returns True if this Float32 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Float32): Bool

    /**
     * @description Indicates whether this Float32 is "greater than" the specified Float32.
     * @param other The reference Float32 with which to compare.
     * @returns True if this Float32 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Float32): Bool

    /**
     * @description Indicates whether this Float32 is "less than or equal to" the specified Float32.
     * @param other The reference Float32 with which to compare.
     * @returns True if this Float32 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Float32): Bool

    /**
     * @description Indicates whether this Float32 is "greater than or equal to" the specified Float32.
     * @param other The reference Float32 with which to compare.
     * @returns True if this Float32 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Float32): Bool

    /**
     * @description Indicates whether some other Float32 is "equal to" this one.
     * @param other The reference Float32 with which to compare.
     * @returns True if this Float32 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Float32): Bool

    /**
     * @description Indicates whether some other Float32 is "not equal to" this one.
     * @param other The reference Float32 with which to compare.
     * @returns True if this Float32 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Float32): Bool
}

extend Float16 <: Comparable<Float16> {
    /**
     * @description Compares this Float16 with the specified Float16 for order.
     * @param other The Float16 to be compared.
     * @returns An Ordering value indicating the relative order of the two Float16 values.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Float16): Ordering

    /**
     * @description Indicates whether this Float16 is "less than" the specified Float16.
     * @param other The reference Float16 with which to compare.
     * @returns True if this Float16 is less than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Float16): Bool

    /**
     * @description Indicates whether this Float16 is "greater than" the specified Float16.
     * @param other The reference Float16 with which to compare.
     * @returns True if this Float16 is greater than the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Float16): Bool

    /**
     * @description Indicates whether this Float16 is "less than or equal to" the specified Float16.
     * @param other The reference Float16 with which to compare.
     * @returns True if this Float16 is less than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Float16): Bool

    /**
     * @description Indicates whether this Float16 is "greater than or equal to" the specified Float16.
     * @param other The reference Float16 with which to compare.
     * @returns True if this Float16 is greater than or equal to the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Float16): Bool

    /**
     * @description Indicates whether some other Float16 is "equal to" this one.
     * @param other The reference Float16 with which to compare.
     * @returns True if this Float16 is the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Float16): Bool

    /**
     * @description Indicates whether some other Float16 is "not equal to" this one.
     * @param other The reference Float16 with which to compare.
     * @returns True if this Float16 is not the same as the rhs argument; false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Float16): Bool
}

/**
 * @description Returns the maximum of the given values.
 * @param a The first value.
 * @param b The second value.
 * @param others Additional values to compare.
 * @returns The maximum value among all the given values.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func max<T>(a: T, b: T, others: Array<T>): T where T <: Comparable<T>

/**
 * @description Returns the minimum of the given values.
 * @param a The first value.
 * @param b The second value.
 * @param others Additional values to compare.
 * @returns The minimum value among all the given values.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func min<T>(a: T, b: T, others: Array<T>): T where T <: Comparable<T>

/**
 * @description Interface for types that can be counted.
 */
@!APILevel[
    since: "22"
]
public interface Countable<T> {
    /**
     * @description Gets the next value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    func next(right: Int64): T

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    func position(): Int64
}

extend IntNative <: Countable<IntNative> {
    /**
     * @description Gets the next IntNative value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next IntNative value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): IntNative

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend Int64 <: Countable<Int64> {
    /**
     * @description Gets the next Int64 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next Int64 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): Int64

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend Int32 <: Countable<Int32> {
    /**
     * @description Gets the next Int32 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next Int32 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): Int32

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend Int16 <: Countable<Int16> {
    /**
     * @description Gets the next Int16 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next Int16 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): Int16

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend Int8 <: Countable<Int8> {
    /**
     * @description Gets the next Int8 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next Int8 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): Int8

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend UIntNative <: Countable<UIntNative> {
    /**
     * @description Gets the next UIntNative value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next UIntNative value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): UIntNative

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend UInt64 <: Countable<UInt64> {
    /**
     * @description Gets the next UInt64 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next UInt64 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): UInt64

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend UInt32 <: Countable<UInt32> {
    /**
     * @description Gets the next UInt32 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next UInt32 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): UInt32

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend UInt16 <: Countable<UInt16> {
    /**
     * @description Gets the next UInt16 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next UInt16 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): UInt16

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend UInt8 <: Countable<UInt8> {
    /**
     * @description Gets the next UInt8 value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next UInt8 value in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): UInt8

    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64
}

extend Rune <: Countable<Rune> {
    /**
     * @description Gets the current position in the sequence.
     * @returns The current position in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func position(): Int64

    /**
     * @description Gets the next Rune value in the sequence.
     * @param right The right bound of the sequence.
     * @returns The next Rune value in the sequence.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func next(right: Int64): Rune
}

/**
 * @description Represents a duration of time with nanosecond precision.
 */
@!APILevel[
    since: "22"
]
public struct Duration <: ToString & Hashable & Comparable<Duration> {
    /**
     * @description A duration of one nanosecond.
     */
    @!APILevel[
        since: "22"
    ]
    public static const nanosecond: Duration = Duration(0, 1)

    /**
     * @description A duration of one microsecond.
     */
    @!APILevel[
        since: "22"
    ]
    public static const microsecond: Duration = Duration(0, 1000u32)

    /**
     * @description A duration of one millisecond.
     */
    @!APILevel[
        since: "22"
    ]
    public static const millisecond: Duration = Duration(0, 1000000u32)

    /**
     * @description A duration of one second.
     */
    @!APILevel[
        since: "22"
    ]
    public static const second: Duration = Duration(1, 0)

    /**
     * @description A duration of one minute.
     */
    @!APILevel[
        since: "22"
    ]
    public static const minute: Duration = Duration(SECS_PER_MINUTE, 0)

    /**
     * @description A duration of one hour.
     */
    @!APILevel[
        since: "22"
    ]
    public static const hour: Duration = Duration(SECS_PER_HOUR, 0)

    /**
     * @description A duration of one day.
     */
    @!APILevel[
        since: "22"
    ]
    public static const day: Duration = Duration(SECS_PER_DAY, 0)

    /**
     * @description A duration of zero.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Zero: Duration = Duration(0, 0)

    /**
     * @description The maximum duration.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Max: Duration = Duration(MAX_INT64, MAX_NANOSECOND)

    /**
     * @description The minimum duration.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Min: Duration = Duration(MIN_INT64, 0)

    /**
     * @description Converts this duration to nanoseconds.
     * @returns The number of nanoseconds in this duration.
     * @throws ArithmeticException if the conversion would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toNanoseconds(): Int64

    /**
     * @description Converts this duration to microseconds.
     * @returns The number of microseconds in this duration.
     * @throws ArithmeticException if the conversion would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toMicroseconds(): Int64

    /**
     * @description Converts this duration to milliseconds.
     * @returns The number of milliseconds in this duration.
     * @throws ArithmeticException if the conversion would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toMilliseconds(): Int64

    /**
     * @description Converts this duration to seconds.
     * @returns The number of seconds in this duration.
     */
    @!APILevel[
        since: "22"
    ]
    public func toSeconds(): Int64

    /**
     * @description Converts this duration to minutes.
     * @returns The number of minutes in this duration.
     */
    @!APILevel[
        since: "22"
    ]
    public func toMinutes(): Int64

    /**
     * @description Converts this duration to hours.
     * @returns The number of hours in this duration.
     */
    @!APILevel[
        since: "22"
    ]
    public func toHours(): Int64

    /**
     * @description Converts this duration to days.
     * @returns The number of days in this duration.
     */
    @!APILevel[
        since: "22"
    ]
    public func toDays(): Int64

    /**
     * @description Returns a string representation of this duration.
     * @returns A string representation of this duration.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Returns a hash code value for this duration.
     * @returns A hash code value for this duration.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns the absolute value of this duration.
     * @returns The absolute value of this duration.
     * @throws ArithmeticException if the operation would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func abs(): Duration

    /**
     * @description Adds another duration to this duration.
     * @param other The duration to add.
     * @returns The sum of the two durations.
     * @throws ArithmeticException if the operation would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func +(other: Duration): Duration

    /**
     * @description Subtracts another duration from this duration.
     * @param other The duration to subtract.
     * @returns The difference of the two durations.
     * @throws ArithmeticException if the operation would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func -(other: Duration): Duration

    /**
     * @description Multiplies this duration by an integer.
     * @param multiplier The integer to multiply by.
     * @returns The product of this duration and the integer.
     * @throws ArithmeticException if the operation would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func *(multiplier: Int64): Duration

    /**
     * @description Multiplies this duration by a Float64.
     * @param multiplier The Float64 to multiply by.
     * @returns The product of this duration and the Float64.
     * @throws ArithmeticException if the operation would overflow.

     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func *(multiplier: Float64): Duration

    /**
     * @description Divides this duration by an integer.
     * @param divisor The integer to divide by.
     * @returns The quotient of this duration and the integer.
     * @throws ArithmeticException if the operation would overflow.
     * @throws IllegalArgumentException if the divisor is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func /(divisor: Int64): Duration

    /**
     * @description Divides this duration by a Float64.
     * @param divisor The Float64 to divide by.
     * @returns The quotient of this duration and the Float64.
     * @throws ArithmeticException if the operation would overflow.
     * @throws IllegalArgumentException if the divisor is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func /(divisor: Float64): Duration

    /**
     * @description Divides this duration by another duration.
     * @param other The duration to divide by.
     * @returns The quotient of the two durations.
     * @throws IllegalArgumentException if the divisor is zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func /(other: Duration): Float64

    /**
     * @description Checks if this duration is equal to another duration.
     * @param other The duration to compare with.
     * @returns true if the durations are equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Duration): Bool

    /**
     * @description Checks if this duration is not equal to another duration.
     * @param other The duration to compare with.
     * @returns true if the durations are not equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Duration): Bool

    /**
     * @description Checks if this duration is greater than or equal to another duration.
     * @param other The duration to compare with.
     * @returns true if this duration is greater than or equal to the other duration, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >=(other: Duration): Bool

    /**
     * @description Checks if this duration is greater than another duration.
     * @param other The duration to compare with.
     * @returns true if this duration is greater than the other duration, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >(other: Duration): Bool

    /**
     * @description Checks if this duration is less than or equal to another duration.
     * @param other The duration to compare with.
     * @returns true if this duration is less than or equal to the other duration, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: Duration): Bool

    /**
     * @description Checks if this duration is less than another duration.
     * @param other The duration to compare with.
     * @returns true if this duration is less than the other duration, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <(other: Duration): Bool

    /**
     * @description Compares this duration with another duration for order.
     * @param other The duration to be compared.
     * @returns An Ordering value indicating the relative order of the two durations.
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: Duration): Ordering
}

extend Int64 {
    /**
     * @description Multiplies this Int64 by a Duration.
     * @param r The Duration to multiply by.
     * @returns The product of this Int64 and the Duration.
     * @throws ArithmeticException if the operation would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func *(r: Duration): Duration
}

extend Float64 {
    /**
     * @description Multiplies this Float64 by a Duration.
     * @param r The Duration to multiply by.
     * @returns The product of this Float64 and the Duration.
     * @throws ArithmeticException if the operation would overflow.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func *(r: Duration): Duration
}


/**
 * @description Represents the endianness of data representation.
 */
@!APILevel[
    since: "22"
]
public enum Endian {
    /**
     * @description Big endian - most significant byte first.
     */
    @!APILevel[
        since: "22"
    ]
    Big |
    /**
     * @description Little endian - least significant byte first.
     */
    @!APILevel[
        since: "22"
    ]
    Little

    /**
     * @description The endianness of the current platform.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Platform: Endian
}

/**
 * @description Interface for types that support equality comparison.
 */
@!APILevel[
    since: "22"
]
public interface Equal<T> {
    /**
     * @description Checks if this object is equal to another object.
     * @param other The object to compare with.
     * @returns true if the objects are equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func ==(other: T): Bool
}

/**
 * @description Interface for types that support inequality comparison.
 */
@!APILevel[
    since: "22"
]
public interface NotEqual<T> {
    /**
     * @description Checks if this object is not equal to another object.
     * @param other The object to compare with.
     * @returns true if the objects are not equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func !=(other: T): Bool
}

/**
 * @description Interface for types that support both equality and inequality comparison.
 */
@!APILevel[
    since: "22"
]
public interface Equatable<T> <: Equal<T> & NotEqual<T> {
    /**
     * @description Checks if this object is not equal to another object.
     * @param other The object to compare with.
     * @returns true if the objects are not equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    operator func !=(other: T): Bool
}



extend<T> Range<T> <: Equatable<Range<T>> where T <: Countable<T> & Comparable<T> & Equatable<T> {
    /**
     * @description Checks if this range is equal to another range.
     * @param other The range to compare with.
     * @returns true if the ranges are equal, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Range<T>): Bool
}

/**
 * @description The base class for all error types.
 */
@!APILevel[
    since: "22"
]
public open class Error <: ToString {
    /**
     * @description The error message.
     */
    @!APILevel[
        since: "22"
    ]
    public open prop message: String

    /**
     * @description Returns a string representation of this error.
     * @returns A string representation of this error.
     */
    @!APILevel[
        since: "22"
    ]
    public open func toString(): String

    /**
     * @description Prints the stack trace of this error to the standard error stream.
     */
    @!APILevel[
        since: "22"
    ]
    public open func printStackTrace(): Unit

    /**
     * @description Gets the stack trace message of this error.
     * @returns The stack trace message of this error.
     */
    @!APILevel[
        since: "22"
    ]
    public open func getStackTraceMessage(): String

    /**
     * @description Gets the stack trace elements of this error.
     * @returns An array of stack trace elements.
     */
    @!APILevel[
        since: "22"
    ]
    public func getStackTrace(): Array<StackTraceElement>
}

/**
 * @description The base class for all exception types.
 */
@!APILevel[
    since: "22"
]
public open class Exception <: ToString {
    /**
     * @description Constructs a new Exception with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new Exception with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)

    /**
     * @description The exception message.
     */
    @!APILevel[
        since: "22"
    ]
    public open prop message: String

    /**
     * @description Returns a string representation of this exception.
     * @returns A string representation of this exception.
     */
    @!APILevel[
        since: "22"
    ]
    public open func toString(): String

    /**
     * @description Prints the stack trace of this exception to the standard error stream.
     */
    @!APILevel[
        since: "22"
    ]
    public func printStackTrace(): Unit

    /**
     * @description Gets the stack trace elements of this exception.
     * @returns An array of stack trace elements.
     */
    @!APILevel[
        since: "22"
    ]
    public func getStackTrace(): Array<StackTraceElement>
}

extend Float64 {
    /**
     * @description Creates a Float64 from its bit representation.
     * @param bits The bit representation.
     * @returns A Float64 with the specified bit representation.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromBits(bits: UInt64): Float64

    /**
     * @description Returns the bit representation of this Float64.
     * @returns The bit representation of this Float64.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBits(): UInt64
}

extend Float32 {
    /**
     * @description Creates a Float32 from its bit representation.
     * @param bits The bit representation.
     * @returns A Float32 with the specified bit representation.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromBits(bits: UInt32): Float32

    /**
     * @description Returns the bit representation of this Float32.
     * @returns The bit representation of this Float32.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBits(): UInt32
}

extend Float16 {
    /**
     * @description Creates a Float16 from its bit representation.
     * @param bits The bit representation.
     * @returns A Float16 with the specified bit representation.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromBits(bits: UInt16): Float16

    /**
     * @description Returns the bit representation of this Float16.
     * @returns The bit representation of this Float16.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBits(): UInt16
}







/**
 * @description Represents the result of an asynchronous computation. This class provides methods to check if the computation is complete, to wait for its completion, and to retrieve the result of the computation.
 */
@!APILevel[
    since: "22"
]
public class Future<T> {
    /**
     * @description The thread on which this future is running.
     */
    @!APILevel[
        since: "22"
    ]
    public prop thread: Thread

    /**
     * @description Gets the result of the computation, blocking if necessary.
     * @returns The result of the computation.
     */
    @!APILevel[
        since: "22"
    ]
    public func get(): T

    /**
     * @description Attempts to get the result of the computation without blocking.
     * @returns Some(value) if the computation is complete, None otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func tryGet(): Option<T>

    /**
     * @description Gets the result of the computation, waiting up to the specified timeout.
     * @param timeout The maximum time to wait.
     * @returns The result of the computation.
     * @throws TimeoutException if the timeout expires before the computation completes.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func get(timeout: Duration): T

    /**
     * @description Cancels the computation.
     */
    @!APILevel[
        since: "22"
    ]
    public func cancel(): Unit
}

/**
 * @description Represents the context of a thread.
 */
@!APILevel[
    since: "22"
]
public interface ThreadContext {
    /**
     * @description Ends the thread context.
     */
    @!APILevel[
        since: "22"
    ]
    func end(): Unit

    /**
     * @description Checks if the thread context has ended.
     * @returns true if the thread context has ended, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func hasEnded(): Bool
}

/**
 * @description Interface for types that can be hashed.
 */
@!APILevel[
    since: "22"
]
public interface Hashable {
    /**
     * @description Returns a hash code value for the object.
     * @returns A hash code value for this object.
     */
    @!APILevel[
        since: "22"
    ]
    func hashCode(): Int64
}

extend Ordering <: Hashable {
    /**
     * @description Returns a hash code value for the Ordering value.
     * @returns A hash code value for this Ordering value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

extend Unit <: Hashable {
    /**
     * @description Returns a hash code value for the Unit value.
     * @returns A hash code value for this Unit value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

extend Bool <: Hashable {
    /**
     * @description Returns a hash code value for the Bool value.
     * @returns A hash code value for this Bool value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

extend Rune <: Hashable {
    /**
     * @description Returns a hash code value for the Rune value.
     * @returns A hash code value for this Rune value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

extend IntNative <: Hashable {
    /**
     * @description Returns a hash code value for the IntNative value.
     * @returns A hash code value for this IntNative value.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of IntNative.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: IntNative

    /**
     * @description The minimum value of IntNative.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: IntNative
}

extend Int64 <: Hashable {
    /**
     * @description Returns a hash code value for the Int64 value.
     * @returns A hash code value for this Int64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of Int64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: Int64

    /**
     * @description The minimum value of Int64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: Int64
}

extend Int32 <: Hashable {
    /**
     * @description Returns a hash code value for the Int32 value.
     * @returns A hash code value for this Int32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of Int32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: Int32

    /**
     * @description The minimum value of Int32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: Int32
}

extend Int16 <: Hashable {
    /**
     * @description Returns a hash code value for the Int16 value.
     * @returns A hash code value for this Int16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of Int16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: Int16

    /**
     * @description The minimum value of Int16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: Int16
}

extend Int8 <: Hashable {
    /**
     * @description Returns a hash code value for the Int8 value.
     * @returns A hash code value for this Int8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of Int8.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: Int8

    /**
     * @description The minimum value of Int8.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: Int8
}

extend UIntNative <: Hashable {
    /**
     * @description Returns a hash code value for the UIntNative value.
     * @returns A hash code value for this UIntNative value.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of UIntNative.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: UIntNative

    /**
     * @description The minimum value of UIntNative.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: UIntNative
}

extend UInt64 <: Hashable {
    /**
     * @description Returns a hash code value for the UInt64 value.
     * @returns A hash code value for this UInt64 value.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of UInt64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: UInt64

    /**
     * @description The minimum value of UInt64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: UInt64
}

extend UInt32 <: Hashable {
    /**
     * @description Returns a hash code value for the UInt32 value.
     * @returns A hash code value for this UInt32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of UInt32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: UInt32

    /**
     * @description The minimum value of UInt32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: UInt32
}

extend UInt16 <: Hashable {
    /**
     * @description Returns a hash code value for the UInt16 value.
     * @returns A hash code value for this UInt16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of UInt16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: UInt16

    /**
     * @description The minimum value of UInt16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: UInt16
}

extend UInt8 <: Hashable {
    /**
     * @description Returns a hash code value for the UInt8 value.
     * @returns A hash code value for this UInt8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description The maximum value of UInt8.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: UInt8

    /**
     * @description The minimum value of UInt8.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: UInt8
}

extend Float64 <: Hashable {
    /**
     * @description Returns a hash code value for the Float64 value.
     * @returns A hash code value for this Float64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Represents a "Not a Number" value.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop NaN: Float64

    /**
     * @description Represents positive infinity.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Inf: Float64

    /**
     * @description The maximum finite value of Float64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: Float64

    /**
     * @description The minimum finite value of Float64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: Float64

    /**
     * @description The minimum positive denormalized value of Float64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop MinDenormal: Float64

    /**
     * @description The minimum positive normalized value of Float64.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop MinNormal: Float64

    /**
     * @description Checks if this Float64 is positive or negative infinity.
     * @returns true if this Float64 is positive or negative infinity, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isInf(): Bool

    /**
     * @description Checks if this Float64 is NaN (Not a Number).
     * @returns true if this Float64 is NaN, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNaN(): Bool

    /**
     * @description Checks if this Float64 is a normal number (not NaN, infinity, or zero).
     * @returns true if this Float64 is a normal number, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNormal(): Bool

    /**
     * @description Returns the maximum of the given Float64 values.
     * @param a The first value.
     * @param b The second value.
     * @param others Additional values to compare.
     * @returns The maximum value among all the given values.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(a: Float64, b: Float64, others: Array<Float64>): Float64

    /**
     * @description Returns the minimum of the given Float64 values.
     * @param a The first value.
     * @param b The second value.
     * @param others Additional values to compare.
     * @returns The minimum value among all the given values.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(a: Float64, b: Float64, others: Array<Float64>): Float64
}

extend Float32 <: Hashable {
    /**
     * @description Returns a hash code value for the Float32 value.
     * @returns A hash code value for this Float32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Represents a "Not a Number" value.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop NaN: Float32

    /**
     * @description Represents positive infinity.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Inf: Float32

    /**
     * @description The maximum finite value of Float32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: Float32

    /**
     * @description The minimum finite value of Float32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: Float32

    /**
     * @description The minimum positive denormalized value of Float32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop MinDenormal: Float32

    /**
     * @description The minimum positive normalized value of Float32.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop MinNormal: Float32

    /**
     * @description Checks if this Float32 is positive or negative infinity.
     * @returns true if this Float32 is positive or negative infinity, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isInf(): Bool

    /**
     * @description Checks if this Float32 is NaN (Not a Number).
     * @returns true if this Float32 is NaN, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNaN(): Bool

    /**
     * @description Checks if this Float32 is a normal number (not NaN, infinity, or zero).
     * @returns true if this Float32 is a normal number, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNormal(): Bool

    /**
     * @description Returns the maximum of the given Float32 values.
     * @param a The first value.
     * @param b The second value.
     * @param others Additional values to compare.
     * @returns The maximum value among all the given values.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(a: Float32, b: Float32, others: Array<Float32>): Float32

    /**
     * @description Returns the minimum of the given Float32 values.
     * @param a The first value.
     * @param b The second value.
     * @param others Additional values to compare.
     * @returns The minimum value among all the given values.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(a: Float32, b: Float32, others: Array<Float32>): Float32
}

extend Float16 <: Hashable {
    /**
     * @description Returns a hash code value for the Float16 value.
     * @returns A hash code value for this Float16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Represents a "Not a Number" value.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop NaN: Float16

    /**
     * @description Represents positive infinity.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Inf: Float16

    /**
     * @description The maximum finite value of Float16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Max: Float16

    /**
     * @description The minimum finite value of Float16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop Min: Float16

    /**
     * @description The minimum positive denormalized value of Float16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop MinDenormal: Float16

    /**
     * @description The minimum positive normalized value of Float16.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop MinNormal: Float16

    /**
     * @description Checks if this Float16 is positive or negative infinity.
     * @returns true if this Float16 is positive or negative infinity, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isInf(): Bool

    /**
     * @description Checks if this Float16 is NaN (Not a Number).
     * @returns true if this Float16 is NaN, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNaN(): Bool

    /**
     * @description Checks if this Float16 is a normal number (not NaN, infinity, or zero).
     * @returns true if this Float16 is a normal number, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNormal(): Bool

    /**
     * @description Returns the maximum of the given Float16 values.
     * @param a The first value.
     * @param b The second value.
     * @param others Additional values to compare.
     * @returns The maximum value among all the given values.
     */
    @!APILevel[
        since: "22"
    ]
    public static func max(a: Float16, b: Float16, others: Array<Float16>): Float16

    /**
     * @description Returns the minimum of the given Float16 values.
     * @param a The first value.
     * @param b The second value.
     * @param others Additional values to compare.
     * @returns The minimum value among all the given values.
     */
    @!APILevel[
        since: "22"
    ]
    public static func min(a: Float16, b: Float16, others: Array<Float16>): Float16
}

extend<T> Range<T> <: Hashable where T <: Hashable & Countable<T> & Comparable<T> & Equatable<T> {
    /**
     * @description Returns a hash code value for the Range.
     * @returns A hash code value for this Range.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Provides a universal interface for hash algorithms. Implementations of this interface can be used to compute hash values for data.
 */
@!APILevel[
    since: "22"
]
public interface Hasher {
    /**
     * @description Returns the final hash value.
     * @returns The final hash value.
     */
    @!APILevel[
        since: "22"
    ]
    func finish(): Int64

    /**
     * @description Resets the hasher to its initial state.
     */
    @!APILevel[
        since: "22"
    ]
    mut func reset(): Unit

    /**
     * @description Writes a Bool value to the hasher.
     * @param value The Bool value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Bool): Unit

    /**
     * @description Writes a Rune value to the hasher.
     * @param value The Rune value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Rune): Unit

    /**
     * @description Writes an Int8 value to the hasher.
     * @param value The Int8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Int8): Unit

    /**
     * @description Writes an Int16 value to the hasher.
     * @param value The Int16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Int16): Unit

    /**
     * @description Writes an Int32 value to the hasher.
     * @param value The Int32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Int32): Unit

    /**
     * @description Writes an Int64 value to the hasher.
     * @param value The Int64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Int64): Unit

    /**
     * @description Writes a UInt8 value to the hasher.
     * @param value The UInt8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: UInt8): Unit

    /**
     * @description Writes a UInt16 value to the hasher.
     * @param value The UInt16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: UInt16): Unit

    /**
     * @description Writes a UInt32 value to the hasher.
     * @param value The UInt32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: UInt32): Unit

    /**
     * @description Writes a UInt64 value to the hasher.
     * @param value The UInt64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: UInt64): Unit

    /**
     * @description Writes a Float16 value to the hasher.
     * @param value The Float16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Float16): Unit

    /**
     * @description Writes a Float32 value to the hasher.
     * @param value The Float32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Float32): Unit

    /**
     * @description Writes a Float64 value to the hasher.
     * @param value The Float64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: Float64): Unit

    /**
     * @description Writes a String value to the hasher.
     * @param value The String value to write.
     */
    @!APILevel[
        since: "22"
    ]
    mut func write(value: String): Unit
}

/**
 * @description A default implementation of the Hasher interface.
 */
@!APILevel[
    since: "22"
]
public struct DefaultHasher <: Hasher {
    /**
     * @description Returns the final hash value.
     * @returns The final hash value.
     */
    @!APILevel[
        since: "22"
    ]
    public func finish(): Int64

    /**
     * @description Resets the hasher to its initial state.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func reset(): Unit

    /**
     * @description Writes a Bool value to the hasher.
     * @param value The Bool value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Bool): Unit

    /**
     * @description Writes a Rune value to the hasher.
     * @param value The Rune value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Rune): Unit

    /**
     * @description Writes an Int8 value to the hasher.
     * @param value The Int8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Int8): Unit

    /**
     * @description Writes an Int16 value to the hasher.
     * @param value The Int16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Int16): Unit

    /**
     * @description Writes an Int32 value to the hasher.
     * @param value The Int32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Int32): Unit

    /**
     * @description Writes an Int64 value to the hasher.
     * @param value The Int64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Int64): Unit

    /**
     * @description Writes a UInt8 value to the hasher.
     * @param value The UInt8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: UInt8): Unit

    /**
     * @description Writes a UInt16 value to the hasher.
     * @param value The UInt16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: UInt16): Unit

    /**
     * @description Writes a UInt32 value to the hasher.
     * @param value The UInt32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: UInt32): Unit

    /**
     * @description Writes a UInt64 value to the hasher.
     * @param value The UInt64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: UInt64): Unit

    /**
     * @description Writes a Float16 value to the hasher.
     * @param value The Float16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Float16): Unit

    /**
     * @description Writes a Float32 value to the hasher.
     * @param value The Float32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Float32): Unit

    /**
     * @description Writes a Float64 value to the hasher.
     * @param value The Float64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: Float64): Unit

    /**
     * @description Writes a String value to the hasher.
     * @param value The String value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public mut func write(value: String): Unit

    /**
     * @description Constructs a DefaultHasher with the specified initial result value.
     * @param res The initial result value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(res!: Int64 = 0)
}

/**
 * @description Exception thrown when an illegal argument is passed to a method.
 */
@!APILevel[
    since: "22"
]
public open class IllegalArgumentException <: Exception {
    /**
     * @description Constructs a new IllegalArgumentException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new IllegalArgumentException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Exception thrown when an illegal format is encountered.
 */
@!APILevel[
    since: "22"
]
public open class IllegalFormatException <: IllegalArgumentException {
    /**
     * @description Constructs a new IllegalFormatException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new IllegalFormatException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Exception thrown when an illegal memory access occurs.
 */
@!APILevel[
    since: "22"
]
public class IllegalMemoryException <: Exception {
    /**
     * @description Constructs a new IllegalMemoryException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new IllegalMemoryException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Exception thrown when an illegal state is encountered.
 */
@!APILevel[
    since: "22"
]
public class IllegalStateException <: Exception {
    /**
     * @description Constructs a new IllegalStateException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new IllegalStateException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Exception thrown when an incompatible package is encountered.
 */
@!APILevel[
    since: "22"
]
public class IncompatiblePackageException <: Exception {
    /**
     * @description Constructs a new IncompatiblePackageException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new IncompatiblePackageException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Exception thrown when an index is out of bounds.
 */
@!APILevel[
    since: "22"
]
public class IndexOutOfBoundsException <: Exception {
    /**
     * @description Constructs a new IndexOutOfBoundsException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new IndexOutOfBoundsException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Provides an interface for Iterable
 */
@!APILevel[
    since: "22"
]
public interface Iterable<E> {
    /**
     * @description Returns an iterator over the elements of type E.
     * @returns An iterator.
     */
    @!APILevel[
        since: "22"
    ]
    func iterator(): Iterator<E>
}

/**
 * @description An iterator over a sequence of values.
 */
@!APILevel[
    since: "22"
]
public abstract class Iterator<T> <: Iterable<T> {
    /**
     * @description Returns the next value in the iteration.
     * @returns The next value in the iteration, or None if there are no more values.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(): Option<T>

    /**
     * @description Constructs a new Iterator.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Returns this iterator.
     * @returns This iterator.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>
}

extend<T> Iterator<T> where T <: Equatable<T> {
    /**
     * @description Checks if the iterator contains the specified element.
     * @param element The element to check for.
     * @returns true if the element is found, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(element: T): Bool
}

extend<T> Iterator<T> where T <: Comparable<T> {
    /**
     * @description Returns the maximum value in the iterator.
     * @returns The maximum value, or None if the iterator is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func max(): Option<T>

    /**
     * @description Returns the minimum value in the iterator.
     * @returns The minimum value, or None if the iterator is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func min(): Option<T>
}

extend<T> Iterator<T> {
    /**
     * @description Combines this iterator with another iterator to create an iterator of pairs.
     * @param it The other iterator.
     * @returns An iterator of pairs.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func zip<R>(it: Iterator<R>): Iterator<(T, R)>

    /**
     * @description Creates an iterator that yields pairs of indices and values.
     * @returns An iterator of pairs of indices and values.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func enumerate(): Iterator<(Int64, T)>

    /**
     * @description Creates an iterator that filters values based on a predicate.
     * @param predicate The predicate to apply.
     * @returns An iterator that yields only values for which the predicate returns true.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func filter(predicate: (T) -> Bool): Iterator<T>

    /**
     * @description Creates an iterator that applies a transformation function and filters out None values.
     * @param transform The transformation function to apply.
     * @returns An iterator that yields values transformed by the function, excluding None values.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func filterMap<R>(transform: (T) -> Option<R>): Iterator<R>

    /**
     * @description Creates an iterator that applies a transformation function to each value.
     * @param transform The transformation function to apply.
     * @returns An iterator that yields transformed values.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func map<R>(transform: (T) -> R): Iterator<R>

    /**
     * @description Creates an iterator that skips values by a specified step count.
     * @param count The step count.
     * @returns An iterator that yields every nth value.     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func step(count: Int64): Iterator<T>

    /**
     * @description Creates an iterator that skips the first n values.
     * @param count The number of values to skip.
     * @returns An iterator that yields values after skipping the first n values.     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func skip(count: Int64): Iterator<T>

    /**
     * @description Creates an iterator that takes the first n values.
     * @param count The number of values to take.
     * @returns An iterator that yields only the first n values.     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func take(count: Int64): Iterator<T>

    /**
     * @description Concatenates this iterator with another iterator.
     * @param other The iterator to concatenate with.
     * @returns A new iterator containing the elements of this iterator followed by the elements of other.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func concat(other: Iterator<T>): Iterator<T>

    /**
     * @description Creates an iterator that performs an action on each value.
     * @param action The action to perform.
     * @returns An iterator that performs the action on each value.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func inspect(action: (T) -> Unit): Iterator<T>

    /**
     * @description Creates an iterator that applies a transformation function and flattens the result.
     * @param transform The transformation function to apply.
     * @returns An iterator that yields values from the transformed iterators.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func flatMap<R>(transform: (T) -> Iterator<R>): Iterator<R>

    /**
     * @description Creates an iterator that inserts a separator between each value.
     * @param separator The separator to insert.
     * @returns An iterator that inserts the separator between each value.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func intersperse(separator: T): Iterator<T>

    /**
     * @description Checks if all values in the iterator satisfy a predicate.
     * @param predicate The predicate to apply.
     * @returns true if all values satisfy the predicate, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func all(predicate: (T) -> Bool): Bool

    /**
     * @description Checks if any value in the iterator satisfies a predicate.
     * @param predicate The predicate to apply.
     * @returns true if any value satisfies the predicate, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func any(predicate: (T) -> Bool): Bool

    /**
     * @description Checks if no values in the iterator satisfy a predicate.
     * @param predicate The predicate to apply.
     * @returns true if no values satisfy the predicate, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func none(predicate: (T) -> Bool): Bool

    /**
     * @description Checks if the iterator is empty.
     * @returns true if the iterator is empty, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Returns the number of values in the iterator.
     * @returns The number of values in the iterator.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func count(): Int64

    /**
     * @description Performs an action for each value in the iterator.
     * @param action The action to perform.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func forEach(action: (T) -> Unit): Unit

    /**
     * @description Returns the first value in the iterator.
     * @returns The first value, or None if the iterator is empty.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func first(): Option<T>

    /**
     * @description Returns the last value in the iterator.
     * @returns The last value, or None if the iterator is empty.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func last(): Option<T>

    /**
     * @description Returns the value at the specified index in the iterator.
     * @param n The index of the value to return.
     * @returns The value at the specified index, or None if the index is out of bounds.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func at(n: Int64): Option<T>

    /**
     * @description Reduces the iterator to a single value using the specified operation.
     * @param operation The reduction operation.
     * @returns The reduced value, or None if the iterator is empty.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func reduce(operation: (T, T) -> T): Option<T>

    /**
     * @description Folds the iterator into a single value using the specified initial value and operation.
     * @param initial The initial value.
     * @param operation The folding operation.
     * @returns The folded value.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fold<R>(initial: R, operation: (R, T) -> R): R
}

/**
 * @description Returns the size of a C type.
 * @returns The size of the C type.
 */
@!APILevel[
    since: "22"
]
public func sizeOf<T>(): UIntNative where T <: CType

/**
 * @description Returns the alignment of a C type.
 * @returns The alignment of the C type.
 */
@!APILevel[
    since: "22"
]
public func alignOf<T>(): UIntNative where T <: CType

/**
 * @description Provides utils for libc
 */
@!APILevel[
    since: "22"
]
public struct LibC {
    /**
     * @description Allocates memory for a C type.
     * @param count The number of elements to allocate.
     * @returns A C pointer to the allocated memory.
     * @throws IllegalArgumentException if count is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func malloc<T>(count!: Int64 = 1): CPointer<T> where T <: CType

    /**
     * @description Frees memory allocated for a C type.
     * @param p The C pointer to free.
     */
    @!APILevel[
        since: "22"
    ]
    public unsafe static func free<T>(p: CPointer<T>): Unit where T <: CType

    /**
     * @description Allocates memory for a C string.
     * @param str The string to allocate memory for.
     * @returns A C string.
     * @throws IllegalMemoryException if memory is issufficient.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public unsafe static func mallocCString(str: String): CString

    /**
     * @description Frees memory allocated for a C string.
     * @param cstr The C string to free.
     */
    @!APILevel[
        since: "22"
    ]
    public unsafe static func free(cstr: CString): Unit
}

/**
 * @description Exception thrown when a negative array size is used.
 */
@!APILevel[
    since: "22"
]
public class NegativeArraySizeException <: Exception {
    /**
     * @description Constructs a new NegativeArraySizeException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new NegativeArraySizeException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Exception thrown when a None value is encountered where a value is expected.
 */
@!APILevel[
    since: "22"
]
public class NoneValueException <: Exception {
    /**
     * @description Constructs a new NoneValueException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description The root of the Cangjie class hierarchy.
 */
@!APILevel[
    since: "22"
]
public interface Any {
}

/**
 * @description The root class of the Cangjie class hierarchy.
 */
@!APILevel[
    since: "22"
]
public open class Object <: Any {
    /**
     * @description Constructs a new Object.
     */
    @!APILevel[
        since: "22"
    ]
    public const init()
}

/**
 * @description Checks if two objects are the same instance.
 * @param a The first object.
 * @param b The second object.
 * @returns true if the objects are the same instance, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func refEq(a: Object, b: Object): Bool

/**
 * @description Returns the zero value for a given type.
 * @returns The zero value for the given type.
 */
@Intrinsic
@!APILevel[
    since: "22"
]
public unsafe func zeroValue<T>(): T

/**
 * @description Represents an optional value that may or may not be present.
 */
@!APILevel[
    since: "22"
]
public enum Option<T> {
    /**
     * @description Some value of type T.
     */
    @!APILevel[
        since: "22"
    ]
    Some(T) |
    /**
     * @description No value.
     */
    @!APILevel[
        since: "22"
    ]
    None

    /**
     * @description Returns the value if present, otherwise throws a NoneValueException.
     * @returns The value if present.
     * @throws NoneValueException if the Option is None.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getOrThrow(): T

    /**
     * @description Returns the value if present, otherwise throws the specified exception.
     * @param exception A function that returns the exception to throw.
     * @returns The value if present.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func getOrThrow(exception: () -> Exception): T

    /**
     * @description Returns the value if present, otherwise returns the result of the specified function.
     * @param other A function that returns the default value.
     * @returns The value if present, otherwise the default value.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func getOrDefault(other: () -> T): T

    /**
     * @description Checks if the Option is None.
     * @returns true if the Option is None, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isNone(): Bool

    /**
     * @description Checks if the Option is Some.
     * @returns true if the Option is Some, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isSome(): Bool

    /**
     * @description Maps the value if present using the specified transformation function.
     * @param transform The transformation function to apply.
     * @returns An Option containing the transformed value if present, otherwise None.
     */
    @!APILevel[
        since: "22"
    ]
    public func map<R>(transform: (T) -> R): Option<R>

    /**
     * @description Filters the value if present using the specified predicate.
     * @param predicate The predicate to apply.
     * @returns Some(value) if the value is present and satisfies the predicate, otherwise None.
     */
    @!APILevel[
        since: "22"
    ]
    public func filter(predicate: (T) -> Bool): Option<T>

    /**
     * @description Maps the value if present using the specified transformation function and flattens the result.
     * @param transform The transformation function to apply.
     * @returns The result of the transformation function if the value is present, otherwise None.
     */
    @!APILevel[
        since: "22"
    ]
    public func flatMap<R>(transform: (T) -> Option<R>): Option<R>
}

/**
 * @description Performs an action if the Option is Some.
 * @param o The Option to check.
 * @param action The action to perform.
 */
@!APILevel[
    since: "22"
]
public func ifSome<T>(o: Option<T>, action: (T) -> Unit): Unit

/**
 * @description Performs an action if the Option is None.
 * @param o The Option to check.
 * @param action The action to perform.
 */
@!APILevel[
    since: "22"
]
public func ifNone<T>(o: Option<T>, action: () -> Unit): Unit

extend<T> Option<T> <: Equatable<Option<T>> where T <: Equatable<T> {
    /**
     * @description Checks if this Option is equal to another Option.
     * @param other The Option to compare with.
     * @returns true if the Options are equal, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Option<T>): Bool

    /**
     * @description Checks if this Option is not equal to another Option.
     * @param other The Option to compare with.
     * @returns true if the Options are not equal, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Option<T>): Bool
}

extend<T> Option<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this Option.
     * @returns A string representation of this Option.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend<T> Option<T> <: Hashable where T <: Hashable {
    /**
     * @description Returns a hash code value for this Option.
     * @returns A hash code value for this Option.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

extend<T> Option<Option<T>> {
    /**
     * @description Flattens a nested Option.
     * @returns The inner Option if the outer Option is Some, otherwise None.
     */
    @!APILevel[
        since: "22"
    ]
    public func flatten(): Option<T>
}

/**
 * @description Error thrown when there is not enough memory to perform an operation.
 */
@!APILevel[
    since: "22"
]
public class OutOfMemoryError <: Error {
}

/**
 * @description Exception thrown when an arithmetic operation overflows.
 */
@!APILevel[
    since: "22"
]
public class OverflowException <: ArithmeticException {
    /**
     * @description Constructs a new OverflowException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new OverflowException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Prints a string to the standard output.
 * @param str The string to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(str: String, flush!: Bool = false): Unit

/**
 * @description Prints a newline to the standard output.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(): Unit

/**
 * @description Prints a string followed by a newline to the standard output.
 * @param str The string to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(str: String): Unit

/**
 * @description Prints a string to the standard error stream.
 * @param str The string to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func eprint(str: String, flush!: Bool = true): Unit

/**
 * @description Prints a string followed by a newline to the standard error stream.
 * @param str The string to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func eprintln(str: String): Unit

/**
 * @description Prints the string representation of an object to the standard error stream.
 * @param arg The object to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func eprint<T>(arg: T, flush!: Bool = false): Unit where T <: ToString

/**
 * @description Prints the string representation of an object followed by a newline to the standard error stream.
 * @param arg The object to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func eprintln<T>(arg: T): Unit where T <: ToString

/**
 * @description Prints the string representation of an object to the standard output.
 * @param arg The object to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print<T>(arg: T, flush!: Bool = false): Unit where T <: ToString

/**
 * @description Prints the string representation of an object followed by a newline to the standard output.
 * @param arg The object to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println<T>(arg: T): Unit where T <: ToString

/**
 * @description Reads a line from the standard input.
 * @returns The line read from the standard input.
 */
 @!APILevel[
    since: "22"
]
public func readln(): String

/**
 * @description Prints a boolean value to the standard output.
 * @param b The boolean value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(b: Bool, flush!: Bool = false): Unit

/**
 * @description Prints a boolean value followed by a newline to the standard output.
 * @param b The boolean value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(b: Bool): Unit

/**
 * @description Prints a rune to the standard output.
 * @param c The rune to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(c: Rune, flush!: Bool = false): Unit

/**
 * @description Prints a rune followed by a newline to the standard output.
 * @param c The rune to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(c: Rune): Unit

/**
 * @description Prints a Float16 value to the standard output.
 * @param f The Float16 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(f: Float16, flush!: Bool = false): Unit

/**
 * @description Prints a Float16 value followed by a newline to the standard output.
 * @param f The Float16 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(f: Float16): Unit

/**
 * @description Prints a Float32 value to the standard output.
 * @param f The Float32 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(f: Float32, flush!: Bool = false): Unit

/**
 * @description Prints a Float32 value followed by a newline to the standard output.
 * @param f The Float32 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(f: Float32): Unit

/**
 * @description Prints a Float64 value to the standard output.
 * @param f The Float64 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(f: Float64, flush!: Bool = false): Unit

/**
 * @description Prints a Float64 value followed by a newline to the standard output.
 * @param f The Float64 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(f: Float64): Unit

/**
 * @description Prints an Int8 value to the standard output.
 * @param i The Int8 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: Int8, flush!: Bool = false): Unit

/**
 * @description Prints an Int16 value to the standard output.
 * @param i The Int16 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: Int16, flush!: Bool = false): Unit

/**
 * @description Prints an Int32 value to the standard output.
 * @param i The Int32 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: Int32, flush!: Bool = false): Unit

/**
 * @description Prints an Int64 value to the standard output.
 * @param i The Int64 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: Int64, flush!: Bool = false): Unit

/**
 * @description Prints an Int8 value followed by a newline to the standard output.
 * @param i The Int8 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: Int8): Unit

/**
 * @description Prints an Int16 value followed by a newline to the standard output.
 * @param i The Int16 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: Int16): Unit

/**
 * @description Prints an Int32 value followed by a newline to the standard output.
 * @param i The Int32 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: Int32): Unit

/**
 * @description Prints an Int64 value followed by a newline to the standard output.
 * @param i The Int64 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: Int64): Unit

/**
 * @description Prints a UInt8 value to the standard output.
 * @param i The UInt8 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: UInt8, flush!: Bool = false): Unit

/**
 * @description Prints a UInt16 value to the standard output.
 * @param i The UInt16 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: UInt16, flush!: Bool = false): Unit

/**
 * @description Prints a UInt32 value to the standard output.
 * @param i The UInt32 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: UInt32, flush!: Bool = false): Unit

/**
 * @description Prints a UInt64 value to the standard output.
 * @param i The UInt64 value to print.
 * @param flush Whether to flush the output stream after printing.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func print(i: UInt64, flush!: Bool = false): Unit

/**
 * @description Prints a UInt8 value followed by a newline to the standard output.
 * @param i The UInt8 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: UInt8): Unit

/**
 * @description Prints a UInt16 value followed by a newline to the standard output.
 * @param i The UInt16 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: UInt16): Unit

/**
 * @description Prints a UInt32 value followed by a newline to the standard output.
 * @param i The UInt32 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: UInt32): Unit

/**
 * @description Prints a UInt64 value followed by a newline to the standard output.
 * @param i The UInt64 value to print.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func println(i: UInt64): Unit

/**
 * @description Range representation.
 */
@ConstSafe
@!APILevel[
    since: "22"
]
public struct Range<T> <: Iterable<T> where T <: Countable<T> & Comparable<T> & Equatable<T> {
    /**
     * @description The start value of the range.
     */
    @!APILevel[
        since: "22"
    ]
    public let start: T

    /**
     * @description The end value of the range.
     */
    @!APILevel[
        since: "22"
    ]
    public let end: T

    /**
     * @description The step value of the range.
     */
    @!APILevel[
        since: "22"
    ]
    public let step: Int64

    /**
     * @description Whether the range has a start value.
     */
    @!APILevel[
        since: "22"
    ]
    public let hasStart: Bool

    /**
     * @description Whether the range has an end value.
     */
    @!APILevel[
        since: "22"
    ]
    public let hasEnd: Bool

    /**
     * @description Whether the range is closed (includes the end value).
     */
    @!APILevel[
        since: "22"
    ]
    public let isClosed: Bool

    /**
     * @description Constructs a Range with the specified parameters.
     * @param start The start value of the range.
     * @param end The end value of the range.
     * @param step The step value of the range.
     * @param hasStart Whether the range has a start value.
     * @param hasEnd Whether the range has an end value.
     * @param isClosed Whether the range is closed (includes the end value).
     * @throws IllegalArgumentException if the value of the step is equal to zero
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public const init(start: T, end: T, step: Int64, hasStart: Bool, hasEnd: Bool, isClosed: Bool)

    /**
     * @description Returns an iterator over the values in the range.
     * @returns An iterator over the values in the range.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description Checks if the range is empty.
     * @returns true if the range is empty, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public const func isEmpty(): Bool
}

/**
 * @description An iterator over the values in a Range.
 */
@!APILevel[
    since: "22"
]
public class RangeIterator<T> <: Iterator<T> where T <: Countable<T> & Comparable<T> & Equatable<T> {
    /**
     * @description Returns the next value in the iteration.
     * @returns The next value in the iteration, or None if there are no more values.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func next(): Option<T>
}

/**
 * @description Interface for types that represent a resource that can be closed.
 */
@!APILevel[
    since: "22"
]
public interface Resource {
    /**
     * @description Checks if the resource is closed.
     * @returns true if the resource is closed, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func isClosed(): Bool

    /**
     * @description Closes the resource.
     */
    @!APILevel[
        since: "22"
    ]
    func close(): Unit
}

/**
 * @description Suspends the current thread for the specified duration.
 * @param dur The duration to sleep.
 * @throws ArithmeticException if the duration is negative.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func sleep(dur: Duration): Unit

/**
 * @description Exception thrown when a spawn operation fails.
 */
@!APILevel[
    since: "22"
]
public class SpawnException <: Exception {
    /**
     * @description Constructs a new SpawnException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new SpawnException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Error thrown when the stack overflows.
 */
@!APILevel[
    since: "22"
]
public class StackOverflowError <: Error {
    /**
     * @description Constructs a new StackOverflowError.
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    /**
     * @description Prints the stack trace to the standard error stream.
     */
    @!APILevel[
        since: "22"
    ]
    public override func printStackTrace(): Unit
}

/**
 * @description Represents an element in a stack trace.
 */
@!APILevel[
    since: "22"
]
public open class StackTraceElement {
    /**
     * @description The fully qualified name of the class containing the execution point represented by this stack trace element.
     */
    @!APILevel[
        since: "22"
    ]
    public let declaringClass: String

    /**
     * @description The name of the method containing the execution point represented by this stack trace element.
     */
    @!APILevel[
        since: "22"
    ]
    public let methodName: String

    /**
     * @description The name of the file containing the execution point represented by this stack trace element.
     */
    @!APILevel[
        since: "22"
    ]
    public let fileName: String

    /**
     * @description The line number of the source line containing the execution point represented by this stack trace element.
     */
    @!APILevel[
        since: "22"
    ]
    public let lineNumber: Int64

    /**
     * @description Constructs a new StackTraceElement.
     * @param declaringClass The fully qualified name of the class containing the execution point represented by this stack trace element.
     * @param methodName The name of the method containing the execution point represented by this stack trace element.
     * @param fileName The name of the file containing the execution point represented by this stack trace element.
     * @param lineNumber The line number of the source line containing the execution point represented by this stack trace element.
     */
    @!APILevel[
        since: "22"
    ]
    public init(declaringClass: String, methodName: String, fileName: String, lineNumber: Int64)
}

/**
 * @description Represents a string of characters.
 */
@ConstSafe
@!APILevel[
    since: "22"
]
public struct String <: Collection<Byte> & Comparable<String> & Hashable & ToString {
    /**
     * @description An empty string.
     */
    @!APILevel[
        since: "22"
    ]
    public static const empty: String = String()

    /**
     * @description Constructs an empty string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public const init()

    /**
     * @description Constructs a string from an array of runes.
     * @param value The array of runes.
     * @throws IllegalArgumentException if the resulting string size exceeds the maximum allowed size (UInt32.Max).
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(value: Array<Rune>)

    /**
     * @description Constructs a string from a collection of runes.
     * @param value The collection of runes.
     * @throws IllegalArgumentException if the resulting string size exceeds the maximum allowed size (UInt32.Max).
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(value: Collection<Rune>)

    /**
     * @description Gets the byte at the specified index.
     * @param index The index of the byte to get.
     * @returns The byte at the specified index, or None if the index is out of bounds.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func get(index: Int64): Option<Byte>

    /**
     * @description Converts this string to an array of runes.
     * @returns An array of runes.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toRuneArray(): Array<Rune>

    /**
     * @description Converts this string to an array of bytes.
     * @returns An array of bytes.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<Byte>

    /**
     * @description Returns this string.
     * @returns This string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Returns an iterator over the bytes of this string.
     * @returns An iterator over the bytes of this string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<Byte>

    /**
     * @description Returns an iterator over the runes of this string.
     * @returns An iterator over the runes of this string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func runes(): Iterator<Rune>

    /**
     * @description Returns an iterator over the lines of this string.
     * @returns An iterator over the lines of this string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lines(): Iterator<String>

    /**
     * @description Gets the size of this string in bytes.
     * @returns The size of this string in bytes.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Checks if this string is empty.
     * @returns true if this string is empty, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Checks if this string consists only of ASCII characters.
     * @returns true if this string consists only of ASCII characters, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isAscii(): Bool

    /**
     * @description Checks if this string consists only of ASCII whitespace characters.
     * @returns true if this string consists only of ASCII whitespace characters, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isAsciiBlank(): Bool

    /**
     * @description Creates a copy of this string.
     * @returns A copy of this string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func clone(): String

    /**
     * @description Returns a hash code value for this string.
     * @returns A hash code value for this string.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Creates a string from UTF-8 data.
     * @param utf8Data The UTF-8 data.
     * @returns A string created from the UTF-8 data.
     * @throws IllegalArgumentException if the input parameter does not conform to the utf-8 sequence rules,
     *         or when attempting to construct a string with a length exceeding the maximum value of UInt32.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromUtf8(utf8Data: Array<UInt8>): String

    /**
     * @description Gets the raw data of this string.
     * @returns The raw data of this string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public unsafe func rawData(): Array<Byte>

    /**
     * @description Creates a string from UTF-8 data without checking validity.
     * @param utf8Data The UTF-8 data.
     * @returns A string created from the UTF-8 data.
     * @throws IllegalArgumentException if there is an illegal argument.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public unsafe static func fromUtf8Unchecked(utf8Data: Array<UInt8>): String

    /**
     * @description Finds the first occurrence of a byte in this string.
     * @param b The byte to find.
     * @returns The index of the first occurrence of the byte, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(b: Byte): Option<Int64>

    /**
     * @description Finds the first occurrence of a byte in this string starting from a specified index.
     * @param b The byte to find.
     * @param fromIndex The index to start searching from.
     * @returns The index of the first occurrence of the byte, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(b: Byte, fromIndex: Int64): Option<Int64>

    /**
     * @description Finds the first occurrence of a substring in this string.
     * @param str The substring to find.
     * @returns The index of the first occurrence of the substring, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(str: String): Option<Int64>

    /**
     * @description Finds the first occurrence of a substring in this string starting from a specified index.
     * @param str The substring to find.
     * @param fromIndex The index to start searching from.
     * @returns The index of the first occurrence of the substring, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func indexOf(str: String, fromIndex: Int64): Option<Int64>

    /**
     * @description Finds the last occurrence of a byte in this string.
     * @param b The byte to find.
     * @returns The index of the last occurrence of the byte, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(b: Byte): Option<Int64>

    /**
     * @description Finds the last occurrence of a byte in this string up to a specified index.
     * @param b The byte to find.
     * @param fromIndex The index to stop searching at.
     * @returns The index of the last occurrence of the byte, or None if not found.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(b: Byte, fromIndex: Int64): Option<Int64>

    /**
     * @description Finds the last occurrence of a substring in this string.
     * @param str The substring to find.
     * @returns The index of the last occurrence of the substring, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(str: String): Option<Int64>

    /**
     * @description Finds the last occurrence of a substring in this string up to a specified index.
     * @param str The substring to find.
     * @param fromIndex The index to stop searching at.
     * @returns The index of the last occurrence of the substring, or None if not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lastIndexOf(str: String, fromIndex: Int64): Option<Int64>

    /**
     * @description Counts the number of occurrences of a substring in this string.
     * @param str The substring to count.
     * @returns The number of occurrences of the substring.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func count(str: String): Int64

    /**
     * @description Splits this string into an array of substrings using a delimiter.
     * @param str The delimiter.
     * @param removeEmpty Whether to remove empty substrings.
     * @returns An array of substrings.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func split(str: String, removeEmpty!: Bool = false): Array<String>

    /**
     * @description Splits this string into an array of substrings using a delimiter with a maximum number of splits.
     * @param str The delimiter.
     * @param maxSplits The maximum number of splits.
     * @param removeEmpty Whether to remove empty substrings.
     * @returns An array of substrings.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func split(str: String, maxSplits: Int64, removeEmpty!: Bool = false): Array<String>

    /**
     * @description Returns an iterator that lazily splits this string using a delimiter.
     * @param str The delimiter.
     * @param removeEmpty Whether to remove empty substrings.
     * @returns An iterator over the substrings.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lazySplit(str: String, removeEmpty!: Bool = false): Iterator<String>

    /**
     * @description Returns an iterator that lazily splits this string using a delimiter with a maximum number of splits.
     * @param str The delimiter.
     * @param maxSplits The maximum number of splits.
     * @param removeEmpty Whether to remove empty substrings.
     * @returns An iterator over the substrings.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func lazySplit(str: String, maxSplits: Int64, removeEmpty!: Bool = false): Iterator<String>

    /**
     * @description Replaces all occurrences of a substring with another substring.
     * @param old The substring to replace.
     * @param new The replacement substring.
     * @returns A new string with the replacements made.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func replace(old: String, new: String): String

    /**
     * @description Converts all ASCII letters in this string to lowercase.
     * @returns A new string with ASCII letters converted to lowercase.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toAsciiLower(): String

    /**
     * @description Converts all ASCII letters in this string to uppercase.
     * @returns A new string with ASCII letters converted to uppercase.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toAsciiUpper(): String

    /**
     * @description Converts the first ASCII letter in each word to uppercase and the rest to lowercase.
     * @returns A new string with ASCII letters converted to title case.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toAsciiTitle(): String

    /**
     * @description Removes leading and trailing ASCII whitespace from this string.
     * @returns A new string with leading and trailing ASCII whitespace removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func trimAscii(): String

    /**
     * @description Removes leading ASCII whitespace from this string.
     * @returns A new string with leading ASCII whitespace removed.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func trimAsciiStart(): String

    /**
     * @description Removes trailing ASCII whitespace from this string.
     * @returns A new string with trailing ASCII whitespace removed.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func trimAsciiEnd(): String

    /**
     * @description Removes leading characters from this string that are present in the specified array.
     * @param set The array of characters to remove.
     * @returns A new string with leading characters removed.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func trimStart(set: Array<Rune>): String

    /**
     * @description Removes trailing characters from this string that are present in the specified array.
     * @param set The array of characters to remove.
     * @returns A new string with trailing characters removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func trimEnd(set: Array<Rune>): String

    /**
     * @description Removes leading characters from this string that are present in the specified string.
     * @param set The string of characters to remove.
     * @returns A new string with leading characters removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func trimStart(set: String): String

    /**
     * @description Removes trailing characters from this string that are present in the specified string.
     * @param set The string of characters to remove.
     * @returns A new string with trailing characters removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func trimEnd(set: String): String

    /**
     * @description Removes leading characters from this string that satisfy the specified predicate.
     * @param predicate The predicate to apply.
     * @returns A new string with leading characters removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func trimStart(predicate: (Rune) -> Bool): String

    /**
     * @description Removes trailing characters from this string that satisfy the specified predicate.
     * @param predicate The predicate to apply.
     * @returns A new string with trailing characters removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func trimEnd(predicate: (Rune) -> Bool): String

    /**
     * @description Removes the specified prefix from this string if it exists.
     * @param prefix The prefix to remove.
     * @returns A new string with the prefix removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func removePrefix(prefix: String): String

    /**
     * @description Removes the specified suffix from this string if it exists.
     * @param suffix The suffix to remove.
     * @returns A new string with the suffix removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func removeSuffix(suffix: String): String

    /**
     * @description Checks if this string contains the specified substring.
     * @param str The substring to check for.
     * @returns true if this string contains the substring, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(str: String): Bool

    /**
     * @description Checks if this string starts with the specified prefix.
     * @param prefix The prefix to check for.
     * @returns true if this string starts with the prefix, false otherwise.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func startsWith(prefix: String): Bool

    /**
     * @description Checks if this string ends with the specified suffix.
     * @param suffix The suffix to check for.
     * @returns true if this string ends with the suffix, false otherwise.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func endsWith(suffix: String): Bool

    /**
     * @description Pads the start of this string to the specified width with the specified padding string.
     * @param totalWidth The total width of the resulting string.
     * @param padding The string to pad with.
     * @returns A new string padded to the specified width.
     * @throws IllegalArgumentException if totalWidth is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func padStart(totalWidth: Int64, padding!: String = " "): String

    /**
     * @description Pads the end of this string to the specified width with the specified padding string.
     * @param totalWidth The total width of the resulting string.
     * @param padding The string to pad with.
     * @returns A new string padded to the specified width.
     * @throws IllegalArgumentException if totalWidth is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func padEnd(totalWidth: Int64, padding!: String = " "): String

    /**
     * @description Checks if this string is equal to another string, ignoring ASCII case.
     * @param other The string to compare with.
     * @returns true if the strings are equal ignoring ASCII case, false otherwise.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func equalsIgnoreAsciiCase(other: String): Bool

    /**
     * @description Compares this string with another string for order.
     * @param str The string to compare with.
     * @returns An Ordering value indicating the relative order of the two strings.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compare(str: String): Ordering

    /**
     * @description Concatenates this string with another string.
     * @param other The string to concatenate with.
     * @returns The concatenated string.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator const func +(other: String): String

    /**
     * @description Repeats this string the specified number of times.
     * @param count The number of times to repeat.
     * @returns The repeated string.
     * @throws IllegalArgumentException if attempting to construct a string with a length exceeding the maximum value of UInt32.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator const func *(count: Int64): String

    /**
     * @description Checks if this string is less than another string.
     * @param other The string to compare with.
     * @returns true if this string is less than the other string, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func <(other: String): Bool

    /**
     * @description Checks if this string is less than or equal to another string.
     * @param other The string to compare with.
     * @returns true if this string is less than or equal to the other string, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func <=(other: String): Bool

    /**
     * @description Checks if this string is greater than another string.
     * @param other The string to compare with.
     * @returns true if this string is greater than the other string, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func >(other: String): Bool

    /**
     * @description Checks if this string is greater than or equal to another string.
     * @param other The string to compare with.
     * @returns true if this string is greater than or equal to the other string, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func >=(other: String): Bool

    /**
     * @description Checks if this string is equal to another string.
     * @param other The string to compare with.
     * @returns true if the strings are equal, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func ==(other: String): Bool

    /**
     * @description Checks if this string is not equal to another string.
     * @param other The string to compare with.
     * @returns true if the strings are not equal, false otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator const func !=(other: String): Bool

    /**
     * @description Gets the byte at the specified index.
     * @param index The index of the byte to get.
     * @returns The byte at the specified index.
     * @throws IndexOutOfBoundsException if the index is out of bounds.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator const func [](index: Int64): Byte

    /**
     * @description Gets a substring using the specified range.
     * @param range The range to use.
     * @returns The substring.
     * @throws IllegalArgumentException if `step` is not equal to one.
     * @throws IndexOutOfBoundsException if `range` is out of bounds.
     * @throws IllegalArgumentException if the start or end point of the range is not the code point boundary.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator const func [](range: Range<Int64>): String

    /**
     * @description Joins an array of strings using the specified delimiter.
     * @param strArray The array of strings to join.
     * @param delimiter The delimiter to use.
     * @returns The joined string.
     * @throws IllegalArgumentException if attempting to construct a string with a length exceeding the maximum value of UInt32.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func join(strArray: Array<String>, delimiter!: String = String.empty): String
}

/**
 * @description A mutable sequence of characters.
 */
@!APILevel[
    since: "22"
]
public class StringBuilder <: ToString {
    /**
     * @description Constructs an empty StringBuilder.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a StringBuilder with the specified string.
     * @param str The initial string.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(str: String)

    /**
     * @description Constructs a StringBuilder with the specified rune repeated n times.
     * @param r The rune to repeat.
     * @param n The number of times to repeat.
     * @throws IllegalArgumentException if n is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(r: Rune, n: Int64)

    /**
     * @description Constructs a StringBuilder with the specified array of runes.
     * @param value The array of runes.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(value: Array<Rune>)

    /**
     * @description Constructs a StringBuilder with the specified capacity.
     * @param capacity The initial capacity.
     * @throws IllegalArgumentException if capacity is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Gets the size of this StringBuilder.
     * @returns The size of this StringBuilder.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Gets the capacity of this StringBuilder.
     * @returns The capacity of this StringBuilder.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description Returns a string representation of this StringBuilder.
     * @returns A string representation of this StringBuilder.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Resets this StringBuilder to its initial state.
     * @param capacity The new capacity, or None to keep the current capacity.
     * @throws IllegalArgumentException if capacity is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reset(capacity!: Option<Int64> = None): Unit

    /**
     * @description Appends a rune to this StringBuilder.
     * @param r The rune to append.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(r: Rune): Unit

    /**
     * @description Appends a string to this StringBuilder.
     * @param str The string to append.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(str: String): Unit

    /**
     * @description Appends another StringBuilder to this StringBuilder.
     * @param sb The StringBuilder to append.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(sb: StringBuilder): Unit

    /**
     * @description Appends UTF-8 data to this StringBuilder.
     * @param arr The array of bytes to append.
     * @throws IllegalArgumentException if the byte array does not conform to the utf8 encoding rules.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func appendFromUtf8(arr: Array<Byte>): Unit

    /**
     * @description Appends UTF-8 data to this StringBuilder without checking validity.
     * @param arr The array of bytes to append.
     * @throws IllegalArgumentException if the byte array does not conform to the utf8 encoding rules.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public unsafe func appendFromUtf8Unchecked(arr: Array<Byte>): Unit

    /**
     * @description Appends an array of runes to this StringBuilder.
     * @param runeArr The array of runes to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(runeArr: Array<Rune>): Unit

    /**
     * @description Appends a C string to this StringBuilder.
     * @param cstr The C string to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(cstr: CString): Unit

    /**
     * @description Appends the string representation of an object to this StringBuilder.
     * @param v The object to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append<T>(v: T): Unit where T <: ToString

    /**
     * @description Appends the string representations of an array of objects to this StringBuilder.
     * @param val The array of objects to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append<T>(val: Array<T>): Unit where T <: ToString

    /**
     * @description Appends a boolean value to this StringBuilder.
     * @param b The boolean value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(b: Bool): Unit

    /**
     * @description Appends an Int64 value to this StringBuilder.
     * @param n The Int64 value to append.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: Int64): Unit

    /**
     * @description Appends an Int32 value to this StringBuilder.
     * @param n The Int32 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: Int32): Unit

    /**
     * @description Appends an Int16 value to this StringBuilder.
     * @param n The Int16 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: Int16): Unit

    /**
     * @description Appends an Int8 value to this StringBuilder.
     * @param n The Int8 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: Int8): Unit

    /**
     * @description Appends a UInt64 value to this StringBuilder.
     * @param n The UInt64 value to append.
     */
    @OverflowWrapping
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: UInt64): Unit

    /**
     * @description Appends a UInt32 value to this StringBuilder.
     * @param n The UInt32 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: UInt32): Unit

    /**
     * @description Appends a UInt16 value to this StringBuilder.
     * @param n The UInt16 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: UInt16): Unit

    /**
     * @description Appends a UInt8 value to this StringBuilder.
     * @param n The UInt8 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: UInt8): Unit

    /**
     * @description Appends a Float64 value to this StringBuilder.
     * @param n The Float64 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: Float64): Unit

    /**
     * @description Appends a Float32 value to this StringBuilder.
     * @param n The Float32 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: Float32): Unit

    /**
     * @description Appends a Float16 value to this StringBuilder.
     * @param n The Float16 value to append.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func append(n: Float16): Unit

    /**
     * @description Reserves additional capacity for this StringBuilder.
     * @param additional The additional capacity to reserve.
     */
    @Frozen
    @OverflowThrowing
    @!APILevel[
        since: "22"
    ]
    public func reserve(additional: Int64): Unit
}

/**
 * @description Represents a thread of execution.
 */
@!APILevel[
    since: "22"
]
public class Thread {
    /**
     * @description Gets the current thread.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop currentThread: Thread

    /**
     * @description Gets the ID of this thread.
     */
    @!APILevel[
        since: "22"
    ]
    public prop id: Int64

    /**
     * @description Gets or sets the name of this thread.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop name: String

    /**
     * @description Checks if this thread has a pending cancellation.
     * @returns true if this thread has a pending cancellation, false otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public prop hasPendingCancellation: Bool

    /**
     * @description Sets the uncaught exception handler for all threads.
     * @param exHandler The exception handler.
     */
    @!APILevel[
        since: "22"
    ]
    public static func handleUncaughtExceptionBy(exHandler: (Thread, Exception) -> Unit): Unit
}

/**
 * @description Provides thread-local variables.
 */
@!APILevel[
    since: "22"
]
public class ThreadLocal<T> {
    /**
     * @description Gets the value of this thread-local variable.
     * @returns The value of this thread-local variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func get(): ?T

    /**
     * @description Sets the value of this thread-local variable.
     * @param value The value to set.
     */
    @!APILevel[
        since: "22"
    ]
    public func set(value: ?T): Unit
}

/**
 * @description Exception thrown when an operation times out.
 */
@!APILevel[
    since: "22"
]
public class TimeoutException <: Exception {
    /**
     * @description Constructs a new TimeoutException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new TimeoutException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Interface for types that can be converted to a string.
 */
@!APILevel[
    since: "22"
]
public interface ToString {
    /**
     * @description Returns a string representation of this object.
     * @returns A string representation of this object.
     */
    @!APILevel[
        since: "22"
    ]
    func toString(): String
}

extend Int64 <: ToString {
    /**
     * @description Returns a string representation of this Int64 value.
     * @returns A string representation of this Int64 value.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend IntNative <: ToString {
    /**
     * @description Returns a string representation of this IntNative value.
     * @returns A string representation of this IntNative value.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Int32 <: ToString {
    /**
     * @description Returns a string representation of this Int32 value.
     * @returns A string representation of this Int32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Int16 <: ToString {
    /**
     * @description Returns a string representation of this Int16 value.
     * @returns A string representation of this Int16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Int8 <: ToString {
    /**
     * @description Returns a string representation of this Int8 value.
     * @returns A string representation of this Int8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend UInt64 <: ToString {
    /**
     * @description Returns a string representation of this UInt64 value.
     * @returns A string representation of this UInt64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend UIntNative <: ToString {
    /**
     * @description Returns a string representation of this UIntNative value.
     * @returns A string representation of this UIntNative value.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend UInt32 <: ToString {
    /**
     * @description Returns a string representation of this UInt32 value.
     * @returns A string representation of this UInt32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend UInt16 <: ToString {
    /**
     * @description Returns a string representation of this UInt16 value.
     * @returns A string representation of this UInt16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend UInt8 <: ToString {
    /**
     * @description Returns a string representation of this UInt8 value.
     * @returns A string representation of this UInt8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Float64 <: ToString {
    /**
     * @description Returns a string representation of this Float64 value.
     * @returns A string representation of this Float64 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Float32 <: ToString {
    /**
     * @description Returns a string representation of this Float32 value.
     * @returns A string representation of this Float32 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Float16 <: ToString {
    /**
     * @description Returns a string representation of this Float16 value.
     * @returns A string representation of this Float16 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Bool <: ToString {
    /**
     * @description Returns a string representation of this Bool value.
     * @returns A string representation of this Bool value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Rune <: ToString {
    /**
     * @description Returns a string representation of this Rune value.
     * @returns A string representation of this Rune value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend Unit <: ToString {
    /**
     * @description Returns a string representation of this Unit value.
     * @returns A string representation of this Unit value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description A type alias for UInt8.
 */
public type Byte = UInt8

/**
 * @description A type alias for Int64.
 */
public type Int = Int64

/**
 * @description A type alias for UInt64.
 */
public type UInt = UInt64

/**
 * @description Exception thrown when an unsupported operation is attempted.
 */
@!APILevel[
    since: "22"
]
public class UnsupportedException <: Exception {
    /**
     * @description Constructs a new UnsupportedException with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new UnsupportedException with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}
