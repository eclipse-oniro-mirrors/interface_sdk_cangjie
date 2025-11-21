package std.collection.concurrent
import std.sync.*
import std.time.*

import std.collection.MapEntryView
import std.collection.ArrayList

/**
 * @description A bounded blocking queue backed by an array. This queue orders elements FIFO (first-in-first-out).
 */
@!APILevel[
    since: "22"
]
public class ArrayBlockingQueue<E> {
    /**
     * @description The capacity of this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public let capacity: Int64

    /**
     * @description Creates an `ArrayBlockingQueue` with the given (fixed) capacity.
     * @param capacity The capacity of this queue.
     * @throws IllegalArgumentException if `capacity` is not greater than zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Creates an `ArrayBlockingQueue` with the given (fixed) capacity and initially containing the elements of the given collection.
     * @param capacity The capacity of this queue.
     * @param elements The collection of elements to initially contain.
     * @throws IllegalArgumentException if `capacity` is less than the size of `elements`.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64, elements: Collection<E>)

    /**
     * @description The number of elements in this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Inserts the specified element at the tail of this queue, waiting for space to become available if the queue is full.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    public func enqueue(element: E): Unit

    /**
     * @description Inserts the specified element at the tail of this queue, waiting for space to become available if the queue is full.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: E): Unit

    /**
     * @description Inserts the specified element at the tail of this queue, waiting up to the specified wait time for space to become available if the queue is full.
     * @param element The element to add.
     * @param timeout How long to wait before giving up.
     * @returns `true` if successful, or `false` if the specified waiting time elapses before space is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func enqueue(element: E, timeout: Duration): Bool

    /**
     * @description Inserts the specified element at the tail of this queue, waiting up to the specified wait time for space to become available if the queue is full.
     * @param element The element to add.
     * @param timeout How long to wait before giving up.
     * @returns `true` if successful, or `false` if the specified waiting time elapses before space is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: E, timeout: Duration): Bool

    /**
     * @description Retrieves and removes the head of this queue, waiting if necessary until an element becomes available.
     * @returns The head of this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func dequeue(): E

    /**
     * @description Retrieves and removes the head of this queue, waiting if necessary until an element becomes available.
     * @returns The head of this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(): E

    /**
     * @description Retrieves and removes the head of this queue, waiting up to the specified wait time if necessary for an element to become available.
     * @param timeout How long to wait before giving up.
     * @returns An `Option` containing the head of this queue, or `None` if the specified waiting time elapses before an element is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func dequeue(timeout: Duration): Option<E>

    /**
     * @description Retrieves and removes the head of this queue, waiting up to the specified wait time if necessary for an element to become available.
     * @param timeout How long to wait before giving up.
     * @returns An `Option` containing the head of this queue, or `None` if the specified waiting time elapses before an element is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(timeout: Duration): Option<E>

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func head(): Option<E>

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func peek(): Option<E>

    /**
     * @description Inserts the specified element at the tail of this queue if it is possible to do so immediately without exceeding the queue's capacity.
     * @param element The element to add.
     * @returns `true` if the element was added to this queue, else `false`.
     */
    @!APILevel[
        since: "22"
    ]
    public func tryEnqueue(element: E): Bool

    /**
     * @description Inserts the specified element at the tail of this queue if it is possible to do so immediately without exceeding the queue's capacity.
     * @param element The element to add.
     * @returns `true` if the element was added to this queue, else `false`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func tryAdd(element: E): Bool

    /**
     * @description Retrieves and removes the head of this queue if it is possible to do so immediately.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func tryDequeue(): Option<E>

    /**
     * @description Retrieves and removes the head of this queue if it is possible to do so immediately.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func tryRemove(): Option<E>
}

/**
 * @description A type alias for `LinkedBlockingQueue`. Represents a thread-safe, optionally bounded, blocking queue.
 */
public type BlockingQueue<E> = LinkedBlockingQueue<E>

/**
 * @description An optionally-bounded blocking queue based on linked nodes. This queue orders elements FIFO (first-in-first-out).
 */
@!APILevel[
    since: "22"
]
public class LinkedBlockingQueue<E> {
    /**
     * @description The capacity of this queue, or `Int64.max` if unbounded.
     */
    @!APILevel[
        since: "22"
    ]
    public let capacity: Int64

