package std.sync

import std.time.MonoTime
import std.time.DateTime

/**
 * @description Memory ordering model.
 */
@!APILevel[
    since: "22"
]
public enum MemoryOrder {
    /**
     * @description Strongest memory ordering; sequentially consistent across threads.
     */
    @!APILevel[
        since: "22"
    ]
    SeqCst
}

/**
 * @description Default memory ordering.
 */
@!APILevel[
    since: "22"
]
public let DefaultMemoryOrder: MemoryOrder = MemoryOrder.SeqCst

/**
 * @description An atomic 8-bit signed integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicInt8 {
    /**
     * @description Creates an atomic 8-bit signed integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int8)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): Int8

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): Int8

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int8): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     * @param memoryOrder - The current memory sorting method being used.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int8, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int8): Int8

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int8, memoryOrder!: MemoryOrder): Int8

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int8, new: Int8): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int8, new: Int8, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int8): Int8

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int8, memoryOrder!: MemoryOrder): Int8

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int8): Int8

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int8, memoryOrder!: MemoryOrder): Int8

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int8): Int8

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int8, memoryOrder!: MemoryOrder): Int8

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int8): Int8

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int8, memoryOrder!: MemoryOrder): Int8

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int8): Int8

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int8, memoryOrder!: MemoryOrder): Int8
}

/**
 * @description An atomic 16-bit signed integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicInt16 {
    /**
     * @description Creates an atomic 16-bit signed integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int16)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): Int16

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): Int16

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int16): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param memoryOrder - The current memory sorting method being used.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int16, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int16): Int16

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int16, memoryOrder!: MemoryOrder): Int16

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int16, new: Int16): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int16, new: Int16, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int16): Int16

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int16, memoryOrder!: MemoryOrder): Int16

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int16): Int16

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int16, memoryOrder!: MemoryOrder): Int16

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int16): Int16

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int16, memoryOrder!: MemoryOrder): Int16

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int16): Int16

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int16, memoryOrder!: MemoryOrder): Int16

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int16): Int16

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int16, memoryOrder!: MemoryOrder): Int16
}

/**
 * @description An atomic 32-bit signed integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicInt32 {
    /**
     * @description Creates an atomic 32-bit signed integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int32)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): Int32

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): Int32

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int32): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param memoryOrder - The current memory sorting method being used.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int32, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int32): Int32

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int32, memoryOrder!: MemoryOrder): Int32

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int32, new: Int32): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int32, new: Int32, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int32): Int32

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int32, memoryOrder!: MemoryOrder): Int32

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int32): Int32

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int32, memoryOrder!: MemoryOrder): Int32

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int32): Int32

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int32, memoryOrder!: MemoryOrder): Int32

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int32): Int32

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int32, memoryOrder!: MemoryOrder): Int32

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int32): Int32

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int32, memoryOrder!: MemoryOrder): Int32
}

/**
 * @description An atomic 64-bit signed integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicInt64 {
    /**
     * @description Creates an atomic 64-bit signed integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Int64)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): Int64

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): Int64

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int64): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param memoryOrder - The current memory sorting method being used.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Int64, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int64): Int64

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Int64, memoryOrder!: MemoryOrder): Int64

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int64, new: Int64): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Int64, new: Int64, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int64): Int64

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: Int64, memoryOrder!: MemoryOrder): Int64

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int64): Int64

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: Int64, memoryOrder!: MemoryOrder): Int64

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int64): Int64

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: Int64, memoryOrder!: MemoryOrder): Int64

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int64): Int64

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: Int64, memoryOrder!: MemoryOrder): Int64

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int64): Int64

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: Int64, memoryOrder!: MemoryOrder): Int64
}

/**
 * @description An atomic 8-bit unsigned integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicUInt8 {
    /**
     * @description Creates an atomic 8-bit unsigned integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt8)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): UInt8

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): UInt8

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt8): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param memoryOrder - The current memory sorting method being used.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt8, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt8): UInt8

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt8, memoryOrder!: MemoryOrder): UInt8

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt8, new: UInt8): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt8, new: UInt8, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt8): UInt8

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt8, memoryOrder!: MemoryOrder): UInt8

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt8): UInt8

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt8, memoryOrder!: MemoryOrder): UInt8

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt8): UInt8

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt8, memoryOrder!: MemoryOrder): UInt8

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt8): UInt8

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt8, memoryOrder!: MemoryOrder): UInt8

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt8): UInt8

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt8, memoryOrder!: MemoryOrder): UInt8
}

/**
 * @description An atomic 16-bit unsigned integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicUInt16 {
    /**
     * @description Creates an atomic 16-bit unsigned integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt16)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): UInt16

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): UInt16

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt16): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     * @param memoryOrder - The current memory sorting method being used.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt16, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt16): UInt16

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt16, memoryOrder!: MemoryOrder): UInt16

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt16, new: UInt16): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt16, new: UInt16, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt16): UInt16

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt16, memoryOrder!: MemoryOrder): UInt16

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt16): UInt16

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt16, memoryOrder!: MemoryOrder): UInt16

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt16): UInt16

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt16, memoryOrder!: MemoryOrder): UInt16

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt16): UInt16

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt16, memoryOrder!: MemoryOrder): UInt16

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt16): UInt16

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt16, memoryOrder!: MemoryOrder): UInt16
}

/**
 * @description An atomic 32-bit unsigned integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicUInt32 {
    /**
     * @description Creates an atomic 32-bit unsigned integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt32)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): UInt32

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): UInt32

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt32): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param memoryOrder - The current memory sorting method being used.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt32, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt32): UInt32

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt32, memoryOrder!: MemoryOrder): UInt32

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt32, new: UInt32): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt32, new: UInt32, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt32): UInt32

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt32, memoryOrder!: MemoryOrder): UInt32

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt32): UInt32

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt32, memoryOrder!: MemoryOrder): UInt32

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt32): UInt32

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt32, memoryOrder!: MemoryOrder): UInt32

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt32): UInt32

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt32, memoryOrder!: MemoryOrder): UInt32

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt32): UInt32

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt32, memoryOrder!: MemoryOrder): UInt32
}

/**
 * @description An atomic 64-bit unsigned integer.
 */
