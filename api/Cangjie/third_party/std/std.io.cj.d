package std.io


/**
 * @description A buffered input stream that wraps another input stream to provide efficient reading with internal buffer caching.
 */
@!APILevel[
    since: "22"
]
public class BufferedInputStream<T> <: InputStream where T <: InputStream {
    /**
     * @description Creates a buffered input stream with default buffer capacity.
     * @param input - The input stream to buffer
     */
    @!APILevel[
        since: "22"
    ]
    public init(input: T)

    /**
     * @description Creates a buffered input stream with specified buffer capacity.
     * @param input - The input stream to buffer
     * @param capacity - The buffer capacity in bytes
     * @throws IllegalArgumentException if capacity is less than or equal to 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(input: T, capacity: Int64)

    /**
     * @description Creates a buffered input stream with a custom buffer array.
     * @param input - The input stream to buffer
     * @param buffer - The custom buffer array to use
     * @throws IllegalArgumentException if buffer is empty or invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(input: T, buffer: Array<Byte>)

    /**
     * @description Reads data from the buffered input stream into the provided buffer.
     * @param buffer - The array to store the read data
     * @returns The number of bytes read, or 0 if end of stream is reached
     * @throws IllegalArgumentException if buffer is empty or invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func read(buffer: Array<Byte>): Int64

    /**
     * @description Reads a single byte from the buffered input stream.
     * @returns The byte value wrapped in Option, or None if end of stream is reached
     */
    @!APILevel[
        since: "22"
    ]
    public func readByte(): ?Byte

    /**
     * @description Resets the buffered input stream to use a new input stream.
     * @param input - The new input stream to bind to
     */
    @!APILevel[
        since: "22"
    ]
    public func reset(input: T): Unit
}

