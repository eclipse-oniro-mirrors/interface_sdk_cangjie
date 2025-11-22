package std.runtime

import std.fs.*
import {std.io.*, std.process.*, std.fs.*, std.env.*, std.sync.Mutex}

/**
 * @description Triggers the garbage collector. This is a hint to the garbage collector and the call may be ignored by the runtime.
 * @param heavy - If set to true, a full, major garbage collection will be performed. Otherwise, a minor collection may be performed.
 */
@!APILevel[
    since: "22"
]
public func GC(heavy!: Bool = false): Unit

/**
 * @description Sets the threshold for garbage collection.
 * @param value - The new GC threshold in bytes.
 */
@!APILevel[
    since: "22"
]
public func SetGCThreshold(value: UInt64): Unit

/**
 * @description Triggers the garbage collector. This is a hint to the garbage collector and the call may be ignored by the runtime.
 * @param heavy - If set to true, a full, major garbage collection will be performed. Otherwise, a minor collection may be performed.
 */
@!APILevel[
    since: "22"
]
public func gc(heavy!: Bool = false): Unit

/**
 * @description Sets the threshold for garbage collection.
 * @param value - The new GC threshold in bytes.
 */
@!APILevel[
    since: "22"
]
public func setGCThreshold(value: UInt64): Unit

/**
 * @description Gets the number of garbage collections that have occurred.
 * @returns The total number of garbage collections.
 */
@!APILevel[
    since: "22"
]
public func getGCCount(): Int64

/**
 * @description Gets the approximate accumulated garbage collection time in milliseconds.
 * @returns The approximate accumulated garbage collection time in milliseconds.
 */
@!APILevel[
    since: "22"
]
public func getGCTime(): Int64

/**
 * @description Gets the total size of memory freed by the garbage collector in bytes.
 * @returns The total size of memory freed in bytes.
 */
@!APILevel[
    since: "22"
]
public func getGCFreedSize(): Int64

/**
 * @description Gets the memory information of the program.
 */
@!APILevel[
    since: "22"
]
public struct MemoryInfo {
    /**
     * @description Gets the maximum heap size in bytes that can be used by the runtime.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop maxHeapSize: Int64
    
    /**
     * @description Gets the current allocated heap size in bytes.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop allocatedHeapSize: Int64
    
    /**
     * @description Gets the physical memory in bytes that is used by the heap.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop heapPhysicalMemory: Int64
}

/**
 * @description Gets the maximum heap size in bytes that can be used by the runtime.
 * @returns The maximum heap size in bytes.
 */
@!APILevel[
    since: "22"
]
public func getMaxHeapSize(): Int64

/**
 * @description Gets the current allocated heap size in bytes.
 * @returns The current allocated heap size in bytes.
 */
@!APILevel[
    since: "22"
]
public func getAllocatedHeapSize(): Int64

/**
 * @description Gets the physical memory in bytes that is used by the heap.
 * @returns The physical memory in bytes used by the heap.
 */
@!APILevel[
    since: "22"
]
public func getUsedHeapSize(): Int64

/**
 * @description Dumps the heap data to the specified file path.
 * @param path - The path to the file where heap data will be dumped.
 * @throws MemoryInfoException if operation failed.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func dumpHeapData(path: Path): Unit

/**
 * @description Gets the processor information.
 */
@!APILevel[
    since: "22"
]
public struct ProcessorInfo {
    /**
     * @description The number of processors available to the runtime
     */
    @!APILevel[
        since: "22"
    ]
    public static prop processorCount: Int64
}

/**
 * @description Gets the number of processors available to the runtime.
 * @returns The number of available processors.
 */
@!APILevel[
    since: "22"
]
public func getProcessorCount(): Int64

/**
 * @description Starts CPU profiling.
 * @throws ProfilingInfoException if failed to start CPU profiling.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func startCPUProfiling(): Unit

/**
 * @description Stops CPU profiling and writes the profiling data to the specified file path.
 * @param path - The path to the file where profiling data will be written.
 * @throws ProfilingInfoException if failed to stop CPU profiling.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func stopCPUProfiling(path: Path): Unit

/**
 * @description Gets the thread information.
 */
@!APILevel[
    since: "22"
]
public struct ThreadInfo {
    /**
     * @description The current number of threads in the runtime
     */
    @!APILevel[
        since: "22"
    ]
    public static prop threadCount: Int64
    
    /**
     * @description The number of blocked threads in the runtime
     */
    @!APILevel[
        since: "22"
    ]
    public static prop blockingThreadCount: Int64
    
    /**
     * @description The actual number of physical threads used by the runtime
     */
    @!APILevel[
        since: "22"
    ]
    public static prop nativeThreadCount: Int64
}

/**
 * @description Gets the current number of threads in the runtime.
 * @returns The current number of threads.
 */
@!APILevel[
    since: "22"
]
public func getThreadCount(): Int64

/**
 * @description Gets the number of blocked threads in the runtime.
 * @returns The number of blocked threads.
 */
@!APILevel[
    since: "22"
]
public func getBlockingThreadCount(): Int64

/**
 * @description Gets the actual number of physical threads used by the runtime.
 * @returns The number of physical threads.
 */
@!APILevel[
    since: "22"
]
public func getNativeThreadCount(): Int64