    /**
     * @description Creates a `LinkedBlockingQueue` with the given (fixed) capacity.
     * @param capacity The capacity of this queue.
     * @throws IllegalArgumentException if `capacity` is not greater than zero.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Creates a `LinkedBlockingQueue` with a capacity of `Int64.max`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a `LinkedBlockingQueue` with the given capacity, initially containing the elements of the given array.
     * @param capacity The capacity of this queue.
     * @param elements The array of elements to initially contain.
     * @throws IllegalArgumentException if `capacity` is less than the size of `elements`.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64, elements: Array<E>)

    /**
     * @description Creates a `LinkedBlockingQueue` with the given capacity, initially containing the elements of the given collection.
     * @param capacity The capacity of this queue.
     * @param elements The collection of elements to initially contain.
     * @throws IllegalArgumentException if `capacity` is less than the size of `elements`.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64, elements: Collection<E>)

    /**
     * @description The number of elements in this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Inserts the specified element at the tail of this queue, waiting for space to become available if the queue is full.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    public func enqueue(element: E): Unit

    /**
     * @description Inserts the specified element at the tail of this queue, waiting for space to become available if the queue is full.
     * @param element The element to add.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: E): Unit

    /**
     * @description Inserts the specified element at the tail of this queue, waiting up to the specified wait time for space to become available if the queue is full.
     * @param element The element to add.
     * @param timeout How long to wait before giving up.
     * @returns `true` if successful, or `false` if the specified waiting time elapses before space is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func enqueue(element: E, timeout: Duration): Bool

    /**
     * @description Inserts the specified element at the tail of this queue, waiting up to the specified wait time for space to become available if the queue is full.
     * @param element The element to add.
     * @param timeout How long to wait before giving up.
     * @returns `true` if successful, or `false` if the specified waiting time elapses before space is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: E, timeout: Duration): Bool

    /**
     * @description Retrieves and removes the head of this queue, waiting if necessary until an element becomes available.
     * @returns The head of this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func dequeue(): E

    /**
     * @description Retrieves and removes the head of this queue, waiting if necessary until an element becomes available.
     * @returns The head of this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(): E

    /**
     * @description Retrieves and removes the head of this queue, waiting up to the specified wait time if necessary for an element to become available.
     * @param timeout How long to wait before giving up.
     * @returns An `Option` containing the head of this queue, or `None` if the specified waiting time elapses before an element is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func dequeue(timeout: Duration): Option<E>

    /**
     * @description Retrieves and removes the head of this queue, waiting up to the specified wait time if necessary for an element to become available.
     * @param timeout How long to wait before giving up.
     * @returns An `Option` containing the head of this queue, or `None` if the specified waiting time elapses before an element is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(timeout: Duration): Option<E>

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func head(): Option<E>

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func peek(): Option<E>

    /**
     * @description Inserts the specified element at the tail of this queue if it is possible to do so immediately without exceeding the queue's capacity.
     * @param element The element to add.
     * @returns `true` if the element was added to this queue, else `false`.
     */
    @!APILevel[
        since: "22"
    ]
    public func tryEnqueue(element: E): Bool

