
package std.binary

/**
 * @description Interface for big-endian byte order operations on type T.
 * @param T - The type parameter for the interface.
 */
@!APILevel[
    since: "22"
]
public interface BigEndianOrder<T> {
    /**
     * @description Writes a value of type T in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written if the buffer length is sufficient.
     */
    @!APILevel[
        since: "22"
    ]
    func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads the value of type T in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The value of type T read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    static func readBigEndian(buffer: Array<Byte>): T
}

/**
 * @description Interface for little-endian byte order operations on type T.
 * @param T - The type parameter for the interface.
 */
@!APILevel[
    since: "22"
]
public interface LittleEndianOrder<T> {
    /**
     * @description Writes a value of type T in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written if the buffer length is sufficient.
     */
    @!APILevel[
        since: "22"
    ]
    func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads the value of type T in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The value of type T read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    static func readLittleEndian(buffer: Array<Byte>): T
}

/**
 * @description Interface for swapping byte order operations on type T.
 * @param T - The type parameter for the interface.
 */
@!APILevel[
    since: "22"
]
public interface SwapEndianOrder<T> {
    /**
     * @description Reverses the byte order of the value.
     * @returns The value with reversed byte order.
     */
    @!APILevel[
        since: "22"
    ]
    func swapBytes(): T
}

extend UInt64 <: BigEndianOrder<UInt64> & LittleEndianOrder<UInt64> & SwapEndianOrder<UInt64> {
    /**
     * @description Writes a UInt64 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 8 for UInt64).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a UInt64 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 8 for UInt64).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a UInt64 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt64 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): UInt64
    
    /**
     * @description Reads a UInt64 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt64 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): UInt64
    
    /**
     * @description Swaps the byte order of the UInt64 value.
     * @returns The UInt64 value with swapped byte order.
     */
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): UInt64
}

extend Int64 <: BigEndianOrder<Int64> & LittleEndianOrder<Int64> & SwapEndianOrder<Int64> {
    /**
     * @description Writes an Int64 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 8 for Int64).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes an Int64 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 8 for Int64).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an Int64 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int64 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an Int64 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int64 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Swaps the byte order of the Int64 value.
     * @returns The Int64 value with swapped byte order.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): Int64
}

extend UInt32 <: BigEndianOrder<UInt32> & LittleEndianOrder<UInt32> & SwapEndianOrder<UInt32> {
    /**
     * @description Writes a UInt32 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 4 for UInt32).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a UInt32 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 4 for UInt32).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a UInt32 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt32 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): UInt32
    
    /**
     * @description Reads a UInt32 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt32 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): UInt32
    
    /**
     * @description Swaps the byte order of the UInt32 value.
     * @returns The UInt32 value with swapped byte order.
     */
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): UInt32
}

extend Int32 <: BigEndianOrder<Int32> & LittleEndianOrder<Int32> & SwapEndianOrder<Int32> {
    /**
     * @description Writes an Int32 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 4 for Int32).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes an Int32 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 4 for Int32).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an Int32 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int32 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Int32
    
    /**
     * @description Reads an Int32 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int32 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Int32
    
    /**
     * @description Swaps the byte order of the Int32 value.
     * @returns The Int32 value with swapped byte order.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): Int32
}

extend UInt16 <: BigEndianOrder<UInt16> & LittleEndianOrder<UInt16> & SwapEndianOrder<UInt16> {
    /**
     * @description Writes a UInt16 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 2 for UInt16).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a UInt16 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 2 for UInt16).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a UInt16 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt16 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): UInt16
    
    /**
     * @description Reads a UInt16 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt16 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): UInt16
    
    /**
     * @description Swaps the byte order of the UInt16 value.
     * @returns The UInt16 value with swapped byte order.
     */
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): UInt16
}

extend Int16 <: BigEndianOrder<Int16> & LittleEndianOrder<Int16> & SwapEndianOrder<Int16> {
    /**
     * @description Writes an Int16 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 2 for Int16).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes an Int16 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 2 for Int16).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an Int16 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int16 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Int16
    
    /**
     * @description Reads an Int16 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int16 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Int16
    
    /**
     * @description Swaps the byte order of the Int16 value.
     * @returns The Int16 value with swapped byte order.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): Int16
}

extend UInt8 <: BigEndianOrder<UInt8> & LittleEndianOrder<UInt8> & SwapEndianOrder<UInt8> {
    /**
     * @description Writes a UInt8 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 1 for UInt8).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a UInt8 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 1 for UInt8).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a UInt8 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt8 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): UInt8
    
    /**
     * @description Reads a UInt8 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The UInt8 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): UInt8
    
    /**
     * @description Swaps the byte order of the UInt8 value (no-op for single byte values).
     * @returns The same UInt8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): UInt8
}

extend Int8 <: BigEndianOrder<Int8> & LittleEndianOrder<Int8> & SwapEndianOrder<Int8> {
    /**
     * @description Writes an Int8 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 1 for Int8).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes an Int8 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 1 for Int8).
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an Int8 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int8 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Int8
    
    /**
     * @description Reads an Int8 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Int8 value read from the buffer.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Int8
    
    /**
     * @description Swaps the byte order of the Int8 value (no-op for single byte values).
     * @returns The same Int8 value.
     */
    @!APILevel[
        since: "22"
    ]
    public func swapBytes(): Int8
}

extend Float64 <: BigEndianOrder<Float64> & LittleEndianOrder<Float64> {
    /**
     * @description Writes a Float64 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 8 for Float64).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a Float64 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 8 for Float64).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a Float64 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Float64 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Float64
    
    /**
     * @description Reads a Float64 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Float64 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Float64
}

extend Float32 <: BigEndianOrder<Float32> & LittleEndianOrder<Float32> {
    /**
     * @description Writes a Float32 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 4 for Float32).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a Float32 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 4 for Float32).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a Float32 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Float32 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Float32
    
    /**
     * @description Reads a Float32 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Float32 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Float32
}

extend Float16 <: BigEndianOrder<Float16> & LittleEndianOrder<Float16> {
    /**
     * @description Writes a Float16 value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 2 for Float16).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a Float16 value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 2 for Float16).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a Float16 value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Float16 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Float16
    
    /**
     * @description Reads a Float16 value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Float16 value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Float16
}

extend Bool <: BigEndianOrder<Bool> & LittleEndianOrder<Bool> {
    /**
     * @description Writes a Bool value in little-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 1 for Bool).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes a Bool value in big-endian order to the buffer byte array.
     * @param buffer - The target byte array to write to.
     * @returns The number of bytes written (always 1 for Bool).
     */
    @!APILevel[
        since: "22"
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads a Bool value in big-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Bool value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readBigEndian(buffer: Array<Byte>): Bool
    
    /**
     * @description Reads a Bool value in little-endian order from the buffer byte array.
     * @param buffer - The source byte array to read from.
     * @returns The Bool value read from the buffer.
     */
    @!APILevel[
        since: "22"
    ]
    public static func readLittleEndian(buffer: Array<Byte>): Bool
}