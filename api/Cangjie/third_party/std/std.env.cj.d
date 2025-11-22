
package std.env
import std.io.InputStream
import std.sync.*

import std.io.OutputStream
import std.collection.*
import std.fs.*
import std.io.*

/**
 * @description A class that provides the ability to read data from console.
 */
@!APILevel[
    since: "22"
]
public class ConsoleReader <: InputStream {
    /**
     * @description Read one character from the console input stream.
     * @returns An optional Rune representing the character read, or None if no character is available.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func read(): ?Rune

    /**
     * @description Read one line from the console input stream.
     * @returns An optional String representing the line read, or None if no line is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func readln(): ?String

    /**
     * @description Read all content from the console input stream until the end.
     * @returns An optional String containing all content read, or None if no content is available.
     */
    @!APILevel[
        since: "22"
    ]
    public func readToEnd(): ?String

    /**
     * @description Read content from the console input stream until a specific character is encountered.
     * @param ch The Rune character to read until.
     * @returns An optional String containing the content read including the specified character, or None if not found.
     */
    @!APILevel[
        since: "22"
    ]
    public func readUntil(ch: Rune): ?String

    /**
     * @description Read content from the console input stream until a predicate condition is met.
     * @param predicate A function that takes a Rune and returns a Bool indicating whether to stop reading.
     * @returns An optional String containing the content read including the character that satisfied the predicate, or None if not found.
     */
    @!APILevel[
        since: "22"
    ]
    public func readUntil(predicate: (Rune) -> Bool): ?String

    /**
     * @description Read bytes from the console input stream into an array.
     * @param arr The Array of Byte to read into.
     * @returns The number of bytes read as Int64.
     */
    @!APILevel[
        since: "22"
    ]
    public func read(arr: Array<Byte>): Int64
}

/**
 * @description A class that provides the ability to write data to console.
 */
@!APILevel[
    since: "22"
]
public class ConsoleWriter <: OutputStream {
    /**
     * @description Flush the console output stream.
     */
    @!APILevel[
        since: "22"
    ]
    public func flush(): Unit

