package std.collection

import std.math.*

/**
 * @description A resizable array implementation of a double-ended queue (`Deque`).
 * This class provides methods to add, remove, and inspect elements at both ends.
 */
@!APILevel[
    since: "22"
]
public class ArrayDeque<T> <: Deque<T> {
    /**
     * @description Constructs an empty deque with an initial default capacity.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs an empty deque with the specified initial capacity.
     * @param capacity The initial capacity of the deque.
     * @throws IllegalArgumentException if the specified capacity is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description The number of elements in the deque.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description The first element of the deque, or `null` if the deque is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public prop first: ?T

    /**
     * @description The last element of the deque, or `null` if the deque is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public prop last: ?T

    /**
     * @description The current capacity of the deque.
     */
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description Returns `true` if the deque contains no elements.
     * @returns `true` if this deque is empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Inserts the specified element at the front of this deque.
     * @param element The element to add.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func addFirst(element: T): Unit

    /**
     * @description Inserts the specified element at the end of this deque.
     * @param element The element to add.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func addLast(element: T): Unit

    /**
     * @description Retrieves and removes the first element of this deque.
     * @returns The head of the deque, or `null` if it is empty.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func removeFirst(): ?T

    /**
     * @description Retrieves and removes the last element of this deque.
     * @returns The tail of the deque, or `null` if it is empty.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func removeLast(): ?T

    /**
     * @description Returns an array containing all of the elements in this deque in proper sequence (from first to last element).
     * @returns An array containing all of the elements in this deque.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>

    /**
     * @description Removes all of the elements from this deque. The deque will be empty after this call returns.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Increases the capacity of this `ArrayDeque` instance, if necessary, to ensure that it can hold at least the number of elements specified by the `additional` argument.
     * @param additional The desired number of additional elements.
     * @throws IllegalArgumentException if the requested capacity is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reserve(additional: Int64): Unit

    /**
     * @description Returns an iterator over the elements in this deque in proper sequence.
     * @returns An iterator over the elements in this deque.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>
}

extend<T> ArrayDeque<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this deque.
     * @returns A string representation of the deque.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description A resizable-array implementation of the `List` interface. Implements all optional list operations, and permits all elements, including `null`.
 */
@!APILevel[
    since: "22"
]
public class ArrayList<T> <: List<T> {
    /**
     * @description The current capacity of the list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description Constructs an empty list with an initial default capacity.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs an empty list with the specified initial capacity.
     * @param capacity The initial capacity of the list.
     * @throws IllegalArgumentException if the specified capacity is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Constructs a list containing the elements returned by the given initializer function.
     * @param size The size of the list to create.
     * @param initElement A function that returns an element for a given index.
     * @throws IllegalArgumentException if the specified size is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(size: Int64, initElement: (Int64) -> T)

    /**
     * @description Constructs a list containing the elements of the specified collection, in the order they are returned by the collection's iterator.
     * @param elements The collection whose elements are to be placed into this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<T>)

    /**
     * @description Creates an `ArrayList` from an existing `Array`.
     * @param elements The array of elements.
     * @returns A new `ArrayList` containing the elements from the array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public static func of(elements: Array<T>): ArrayList<T>

    /**
     * @description Returns the internal backing array. This is an unsafe operation; modifications to the returned array may corrupt the list.
     * @returns The raw backing array.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public unsafe func getRawArray(): Array<T>

    /**
     * @description Returns an array containing all of the elements in this list in proper sequence.
     * @returns An array containing all of the elements in this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>

    /**
     * @description Returns the element at the specified position in this list, or `null` if the index is out of bounds.
     * @param index The index of the element to return.
     * @returns The element at the specified position, or `null`.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func get(index: Int64): ?T

    /**
     * @description The first element of the list, or `null` if the list is empty.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop first: ?T

    /**
     * @description The last element of the list, or `null` if the list is empty.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop last: ?T

    /**
     * @description Appends the specified element to the end of this list.
     * @param element The element to be appended to this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func add(element: T): Unit

    /**
     * @description Appends all of the elements in the specified collection to the end of this list.
     * @param all The collection containing elements to be added to this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func add(all!: Collection<T>): Unit

    /**
     * @description Inserts the specified element at the specified position in this list.
     * @param element The element to be inserted.
     * @param at The index at which the specified element is to be inserted.
     * @throws IndexOutOfBoundsException if the index is out of range (`index < 0 || index > size`).
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func add(element: T, at!: Int64): Unit

    /**
     * @description Inserts all of the elements in the specified collection into this list at the specified position.
     * @param all The collection containing elements to be added to this list.
     * @param at The index at which to insert the first element from the specified collection.
     * @throws IndexOutOfBoundsException if the index is out of range (`index < 0 || index > size`).
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func add(all!: Collection<T>, at!: Int64): Unit

    /**
     * @description Removes the element at the specified position in this list.
     * @param at The index of the element to be removed.
     * @returns The element that was removed from the list.
     * @throws IndexOutOfBoundsException if the index is out of range (`index < 0 || index >= size`).
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func remove(at!: Int64): T

    /**
     * @description Removes from this list all of the elements whose index is between `fromIndex`, inclusive, and `toIndex`, exclusive.
     * @param range The range of indices to remove.
     * @throws IndexOutOfBoundsException for an illegal endpoint index value (`fromIndex < 0 || toIndex > size || fromIndex > toIndex`).
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func remove(range: Range<Int64>): Unit

    /**
     * @description Removes all of the elements of this collection that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for elements to be removed.
     * @throws ConcurrentModificationException if the list is modified externally during the operation.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeIf(predicate: (T) -> Bool): Unit

    /**
     * @description Removes all of the elements from this list. The list will be empty after this call returns.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Increases the capacity of this `ArrayList` instance, if necessary, to ensure that it can hold at least the number of elements specified by the `additional` argument.
     * @param additional The desired number of additional elements.
     * @throws IllegalArgumentException if the requested capacity is invalid.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reserve(additional: Int64): Unit

    /**
     * @description Sorts this list according to the order induced by the specified comparator.
     * @param stable Whether to perform a stable sort.
     * @param comparator The comparator to determine the order of the list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func sortBy(stable!: Bool, comparator!: (T, T) -> Ordering): Unit

    /**
     * @description Sorts this list according to the order induced by the specified comparator. Performs an unstable sort.
     * @param comparator The comparator to determine the order of the list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func sortBy(comparator!: (T, T) -> Ordering): Unit

    /**
     * @description Reverses the order of the elements in this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func reverse(): Unit

    /**
     * @description Returns a view of the portion of this list between the specified `fromIndex`, inclusive, and `toIndex`, exclusive.
     * @param range The range of indices for the slice.
     * @returns A new `ArrayList` containing the specified slice.
     * @throws IndexOutOfBoundsException for an illegal endpoint index value (`fromIndex < 0 || toIndex > size || fromIndex > toIndex`).
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](range: Range<Int64>): ArrayList<T>

    /**
     * @description Returns a view of the portion of this list between the specified `fromIndex`, inclusive, and `toIndex`, exclusive.
     * @param range The range of indices for the slice.
     * @returns A new `ArrayList` containing the specified slice.
     * @throws IndexOutOfBoundsException for an illegal endpoint index value (`fromIndex < 0 || toIndex > size || fromIndex > toIndex`).
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func slice(range: Range<Int64>): ArrayList<T>

    /**
     * @description Returns a shallow copy of this `ArrayList` instance.
     * @returns A clone of this `ArrayList` instance.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func clone(): ArrayList<T>

    /**
     * @description Returns the element at the specified position in this list.
     * @param index The index of the element to return.
     * @returns The element at the specified position.
     * @throws IndexOutOfBoundsException if the index is out of range (`index < 0 || index >= size`).
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): T

    /**
     * @description Replaces the element at the specified position in this list with the specified element.
     * @param index The index of the element to replace.
     * @param value The element to be stored at the specified position.
     * @throws IndexOutOfBoundsException if the index is out of range (`index < 0 || index >= size`).
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: T): Unit

    /**
     * @description Returns an iterator over the elements in this list in proper sequence.
     * @returns An iterator over the elements in this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description Returns `true` if this list contains no elements.
     * @returns `true` if this list is empty, `false` otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description The number of elements in the list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64
}

extend<T> ArrayList<T> <: Equatable<ArrayList<T>> where T <: Equatable<T> {
    /**
     * @description Compares the specified object with this list for equality.
     * @param other The object to be compared for equality with this list.
     * @returns `true` if the specified object is equal to this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: ArrayList<T>): Bool

    /**
     * @description Compares the specified object with this list for inequality.
     * @param other The object to be compared for inequality with this list.
     * @returns `true` if the specified object is not equal to this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: ArrayList<T>): Bool

    /**
     * @description Returns `true` if this list contains the specified element.
     * @param element The element whose presence in this list is to be tested.
     * @returns `true` if this list contains the specified element.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(element: T): Bool
}

extend<T> ArrayList<T> where T <: Comparable<T> {
    /**
     * @description Sorts this list into ascending order, according to the natural ordering of its elements.
     * @param stable Whether to perform a stable sort.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func sort(stable!: Bool): Unit

    /**
     * @description Sorts this list into ascending order, according to the natural ordering of its elements. Performs an unstable sort.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func sort(): Unit

    /**
     * @description Sorts this list into descending order, according to the natural ordering of its elements.
     * @param stable Whether to perform a stable sort.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func sortDescending(stable!: Bool): Unit

    /**
     * @description Sorts this list into descending order, according to the natural ordering of its elements. Performs an unstable sort.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func sortDescending(): Unit
}

extend<T> ArrayList<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this list.
     * @returns A string representation of the list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}




/**
 * @description A resizable-array implementation of the `Queue` interface. This class provides FIFO (first-in-first-out) queue operations.
 */
@!APILevel[
    since: "22"
]
public class ArrayQueue<T> <: Queue<T> {
    /**
     * @description Constructs an empty queue with an initial default capacity.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs an empty queue with the specified initial capacity.
     * @param capacity The initial capacity of the queue.
     * @throws IllegalArgumentException if the specified capacity is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns The head of this queue, or `null` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func peek(): ?T

    /**
     * @description Inserts the specified element into this queue.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: T): Unit

    /**
     * @description Retrieves and removes the head of this queue.
     * @returns The head of this queue, or `null` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(): ?T

    /**
     * @description The number of elements in the queue.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description The current capacity of the queue.
     */
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description Returns `true` if the queue contains no elements.
     * @returns `true` if this queue is empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Removes all of the elements from this queue. The queue will be empty after this call returns.
     */
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Returns an iterator over the elements in this queue.
     * @returns An iterator over the elements in this queue.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description Returns an array containing all of the elements in this queue.
     * @returns An array containing all of the elements in this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>