@!APILevel[
    since: "22"
]
public class AtomicUInt64 {
    /**
     * @description Creates an atomic 64-bit unsigned integer with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: UInt64)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): UInt64

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): UInt64

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt64): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param memoryOrder - The current memory sorting method being used.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: UInt64, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt64): UInt64

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: UInt64, memoryOrder!: MemoryOrder): UInt64

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt64, new: UInt64): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - Whe the CAS operation succeeds, the sorting method
     * @param failureOrder - Whe the CAS operation fails, the sorting method
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: UInt64, new: UInt64, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt64): UInt64

    /**
     * @description Atomically adds the given value and returns the previous value.
     * @param val - Value to add
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAdd(val: UInt64, memoryOrder!: MemoryOrder): UInt64

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt64): UInt64

    /**
     * @description Atomically subtracts the given value and returns the previous value.
     * @param val - Value to subtract
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchSub(val: UInt64, memoryOrder!: MemoryOrder): UInt64

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt64): UInt64

    /**
     * @description Atomically applies bitwise AND with the given value and returns the previous value.
     * @param val - Operand for bitwise AND
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchAnd(val: UInt64, memoryOrder!: MemoryOrder): UInt64

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt64): UInt64

    /**
     * @description Atomically applies bitwise OR with the given value and returns the previous value.
     * @param val - Operand for bitwise OR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchOr(val: UInt64, memoryOrder!: MemoryOrder): UInt64

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt64): UInt64

    /**
     * @description Atomically applies bitwise XOR with the given value and returns the previous value.
     * @param val - Operand for bitwise XOR
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func fetchXor(val: UInt64, memoryOrder!: MemoryOrder): UInt64
}

/**
 * @description An atomic boolean value.
 */
@!APILevel[
    since: "22"
]
public class AtomicBool {
    /**
     * @description Creates an atomic boolean with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: Bool)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): Bool

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): Bool

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Bool): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     * @param memoryOrder - The current memory sorting method being used.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Bool, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Bool): Bool

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Bool, memoryOrder!: MemoryOrder): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Bool, new: Bool): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - When the CAS operation succeeds, the sorting method
     * @param failureOrder - When the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Bool, new: Bool, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool
}

/**
 * @description An atomic reference to an object.
 */
@!APILevel[
    since: "22"
]
public class AtomicReference<T> where T <: Object {
    /**
     * @description Creates an atomic reference with the given initial value.
     * @param val - Initial value
     */
    @!APILevel[
        since: "22"
    ]
    public init(val: T)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): T

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): T

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: T): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     * @param memoryOrder - The current memory sorting method being used.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: T, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: T): T

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: T, memoryOrder!: MemoryOrder): T

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: T, new: T): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - When the CAS operation succeeds, the sorting method
     * @param failureOrder - When the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: T, new: T, successOrder!: MemoryOrder, failureOrder!: MemoryOrder): Bool
}