    /**
     * @description Inserts the specified element at the tail of this queue if it is possible to do so immediately without exceeding the queue's capacity.
     * @param element The element to add.
     * @returns `true` if the element was added to this queue, else `false`.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func tryAdd(element: E): Bool

    /**
     * @description Retrieves and removes the head of this queue if it is possible to do so immediately.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func tryDequeue(): Option<E>

    /**
     * @description Retrieves and removes the head of this queue if it is possible to do so immediately.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func tryRemove(): Option<E>
}


/**
 * @description A hash table supporting full concurrency of retrievals and high expected concurrency for updates.
 */
@!APILevel[
    since: "22"
]
public class ConcurrentHashMap<K, V> <: ConcurrentMap<K, V> & Collection<(K, V)> where K <: Hashable & Equatable<K> {
    /**
     * @description Creates a new, empty map with a default initial capacity and concurrency level.
     * @param concurrencyLevel The estimated number of concurrently updating threads.
     */
    @!APILevel[
        since: "22"
    ]
    public init(concurrencyLevel!: Int64 = DEFAULT_CONCUR_LEVEL)

    /**
     * @description Creates a new, empty map with the specified initial capacity and concurrency level.
     * @param capacity The initial capacity.
     * @param concurrencyLevel The estimated number of concurrently updating threads.
     * @throws IllegalArgumentException if the initial capacity is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64, concurrencyLevel!: Int64 = DEFAULT_CONCUR_LEVEL)

    /**
     * @description Creates a new map with the same mappings as the given collection.
     * @param elements The collection of key-value pairs.
     * @param concurrencyLevel The estimated number of concurrently updating threads.
     */
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<(K, V)>, concurrencyLevel!: Int64 = DEFAULT_CONCUR_LEVEL)

    /**
     * @description Creates a new map with mappings returned by the initializer function.
     * @param size The size of the map to create.
     * @param initElement A function that returns a key-value pair for a given index.
     * @param concurrencyLevel The estimated number of concurrently updating threads.
     * @throws IllegalArgumentException if the size is negative.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(size: Int64, initElement: (Int64) -> (K, V), concurrencyLevel!: Int64 = DEFAULT_CONCUR_LEVEL)

    /**
     * @description Returns the value to which the specified key is mapped, or `null` if this map contains no mapping for the key.
     * @param key The key whose associated value is to be returned.
     * @returns The value, or `null` if the key is not found.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func get(key: K): ?V

    /**
     * @description Tests if the specified object is a key in this table.
     * @param key The key to search for.
     * @returns `true` if and only if the specified object is a key in this table, as determined by the `equals` method; `false` otherwise.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func contains(key: K): Bool

    /**
     * @description Maps the specified key to the specified value in this table.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with `key`, or `null` if there was no mapping for `key`.
     */
    @!APILevel[
        since: "22"
    ]
    public func put(key: K, value: V): ?V

    /**
     * @description Maps the specified key to the specified value in this table.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with `key`, or `null` if there was no mapping for `key`.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func add(key: K, value: V): ?V

    /**
     * @description If the specified key is not already associated with a value, associate it with the given value.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @!APILevel[
        since: "22"
    ]
    public func putIfAbsent(key: K, value: V): ?V

    /**
     * @description If the specified key is not already associated with a value, associate it with the given value.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func addIfAbsent(key: K, value: V): ?V

    /**
     * @description Removes the key (and its corresponding value) from this map.
     * @param key The key that needs to be removed.
     * @returns The previous value associated with `key`, or `null` if there was no mapping for `key`.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(key: K): ?V

    /**
     * @description Removes the entry for a key only if currently mapped to a given value.
     * @param key The key with which the specified value is associated.
     * @param predicate A predicate to test the value.
     * @returns The previous value if the removal was successful, otherwise `null`.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(key: K, predicate: (V) -> Bool): ?V

    /**
     * @description Replaces the entry for a key only if currently mapped to some value.
     * @param key The key with which the specified value is associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func replace(key: K, value: V): ?V

    /**
     * @description Replaces the entry for a key only if currently mapped to some value, and the new value is computed from the old one.
     * @param key The key with which the specified value is associated.
     * @param eval A function to compute the new value.
     * @returns The new value, or `null` if no entry was found for the key.
     */
    @!APILevel[
        since: "22"
    ]
    public func replace(key: K, eval: (V) -> V): ?V