    /**
     * @description Increases the capacity of this `ArrayQueue` instance, if necessary.
     * @param additional The desired number of additional elements.
     * @throws IllegalArgumentException if the requested capacity is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reserve(additional: Int64): Unit
}

extend<T> ArrayQueue<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this queue.
     * @returns A string representation of the queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description A resizable-array implementation of the `Stack` interface. This class provides LIFO (last-in-first-out) stack operations.
 */
@!APILevel[
    since: "22"
]
public class ArrayStack<T> <: Stack<T> {
    /**
     * @description Constructs an empty stack with the specified initial capacity.
     * @param capacity The initial capacity of the stack.
     * @throws IllegalArgumentException if the specified capacity is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Constructs an empty stack with an initial default capacity.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Looks at the object at the top of this stack without removing it from the stack.
     * @returns The object at the top of this stack, or `null` if the stack is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func peek(): ?T

    /**
     * @description Removes the object at the top of this stack and returns that object as the value of this function.
     * @returns The object at the top of this stack, or `null` if the stack is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(): ?T

    /**
     * @description Pushes an item onto the top of this stack.
     * @param element The item to be pushed onto this stack.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: T): Unit

    /**
     * @description The current capacity of the stack.
     */
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description The number of elements in the stack.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Tests if this stack is empty.
     * @returns `true` if and only if this stack contains no items; `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Increases the capacity of this `ArrayStack` instance, if necessary.
     * @param additional The desired number of additional elements.
     * @throws IllegalArgumentException if the requested capacity is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reserve(additional: Int64): Unit

    /**
     * @description Removes all of the elements from this stack. The stack will be empty after this call returns.
     */
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Returns an array containing all of the elements in this stack.
     * @returns An array containing all of the elements in this stack.
     */
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>

    /**
     * @description Returns an iterator over the elements in this stack.
     * @returns An iterator over the elements in this stack.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>
}

extend<T> ArrayStack<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this stack.
     * @returns A string representation of the stack.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Thrown when an operation is performed on a collection that would be invalid due to a concurrent modification of the collection by another thread or operation.
 */
@!APILevel[
    since: "22"
]
public class ConcurrentModificationException <: Exception {
    /**
     * @description Constructs a `ConcurrentModificationException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a `ConcurrentModificationException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Returns a function that reduces an `Iterable` to a single value by repeatedly applying a binary operation.
 * @param operation A binary function that combines two elements.
 * @returns A function that takes an `Iterable` and returns an `Option<T>` containing the reduced value, or `None` if the iterable is empty.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func reduce<T>(operation: (T, T) -> T): (Iterable<T>) -> Option<T>

/**
 * @description Returns a function that folds an `Iterable` into a single value by applying an operation to each element and an accumulator.
 * @param initial The initial value of the accumulator.
 * @param operation A function that takes the current accumulator value and an element, and returns the new accumulator value.
 * @returns A function that takes an `Iterable` and returns the final accumulated value.
 */
@!APILevel[
    since: "22"
]
public func fold<T, R>(initial: R, operation: (R, T) -> R): (Iterable<T>) -> R

/**
 * @description Checks if an `Iterable` is empty.
 * @param it The iterable to check.
 * @returns `true` if the iterable has no elements, `false` otherwise.
 */
@!APILevel[
    since: "22"
]
public func isEmpty<T>(it: Iterable<T>): Bool

/**
 * @description Counts the number of elements in an `Iterable`.
 * @param it The iterable to count.
 * @returns The number of elements in the iterable.
 */
@!APILevel[
    since: "22"
]
public func count<T>(it: Iterable<T>): Int64

/**
 * @description Returns a function that checks if an `Iterable` contains a specific element.
 * @param element The element to search for.
 * @returns A function that takes an `Iterable` and returns `true` if the element is found, `false` otherwise.
 */
@!APILevel[
    since: "22"
]
public func contains<T>(element: T): (Iterable<T>) -> Bool where T <: Equatable<T>

/**
 * @description Finds the maximum element in an `Iterable` according to natural ordering.
 * @param it The iterable to search.
 * @returns An `Option<T>` containing the maximum element, or `None` if the iterable is empty.
 */
@!APILevel[
    since: "22"
]
public func max<T>(it: Iterable<T>): Option<T> where T <: Comparable<T>

/**
 * @description Finds the minimum element in an `Iterable` according to natural ordering.
 * @param it The iterable to search.
 * @returns An `Option<T>` containing the minimum element, or `None` if the iterable is empty.
 */
@!APILevel[
    since: "22"
]
public func min<T>(it: Iterable<T>): Option<T> where T <: Comparable<T>

/**
 * @description Returns a function that checks if all elements in an `Iterable` satisfy a given predicate.
 * @param predicate The predicate to apply to each element.
 * @returns A function that takes an `Iterable` and returns `true` if all elements satisfy the predicate, `false` otherwise.
 */
@!APILevel[
    since: "22"
]
public func all<T>(predicate: (T) -> Bool): (Iterable<T>) -> Bool

/**
 * @description Returns a function that checks if any element in an `Iterable` satisfies a given predicate.
 * @param predicate The predicate to apply to each element.
 * @returns A function that takes an `Iterable` and returns `true` if at least one element satisfies the predicate, `false` otherwise.
 */
@!APILevel[
    since: "22"
]
public func any<T>(predicate: (T) -> Bool): (Iterable<T>) -> Bool

/**
 * @description Returns a function that checks if no elements in an `Iterable` satisfy a given predicate.
 * @param predicate The predicate to apply to each element.
 * @returns A function that takes an `Iterable` and returns `true` if no elements satisfy the predicate, `false` otherwise.
 */
@!APILevel[
    since: "22"
]
public func none<T>(predicate: (T) -> Bool): (Iterable<T>) -> Bool

/**
 * @description Gets the first element of an `Iterable`.
 * @param it The iterable.
 * @returns An `Option<T>` containing the first element, or `None` if the iterable is empty.
 */
@!APILevel[
    since: "22"
]
public func first<T>(it: Iterable<T>): Option<T>

/**
 * @description Gets the last element of an `Iterable`.
 * @param it The iterable.
 * @returns An `Option<T>` containing the last element, or `None` if the iterable is empty.
 */
@!APILevel[
    since: "22"
]
public func last<T>(it: Iterable<T>): Option<T>

/**
 * @description Returns a function that gets the element at a specific index in an `Iterable`.
 * @param n The zero-based index of the element to retrieve.
 * @returns A function that takes an `Iterable` and returns an `Option<T>` containing the element, or `None` if the index is out of bounds.
 */
@!APILevel[
    since: "22"
]
public func at<T>(n: Int64): (Iterable<T>) -> Option<T>

/**
 * @description Returns a function that performs a given action for each element of an `Iterable`.
 * @param action The action to perform for each element.
 * @returns A function that takes an `Iterable` and applies the action to each element.
 */
@!APILevel[
    since: "22"
]
public func forEach<T>(action: (T) -> Unit): (Iterable<T>) -> Unit

/**
 * @description A hash table based implementation of the `Map` interface. This implementation provides all of the optional map operations, and permits `null` values and the `null` key.
 */
@!APILevel[
    since: "22"
]
public class HashMap<K, V> <: Map<K, V> where K <: Hashable & Equatable<K> {
    /**
     * @description Constructs an empty `HashMap` with the default initial capacity and load factor.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new `HashMap` with the same mappings as the specified `Collection` of pairs.
     * @param elements The collection of key-value pairs whose mappings are to be placed in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<(K, V)>)

    /**
     * @description Constructs a new `HashMap` with the same mappings as the specified `Array` of pairs.
     * @param elements The array of key-value pairs whose mappings are to be placed in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(elements: Array<(K, V)>)

    /**
     * @description Constructs an empty `HashMap` with the specified initial capacity.
     * @param capacity The initial capacity.
     * @throws IllegalArgumentException if the initial capacity is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Constructs a `HashMap` containing the elements returned by the given initializer function.
     * @param size The size of the map to create.
     * @param initElement A function that returns a key-value pair for a given index.
     * @throws IllegalArgumentException if the specified size is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(size: Int64, initElement: (Int64) -> (K, V))

    /**
     * @description Returns the value to which the specified key is mapped, or `null` if this map contains no mapping for the key.
     * @param key The key whose associated value is to be returned.
     * @returns The value to which the specified key is mapped, or `null`.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func get(key: K): ?V

    /**
     * @description Associates the specified value with the specified key in this map.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with `key`, or `None` if there was no mapping for `key`.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func add(key: K, value: V): Option<V>

    /**
     * @description Returns a `MapEntryView` for the given key, allowing in-place operations on the entry.
     * @param key The key of the entry.
     * @returns A `MapEntryView` for the specified key.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func entryView(key: K): MapEntryView<K, V>

    /**
     * @description Copies all of the mappings from the specified collection to this map.
     * @param all Mappings to be stored in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func add(all!: Collection<(K, V)>): Unit

    /**
     * @description Removes the mapping for a key from this map if it is present.
     * @param key The key whose mapping is to be removed from the map.
     * @returns The previous value associated with `key`, or `None` if there was no mapping for `key`.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func remove(key: K): Option<V>

    /**
     * @description Removes the mappings for the specified keys from this map.
     * @param all The collection of keys whose mappings are to be removed.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func remove(all!: Collection<K>): Unit

    /**
     * @description Removes all of the entries of this map that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for entries to be removed.
     * @throws ConcurrentModificationException if the map is modified externally during the operation.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeIf(predicate: (K, V) -> Bool): Unit

    /**
     * @description Removes all of the mappings from this map. The map will be empty after this call returns.
     */
    @Frozen
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Increases the capacity of this `HashMap` instance, if necessary.
     * @param additional The desired number of additional entries.
     * @throws IllegalArgumentException if the requested capacity is invalid.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reserve(additional: Int64): Unit

    /**
     * @description The current capacity of the map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description Returns `true` if this map contains a mapping for all of the specified keys.
     * @param all The collection of keys to check.
     * @returns `true` if this map contains all specified keys.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(all!: Collection<K>): Bool

    /**
     * @description Returns `true` if this map contains a mapping for the specified key.
     * @param key The key whose presence in this map is to be tested.
     * @returns `true` if this map contains a mapping for the specified key.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(key: K): Bool

    /**
     * @description Returns a shallow copy of this `HashMap` instance: the keys and values themselves are not cloned.
     * @returns A shallow copy of this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func clone(): HashMap<K, V>

    /**
     * @description Returns a `Collection` view of the keys contained in this map.
     * @returns A collection view of the keys contained in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func keys(): EquatableCollection<K>

    /**
     * @description Returns a `Collection` view of the values contained in this map.
     * @returns A collection view of the values contained in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func values(): Collection<V>

    /**
     * @description Returns the value to which the specified key is mapped.
     * @param key The key whose associated value is to be returned.
     * @returns The value to which the specified key is mapped.
     * @throws IndexOutOfBoundsException if an internal indexing error occurs.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: K): V

    /**
     * @description Associates the specified value with the specified key in this map.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @throws IndexOutOfBoundsException if an internal indexing error occurs.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: K, value!: V): Unit

    /**
     * @description The number of key-value mappings in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Returns an iterator over the key-value pairs in this map.
     * @returns An iterator over the entries in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): HashMapIterator<K, V>

    /**
     * @description Returns `true` if this map contains no key-value mappings.
     * @returns `true` if this map is empty, `false` otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Returns an array containing all of the key-value pairs in this map.
     * @returns An array of the key-value pairs in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<(K, V)>
}

extend<K, V> HashMap<K, V> <: ToString where V <: ToString, K <: ToString {
    /**
     * @description Returns a string representation of this map.
     * @returns A string representation of the map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend<K, V> HashMap<K, V> <: Equatable<HashMap<K, V>> where V <: Equatable<V> {
    /**
     * @description Compares the specified object with this map for equality.
     * @param right The object to be compared for equality with this map.
     * @returns `true` if the specified object is equal to this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(right: HashMap<K, V>): Bool

    /**
     * @description Compares the specified object with this map for inequality.
     * @param right The object to be compared for inequality with this map.
     * @returns `true` if the specified object is not equal to this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(right: HashMap<K, V>): Bool
}

/**
 * @description An iterator over a `HashMap`.
 */
@!APILevel[
    since: "22"
]
public class HashMapIterator<K, V> <: Iterator<(K, V)> where K <: Hashable & Equatable<K> {
    /**
     * @description Constructs an iterator for the given `HashMap`.
     * @param map The `HashMap` to iterate over.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(map: HashMap<K, V>)

    /**
     * @description Returns the next key-value pair in the iteration.
     * @returns The next entry, or `null` if the iteration has no more elements.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func next(): ?(K, V)

    /**
     * @description Removes from the underlying map the last element returned by this iterator.
     * @returns The removed entry, or `None` if `next()` has not yet been called or `remove()` has already been called after the last call to `next()`.
     * @throws ConcurrentModificationException if the map was modified since the iterator was created.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func remove(): Option<(K, V)>
}

/**
 * @description A hash table based implementation of the `Set` interface. This implementation makes no guarantees as to the iteration order of the set.
 */
@!APILevel[
    since: "22"
]
public class HashSet<T> <: Set<T> where T <: Hashable & Equatable<T> {
    /**
     * @description Constructs a new, empty set; the backing `HashMap` instance has default initial capacity.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new set containing the elements in the specified collection.
     * @param elements The collection whose elements are to be placed into this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<T>)

    /**
     * @description Constructs a new set containing the elements in the specified array.
     * @param elements The array whose elements are to be placed into this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(elements: Array<T>)

    /**
     * @description Constructs a new, empty set with the specified initial capacity.
     * @param capacity The initial capacity of the hash set.
     * @throws IllegalArgumentException if the initial capacity is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Constructs a `HashSet` containing the elements returned by the given initializer function.
     * @param size The size of the set to create.
     * @param initElement A function that returns an element for a given index.
     * @throws IllegalArgumentException if the specified size is negative.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(size: Int64, initElement: (Int64) -> T)

    /**
     * @description Returns `true` if this set contains the specified element.
     * @param element The element whose presence in this set is to be tested.
     * @returns `true` if this set contains the specified element.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(element: T): Bool

    /**
     * @description Returns `true` if this set is a subset of the given set.
     * @param other The set to check against.
     * @returns `true` if all elements of this set are also in `other`.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func subsetOf(other: ReadOnlySet<T>): Bool

    /**
     * @description Returns `true` if this set contains all of the elements of the specified collection.
     * @param all The collection to be checked for containment in this set.
     * @returns `true` if this set contains all of the elements of the specified collection.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(all!: Collection<T>): Bool

    /**
     * @description Adds the specified element to this set if it is not already present.
     * @param element The element to be added to this set.
     * @returns `true` if this set did not already contain the specified element.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func add(element: T): Bool

    /**
     * @description Removes the specified element from this set if it is present.
     * @param element The object to be removed from this set, if present.
     * @returns `true` if this set contained the specified element.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func remove(element: T): Bool

    /**
     * @description Adds all of the elements in the specified collection to this set.
     * @param all The collection containing elements to be added to this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func add(all!: Collection<T>): Unit

    /**
     * @description Removes from this set all of its elements that are contained in the specified collection.
     * @param all The collection containing elements to be removed from this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func remove(all!: Collection<T>): Unit

    /**
     * @description Removes all of the elements of this set that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for elements to be removed.
     * @throws ConcurrentModificationException if the set is modified externally during the operation.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeIf(predicate: (T) -> Bool): Unit

    /**
     * @description Removes all of the elements from this set. The set will be empty after this call returns.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Retains only the elements in this set that are contained in the specified set.
     * @param all The set containing elements to be retained in this set.
     * @throws ConcurrentModificationException if the set is modified externally during the operation.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func retain(all!: Set<T>): Unit

    /**
     * @description Returns a shallow copy of this `HashSet` instance: the elements themselves are not cloned.
     * @returns A shallow copy of this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func clone(): HashSet<T>

    /**
     * @description Increases the capacity of this `HashSet` instance, if necessary.
     * @param additional The desired number of additional elements.
     * @throws IllegalArgumentException if the requested capacity is invalid.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reserve(additional: Int64): Unit

    /**
     * @description The current capacity of the set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description Returns an iterator over the elements in this set.
     * @returns An iterator over the elements in this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description The number of elements in this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Returns `true` if this set contains no elements.
     * @returns `true` if this set is empty, `false` otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Returns an array containing all of the elements in this set.
     * @returns An array containing all of the elements in this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>

    /**
     * @description Returns a new set containing the intersection of this set and the other set.
     * @param other The set to intersect with.
     * @returns A new `HashSet` containing only the elements present in both sets.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func &(other: ReadOnlySet<T>): HashSet<T>

    /**
     * @description Returns a new set containing the union of this set and the other set.
     * @param other The set to form the union with.
     * @returns A new `HashSet` containing all elements from both sets.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func |(other: ReadOnlySet<T>): HashSet<T>

    /**
     * @description Returns a new set containing the difference of this set and the other set (elements in this set but not in the other).
     * @param other The set of elements to remove.
     * @returns A new `HashSet` containing the elements that are in this set but not in the other.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func -(other: ReadOnlySet<T>): HashSet<T>
}

extend<T> HashSet<T> <: Equatable<HashSet<T>> {
    /**
     * @description Compares the specified object with this set for equality.
     * @param other The object to be compared for equality with this set.
     * @returns `true` if the specified object is equal to this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: HashSet<T>): Bool

    /**
     * @description Compares the specified object with this set for inequality.
     * @param other The object to be compared for inequality with this set.
     * @returns `true` if the specified object is not equal to this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: HashSet<T>): Bool
}

extend<T> HashSet<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this set.
     * @returns A string representation of the set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description A node in a `LinkedList`. Each node contains a value and references to the next and previous nodes.
 */
@!APILevel[
    since: "22"
]
public class LinkedListNode<T> {
    /**
     * @description The value stored in this node.
     * @throws IllegalStateException if the node has been detached from its list.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop value: T

    /**
     * @description The next node in the list, or `None` if this is the last node.
     * @throws IllegalStateException if the node has been detached from its list.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop next: Option<LinkedListNode<T>>

    /**
     * @description The previous node in the list, or `None` if this is the first node.
     * @throws IllegalStateException if the node has been detached from its list.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop prev: Option<LinkedListNode<T>>
}

/**
 * @description A doubly-linked list implementation of the `Collection` interface.
 */
@!APILevel[
    since: "22"
]
public class LinkedList<T> <: Collection<T> {
    /**
     * @description Constructs an empty list.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a list containing the elements of the specified collection.
     * @param elements The collection whose elements are to be placed into this list.
     */
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<T>)

    /**
     * @description Constructs a list containing the elements of the specified array.
     * @param elements The array whose elements are to be placed into this list.
     */
    @!APILevel[
        since: "22"
    ]
    public init(elements: Array<T>)

    /**
     * @description Constructs a list containing elements returned by the given initializer function.
     * @param size The size of the list to create.
     * @param initElement A function that returns an element for a given index.
     * @throws IllegalArgumentException if the specified size is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(size: Int64, initElement: (Int64) -> T)

    /**
     * @description The number of elements in this list.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description The first element in this list.
     */
    @!APILevel[
        since: "22"
    ]
    public prop first: ?T

    /**
     * @description The last element in this list.
     */
    @!APILevel[
        since: "22"
    ]
    public prop last: ?T

    /**
     * @description The first node in this list, or `null` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public prop firstNode: ?LinkedListNode<T>

    /**
     * @description The last node in this list, or `null` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public prop lastNode: ?LinkedListNode<T>

    /**
     * @description Inserts the specified element at the beginning of this list.
     * @param element The element to add.
     * @returns The new `LinkedListNode` containing the element.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func addFirst(element: T): LinkedListNode<T>

    /**
     * @description Appends the specified element to the end of this list.
     * @param element The element to add.
     * @returns The new `LinkedListNode` containing the element.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func addLast(element: T): LinkedListNode<T>

    /**
     * @description Returns an array containing all of the elements in this list in proper sequence.
     * @returns An array containing all of the elements in this list.
     */
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>

    /**
     * @description Inserts element `e` before non-null node `succ`.
     * @param node The node before which to insert the new element.
     * @param element The element to insert.
     * @returns The new `LinkedListNode` containing the element.
     */
    @!APILevel[
        since: "22"
    ]
    public func addBefore(node: LinkedListNode<T>, element: T): LinkedListNode<T>

    /**
     * @description Inserts element `e` after non-null node `pred`.
     * @param node The node after which to insert the new element.
     * @param element The element to insert.
     * @returns The new `LinkedListNode` containing the element.
     */
    @!APILevel[
        since: "22"
    ]
    public func addAfter(node: LinkedListNode<T>, element: T): LinkedListNode<T>

    /**
     * @description Removes the specified node from the list.
     * @param node The node to remove.
     * @returns The value that was stored in the removed node.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func remove(node: LinkedListNode<T>): T

    /**
     * @description Removes all of the elements of this list that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for elements to be removed.
     * @throws ConcurrentModificationException if the list is modified externally during the operation.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeIf(predicate: (T) -> Bool): Unit

    /**
     * @description Removes all of the elements from this list. The list will be empty after this call returns.
     */
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Reverses the order of the elements in this list.
     */
    @!APILevel[
        since: "22"
    ]
    public func reverse(): Unit

    /**
     * @description Returns `true` if this list contains no elements.
     * @returns `true` if this list is empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Returns an iterator over the elements in this list in proper sequence.
     * @returns An iterator over the elements in this list.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description Removes and returns the first element from this list.
     * @returns The first element from this list, or `null` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeFirst(): ?T

    /**
     * @description Removes and returns the last element from this list.
     * @returns The last element from this list, or `null` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeLast(): ?T

    /**
     * @description Returns the node at the specified element index.
     * @param index The index of the node to return.
     * @returns An `Option` containing the node at the specified index, or `None` if the index is out of range.
     */
    @!APILevel[
        since: "22"
    ]
    public func nodeAt(index: Int64): Option<LinkedListNode<T>>

    /**
     * @description Splits the list into two at the specified node. The current list will contain all elements up to the given node (exclusive), and a new list is returned containing all elements from the given node onwards.
     * @param node The node at which to split the list.
     * @returns A new `LinkedList` containing the tail portion of the list.
     */
    @!APILevel[
        since: "22"
    ]
    public func splitOff(node: LinkedListNode<T>): LinkedList<T>

    /**
     * @description Returns a forward iterator starting from the given node.
     * @param mark The node to start iterating from.
     * @returns An `Iterator` that traverses forward from the mark.
     * @throws IllegalStateException if the mark node is detached.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func forward(mark: LinkedListNode<T>): Iterator<T>

    /**
     * @description Returns a backward iterator starting from the given node.
     * @param mark The node to start iterating from.
     * @returns An `Iterator` that traverses backward from the mark.
     * @throws IllegalStateException if the mark node is detached.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func backward(mark: LinkedListNode<T>): Iterator<T>
}

extend<T> LinkedList<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this list.
     * @returns A string representation of the list.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend<T> LinkedList<T> <: Equatable<LinkedList<T>> where T <: Equatable<T> {
    /**
     * @description Compares the specified object with this list for equality.
     * @param right The object to be compared for equality with this list.
     * @returns `true` if the specified object is equal to this list.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(right: LinkedList<T>): Bool

    /**
     * @description Compares the specified object with this list for inequality.
     * @param right The object to be compared for inequality with this list.
     * @returns `true` if the specified object is not equal to this list.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(right: LinkedList<T>): Bool
}

/**
 * @description A read-only collection of elements.
 */
@!APILevel[
    since: "22"
]
public interface ReadOnlyList<T> <: Collection<T> {
    /**
     * @description The first element of the list, or `null` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop first: ?T

    /**
     * @description The last element of the list, or `null` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop last: ?T

    /**
     * @description Returns the element at the specified position in this list, or `null` if the index is out of bounds.
     * @param index The index of the element to return.
     * @returns The element at the specified position, or `null`.
     */
    @!APILevel[
        since: "22"
    ]
    func get(index: Int64): ?T

    /**
     * @description Returns the element at the specified position in this list.
     * @param index The index of the element to return.
     * @returns The element at the specified position.
     * @throws IndexOutOfBoundsException if the index is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    operator func [](index: Int64): T
}

/**
 * @description A mutable, ordered collection of elements.
 */
@!APILevel[
    since: "22"
]
public interface List<T> <: ReadOnlyList<T> {
    /**
     * @description Appends the specified element to the end of this list.
     * @param element The element to be appended to this list.
     */
    @!APILevel[
        since: "22"
    ]
    func add(element: T): Unit

    /**
     * @description Appends all of the elements in the specified collection to the end of this list.
     * @param all The collection containing elements to be added to this list.
     */
    @!APILevel[
        since: "22"
    ]
    func add(all!: Collection<T>): Unit

    /**
     * @description Inserts the specified element at the specified position in this list.
     * @param element The element to be inserted.
     * @param at The index at which the specified element is to be inserted.
     */
    @!APILevel[
        since: "22"
    ]
    func add(element: T, at!: Int64): Unit

    /**
     * @description Inserts all of the elements in the specified collection into this list at the specified position.
     * @param all The collection containing elements to be added to this list.
     * @param at The index at which to insert the first element from the specified collection.
     */
    @!APILevel[
        since: "22"
    ]
    func add(all!: Collection<T>, at!: Int64): Unit

    /**
     * @description Removes the element at the specified position in this list.
     * @param at The index of the element to be removed.
     * @returns The element that was removed from the list.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(at!: Int64): T

    /**
     * @description Removes from this list all of the elements whose index is between `fromIndex`, inclusive, and `toIndex`, exclusive.
     * @param range The range of indices to remove.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(range: Range<Int64>): Unit

    /**
     * @description Removes all of the elements of this collection that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for elements to be removed.
     */
    @!APILevel[
        since: "22"
    ]
    func removeIf(predicate: (T) -> Bool): Unit

    /**
     * @description Removes all of the elements from this list.
     */
    @!APILevel[
        since: "22"
    ]
    func clear(): Unit

    /**
     * @description Replaces the element at the specified position in this list with the specified element.
     * @param index The index of the element to replace.
     * @param value The element to be stored at the specified position.
     * @throws IndexOutOfBoundsException if an index is out of bounds.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    operator func [](index: Int64, value!: T): Unit
}

/**
 * @description A view of an entry in a `Map`. It provides methods to access and modify the value of the entry.
 */
@!APILevel[
    since: "22"
]
public interface MapEntryView<K, V> {
    /**
     * @description The key of the map entry.
     */
    @!APILevel[
        since: "22"
    ]
    prop key: K

    /**
     * @description The value of the map entry. Can be get or set.
     */
    @!APILevel[
        since: "22"
    ]
    mut prop value: ?V
}

/**
 * @description A read-only view of a `Map`. It provides methods to access key-value pairs but not to modify the map.
 */
@!APILevel[
    since: "22"
]
public interface ReadOnlyMap<K, V> <: Collection<(K, V)> {
    /**
     * @description Returns the value to which the specified key is mapped, or `null` if this map contains no mapping for the key.
     * @param key The key whose associated value is to be returned.
     * @returns The value to which the specified key is mapped, or `null`.
     */
    @!APILevel[
        since: "22"
    ]
    func get(key: K): ?V

    /**
     * @description Returns `true` if this map contains a mapping for the specified key.
     * @param key The key whose presence in this map is to be tested.
     * @returns `true` if this map contains a mapping for the specified key.
     */
    @!APILevel[
        since: "22"
    ]
    func contains(key: K): Bool

    /**
     * @description Returns `true` if this map contains a mapping for all of the specified keys.
     * @param all The collection of keys to check.
     * @returns `true` if this map contains all specified keys.
     */
    @!APILevel[
        since: "22"
    ]
    func contains(all!: Collection<K>): Bool

    /**
     * @description Returns a `Collection` view of the keys contained in this map.
     * @returns A collection view of the keys contained in this map.
     */
    @!APILevel[
        since: "22"
    ]
    func keys(): EquatableCollection<K>

    /**
     * @description Returns a `Collection` view of the values contained in this map.
     * @returns A collection view of the values contained in this map.
     */
    @!APILevel[
        since: "22"
    ]
    func values(): Collection<V>

    /**
     * @description Returns the value to which the specified key is mapped.
     * @param key The key whose associated value is to be returned.
     * @returns The value to which the specified key is mapped.
     */
    @!APILevel[
        since: "22"
    ]
    operator func [](key: K): V
}

/**
 * @description A mutable collection that maps keys to values.
 */
@!APILevel[
    since: "22"
]
public interface Map<K, V> <: ReadOnlyMap<K, V> {
    /**
     * @description Associates the specified value with the specified key in this map.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with `key`, or `null` if there was no mapping for `key`.
     */
    @!APILevel[
        since: "22"
    ]
    func add(key: K, value: V): ?V

    /**
     * @description Copies all of the mappings from the specified collection to this map.
     * @param all Mappings to be stored in this map.
     */
    @!APILevel[
        since: "22"
    ]
    func add(all!: Collection<(K, V)>): Unit

    /**
     * @description Removes the mapping for a key from this map if it is present.
     * @param key The key whose mapping is to be removed from the map.
     * @returns An `Option` containing the previous value associated with `key`, or `None` if there was no mapping for `key`.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(key: K): Option<V>

    /**
     * @description Removes the mappings for the specified keys from this map.
     * @param all The collection of keys whose mappings are to be removed.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(all!: Collection<K>): Unit

    /**
     * @description Removes all of the entries of this map that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for entries to be removed.
     */
    @!APILevel[
        since: "22"
    ]
    func removeIf(predicate: (K, V) -> Bool): Unit

    /**
     * @description Removes all of the mappings from this map.
     */
    @!APILevel[
        since: "22"
    ]
    func clear(): Unit

    /**
     * @description Associates the specified value with the specified key in this map.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     */
    @!APILevel[
        since: "22"
    ]
    operator func [](key: K, value!: V): Unit

    /**
     * @description Returns a `MapEntryView` for the given key, allowing in-place operations on the entry.
     * @param k The key of the entry.
     * @returns A `MapEntryView` for the specified key.
     */
    @!APILevel[
        since: "22"
    ]
    func entryView(k: K): MapEntryView<K, V>

    /**
     * @description If the specified key is not already associated with a value, associates it with the given value.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    func addIfAbsent(key: K, value: V): ?V

    /**
     * @description Replaces the entry for the specified key only if it is currently mapped to some value.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    func replace(key: K, value: V): ?V
}

/**
 * @description A `Collection` that supports an efficient `contains` operation for its elements.
 */
@!APILevel[
    since: "22"
]
public interface EquatableCollection<T> <: Collection<T> {
    /**
     * @description Returns `true` if this collection contains the specified element.
     * @param element The element whose presence in this collection is to be tested.
     * @returns `true` if this collection contains the specified element.
     */
    @!APILevel[
        since: "22"
    ]
    func contains(element: T): Bool

    /**
     * @description Returns `true` if this collection contains all of the elements of the specified collection.
     * @param all The collection to be checked for containment in this collection.
     * @returns `true` if this collection contains all of the elements of the specified collection.
     */
    @!APILevel[
        since: "22"
    ]
    func contains(all!: Collection<T>): Bool
}

/**
 * @description A `Map` that maintains a defined order of its elements.
 */
@!APILevel[
    since: "22"
]
public interface OrderedMap<K, V> <: Map<K, V> {
    /**
     * @description The first key-value pair in the map, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop first: ?(K, V)

    /**
     * @description The last key-value pair in the map, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop last: ?(K, V)

    /**
     * @description Removes and returns the first key-value pair from this map.
     * @returns The first entry, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func removeFirst(): ?(K, V)

    /**
     * @description Removes and returns the last key-value pair from this map.
     * @returns The last entry, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func removeLast(): ?(K, V)

    /**
     * @description Returns an iterator over the elements of this map in reverse sequential order, starting from the specified key.
     * @param mark The key to start iterating from.
     * @param inclusive If `true`, the iteration includes the element at the `mark`.
     * @returns An `Iterator` that traverses backward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    func backward(mark: K, inclusive!: Bool): Iterator<(K, V)>

    /**
     * @description Returns an iterator over the elements of this map in sequential order, starting from the specified key.
     * @param mark The key to start iterating from.
     * @param inclusive If `true`, the iteration includes the element at the `mark`.
     * @returns An `Iterator` that traverses forward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    func forward(mark: K, inclusive!: Bool): Iterator<(K, V)>
}

/**
 * @description Returns an iterator that yields pairs of (index, value) for each element of the given iterable.
 * @param it The iterable to enumerate.
 * @returns An iterator of (index, value) pairs.
 */
@!APILevel[
    since: "22"
]
public func enumerate<T>(it: Iterable<T>): Iterator<(Int64, T)>

/**
 * @description Returns a function that creates an iterator which filters elements from an iterable based on a predicate.
 * @param predicate A function to test each element of an iterable. Return `true` to keep the element, `false` otherwise.
 * @returns A function that takes an iterable and returns an iterator with elements that satisfy the predicate.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func filter<T>(predicate: (T) -> Bool): (Iterable<T>) -> Iterator<T>

/**
 * @description Returns a function that creates an iterator that filters and maps elements of an iterable simultaneously.
 * @param transform A function to apply to each element. If it returns a non-null value, that value is included in the result.
 * @returns A function that takes an iterable and returns an iterator with the transformed, non-null elements.
 */
@!APILevel[
    since: "22"
]
public func filterMap<T, R>(transform: (T) -> ?R): (Iterable<T>) -> Iterator<R>

/**
 * @description Returns a function that creates an iterator that applies a given transformation to each element of an iterable.
 * @param transform The function to apply to each element.
 * @returns A function that takes an iterable and returns an iterator with the transformed elements.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func map<T, R>(transform: (T) -> R): (Iterable<T>) -> Iterator<R>

/**
 * @description Flattens an iterable of iterables into a single iterator.
 * @param it The iterable of iterables to flatten.
 * @returns An iterator that yields the elements of the inner iterables.
 */
@!APILevel[
    since: "22"
]
public func flatten<T, R>(it: Iterable<T>): Iterator<R> where T <: Iterable<R>

/**
 * @description Returns a function that creates an iterator that first applies a transformation to each element and then flattens the resulting iterables into one.
 * @param transform A function that takes an element and returns an iterable.
 * @returns A function that takes an iterable and returns a single iterator over all the mapped and flattened elements.
 */
@!APILevel[
    since: "22"
]
public func flatMap<T, R>(transform: (T) -> Iterable<R>): (Iterable<T>) -> Iterator<R>

/**
 * @description Returns a function that creates an iterator that combines elements from two iterables into pairs.
 * @param other The second iterable to zip with the first.
 * @returns A function that takes an iterable and returns an iterator of pairs, where the i-th pair contains the i-th element from each of the input iterables.
 */
@!APILevel[
    since: "22"
]
public func zip<T, R>(other: Iterable<R>): (Iterable<T>) -> Iterator<(T, R)>

/**
 * @description Returns a function that creates an iterator that concatenates two iterables.
 * @param other The iterable to concatenate.
 * @returns A function that takes an iterable and returns a new iterator containing the elements of the first iterable followed by the elements of the second.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func concat<T>(other: Iterable<T>): (Iterable<T>) -> Iterator<T>

/**
 * @description Returns a function that creates an iterator that skips a specified number of elements from the beginning of an iterable.
 * @param count The number of elements to skip.
 * @returns A function that takes an iterable and returns an iterator that starts after the skipped elements.
 * @throws IllegalArgumentException if `count` is negative.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func skip<T>(count: Int64): (Iterable<T>) -> Iterator<T>

/**
 * @description Returns a function that creates an iterator that yields a specified number of elements from the beginning of an iterable.
 * @param count The number of elements to take.
 * @returns A function that takes an iterable and returns an iterator that contains at most `count` elements.
 * @throws IllegalArgumentException if `count` is negative.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func take<T>(count: Int64): (Iterable<T>) -> Iterator<T>

/**
 * @description Returns a function that creates an iterator that yields every N-th element of an iterable.
 * @param count The step size.
 * @returns A function that takes an iterable and returns an iterator yielding every `count`-th element.
 * @throws IllegalArgumentException if `count` is not positive.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func step<T>(count: Int64): (Iterable<T>) -> Iterator<T>

/**
 * @description Returns a function that creates an iterator that performs a side effect for each element of an iterable.
 * @param action The action to perform on each element.
 * @returns A function that takes an iterable and returns an iterator that is functionally identical but executes the action for each element.
 */
@!APILevel[
    since: "22"
]
public func inspect<T>(action: (T) -> Unit): (Iterable<T>) -> Iterator<T>

/**
 * @description A double-ended queue.
 */
@!APILevel[
    since: "22"
]
public interface Deque<T> <: Collection<T> {
    /**
     * @description The first element of the deque, or `null` if the deque is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop first: ?T

    /**
     * @description The last element of the deque, or `null` if the deque is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop last: ?T

    /**
     * @description Inserts the specified element at the front of this deque.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    func addFirst(element: T): Unit

    /**
     * @description Inserts the specified element at the end of this deque.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    func addLast(element: T): Unit

    /**
     * @description Retrieves and removes the first element of this deque.
     * @returns The head of the deque, or `null` if it is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func removeFirst(): ?T

    /**
     * @description Retrieves and removes the last element of this deque.
     * @returns The tail of the deque, or `null` if it is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func removeLast(): ?T
}

/**
 * @description A first-in, first-out (FIFO) queue of elements.
 */
@!APILevel[
    since: "22"
]
public interface Queue<T> <: Collection<T> {
    /**
     * @description Inserts the specified element into this queue.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    func add(element: T): Unit

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns The head of this queue, or `null` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func peek(): ?T

    /**
     * @description Retrieves and removes the head of this queue.
     * @returns The head of this queue, or `null` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(): ?T
}

/**
 * @description A read-only view of a `Set`. It provides methods to check for element containment but not to modify the set.
 */
@!APILevel[
    since: "22"
]
public interface ReadOnlySet<T> <: Collection<T> {
    /**
     * @description Returns `true` if this set contains the specified element.
     * @param element The element whose presence in this set is to be tested.
     * @returns `true` if this set contains the specified element.
     */
    @!APILevel[
        since: "22"
    ]
    func contains(element: T): Bool

    /**
     * @description Returns `true` if this set contains all of the elements of the specified collection.
     * @param all The collection to be checked for containment in this set.
     * @returns `true` if this set contains all of the elements of the specified collection.
     */
    @!APILevel[
        since: "22"
    ]
    func contains(all!: Collection<T>): Bool

    /**
     * @description Returns `true` if this set is a subset of the given set.
     * @param other The set to check against.
     * @returns `true` if all elements of this set are also in `other`.
     */
    @!APILevel[
        since: "22"
    ]
    func subsetOf(other: ReadOnlySet<T>): Bool
}

/**
 * @description A mutable collection that contains no duplicate elements.
 */
@!APILevel[
    since: "22"
]
public interface Set<T> <: ReadOnlySet<T> {
    /**
     * @description Adds the specified element to this set if it is not already present.
     * @param element The element to be added to this set.
     * @returns `true` if this set did not already contain the specified element.
     */
    @!APILevel[
        since: "22"
    ]
    func add(element: T): Bool

    /**
     * @description Adds all of the elements in the specified collection to this set.
     * @param all The collection containing elements to be added to this set.
     */
    @!APILevel[
        since: "22"
    ]
    func add(all!: Collection<T>): Unit

    /**
     * @description Removes the specified element from this set if it is present.
     * @param element The object to be removed from this set, if present.
     * @returns `true` if this set contained the specified element.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(element: T): Bool

    /**
     * @description Removes from this set all of its elements that are contained in the specified collection.
     * @param all The collection containing elements to be removed from this set.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(all!: Collection<T>): Unit

    /**
     * @description Removes all of the elements of this set that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for elements to be removed.
     */
    @!APILevel[
        since: "22"
    ]
    func removeIf(predicate: (T) -> Bool): Unit

    /**
     * @description Removes all of the elements from this set.
     */
    @!APILevel[
        since: "22"
    ]
    func clear(): Unit

    /**
     * @description Retains only the elements in this set that are contained in the specified set.
     * @param all The set containing elements to be retained in this set.
     */
    @!APILevel[
        since: "22"
    ]
    func retain(all!: Set<T>): Unit
}

/**
 * @description A `Set` that maintains a defined order of its elements.
 */
@!APILevel[
    since: "22"
]
public interface OrderedSet<T> <: Set<T> {
    /**
     * @description The first element in the set, or `null` if the set is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop first: ?T

    /**
     * @description The last element in the set, or `null` if the set is empty.
     */
    @!APILevel[
        since: "22"
    ]
    prop last: ?T

    /**
     * @description Removes and returns the first element from this set.
     * @returns The first element, or `null` if the set is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func removeFirst(): ?T

    /**
     * @description Removes and returns the last element from this set.
     * @returns The last element, or `null` if the set is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func removeLast(): ?T

    /**
     * @description Returns an iterator over the elements of this set in reverse sequential order, starting from the specified element.
     * @param mark The element to start iterating from.
     * @param inclusive If `true`, the iteration includes the `mark` element.
     * @returns An `Iterator` that traverses backward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    func backward(mark: T, inclusive!: Bool): Iterator<T>

    /**
     * @description Returns an iterator over the elements of this set in sequential order, starting from the specified element.
     * @param mark The element to start iterating from.
     * @param inclusive If `true`, the iteration includes the `mark` element.
     * @returns An `Iterator` that traverses forward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    func forward(mark: T, inclusive!: Bool): Iterator<T>
}

/**
 * @description A last-in, first-out (LIFO) stack of elements.
 */
@!APILevel[
    since: "22"
]
public interface Stack<T> <: Collection<T> {
    /**
     * @description Looks at the object at the top of this stack without removing it.
     * @returns The object at the top of this stack, or `null` if the stack is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func peek(): ?T

    /**
     * @description Removes the object at the top of this stack and returns that object.
     * @returns The object at the top of this stack, or `null` if the stack is empty.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(): ?T

    /**
     * @description Pushes an item onto the top of this stack.
     * @param element The item to be pushed onto this stack.
     */
    @!APILevel[
        since: "22"
    ]
    func add(element: T): Unit
}

/**
 * @description Returns a function that collects all elements of an iterable into a single string.
 * @param delimiter The separator to be used between elements.
 * @returns A function that takes an iterable and returns the resulting string.
 * @throws IllegalArgumentException if an argument is invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func collectString<T>(delimiter!: String = ""): (Iterable<T>) -> String where T <: ToString

/**
 * @description Collects all elements of an iterable into a new `Array`.
 * @param it The iterable to collect.
 * @returns A new `Array` containing the elements of the iterable.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func collectArray<T>(it: Iterable<T>): Array<T>

/**
 * @description Collects all elements of an iterable into a new `ArrayList`.
 * @param it The iterable to collect.
 * @returns A new `ArrayList` containing the elements of the iterable.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func collectArrayList<T>(it: Iterable<T>): ArrayList<T>

/**
 * @description Collects all elements of an iterable into a new `HashSet`.
 * @param it The iterable to collect.
 * @returns A new `HashSet` containing the unique elements of the iterable.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func collectHashSet<T>(it: Iterable<T>): HashSet<T> where T <: Hashable & Equatable<T>

/**
 * @description Collects all key-value pairs of an iterable into a new `HashMap`.
 * @param it The iterable of pairs to collect.
 * @returns A new `HashMap` containing the key-value pairs from the iterable.
 */
@Frozen
@!APILevel[
    since: "22"
]
public func collectHashMap<K, V>(it: Iterable<(K, V)>): HashMap<K, V> where K <: Hashable & Equatable<K>

/**
 * @description A Red-Black tree based `OrderedMap` implementation. The map is sorted according to the natural ordering of its keys.
 */
@!APILevel[
    since: "22"
]
public class TreeMap<K, V> <: OrderedMap<K, V> where K <: Comparable<K> {
    /**
     * @description Constructs an empty `TreeMap`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new `TreeMap` with the same mappings as the specified `Collection` of pairs.
     * @param elements The collection of key-value pairs.
     */
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<(K, V)>)

    /**
     * @description Constructs a new `TreeMap` with the same mappings as the specified `Array` of pairs.
     * @param elements The array of key-value pairs.
     */
    @!APILevel[
        since: "22"
    ]
    public init(elements: Array<(K, V)>)

    /**
     * @description Constructs a `TreeMap` containing the elements returned by the given initializer function.
     * @param size The size of the map to create.
     * @param initElement A function that returns a key-value pair for a given index.
     * @throws IllegalArgumentException if the specified size is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(size: Int64, initElement: (Int64) -> (K, V))

    /**
     * @description Returns the value to which the specified key is mapped, or `null` if this map contains no mapping for the key.
     * @param key The key whose associated value is to be returned.
     * @returns The value, or `null` if the key is not found.
     */
    @!APILevel[
        since: "22"
    ]
    public func get(key: K): ?V

    /**
     * @description Returns `true` if this map contains a mapping for the specified key.
     * @param key The key whose presence in this map is to be tested.
     * @returns `true` if this map contains a mapping for the specified key.
     */
    @!APILevel[
        since: "22"
    ]
    public func contains(key: K): Bool

    /**
     * @description Returns `true` if this map contains a mapping for all of the specified keys.
     * @param all The collection of keys to check.
     * @returns `true` if this map contains all specified keys.
     */
    @!APILevel[
        since: "22"
    ]
    public func contains(all!: Collection<K>): Bool

    /**
     * @description Associates the specified value with the specified key in this map.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns An `Option` containing the previous value, or `None` if the key was not present.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(key: K, value: V): Option<V>

    /**
     * @description Copies all of the mappings from the specified collection to this map.
     * @param all Mappings to be stored in this map.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(all!: Collection<(K, V)>): Unit

    /**
     * @description Removes the mapping for a key from this map if it is present.
     * @param key The key whose mapping is to be removed from the map.
     * @returns An `Option` containing the previous value, or `None` if the key was not present.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(key: K): Option<V>

    /**
     * @description Removes the mappings for the specified keys from this map.
     * @param all The collection of keys whose mappings are to be removed.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(all!: Collection<K>): Unit

    /**
     * @description Removes all of the entries of this map that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for entries to be removed.
     * @throws ConcurrentModificationException if the map is modified externally during the operation.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeIf(predicate: (K, V) -> Bool): Unit

    /**
     * @description Removes all of the mappings from this map.
     */
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Returns a shallow copy of this `TreeMap` instance.
     * @returns A clone of this `TreeMap` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public func clone(): TreeMap<K, V>

    /**
     * @description Returns the value to which the specified key is mapped.
     * @param key The key whose associated value is to be returned.
     * @returns The value to which the specified key is mapped.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func [](key: K): V

    /**
     * @description Associates the specified value with the specified key in this map.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func [](key: K, value!: V): Unit

    /**
     * @description Returns a `Collection` view of the keys contained in this map.
     * @returns A collection view of the keys contained in this map.
     */
    @!APILevel[
        since: "22"
    ]
    public func keys(): EquatableCollection<K>

    /**
     * @description Returns a `Collection` view of the values contained in this map.
     * @returns A collection view of the values contained in this map.
     */
    @!APILevel[
        since: "22"
    ]
    public func values(): Collection<V>

    /**
     * @description The number of key-value mappings in this map.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Returns `true` if this map contains no key-value mappings.
     * @returns `true` if this map is empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Returns an iterator over the key-value pairs in this map.
     * @returns An iterator over the entries in this map.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<(K, V)>

    /**
     * @description The first key-value pair in the map, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public prop first: ?(K, V)

    /**
     * @description Removes and returns the first key-value pair from this map.
     * @returns The first entry, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeFirst(): ?(K, V)

    /**
     * @description The last key-value pair in the map, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public prop last: ?(K, V)

    /**
     * @description Removes and returns the last key-value pair from this map.
     * @returns The last entry, or `null` if the map is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeLast(): ?(K, V)

    /**
     * @description Returns an iterator over the elements of this map in reverse sequential order, starting from the specified key.
     * @param mark The key to start iterating from.
     * @param inclusive If `true`, the iteration includes the element at the `mark`.
     * @returns An `Iterator` that traverses backward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    public func backward(mark: K, inclusive!: Bool = true): Iterator<(K, V)>

    /**
     * @description Returns an iterator over the elements of this map in sequential order, starting from the specified key.
     * @param mark The key to start iterating from.
     * @param inclusive If `true`, the iteration includes the element at the `mark`.
     * @returns An `Iterator` that traverses forward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    public func forward(mark: K, inclusive!: Bool = true): Iterator<(K, V)>

    /**
     * @description Returns a `MapEntryView` for the given key, allowing in-place operations on the entry.
     * @param k The key of the entry.
     * @returns A `MapEntryView` for the specified key.
     */
    @!APILevel[
        since: "22"
    ]
    public func entryView(k: K): MapEntryView<K, V>
}

extend<K, V> TreeMap<K, V> <: ToString where V <: ToString, K <: ToString & Comparable<K> {
    /**
     * @description Returns a string representation of this map.
     * @returns A string representation of the map.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

extend<K, V> TreeMap<K, V> <: Equatable<TreeMap<K, V>> where V <: Equatable<V> {
    /**
     * @description Compares the specified object with this map for equality.
     * @param right The object to be compared for equality with this map.
     * @returns `true` if the specified object is equal to this map.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(right: TreeMap<K, V>): Bool

    /**
     * @description Compares the specified object with this map for inequality.
     * @param right The object to be compared for inequality with this map.
     * @returns `true` if the specified object is not equal to this map.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(right: TreeMap<K, V>): Bool
}

/**
 * @description A Red-Black tree based `OrderedSet` implementation. The set is sorted according to the natural ordering of its elements.
 */
@!APILevel[
    since: "22"
]
public class TreeSet<T> <: OrderedSet<T> where T <: Comparable<T> {
    /**
     * @description The number of elements in this set.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description The first (lowest) element currently in this set.
     */
    @!APILevel[
        since: "22"
    ]
    public prop first: ?T

    /**
     * @description The last (highest) element currently in this set.
     */
    @!APILevel[
        since: "22"
    ]
    public prop last: ?T

    /**
     * @description Constructs a new, empty `TreeSet`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a new set containing the elements in the specified collection.
     * @param elements The collection whose elements are to be placed into this set.
     */
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<T>)

    /**
     * @description Constructs a `TreeSet` containing the elements returned by the given initializer function.
     * @param size The size of the set to create.
     * @param initElement A function that returns an element for a given index.
     * @throws IllegalArgumentException if the specified size is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(size: Int64, initElement: (Int64) -> T)

    /**
     * @description Creates a `TreeSet` from an existing `Array` of elements.
     * @param elements The array of elements.
     * @returns A new `TreeSet` containing the elements from the array.
     */
    @!APILevel[
        since: "22"
    ]
    public static func of(elements: Array<T>): TreeSet<T>

    /**
     * @description Returns `true` if this set contains the specified element.
     * @param element The element whose presence in this set is to be tested.
     * @returns `true` if this set contains the specified element.
     */
    @!APILevel[
        since: "22"
    ]
    public func contains(element: T): Bool

    /**
     * @description Returns `true` if this set contains all of the elements of the specified collection.
     * @param all The collection to be checked for containment in this set.
     * @returns `true` if this set contains all of the elements of the specified collection.
     */
    @!APILevel[
        since: "22"
    ]
    public func contains(all!: Collection<T>): Bool

    /**
     * @description Adds the specified element to this set if it is not already present.
     * @param element The element to be added to this set.
     * @returns `true` if this set did not already contain the specified element.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: T): Bool

    /**
     * @description Adds all of the elements in the specified collection to this set.
     * @param all The collection containing elements to be added to this set.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(all!: Collection<T>): Unit

    /**
     * @description Removes the specified element from this set if it is present.
     * @param element The object to be removed from this set, if present.
     * @returns `true` if this set contained the specified element.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(element: T): Bool

    /**
     * @description Removes from this set all of its elements that are contained in the specified collection.
     * @param all The collection containing elements to be removed from this set.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(all!: Collection<T>): Unit

    /**
     * @description Removes all of the elements of this set that satisfy the given predicate.
     * @param predicate A predicate which returns `true` for elements to be removed.
     * @throws ConcurrentModificationException if the set is modified externally during the operation.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeIf(predicate: (T) -> Bool): Unit

    /**
     * @description Removes all of the elements from this set.
     */
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Returns a shallow copy of this `TreeSet` instance.
     * @returns A clone of this `TreeSet` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public func clone(): TreeSet<T>

    /**
     * @description Returns `true` if this set contains no elements.
     * @returns `true` if this set is empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Returns an iterator over the elements in this set in ascending order.
     * @returns An iterator over the elements in this set.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<T>

    /**
     * @description Removes and returns the first (lowest) element from this set.
     * @returns The first element, or `null` if the set is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeFirst(): ?T

    /**
     * @description Removes and returns the last (highest) element from this set.
     * @returns The last element, or `null` if the set is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeLast(): ?T

    /**
     * @description Returns an iterator over the elements of this set in reverse sequential order, starting from the specified element.
     * @param mark The element to start iterating from.
     * @param inclusive If `true`, the iteration includes the `mark` element.
     * @returns An `Iterator` that traverses backward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    public func backward(mark: T, inclusive!: Bool = true): Iterator<T>

    /**
     * @description Returns an iterator over the elements of this set in sequential order, starting from the specified element.
     * @param mark The element to start iterating from.
     * @param inclusive If `true`, the iteration includes the `mark` element.
     * @returns An `Iterator` that traverses forward from the mark.
     */
    @!APILevel[
        since: "22"
    ]
    public func forward(mark: T, inclusive!: Bool = true): Iterator<T>

    /**
     * @description Retains only the elements in this set that are contained in the specified set.
     * @param all The set containing elements to be retained in this set.
     * @throws ConcurrentModificationException if the set is modified externally during the operation.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func retain(all!: Set<T>): Unit

    /**
     * @description Returns an array containing all of the elements in this set.
     * @returns An array containing all of the elements in this set.
     */
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<T>

    /**
     * @description Returns `true` if this set is a subset of the given set.
     * @param other The set to check against.
     * @returns `true` if all elements of this set are also in `other`.
     */
    @!APILevel[
        since: "22"
    ]
    public func subsetOf(other: ReadOnlySet<T>): Bool

    /**
     * @description Returns a new set containing the intersection of this set and the other set.
     * @param other The set to intersect with.
     * @returns A new `TreeSet` containing only the elements present in both sets.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func &(other: ReadOnlySet<T>): TreeSet<T>

    /**
     * @description Returns a new set containing the union of this set and the other set.
     * @param other The set to form the union with.
     * @returns A new `TreeSet` containing all elements from both sets.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func |(other: ReadOnlySet<T>): TreeSet<T>

    /**
     * @description Returns a new set containing the difference of this set and the other set (elements in this set but not in the other).
     * @param other The set of elements to remove.
     * @returns A new `TreeSet` containing the elements that are in this set but not in the other.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(other: ReadOnlySet<T>): TreeSet<T>
}

extend<T> TreeSet<T> <: Equatable<TreeSet<T>> {
    /**
     * @description Compares the specified object with this set for equality.
     * @param other The object to be compared for equality with this set.
     * @returns `true` if the specified object is equal to this set.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TreeSet<T>): Bool

    /**
     * @description Compares the specified object with this set for inequality.
     * @param other The object to be compared for inequality with this set.
     * @returns `true` if the specified object is not equal to this set.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TreeSet<T>): Bool
}

extend<T> TreeSet<T> <: ToString where T <: ToString {
    /**
     * @description Returns a string representation of this set.
     * @returns A string representation of the set.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