/**
 * @description An atomic optional reference to an object.
 */
@!APILevel[
    since: "22"
]
public class AtomicOptionReference<T> where T <: Object {
    /**
     * @description Creates an atomic optional reference with no initial value.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates an atomic optional reference with the given initial value.
     * @param val - Initial value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public init(val: Option<T>)

    /**
     * @description Atomically loads the current value.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(): Option<T>

    /**
     * @description Atomically loads the current value.
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Current value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func load(memoryOrder!: MemoryOrder): Option<T>

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Option<T>): Unit

    /**
     * @description Atomically stores a new value, replacing the current one.
     * @param val - Value to store
     * @param memoryOrder - The current memory sorting method being used.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func store(val: Option<T>, memoryOrder!: MemoryOrder): Unit

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Option<T>): Option<T>

    /**
     * @description Atomically swaps the value with the given one.
     * @param val - New value to set
     * @param memoryOrder - The current memory sorting method being used.
     * @returns Previous value
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func swap(val: Option<T>, memoryOrder!: MemoryOrder): Option<T>

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(old: Option<T>, new: Option<T>): Bool

    /**
     * @description Atomically compares with expected and, if equal, stores the new value.
     * @param old - Expected current value
     * @param new - Value to set on success
     * @param successOrder - When the CAS operation succeeds, the sorting method
     * @param failureOrder - When the CAS operation fails, the sorting method
     * @returns true if the swap occurred; false otherwise
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func compareAndSwap(
        old: Option<T>,
        new: Option<T>,
        successOrder!: MemoryOrder,
        failureOrder!: MemoryOrder
    ): Bool
}

/**
 * @description A synchronization primitive that allows multiple threads to wait for each other to reach a common point.
 */
@!APILevel[
    since: "22"
]
public class Barrier {
    /**
     * @description Creates a barrier that trips after the specified number of parties arrive.
     * @param count - Number of parties required to trip; must be positive
     * @throws IllegalArgumentException when count is not positive
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(count: Int64)

    /**
     * @description Waits until all parties have arrived or the timeout elapses.
     * @param timeout - Maximum time to wait; must be greater than Duration.Zero
     * @throws IllegalArgumentException when timeout is less than or equal to Duration.Zero
     * @throws IllegalSynchronizationStateException when Barrier in an invalid state
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func wait(timeout!: Duration = Duration.Max): Unit
}

/**
 * @description Reentrant mutex interface. Prefer `Lock`.
 */
@!APILevel[
    since: "22"
]
public interface IReentrantMutex {
    /**
     * @description Acquires the lock, blocking if necessary.
     */
    @!APILevel[
        since: "22"
    ]
    func lock(): Unit

    /**
     * @description Attempts to acquire the lock without blocking.
     * @returns true if the lock was acquired; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func tryLock(): Bool

    /**
     * @description Releases the lock held by the current thread.
     * @throws IllegalSynchronizationStateException Current thread does not hold the lock.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func unlock(): Unit
}

/**
 * @description Exception thrown for invalid synchronization state or usage.
 */
@!APILevel[
    since: "22"
]
public class IllegalSynchronizationStateException <: Exception {
    /**
     * @description Creates an exception with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates an exception with the specified detail message.
     * @param message - Detail message
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Basic mutual exclusion lock interface.
 */
@!APILevel[
    since: "22"
]
public interface Lock {
    /**
     * @description Acquires the lock, blocking if necessary.
     */
    @!APILevel[
        since: "22"
    ]
    func lock(): Unit