    /**
     * @description Replaces the entry for a key only if it satisfies a predicate, and the new value is computed from the old one.
     * @param key The key with which the specified value is associated.
     * @param predicate A predicate to test the current value.
     * @param eval A function to compute the new value.
     * @returns The new value, or `null` if the replacement did not occur.
     */
    @!APILevel[
        since: "22"
    ]
    public func replace(key: K, predicate: (V) -> Bool, eval: (V) -> V): ?V

    /**
     * @description Provides a view of a map entry, allowing atomic operations on it.
     * @param key The key of the entry.
     * @param fn A function that operates on the `MapEntryView`.
     * @returns The value associated with the key after the operation, or `null` if the key is not in the map.
     */
    @!APILevel[
        since: "22"
    ]
    public func entryView(key: K, fn: (MapEntryView<K, V>) -> Unit): ?V

    /**
     * @description Returns the value to which the specified key is mapped.
     * @param key The key whose associated value is to be returned.
     * @returns The value to which the specified key is mapped.
     * @throws NoneValueException if the key is not found in the map.
     */
    @!APILevel[
        since: "22",
        throwexception: true
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
    public func iterator(): ConcurrentHashMapIterator<K, V>
}

/**
 * @description An iterator over a `ConcurrentHashMap`.
 */
@!APILevel[
    since: "22"
]
public class ConcurrentHashMapIterator<K, V> <: Iterator<(K, V)> where K <: Hashable & Equatable<K> {
    /**
     * @description Constructs an iterator for the given `ConcurrentHashMap`.
     * @param cmap The `ConcurrentHashMap` to iterate over.
     */
    @!APILevel[
        since: "22"
    ]
    public init(cmap: ConcurrentHashMap<K, V>)

    /**
     * @description Returns the next key-value pair in the iteration.
     * @returns An `Option` containing the next entry, or `None` if the iteration has no more elements.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func next(): Option<(K, V)>
}

/**
 * @description A `Map` providing thread-safe atomic operations.
 */
@!APILevel[
    since: "22"
]
public interface ConcurrentMap<K, V> {
    /**
     * @description Returns the value to which the specified key is mapped, or `null` if this map contains no mapping for the key.
     * @param key The key whose associated value is to be returned.
     * @returns The value, or `null` if the key is not found.
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
     * @description Maps the specified key to the specified value in this table.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with `key`, or `null` if there was no mapping for `key`.
     */
    @!APILevel[
        since: "22"
    ]
    func put(key: K, value: V): ?V

    /**
     * @description Maps the specified key to the specified value in this table.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with `key`, or `null` if there was no mapping for `key`.
     */
    @!APILevel[
        since: "22"
    ]
    func add(key: K, value: V): ?V

    /**
     * @description If the specified key is not already associated with a value, associate it with the given value.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @!APILevel[
        since: "22"
    ]
    func putIfAbsent(key: K, value: V): ?V

    /**
     * @description If the specified key is not already associated with a value, associate it with the given value.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @!APILevel[
        since: "22"
    ]
    func addIfAbsent(key: K, value: V): ?V

    /**
     * @description Removes the key (and its corresponding value) from this map.
     * @param key The key that needs to be removed.
     * @returns The previous value associated with `key`, or `null` if there was no mapping for `key`.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(key: K): ?V

    /**
     * @description Removes the entry for a key only if currently mapped to a given value.
     * @param key The key with which the specified value is associated.
     * @param predicate A predicate to test the value.
     * @returns The previous value if the removal was successful, otherwise `null`.
     */
    @!APILevel[
        since: "22"
    ]
    func remove(key: K, predicate: (V) -> Bool): ?V