    /**
     * @description Write an array of bytes to the console output stream.
     * @param buffer The Array of Byte to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(buffer: Array<Byte>): Unit

    /**
     * @description Write an array of bytes followed by a newline to the console output stream.
     * @param buffer The Array of Byte to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(buffer: Array<Byte>): Unit

    /**
     * @description Write a string to the console output stream.
     * @param v The String to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: String): Unit

    /**
     * @description Write a value that conforms to ToString to the console output stream.
     * @param v The value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write<T>(v: T): Unit where T <: ToString

    /**
     * @description Write a boolean value to the console output stream.
     * @param v The Bool value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Bool): Unit

    /**
     * @description Write an Int8 value to the console output stream.
     * @param v The Int8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int8): Unit

    /**
     * @description Write an Int16 value to the console output stream.
     * @param v The Int16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int16): Unit

    /**
     * @description Write an Int32 value to the console output stream.
     * @param v The Int32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int32): Unit

    /**
     * @description Write an Int64 value to the console output stream.
     * @param v The Int64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int64): Unit

    /**
     * @description Write a UInt8 value to the console output stream.
     * @param v The UInt8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt8): Unit

    /**
     * @description Write a UInt16 value to the console output stream.
     * @param v The UInt16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt16): Unit

    /**
     * @description Write a UInt32 value to the console output stream.
     * @param v The UInt32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt32): Unit

    /**
     * @description Write a UInt64 value to the console output stream.
     * @param v The UInt64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt64): Unit

    /**
     * @description Write a Float16 value to the console output stream.
     * @param v The Float16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Float16): Unit

    /**
     * @description Write a Float32 value to the console output stream.
     * @param v The Float32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Float32): Unit

    /**
     * @description Write a Float64 value to the console output stream.
     * @param v The Float64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Float64): Unit

    /**
     * @description Write a Rune character to the console output stream.
     * @param v The Rune character to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Rune): Unit

    /**
     * @description Write a string followed by a newline to the console output stream.
     * @param v The String to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: String): Unit

    /**
     * @description Write a value that conforms to ToString followed by a newline to the console output stream.
     * @param v The value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln<T>(v: T): Unit where T <: ToString

    /**
     * @description Write a boolean value followed by a newline to the console output stream.
     * @param v The Bool value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Bool): Unit

    /**
     * @description Write an Int8 value followed by a newline to the console output stream.
     * @param v The Int8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int8): Unit

    /**
     * @description Write an Int16 value followed by a newline to the console output stream.
     * @param v The Int16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int16): Unit

    /**
     * @description Write an Int32 value followed by a newline to the console output stream.
     * @param v The Int32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int32): Unit

    /**
     * @description Write an Int64 value followed by a newline to the console output stream.
     * @param v The Int64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int64): Unit

    /**
     * @description Write a UInt8 value followed by a newline to the console output stream.
     * @param v The UInt8 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt8): Unit

    /**
     * @description Write a UInt16 value followed by a newline to the console output stream.
     * @param v The UInt16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt16): Unit

    /**
     * @description Write a UInt32 value followed by a newline to the console output stream.
     * @param v The UInt32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt32): Unit

    /**
     * @description Write a UInt64 value followed by a newline to the console output stream.
     * @param v The UInt64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt64): Unit

    /**
     * @description Write a Float16 value followed by a newline to the console output stream.
     * @param v The Float16 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Float16): Unit

    /**
     * @description Write a Float32 value followed by a newline to the console output stream.
     * @param v The Float32 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Float32): Unit

    /**
     * @description Write a Float64 value followed by a newline to the console output stream.
     * @param v The Float64 value to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Float64): Unit

    /**
     * @description Write a Rune character followed by a newline to the console output stream.
     * @param v The Rune character to write.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Rune): Unit
}

/**
 * @description Get the process identifier of the current process.
 * @returns The process identifier as Int64.
 */
@!APILevel[
    since: "22"
]
public func getProcessId(): Int64

/**
 * @description Get the command name of the current process.
 * @returns The command name as String.
 * @throws EnvException if the process command cannot be retrieved.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func getCommand(): String

/**
 * @description Get the command line arguments of the current process.
 * @returns An Array of String containing the command line arguments.
 * @throws EnvException if the process command line cannot be retrieved.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func getCommandLine(): Array<String>

/**
 * @description Get the working directory of the current process.
 * @returns The working directory as Path.
 * @throws EnvException if the process working directory cannot be retrieved.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func getWorkingDirectory(): Path

/**
 * @description Get the home directory of the current user.
 * @returns The home directory as Path.
 */
@!APILevel[
    since: "22"
]
public func getHomeDirectory(): Path

/**
 * @description Get the temporary directory path.
 * @returns The temporary directory as Path.
 */
@!APILevel[
    since: "22"
]
public func getTempDirectory(): Path

/**
 * @description Get the value of an environment variable.
 * @param key The name of the environment variable to retrieve.
 * @returns An optional String containing the value of the environment variable, or None if not found.
 * @throws IllegalArgumentException if an illegal argument is provided.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func getVariable(key: String): ?String

/**
 * @description Get all environment variables.
 * @returns An Array of key-value pairs representing all environment variables.
 * @throws EnvException if the process environment cannot be retrieved.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func getVariables(): Array<(String, String)>

/**
 * @description Set the value of an environment variable.
 * @param key The name of the environment variable to set.
 * @param value The value to set for the environment variable.
 * @throws IllegalArgumentException if an illegal argument is provided.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func setVariable(key: String, value: String): Unit

/**
 * @description Remove an environment variable.
 * @param key The name of the environment variable to remove.
 * @throws IllegalArgumentException if an illegal argument is provided.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func removeVariable(key: String): Unit

/**
 * @description Get the standard error output stream.
 * @returns A ConsoleWriter instance for standard error output.
 */
@!APILevel[
    since: "22"
]
public func getStdErr(): ConsoleWriter

/**
 * @description Get the standard input stream.
 * @returns A ConsoleReader instance for standard input.
 */
@!APILevel[
    since: "22"
]
public func getStdIn(): ConsoleReader

/**
 * @description Get the standard output stream.
 * @returns A ConsoleWriter instance for standard output.
 */
@!APILevel[
    since: "22"
]
public func getStdOut(): ConsoleWriter

/**
 * @description Register a callback function to be executed when the program exits.
 * @param callback A function to be executed at program exit.
 */
@!APILevel[
    since: "22"
]
public func atExit(callback: () -> Unit): Unit

/**
 * @description Exit the current process with a specific exit code.
 * @param code The exit code as Int64.
 * @throws IllegalArgumentException if an illegal argument is provided.
 * @throws EnvException if there is an environment-related error.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func exit(code: Int64): Nothing

/**
 * @description An exception class for environment-related errors.
 */
@!APILevel[
    since: "22"
]
public class EnvException <: Exception {
    /**
     * @description Initialize an EnvException with a message.
     * @param message The error message as String.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