    /**
     * @description Attempts to acquire the lock without blocking.
     * @returns true if the lock was acquired; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func tryLock(): Bool

    /**
     * @description Releases the lock held by the current thread.
     */
    @!APILevel[
        since: "22"
    ]
    func unlock(): Unit
}

/**
 * @description Lock that can create an associated condition variable.
 */
@!APILevel[
    since: "22"
]
public interface UniqueLock <: Lock {
    /**
     * @description Returns a condition associated with this lock.
     * @returns Condition linked to this lock
     */
    @!APILevel[
        since: "22"
    ]
    func condition(): Condition
}

/**
 * @description Condition variable interface for waiting and notification.
 */
@!APILevel[
    since: "22"
]
public interface Condition {
    /**
     * @description Blocks the current thread until signalled.
     */
    @!APILevel[
        since: "22"
    ]
    func wait(): Unit

    /**
     * @description Blocks until signalled or the timeout elapses.
     * @param timeout - Maximum time to wait
     * @returns true if signalled; false on timeout
     */
    @!APILevel[
        since: "22"
    ]
    func wait(timeout!: Duration): Bool

    /**
     * @description Waits until the predicate evaluates to true.
     * @param predicate - Condition to be satisfied
     */
    @!APILevel[
        since: "22"
    ]
    func waitUntil(predicate: () -> Bool): Unit

    /**
     * @description Waits until the predicate evaluates to true or timeout elapses.
     * @param predicate - Condition to be satisfied
     * @param timeout - Maximum time to wait
     * @returns true if predicate became true; false on timeout
     */
    @!APILevel[
        since: "22"
    ]
    func waitUntil(predicate: () -> Bool, timeout!: Duration): Bool

    /**
     * @description Wakes one waiting thread.
     */
    @!APILevel[
        since: "22"
    ]
    func notify(): Unit

    /**
     * @description Wakes all waiting threads.
     */
    @!APILevel[
        since: "22"
    ]
    func notifyAll(): Unit
}

/**
 * @description Monitor class providing wait/notify capabilities. Prefer `Mutex` and `Condition`.
 */
@!APILevel[
    since: "22"
]
public class Monitor <: ReentrantMutex {
    /**
     * @description Creates a monitor with an associated reentrant mutex and condition queue.
     * @throws IllegalSynchronizationStateException Initialization of underlying monitor failed.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init()

    /**
     * @description Blocks until a paired notify is invoked or the timeout elapses.
     * @param timeout - Maximum time to wait; must be greater than Duration.Zero
     * @returns true if signalled by another thread; false on timeout
     * @throws IllegalSynchronizationStateException when Current thread does not hold the monitor's mutex
     * @throws IllegalArgumentException when timeout is less than or equal to Duration.Zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func wait(timeout!: Duration = Duration.Max): Bool

    /**
     * @description Wakes a single thread waiting on this monitor.
     * @throws IllegalSynchronizationStateException when Current thread does not hold the monitor's mutex
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func notify(): Unit

    /**
     * @description Wakes all threads waiting on this monitor.
     * @throws IllegalSynchronizationStateException when Current thread does not hold the monitor's mutex
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func notifyAll(): Unit
}

/**
 * @description Unique identifier of an existing wait queue for a given monitor.
 */
@!APILevel[
    since: "22"
]
public struct ConditionID {
}

/**
 * @description A monitor that encapsulates a reentrant mutex and supports multiple condition queues.
 */
@!APILevel[
    since: "22"
]
public class MultiConditionMonitor <: ReentrantMutex {
    /**
     * @description Initializes a monitor supporting multiple independent condition queues.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a new condition identifier bound to this monitor.
     * @returns A new ConditionID associated with this monitor
     */
    @!APILevel[
        since: "22"
    ]
    public func newCondition(): ConditionID