extend<T> BufferedInputStream<T> <: Resource where T <: Resource {
    /**
     * @description Closes the input stream and releases associated resources.
     */
    @!APILevel[
        since: "22"
    ]
    public func close(): Unit

    /**
     * @description Checks if the output stream is closed.
     * @returns true if the stream is closed, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool
}

/**
 * @description Extends BufferedInputStream to be seekable if the underlying stream is seekable.
 */
extend<T> BufferedInputStream<T> <: Seekable where T <: Seekable {
    /**
     * @description Seeks to a position in the byte buffer.
     * @param sp - The seek position
     * @returns The new position in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public func seek(sp: SeekPosition): Int64

    /**
     * @description Sets the current position in the byte buffer.
     * @param pos - The new position in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop position: Int64

    /**
     * @description Gets the remaining length of the byte buffer from current position to end.
     * @returns The remaining length in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop remainLength: Int64

    /**
     * @description Gets the total length of the byte buffer.
     * @returns The total length in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop length: Int64
}

/**
 * @description A buffered output stream that wraps another output stream to provide efficient writing with internal buffer caching.
 */
@!APILevel[
    since: "22"
]
public class BufferedOutputStream<T> <: OutputStream where T <: OutputStream {
    /**
     * @description Creates a buffered output stream with default buffer capacity.
     * @param output - The output stream to buffer
     */
    @!APILevel[
        since: "22"
    ]
    public init(output: T)

    /**
     * @description Creates a buffered output stream with a custom buffer array.
     * @param output - The output stream to buffer
     * @param buffer - The custom buffer array to use
     * @throws IllegalArgumentException if buffer is empty or invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(output: T, buffer: Array<Byte>)

    /**
     * @description Creates a buffered output stream with specified buffer capacity.
     * @param output - The output stream to buffer
     * @param capacity - The buffer capacity in bytes
     * @throws IllegalArgumentException if capacity is less than or equal to 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(output: T, capacity: Int64)

    /**
     * @description Writes data from the buffer to the buffered output stream.
     * @param buffer - The array containing data to write
     * @throws IllegalArgumentException if buffer is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(buffer: Array<Byte>): Unit

    /**
     * @description Writes a single byte to the buffered output stream.
     * @param v - The byte value to write
     */
    @!APILevel[
        since: "22"
    ]
    public func writeByte(v: Byte): Unit

    /**
     * @description Flushes the buffered output stream, writing all buffered data to the underlying stream.
     */
    @!APILevel[
        since: "22"
    ]
    public func flush(): Unit

    /**
     * @description Resets the buffered output stream to use a new output stream.
     * @param output - The new output stream to bind to
     */
    @!APILevel[
        since: "22"
    ]
    public func reset(output: T): Unit
}

extend<T> BufferedOutputStream<T> <: Resource where T <: Resource {
    /**
     * @description Closes the output stream and releases associated resources.
     */
    @!APILevel[
        since: "22"
    ]
    public func close(): Unit

    /**
     * @description Checks if the output stream is closed.
     * @returns true if the stream is closed, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool
}

/**
 * @description Extends BufferedOutputStream to be seekable if the underlying stream is seekable.
 */
extend<T> BufferedOutputStream<T> <: Seekable where T <: Seekable {
    /**
     * @description Seeks to a position in the byte buffer.
     * @param sp - The seek position
     * @returns The new position in bytes
     * @throws IllegalArgumentException if the seek position is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func seek(sp: SeekPosition): Int64

    /**
     * @description Gets the current position in the byte buffer.
     * @returns The current position in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop position: Int64

    /**
     * @description Gets the remaining length of the byte buffer from current position to end.
     * @returns The remaining length in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop remainLength: Int64

    /**
     * @description Gets the total length of the byte buffer.
     * @returns The total length in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop length: Int64
}

/**
 * @description A byte buffer that provides in-memory stream operations for reading and writing bytes.
 */
@!APILevel[
    since: "22"
]
public class ByteBuffer <: IOStream & Seekable {
    /**
     * @description Creates a byte buffer with default capacity.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a byte buffer with specified capacity.
     * @param capacity - The initial capacity of the buffer in bytes
     * @throws IllegalArgumentException if capacity is less than 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(capacity: Int64)

    /**
     * @description Creates a byte buffer initialized with the provided byte array.
     * @param source - The initial byte array content
     */
    @!APILevel[
        since: "22"
    ]
    public init(source: Array<Byte>)

    /**
     * @description Gets the current capacity of the byte buffer.
     * @returns The capacity of the buffer in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop capacity: Int64

    /**
     * @description Creates a copy of the byte buffer with the same content.
     * @returns A new ByteBuffer instance with copied data
     */
    @!APILevel[
        since: "22"
    ]
    public func clone(): ByteBuffer

    /**
     * @description Clears the byte buffer, resetting its position and length.
     */
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit

    /**
     * @description Returns the byte array containing the buffer's data.
     * @returns The byte array with the buffer's content
     */
    @!APILevel[
        since: "22"
    ]
    public func bytes(): Array<Byte>

    /**
     * @description Reads data from the byte buffer into the provided array.
     * @param buffer - The array to store the read data
     * @returns The number of bytes read
     * @throws IllegalArgumentException if buffer is empty or invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func read(buffer: Array<Byte>): Int64

    /**
     * @description Reads a single byte from the byte buffer.
     * @returns The byte value wrapped in Option, or None if end of buffer is reached
     */
    @!APILevel[
        since: "22"
    ]
    public func readByte(): ?Byte

    /**
     * @description Writes data from the buffer to the byte buffer.
     * @param buffer - The array containing data to write
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func write(buffer: Array<Byte>): Unit

    /**
     * @description Writes a single byte to the byte buffer.
     * @param v - The byte value to write
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func writeByte(v: Byte): Unit

    /**
     * @description Sets the length of the byte buffer.
     * @param length - The new length in bytes
     * @throws OverflowException if the new length would cause overflow
     * @throws IllegalArgumentException if the length is less than 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setLength(length: Int64): Unit

    /**
     * @description Reserves additional capacity in the byte buffer.
     * @param addition - The additional capacity to reserve in bytes
     * @throws OverflowException if the addition would cause overflow
     * @throws IllegalArgumentException if the addition value is less than 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reserve(addition: Int64): Unit

    /**
     * @description Seeks to a position in the byte buffer.
     * @param sp - The seek position
     * @returns The new position in bytes
     * @throws IOException if the specified position is before the head of the data in the stream
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func seek(sp: SeekPosition): Int64
}

/**
 * @description A chained input stream that combines multiple input streams into a single sequential stream.
 */
@!APILevel[
    since: "22"
]
public class ChainedInputStream<T> <: InputStream where T <: InputStream {
    /**
     * @description Creates a chained input stream from an array of input streams.
     * @param input - Array of input streams to chain together
     * @throws IllegalArgumentException if the input array is empty
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(input: Array<T>)

    /**
     * @description Reads data from the chained input stream into the provided buffer.
     * @param buffer - The array to store the read data
     * @returns The number of bytes read, or -1 if end of stream is reached
     * @throws IllegalArgumentException if the buffer is empty or invalid
     * @throws IOException -If failed to read InputSteam.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func read(buffer: Array<Byte>): Int64
}

/**
 * @description Exception thrown when content format is invalid or corrupted.
 */
@!APILevel[
    since: "22"
]
public class ContentFormatException <: Exception {
    /**
     * @description Creates a new ContentFormatException with no message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a new ContentFormatException with the specified message.
     * @param message - The exception message
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Base class for all I/O related exceptions.
 */
@!APILevel[
    since: "22"
]
public open class IOException <: Exception {
    /**
     * @description Creates a new IOException with no message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a new IOException with the specified message.
     * @param message - The exception message
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Enumeration representing different seek positions in a stream.
 */
@!APILevel[
    since: "22"
]
public enum SeekPosition {
    /**
     * @description Seek relative to the current position.
     * @param Int64 - The offset from current position
     */
    @!APILevel[
        since: "22"
    ]
    Current(Int64) |
    /**
     * @description Seek relative to the beginning of the stream.
     * @param Int64 - The offset from the beginning
     */
    @!APILevel[
        since: "22"
    ]
    Begin(Int64) |
    /**
     * @description Seek relative to the end of the stream.
     * @param Int64 - The offset from the end
     */
    @!APILevel[
        since: "22"
    ]
    End(Int64)
}

/**
 * @description Reads a string from the input stream.
 * @param from - The input stream to read from
 * @returns The string read from the stream
 * @throws IllegalArgumentException if the input stream is invalid
 * @throws ContentFormatException if the content format is invalid
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func readString<T>(from: T): String where T <: InputStream & Seekable

/**
 * @description Reads a string from the input stream without bounds checking (unsafe).
 * @param from - The input stream to read from
 * @returns The string read from the stream
 * @throws IllegalArgumentException if the input stream is invalid
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public unsafe func readStringUnchecked<T>(from: T): String where T <: InputStream & Seekable

/**
 * @description Reads all remaining data from the input stream until the end.
 * @param from - The input stream to read from
 * @returns Array containing all bytes read from the stream
 */
@OverflowWrapping
@!APILevel[
    since: "22"
]
public func readToEnd<T>(from: T): Array<Byte> where T <: InputStream & Seekable

/**
 * @description Copies data from an input stream to an output stream.
 * @param from - The source input stream
 * @param to - The destination output stream
 * @returns The number of bytes copied
 */
@!APILevel[
    since: "22"
]
public func copy(from: InputStream, to!: OutputStream): Int64

/**
 * @description A multi-output stream that writes to multiple output streams simultaneously.
 */
@!APILevel[
    since: "22"
]
public class MultiOutputStream<T> <: OutputStream where T <: OutputStream {
    /**
     * @description Creates a multi-output stream from an array of output streams.
     * @param output - Array of output streams to write to simultaneously
     * @throws IllegalArgumentException if the output array is empty
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(output: Array<T>)

    /**
     * @description Writes data to all output streams simultaneously.
     * @param buffer - The array containing data to write
     */
    @!APILevel[
        since: "22"
    ]
    public func write(buffer: Array<Byte>): Unit

    /**
     * @description Flushes all output streams simultaneously.
     */
    @!APILevel[
        since: "22"
    ]
    public func flush(): Unit
}

/**
 * @description Interface for input streams that support reading operations.
 */
@!APILevel[
    since: "22"
]
public interface InputStream {
    /**
     * @description Reads data from the stream into the provided buffer.
     * @param buffer - The array to store the read data
     * @returns The number of bytes read, or -1 if end of stream is reached
     */
    @!APILevel[
        since: "22"
    ]
    func read(buffer: Array<Byte>): Int64
}

/**
 * @description Interface for output streams that support writing operations.
 */
@!APILevel[
    since: "22"
]
public interface OutputStream {
    /**
     * @description Writes data from the buffer to the output stream.
     * @param buffer - The array containing data to write
     */
    @!APILevel[
        since: "22"
    ]
    func write(buffer: Array<Byte>): Unit

    /**
     * @description Flushes the output stream, writing any buffered data.
     */
    @!APILevel[
        since: "22"
    ]
    func flush(): Unit
}

/**
 * @description Interface that combines both input and output stream operations.
 */
@!APILevel[
    since: "22"
]
public interface IOStream <: InputStream & OutputStream {
}

/**
 * @description Interface for streams that support seeking to different positions.
 */
@!APILevel[
    since: "22"
]
public interface Seekable {
    /**
     * @description Seeks to a specific position in the stream.
     * @param sp - The seek position specification
     * @returns The new position in the stream
     */
    @!APILevel[
        since: "22"
    ]
    func seek(sp: SeekPosition): Int64

    /**
     * @description The current position in the stream.
     */
    @!APILevel[
        since: "22"
    ]
    prop position: Int64

    /**
     * @description The remaining length of the stream from current position.
     */
    @!APILevel[
        since: "22"
    ]
    prop remainLength: Int64

    /**
     * @description The total length of the stream.
     */
    @!APILevel[
        since: "22"
    ]
    prop length: Int64
}

/**
 * @description A string reader that reads Unicode characters from an input stream.
 */
@!APILevel[
    since: "22"
]
public class StringReader<T> where T <: InputStream {
    /**
     * @description Creates a string reader from the specified input stream.
     * @param input - The input stream to read characters from
     */
    @!APILevel[
        since: "22"
    ]
    public init(input: T)

    /**
     * @description Reads a single Unicode character from the stream.
     * @returns The Unicode character, or None if end of stream is reached
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func read(): ?Rune

    /**
     * @description Returns an iterator over the Unicode characters in the stream.
     * @returns Iterator of Unicode characters
     */
    @!APILevel[
        since: "22"
    ]
    public func runes(): Iterator<Rune>

    /**
     * @description Reads a line of text from the stream.
     * @returns The line of text, or None if end of stream is reached
     * @throws ContentFormatException if the format of the read data is incorrect.
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func readln(): Option<String>

    /**
     * @description Returns an iterator over the lines in the stream.
     * @returns Iterator of strings, each representing a line
     */
    @!APILevel[
        since: "22"
    ]
    public func lines(): Iterator<String>

    /**
     * @description Reads all remaining text from the stream until the end is reached.
     * @returns The complete text content from the current position to the end of the stream
     * @throws ContentFormatException if the content format is invalid
     */
    @Frozen
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func readToEnd(): String

    /**
     * @description Reads text from the stream until the specified Unicode character is encountered.
     * @param v - The Unicode character to read until
     * @returns The text up to (but not including) the specified character, or None if end of stream is reached
     */
    @!APILevel[
        since: "22"
    ]
    public func readUntil(v: Rune): Option<String>

    /**
     * @description Reads text from the stream until a character matching the predicate is encountered.
     * @param predicate - Function that returns true for the stopping character
     * @returns The text up to (but not including) the matching character, or None if end of stream is reached
     * @throws ContentFormatException if the content format is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func readUntil(predicate: (Rune) -> Bool): Option<String>
}

extend<T> StringReader<T> <: Resource where T <: Resource {
    /**
     * @description Closes the string reader and releases associated resources.
     */
    @!APILevel[
        since: "22"
    ]
    public func close(): Unit

    /**
     * @description Checks if the string reader is closed.
     * @returns true if the reader is closed, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool
}

extend<T> StringReader<T> <: Seekable where T <: Seekable {
    /**
     * @description Seeks to a specific position in the input stream.
     * @param sp - The seek position specification
     * @returns The new position in the stream
     */
    @!APILevel[
        since: "22"
    ]
    public func seek(sp: SeekPosition): Int64

    /**
     * @description Gets the current position in the input stream.
     * @returns The current position in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop position: Int64
}

/**
 * @description A string writer that writes Unicode text to an output stream.
 */
@!APILevel[
    since: "22"
]
public class StringWriter<T> where T <: OutputStream {
    /**
     * @description Creates a string writer from the specified output stream.
     * @param output - The output stream to write text to
     * @throws IllegalArgumentException - If the provided buffer is empty (size is 0)
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(output: T)

    /**
     * @description Flushes the output stream, ensuring all buffered data is written.
     */
    @!APILevel[
        since: "22"
    ]
    public func flush(): Unit

    /**
     * @description Writes a string to the output stream.
     * @param v - The string to write
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: String): Unit

    /**
     * @description Writes a value that implements ToString to the output stream.
     * @param v - The value to write
     */
    @!APILevel[
        since: "22"
    ]
    public func write<T>(v: T): Unit where T <: ToString

    /**
     * @description Writes a boolean value to the output stream.
     * @param v - The boolean value to write
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Bool): Unit

    /**
     * @description Writes an 8-bit signed integer to the output stream.
     * @param v - The 8-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: Int8): Unit

    /**
     * @description Writes a 16-bit signed integer to the output stream.
     * @param v - The 16-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: Int16): Unit

    /**
     * @description Writes a 32-bit signed integer to the output stream.
     * @param v - The 32-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: Int32): Unit

    /**
     * @description Writes a 64-bit signed integer to the output stream.
     * @param v - The 64-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: Int64): Unit

    /**
     * @description Writes an 8-bit unsigned integer to the output stream.
     * @param v - The 8-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: UInt8): Unit

    /**
     * @description Writes a 16-bit unsigned integer to the output stream.
     * @param v - The 16-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: UInt16): Unit

    /**
     * @description Writes a 32-bit unsigned integer to the output stream.
     * @param v - The 32-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: UInt32): Unit

    /**
     * @description Writes a 64-bit unsigned integer to the output stream.
     * @param v - The 64-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: UInt64): Unit

    /**
     * @description Writes a 16-bit floating point number to the output stream.
     * @param v - The 16-bit floating point number to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: Float16): Unit

    /**
     * @description Writes a 32-bit floating point number to the output stream.
     * @param v - The 32-bit floating point number to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: Float32): Unit

    /**
     * @description Writes a 64-bit floating point number to the output stream.
     * @param v - The 64-bit floating point number to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(v: Float64): Unit

    /**
     * @description Writes a Unicode character to the output stream.
     * @param v - The Unicode character to write
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Rune): Unit

    /**
     * @description Writes a line separator to the output stream.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(): Unit

    /**
     * @description Writes a string followed by a line separator to the output stream.
     * @param v - The string to write
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: String): Unit

    /**
     * @description Writes a value that implements ToString followed by a line separator to the output stream.
     * @param v - The value to write
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln<T>(v: T): Unit where T <: ToString

    /**
     * @description Writes a boolean value followed by a line separator to the output stream.
     * @param v - The boolean value to write
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Bool): Unit

    /**
     * @description Writes an 8-bit signed integer followed by a line separator to the output stream.
     * @param v - The 8-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: Int8): Unit

    /**
     * @description Writes a 16-bit signed integer followed by a line separator to the output stream.
     * @param v - The 16-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: Int16): Unit

    /**
     * @description Writes a 32-bit signed integer followed by a line separator to the output stream.
     * @param v - The 32-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: Int32): Unit

    /**
     * @description Writes a 64-bit signed integer followed by a line separator to the output stream.
     * @param v - The 64-bit signed integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: Int64): Unit

    /**
     * @description Writes an 8-bit unsigned integer followed by a line separator to the output stream.
     * @param v - The 8-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: UInt8): Unit

    /**
     * @description Writes a 16-bit unsigned integer followed by a line separator to the output stream.
     * @param v - The 16-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: UInt16): Unit

    /**
     * @description Writes a 32-bit unsigned integer followed by a line separator to the output stream.
     * @param v - The 32-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: UInt32): Unit

    /**
     * @description Writes a 64-bit unsigned integer followed by a line separator to the output stream.
     * @param v - The 64-bit unsigned integer to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: UInt64): Unit

    /**
     * @description Writes a 16-bit floating point number followed by a line separator to the output stream.
     * @param v - The 16-bit floating point number to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: Float16): Unit

    /**
     * @description Writes a 32-bit floating point number followed by a line separator to the output stream.
     * @param v - The 32-bit floating point number to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: Float32): Unit

    /**
     * @description Writes a 64-bit floating point number followed by a line separator to the output stream.
     * @param v - The 64-bit floating point number to write
     * @throws IOException if there is an error during the write operation
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeln(v: Float64): Unit

    /**
     * @description Writes a Unicode character followed by a line separator to the output stream.
     * @param v - The Unicode character to write
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Rune): Unit
}

extend<T> StringWriter<T> <: Resource where T <: Resource {
    /**
     * @description Closes the string writer and releases associated resources.
     */
    @!APILevel[
        since: "22"
    ]
    public func close(): Unit

    /**
     * @description Checks if the string writer is closed.
     * @returns true if the writer is closed, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool
}

extend<T> StringWriter<T> <: Seekable where T <: Seekable {
    /**
     * @description Seeks to a specific position in the output stream.
     * @param sp - The seek position
     * @returns The new position in the stream
     */
    @!APILevel[
        since: "22"
    ]
    public func seek(sp: SeekPosition): Int64
}