    /**
     * @description Replaces the entry for a key only if currently mapped to some value.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     * @returns The previous value associated with the specified key, or `null` if there was no mapping for the key.
     */
    @!APILevel[
        since: "22"
    ]
    func replace(key: K, value: V): ?V

    /**
     * @description Replaces the entry for a key only if currently mapped to some value, and the new value is computed from the old one.
     * @param key The key with which the specified value is to be associated.
     * @param eval A function to compute the new value.
     * @returns The new value, or `null` if no entry was found for the key.
     */
    @!APILevel[
        since: "22"
    ]
    func replace(key: K, eval: (V) -> V): ?V

    /**
     * @description Replaces the entry for a key only if it satisfies a predicate, and the new value is computed from the old one.
     * @param key The key with which the specified value is to be associated.
     * @param predicate A predicate to test the current value.
     * @param eval A function to compute the new value.
     * @returns The new value, or `null` if the replacement did not occur.
     */
    @!APILevel[
        since: "22"
    ]
    func replace(key: K, predicate: (V) -> Bool, eval: (V) -> V): ?V

    /**
     * @description Provides a view of a map entry, allowing atomic operations on it.
     * @param key The key of the entry.
     * @param fn A function that operates on the `MapEntryView`.
     * @returns The value associated with the key after the operation, or `null` if the key is not in the map.
     */
    @!APILevel[
        since: "22"
    ]
    func entryView(key: K, fn: (MapEntryView<K, V>) -> Unit): ?V

    /**
     * @description Returns the value to which the specified key is mapped.
     * @param key The key whose associated value is to be returned.
     * @returns The value to which the specified key is mapped.
     */
    @!APILevel[
        since: "22"
    ]
    operator func [](key: K): V

    /**
     * @description Associates the specified value with the specified key in this map.
     * @param key The key with which the specified value is to be associated.
     * @param value The value to be associated with the specified key.
     */
    @!APILevel[
        since: "22"
    ]
    operator func [](key: K, value!: V): Unit
}

/**
 * @description A type alias for `ConcurrentLinkedQueue`. Represents a thread-safe, unbounded, non-blocking queue.
 */
public type NonBlockingQueue<E> = ConcurrentLinkedQueue<E>

/**
 * @description An unbounded thread-safe queue based on linked nodes. This queue orders elements FIFO (first-in-first-out).
 */
@!APILevel[
    since: "22"
]
public class ConcurrentLinkedQueue<E> <: Collection<E> {
    /**
     * @description Creates a `ConcurrentLinkedQueue` that is initially empty.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a `ConcurrentLinkedQueue` initially containing the elements of the given collection.
     * @param elements The collection of elements to initially contain.
     */
    @!APILevel[
        since: "22"
    ]
    public init(elements: Collection<E>)

    /**
     * @description The number of elements in this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64

    /**
     * @description Inserts the specified element at the tail of this queue.
     * @param element The element to add.
     * @returns `true` if the element was added to this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func enqueue(element: E): Bool

    /**
     * @description Inserts the specified element at the tail of this queue.
     * @param element The element to add.
     * @returns `true` if the element was added to this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(element: E): Bool

    /**
     * @description Retrieves and removes the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func dequeue(): Option<E>

    /**
     * @description Retrieves and removes the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove(): Option<E>

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func head(): Option<E>

    /**
     * @description Retrieves, but does not remove, the head of this queue.
     * @returns An `Option` containing the head of this queue, or `None` if this queue is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public func peek(): Option<E>

    /**
     * @description Returns `true` if this queue contains no elements.
     * @returns `true` if this queue is empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Returns an array containing all of the elements in this queue, in proper sequence.
     * @returns An array containing all of the elements in this queue.
     */
    @!APILevel[
        since: "22"
    ]
    public func toArray(): Array<E>

    /**
     * @description Returns an iterator over the elements in this queue in proper sequence.
     * @returns An iterator over the elements in this queue.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func iterator(): Iterator<E>
}