    /**
     * @description Blocks until the specified condition is signalled or the timeout elapses.
     * @param condID - Condition identifier created by this instance via newCondition
     * @param timeout - Maximum time to wait; must be greater than Duration.Zero
     * @returns true if the condition was signalled; false on timeout
     * @throws IllegalArgumentException when timeout is less than or equal to Duration.Zero
     * @throws IllegalSynchronizationStateException when Current thread does not hold the mutex or condID is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func wait(condID: ConditionID, timeout!: Duration = Duration.Max): Bool

    /**
     * @description Wakes a single thread waiting on the specified condition.
     * @param condID - Condition identifier created by this instance via newCondition
     * @throws IllegalSynchronizationStateException when Current thread does not hold the mutex or condID is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func notify(condID: ConditionID): Unit

    /**
     * @description Wakes all threads waiting on the specified condition.
     * @param condID - Condition identifier created by this instance via newCondition
     * @throws IllegalSynchronizationStateException when Current thread does not hold the mutex or condID is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func notifyAll(condID: ConditionID): Unit
}

/**
 * @description A mutual exclusion lock that can be used with the synchronized statement and supports conditions.
 */
@!APILevel[
    since: "22"
]
public class Mutex <: UniqueLock {
    /**
     * @description Creates a non-reentrant mutual exclusion lock.
     * @throws IllegalSynchronizationStateException Initialization of mutex failed.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init()

    /**
     * @description Acquires the lock, blocking if necessary.
     */
    @!APILevel[
        since: "22"
    ]
    public func lock(): Unit

    /**
     * @description Attempts to acquire the lock without blocking.
     * @returns true if the lock was acquired; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func tryLock(): Bool

    /**
     * @description Releases the lock held by the current thread.
     * @throws IllegalSynchronizationStateException when Current thread does not hold the lock
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func unlock(): Unit

    /**
     * @description Returns a condition object associated with this mutex.
     * @returns Condition linked to this mutex
     * @throws IllegalSynchronizationStateException when Current thread does not hold the lock
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func condition(): Condition
}

/**
 * @description A read-write lock that supports separate read and write locking.
 */
@!APILevel[
    since: "22"
]
public class ReadWriteLock {
    /**
     * @description Read-side view that allows shared access.
     */
    @!APILevel[
        since: "22"
    ]
    public prop readLock: Lock

    /**
     * @description Write-side view that requires exclusive access.
     */
    @!APILevel[
        since: "22"
    ]
    public prop writeLock: UniqueLock

    /**
     * @description Creates a read/write lock.
     * @param fair - If true, enables fair acquisition policy
     */
    @!APILevel[
        since: "22"
    ]
    public init(fair!: Bool = false)

    /**
     * @description Indicates whether the lock uses a fair acquisition policy.
     * @returns true if fair; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isFair(): Bool
}

/**
 * @description A mutual exclusion lock that can be used with the synchronized statement.
 */
@!APILevel[
    since: "22"
]
public open class ReentrantMutex <: Lock {
    /**
     * @description Creates a reentrant mutex wrapper over an internal Mutex.
     * @throws IllegalSynchronizationStateException Initialization of the underlying mutex failed.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init()

    /**
     * @description Acquires the lock, blocking if necessary.
     */
    @!APILevel[
        since: "22"
    ]
    public open func lock(): Unit

    /**
     * @description Attempts to acquire the lock without blocking.
     * @returns true if the lock was acquired; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public open func tryLock(): Bool

    /**
     * @description Releases one level of ownership; wakes a waiting thread if any.
     * @throws IllegalSynchronizationStateException when Current thread does not hold the lock
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open func unlock(): Unit
}

/**
 * @description Mode values for reentrant read/write mutex.
 */
@!APILevel[
    since: "22"
]
public enum ReadWriteMutexMode {
    /**
     * @description Non-fair acquisition policy.
     */
    @!APILevel[
        since: "22"
    ]
    Unfair |
    /**
     * @description Fair acquisition policy.
     */
    @!APILevel[
        since: "22"
    ]
    Fair
}

/**
 * @description A reentrant read-write mutex.
 */
@!APILevel[
    since: "22"
]
public class ReentrantReadWriteMutex {
    /**
     * @description Creates a reentrant read/write mutex with the specified mode.
     * @param mode - Fairness mode
     * @throws IllegalSynchronizationStateException Initialization failed.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(mode!: ReadWriteMutexMode = ReadWriteMutexMode.Unfair)

    /**
     * @description Returns the read mutex view.
     */
    @!APILevel[
        since: "22"
    ]
    public prop readMutex: ReentrantReadMutex

    /**
     * @description Returns the write mutex view.
     */
    @!APILevel[
        since: "22"
    ]
    public prop writeMutex: ReentrantWriteMutex
}

/**
 * @description A reentrant read mutex.
 */
@!APILevel[
    since: "22"
]
public class ReentrantReadMutex <: ReentrantMutex {
    /**
     * @description Acquires a shared (read) lock; may block if a writer holds the lock.
     * @throws IllegalSynchronizationStateException when Lock state invalid for the current thread
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lock(): Unit

    /**
     * @description Attempts to acquire a shared (read) lock without blocking.
     * @returns true if the read lock was acquired; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func tryLock(): Bool

    /**
     * @description Releases a shared (read) lock.
     * @throws IllegalSynchronizationStateException when Current thread does not hold the read lock
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func unlock(): Unit
}

/**
 * @description A reentrant write mutex.
 */
@!APILevel[
    since: "22"
]
public class ReentrantWriteMutex <: ReentrantMutex {
    /**
     * @description Acquires an exclusive (write) lock; may block while readers/writers hold the lock.
     * @throws IllegalSynchronizationStateException when Lock state invalid for the current thread
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lock(): Unit

    /**
     * @description Attempts to acquire an exclusive (write) lock without blocking.
     * @returns true if the write lock was acquired; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func tryLock(): Bool

    /**
     * @description Releases an exclusive (write) lock.
     * @throws IllegalSynchronizationStateException when Current thread does not hold the write lock
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func unlock(): Unit
}

/**
 * @description A counting semaphore that maintains a set of permits.
 */
@!APILevel[
    since: "22"
]
public class Semaphore {
    /**
     * @description Creates a counting semaphore with the specified initial permits.
     * @param count - Initial number of permits; must be non-negative
     * @throws IllegalArgumentException when count is negative
     * @throws IllegalSynchronizationStateException Initialization of the underlying semaphore failed.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(count: Int64)

    /**
     * @description Gets the current number of permits.
     * @returns Current number of permits
     */
    @!APILevel[
        since: "22"
    ]
    public prop count: Int64

    /**
     * @description Acquires the specified number of permits, blocking if necessary.
     * @param amount - Number of permits to acquire; must be positive
     * @throws IllegalSynchronizationStateException when Semaphore in an invalid state
     * @throws IllegalArgumentException when amount is not positive
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func acquire(amount!: Int64 = 1): Unit

    /**
     * @description Attempts to acquire the specified number of permits without blocking.
     * @param amount - Number of permits to acquire; must be positive
     * @returns true if the permits were acquired; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func tryAcquire(amount!: Int64 = 1): Bool

    /**
     * @description Releases the specified number of permits.
     * @param amount - Number of permits to release; must be positive
     * @throws IllegalSynchronizationStateException when Semaphore in an invalid state
     * @throws IllegalArgumentException when amount is not positive
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func release(amount!: Int64 = 1): Unit
}

/**
 * @description A synchronization aid that allows one or more threads to wait until a set of operations being performed in other threads completes.
 */
@!APILevel[
    since: "22"
]
public class SyncCounter {
    /**
     * @description Creates a countdown-style synchronization counter with an initial value.
     * @param count - Initial count; must be non-negative
     * @throws IllegalArgumentException when count is negative
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(count: Int64)

    /**
     * @description Gets the current count.
     * @returns Current count
     */
    @!APILevel[
        since: "22"
    ]
    public prop count: Int64

    /**
     * @description Decrements the counter by one; unblocks waiters when it reaches zero.
     * @throws IllegalSynchronizationStateException when Counter is already zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func dec(): Unit

    /**
     * @description Blocks until the counter reaches zero or the timeout elapses.
     * @param timeout - Maximum time to wait; must be greater than Duration.Zero
     * @throws IllegalArgumentException when timeout is less than or equal to Duration.Zero
     * @throws IllegalSynchronizationStateException when Counter in an invalid state
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func waitUntilZero(timeout!: Duration = Duration.Max): Unit
}

/**
 * @description A timer that can execute tasks at a specified time or interval.
 */
@!APILevel[
    since: "22"
]
public class Timer <: Equatable<Timer> & Hashable {
    /**
     * @description Schedules a task to run after a delay; task may reschedule by returning a duration.
     * @param delay - Time before first execution; must be non-negative
     * @param task - Function returning next delay or none to stop
     * @returns A Timer handle controlling the scheduled task
     */
    @!APILevel[
        since: "22"
    ]
    public static func after(delay: Duration, task: () -> Option<Duration>): Timer

    /**
     * @description Schedules a task to run once after the specified delay.
     * @param delay - Time before execution; must be non-negative
     * @param task - Task to execute once
     * @returns A Timer handle controlling the scheduled task
     */
    @!APILevel[
        since: "22"
    ]
    public static func once(delay: Duration, task: () -> Unit): Timer

    /**
     * @description Schedules a repeating task with a fixed interval after an initial delay.
     * @param delay - Time before first execution; must be non-negative
     * @param interval - Interval between executions; must be positive
     * @param task - Task to execute repeatedly
     * @param style - Catch-up policy when executions are delayed
     * @returns A Timer handle controlling the scheduled task
     */
    @!APILevel[
        since: "22"
    ]
    public static func repeat(delay: Duration, interval: Duration, task: () -> Unit, style!: CatchupStyle = Burst): Timer

    /**
     * @description Schedules a repeating task to run during a fixed period with an initial delay.
     * @param period - Total period to run; must be non-negative
     * @param delay - Time before first execution; must be non-negative
     * @param interval - Interval between executions; must be positive
     * @param task - Task to execute during the period
     * @param style - Catch-up policy when executions are delayed
     * @returns A Timer handle controlling the scheduled task
     */
    @!APILevel[
        since: "22"
    ]
    public static func repeatDuring(period: Duration, delay: Duration, interval: Duration, task: () -> Unit,
        style!: CatchupStyle = Burst): Timer

    /**
     * @description Schedules a task to run a fixed number of times with a fixed interval.
     * @param count - Number of executions; must be non-negative
     * @param delay - Time before first execution; must be non-negative
     * @param interval - Interval between executions; must be positive
     * @param task - Task to execute repeatedly
     * @param style - Catch-up policy when executions are delayed
     * @returns A Timer handle controlling the scheduled task
     */
    @!APILevel[
        since: "22"
    ]
    public static func repeatTimes(count: Int64, delay: Duration, interval: Duration, task: () -> Unit,
        style!: CatchupStyle = Burst): Timer

    /**
     * @description Cancels the timer, the associated task will no longer be scheduled to run.
     */
    @!APILevel[
        since: "22"
    ]
    public func cancel(): Unit

    /**
     * @description Checks equality with another Timer.
     * @param other - Timer to compare with
     * @returns true if timers are equal; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Timer): Bool

    /**
     * @description Checks inequality with another Timer.
     * @param other - Timer to compare with
     * @returns true if timers are not equal; false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Timer): Bool

    /**
     * @description Computes hash code for this Timer.
     * @returns Hash code value
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description The catchup style of the periodic timer.
 */
@!APILevel[
    since: "22"
]
public enum CatchupStyle {
    /**
     * @description Delay subsequent executions to maintain the interval.
     */
    @!APILevel[
        since: "22"
    ]
    Delay |
    /**
     * @description Execute missed executions immediately.
     */
    @!APILevel[
        since: "22"
    ]
    Burst |
    /**
     * @description Skip missed executions.
     */
    @!APILevel[
        since: "22"
    ]
    Skip
}

