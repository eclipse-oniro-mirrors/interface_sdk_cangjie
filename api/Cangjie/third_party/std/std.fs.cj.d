package std.fs

import std.collection.*
import std.io.*
import std.time.*
import std.io.IOException

/**
 * @description Copies a file or directory from source path to destination path
 * @param sourcePath - Source path to copy from
 * @param to - Destination path to copy to
 * @param overwrite - Whether to overwrite if destination already exists, default is false
 * @returns Unit
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when copy operation fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func copy(sourcePath: Path, to!: Path, overwrite!: Bool = false): Unit

/**
 * @description Copies a file or directory from source path to destination path
 * @param sourcePath - Source path string to copy from
 * @param to - Destination path string to copy to
 * @param overwrite - Whether to overwrite if destination already exists, default is false
 * @returns Unit
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when copy operation fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func copy(sourcePath: String, to!: String, overwrite!: Bool = false): Unit

/**
 * @description Removes a file or directory at the specified path
 * @param path - Path object to the file or directory to remove
 * @param recursive - Whether to recursively remove directories and their contents, default is false
 * @returns Unit
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when remove operation fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func remove(path: Path, recursive!: Bool = false): Unit

/**
 * @description Removes a file or directory at the specified path
 * @param path - Path string to the file or directory to remove
 * @param recursive - Whether to recursively remove directories and their contents, default is false
 * @returns Unit
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when remove operation fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func remove(path: String, recursive!: Bool = false): Unit

/**
 * @description Checks if a file or directory exists at the specified path
 * @param path - Path object to check for existence
 * @returns True if the path exists, false otherwise
 * @throws IllegalArgumentException when path is empty or contains null characters
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func exists(path: Path): Bool

/**
 * @description Checks if a file or directory exists at the specified path
 * @param path - Path string to check for existence
 * @returns True if the path exists, false otherwise
 * @throws IllegalArgumentException when path is empty or contains null characters
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func exists(path: String): Bool

/**
 * @description Renames or moves a file or directory from source path to destination path
 * @param sourcePath - Source path string to rename from
 * @param to - Destination path string to rename to
 * @param overwrite - Whether to overwrite if destination already exists, default is false
 * @returns Unit
 * @throws FSException when rename operation fails
 * @throws IllegalArgumentException when path is empty or contains null characters
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func rename(sourcePath: String, to!: String, overwrite!: Bool = false): Unit

/**
 * @description Renames or moves a file or directory from source path to destination path
 * @param sourcePath - Source path object to rename from
 * @param to - Destination path object to rename to
 * @param overwrite - Whether to overwrite if destination already exists, default is false
 * @returns Unit
 * @throws FSException when rename operation fails
 * @throws IllegalArgumentException when path is empty or contains null characters
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func rename(sourcePath: Path, to!: Path, overwrite!: Bool = false): Unit

/**
 * @description Removes a file or directory at the specified path if it exists
 * @param path - Path object to the file or directory to remove
 * @param recursive - Whether to recursively remove directories and their contents, default is false
 * @returns True if the path existed and was removed, false if the path did not exist
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when remove operation fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func removeIfExists(path: Path, recursive!: Bool = false): Bool

/**
 * @description Removes a file or directory at the specified path if it exists
 * @param path - Path string to the file or directory to remove
 * @param recursive - Whether to recursively remove directories and their contents, default is false
 * @returns True if the path existed and was removed, false if the path did not exist
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when remove operation fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func removeIfExists(path: String, recursive!: Bool = false): Bool

/**
 * @description Provides static methods for creating, manipulating, and inspecting directories.
 *              This class cannot be instantiated.
 */
@!APILevel[
    since: "22"
]
public class Directory {
    /**
     * @description Creates a directory at the specified path
     * @param path - Path string to the directory to create
     * @param recursive - Whether to create parent directories if they don't exist, default is false
     * @returns Unit
     * @throws IllegalArgumentException when path is empty, is current directory, is root directory, or contains null characters
     * @throws FSException when directory already exists or intermediate path doesn't exist and recursive is false
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(path: String, recursive!: Bool = false): Unit

    /**
     * @description Creates a directory at the specified path
     * @param path - Path object to the directory to create
     * @param recursive - Whether to create parent directories if they don't exist, default is false
     * @returns Unit
     * @throws IllegalArgumentException when path is empty, is current directory, is root directory, or contains null characters
     * @throws FSException when directory already exists or intermediate path doesn't exist and recursive is false
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(path: Path, recursive!: Bool = false): Unit

    /**
     * @description Creates a temporary directory in the specified directory path
     * @param directoryPath - Path string to the parent directory where temporary directory will be created
     * @returns Path object to the newly created temporary directory
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when parent directory doesn't exist or failed to create temporary directory
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func createTemp(directoryPath: String): Path

    /**
     * @description Creates a temporary directory in the specified directory path
     * @param directoryPath - Path object to the parent directory where temporary directory will be created
     * @returns Path object to the newly created temporary directory
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when parent directory doesn't exist or failed to create temporary directory
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func createTemp(directoryPath: Path): Path

    /**
     * @description Checks whether a directory is empty (contains no files or subdirectories)
     * @param path - Path object to the directory to check
     * @returns True if the directory is empty, false otherwise
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when directory doesn't exist or check operation fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func isEmpty(path: Path): Bool

    /**
     * @description Checks whether a directory is empty (contains no files or subdirectories)
     * @param path - Path string to the directory to check
     * @returns True if the directory is empty, false otherwise
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when directory doesn't exist or check operation fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func isEmpty(path: String): Bool

    /**
     * @description Reads all file and directory information from the specified directory
     * @param path - Path object to the directory to read from
     * @returns Array of FileInfo objects representing all entries in the directory
     * @throws FSException when directory doesn't exist or read operation fails
     * @throws IllegalArgumentException when path is empty or contains null characters
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readFrom(path: Path): Array<FileInfo>

    /**
     * @description Reads all file and directory information from the specified directory
     * @param path - Path string to the directory to read from
     * @returns Array of FileInfo objects representing all entries in the directory
     * @throws FSException when directory doesn't exist or read operation fails
     * @throws IllegalArgumentException when path is empty or contains null characters
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readFrom(path: String): Array<FileInfo>

    /**
     * @description Walks through a directory and calls a function for each entry
     * @param path - Path object to the directory to walk through
     * @param f - Function to call for each FileInfo entry; return false to stop walking
     * @returns Unit
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when directory doesn't exist or walk operation fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func walk(path: Path, f: (FileInfo) -> Bool): Unit

    /**
     * @description Walks through a directory and calls a function for each entry
     * @param path - Path string to the directory to walk through
     * @param f - Function to call for each FileInfo entry; return false to stop walking
     * @returns Unit
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when directory doesn't exist or walk operation fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func walk(path: String, f: (FileInfo) -> Bool): Unit
}

/**
 * @description Specifies how a file should be opened.
 */
@!APILevel[
    since: "22"
]
public enum OpenMode <: ToString & Equatable<OpenMode> {
    /**
     * @description Open mode for reading files
     */
    @!APILevel[
        since: "22"
    ]
    Read |

    /**
     * @description Open mode for writing to files
     */
    @!APILevel[
        since: "22"
    ]
    Write |

    /**
     * @description Open mode for appending to files
     */
    @!APILevel[
        since: "22"
    ]
    Append |

    /**
     * @description Open mode for both reading and writing to files
     */
    @!APILevel[
        since: "22"
    ]
    ReadWrite

    /**
     * @description Compares this open mode with another for equality
     * @param other - OpenMode to compare with
     * @returns True if the open modes are equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: OpenMode): Bool

    /**
     * @description Compares this open mode with another for inequality
     * @param other - OpenMode to compare with
     * @returns True if the open modes are not equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: OpenMode): Bool

    /**
     * @description Converts the open mode to its string representation
     * @returns String representation of the open mode
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Represents a file descriptor, which is an integer handle to an open file or resource.
 */
@!APILevel[
    since: "22"
]
public struct FileDescriptor {
    /**
     * @description The integer handle for the open file or resource.
     * @returns Native integer value representing the file handle
     */
    @!APILevel[
        since: "22"
    ]
    public prop fileHandle: IntNative
}

/**
 * @description Represents a file on the file system. This class provides methods for creating, opening,
 *              reading, writing, and managing files.
 */
@!APILevel[
    since: "22"
]
public class File <: Resource & IOStream & Seekable {
    /**
     * @description Creates a new file instance with the specified path and open mode
     * @param path - Path string to the file
     * @param mode - Open mode for the file (Read, Write, Append, ReadWrite)
     * @throws FSException when file doesn't exist for open operations, already exists for create operations, parent directory doesn't exist, or other file opening errors
     * @throws IllegalArgumentException when path is empty or contains null characters
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(path: String, mode: OpenMode)

    /**
     * @description Creates a new file instance with the specified path and open mode
     * @param path - Path object to the file
     * @param mode - Open mode for the file (Read, Write, Append, ReadWrite)
     * @throws FSException when file doesn't exist for open operations, already exists for create operations, parent directory doesn't exist, or other file opening errors
     * @throws IllegalArgumentException when path is empty or contains null characters
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(path: Path, mode: OpenMode)

    /**
     * @description Gets the file information
     * @returns FileInfo object containing information about the file
     */
    @!APILevel[
        since: "22"
    ]
    public prop info: FileInfo

    /**
     * @description Gets the file descriptor
     * @returns FileDescriptor object representing the file handle
     */
    @!APILevel[
        since: "22"
    ]
    public prop fileDescriptor: FileDescriptor

    /**
     * @description Gets the length of the file
     * @returns Length of the file in bytes
     */
    @!APILevel[
        since: "22"
    ]
    public prop length: Int64

    /**
     * @description Sets the length of the file
     * @param length - New length for the file
     * @returns Unit
     * @throws FSException when truncating the file fails
     * @throws IllegalArgumentException when length is negative
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setLength(length: Int64): Unit

    /**
     * @description Reads data from the file into a buffer
     * @param buffer - Byte array to read data into
     * @returns Number of bytes read
     * @throws FSException when file is not opened or doesn't have read permission
     * @throws IllegalArgumentException when buffer is empty
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func read(buffer: Array<Byte>): Int64

    /**
     * @description Writes data from a buffer to the file
     * @param buffer - Byte array containing data to write
     * @returns Unit
     * @throws FSException when file is not opened or doesn't have write permission
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func write(buffer: Array<Byte>): Unit

    /**
     * @description Flushes the file buffer
     * @returns Unit
     */
    @!APILevel[
        since: "22"
    ]
    public func flush(): Unit

    /**
     * @description Sets the file pointer to a specific position
     * @param sp - Seek position to move to
     * @returns New file pointer position
     * @throws FSException when seeking fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func seek(sp: SeekPosition): Int64

    /**
     * @description Checks if the file can be read
     * @returns True if the file can be read, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func canRead(): Bool

    /**
     * @description Checks if the file can be written
     * @returns True if the file can be written, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func canWrite(): Bool

    /**
     * @description Closes the file
     * @returns Unit
     * @throws FSException when closing the file fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func close(): Unit

    /**
     * @description Checks if the file is closed
     * @returns True if the file is closed, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool

    /**
     * @description Creates a new file at the specified path
     * @param path - Path object to the file to create
     * @returns File instance of the newly created file in Write mode
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(path: Path): File

    /**
     * @description Creates a new file at the specified path
     * @param path - Path string to the file to create
     * @returns File instance of the newly created file in Write mode
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(path: String): File

    /**
     * @description Creates a temporary file in the specified directory path
     * @param directoryPath - Path string to the parent directory where temporary file will be created
     * @returns File instance of the newly created temporary file
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func createTemp(directoryPath: String): File

    /**
     * @description Creates a temporary file in the specified directory path
     * @param directoryPath - Path object to the parent directory where temporary file will be created
     * @returns File instance of the newly created temporary file
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func createTemp(directoryPath: Path): File

    /**
     * @description Reads all data from a file at the specified path
     * @param path - Path object to the file to read from
     * @returns Byte array containing all data from the file
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readFrom(path: Path): Array<Byte>

    /**
     * @description Reads all data from a file at the specified path
     * @param path - Path string to the file to read from
     * @returns Byte array containing all data from the file
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readFrom(path: String): Array<Byte>

    /**
     * @description Writes data to a file at the specified path
     * @param path - Path object to the file to write to
     * @param buffer - Byte array containing data to write
     * @returns Unit
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func writeTo(path: Path, buffer: Array<Byte>): Unit

    /**
     * @description Writes data to a file at the specified path
     * @param path - Path string to the file to write to
     * @param buffer - Byte array containing data to write
     * @returns Unit
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func writeTo(path: String, buffer: Array<Byte>): Unit

    /**
     * @description Appends data to a file at the specified path
     * @param path - Path object to the file to append to
     * @param buffer - Byte array containing data to append
     * @returns Unit
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func appendTo(path: Path, buffer: Array<Byte>): Unit

    /**
     * @description Appends data to a file at the specified path
     * @param path - Path string to the file to append to
     * @param buffer - Byte array containing data to append
     * @returns Unit
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when file operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func appendTo(path: String, buffer: Array<Byte>): Unit
}

/**
 * @description Represents information about a file or directory, such as its name, path, size, and timestamps.
 */
@!APILevel[
    since: "22"
]
public struct FileInfo <: Equatable<FileInfo> {
    /**
     * @description Creates a FileInfo instance for the specified path
     * @param path - Path object to get file information for
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when path doesn't exist
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(path: Path)

    /**
     * @description Creates a FileInfo instance for the specified path
     * @param path - Path string to get file information for
     * @throws IllegalArgumentException when path is empty or contains null characters
     * @throws FSException when path doesn't exist
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(path: String)

    /**
     * @description Gets the name of the file or directory
     * @returns Name of the file or directory
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets the parent directory information
     * @returns Option containing FileInfo of parent directory, or None if at root
     */
    @!APILevel[
        since: "22"
    ]
    public prop parentDirectory: Option<FileInfo>

    /**
     * @description Gets the path
     * @returns Path object
     */
    @!APILevel[
        since: "22"
    ]
    public prop path: Path

    /**
     * @description Gets the creation time of the file or directory
     * @returns DateTime representing when the file or directory was created
     * @throws FSException when getting creation time fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop creationTime: DateTime

    /**
     * @description Gets the last access time of the file or directory
     * @returns DateTime representing when the file or directory was last accessed
     * @throws FSException when getting last access time fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop lastAccessTime: DateTime

    /**
     * @description Gets the last modification time of the file or directory
     * @returns DateTime representing when the file or directory was last modified
     * @throws FSException when getting last modification time fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop lastModificationTime: DateTime

    /**
     * @description Gets the size of the file or directory
     * @returns Size in bytes
     * @throws FSException when getting size fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64

    /**
     * @description Checks if the path is a symbolic link
     * @returns True if the path is a symbolic link, false otherwise
     * @throws FSException when checking symbolic link status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isSymbolicLink(): Bool

    /**
     * @description Checks if the path is a regular file
     * @returns True if the path is a regular file, false otherwise
     * @throws FSException when checking file type fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isRegular(): Bool

    /**
     * @description Checks if the path is a directory
     * @returns True if the path is a directory, false otherwise
     * @throws FSException when checking directory status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isDirectory(): Bool

    /**
     * @description Checks if the file or directory is read-only
     * @returns True if read-only, false otherwise
     * @throws FSException when checking read-only status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isReadOnly(): Bool

    /**
     * @description Checks if the file or directory is hidden
     * @returns True if hidden, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isHidden(): Bool

    /**
     * @description Checks if the file or directory is executable
     * @returns True if executable, false otherwise
     * @throws FSException when checking executable status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func canExecute(): Bool

    /**
     * @description Checks if the file or directory is readable
     * @returns True if readable, false otherwise
     * @throws FSException when checking readable status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func canRead(): Bool

    /**
     * @description Checks if the file or directory is writable
     * @returns True if writable, false otherwise
     * @throws FSException when checking writable status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func canWrite(): Bool

    /**
     * @description Set executable or not for the file or directory
     * @returns True if set, false otherwise
     * @throws FSException when setting executable status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setExecutable(executable: Bool): Bool

    /**
     * @description Set readable or not for the file or directory
     * @returns True if set, false otherwise
     * @throws FSException when setting readable status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setReadable(readable: Bool): Bool

    /**
     * @description Set writable or not for the file or directory
     * @returns True if set, false otherwise
     * @throws FSException when setting writable status fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setWritable(writable: Bool): Bool

    /**
     * @description Compares this FileInfo with another for equality
     * @param other - FileInfo object to compare with
     * @returns True if FileInfos are equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: FileInfo): Bool
}

/**
 * @description An exception that is thrown when a file system operation fails.
 */
@!APILevel[
    since: "22"
]
public class FSException <: IOException {
    /**
     * @description Creates a new FSException with no message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a new FSException with the specified message.
     * @param message - The exception message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Provides a utility for creating hard links. This class cannot be instantiated.
 */
@!APILevel[
    since: "22"
]
public class HardLink {
    /**
     * @description Creates a hard link
     * @param link - Path object for the new hard link
     * @param to - Path object for the existing file
     * @throws FSException when creating hard link fails
     * @throws IllegalArgumentException when path operations fail
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(link: Path, to!: Path): Unit

    /**
     * @description Creates a hard link from 'link' to 'to'.
     * @param link - The path of the link to be created.
     * @param to - The target path to which the link should point.
     * @throws IllegalArgumentException if link or to is empty or contains null characters.
     * @throws FSException on other failures.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(link: String, to!: String): Unit
}

/**
 * @description Converts a path to its canonical form
 * @param path - Path string to canonicalize
 * @returns Canonicalized Path object
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when canonicalization fails or path doesn't exist
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func canonicalize(path: String): Path

/**
 * @description Converts a path to its canonical form
 * @param path - Path object to canonicalize
 * @returns Canonicalized Path object
 * @throws IllegalArgumentException when path is empty or contains null characters
 * @throws FSException when canonicalization fails or path doesn't exist
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func canonicalize(path: Path): Path

/**
 * @description Represents a file system path, providing properties and methods for path manipulation.
 *              This struct is immutable.
 */
@!APILevel[
    since: "22"
]
public struct Path <: Equatable<Path> & Hashable & ToString {
    /**
     * @description Path separator character for the current platform
     */
    @!APILevel[
        since: "22"
    ]
    public static const Separator: String = PATH_SEPARATOR

    /**
     * @description Path list separator character for the current platform
     */
    @!APILevel[
        since: "22"
    ]
    public static const ListSeparator: String = PATH_LISTSEPARATOR

    /**
     * @description Creates a new Path instance with the specified raw path string
     * @param rawPath - Raw path string
     */
    @!APILevel[
        since: "22"
    ]
    public init(rawPath: String)

    /**
     * @description Gets the parent path
     * @returns Parent Path object
     */
    @!APILevel[
        since: "22"
    ]
    public prop parent: Path

    /**
     * @description Gets the file name of the path
     * @returns File name as String
     */
    @!APILevel[
        since: "22"
    ]
    public prop fileName: String

    /**
     * @description Gets the extension name of the file
     * @returns Extension name as String
     */
    @!APILevel[
        since: "22"
    ]
    public prop extensionName: String

    /**
     * @description Gets the file name without extension
     * @returns File name without extension as String
     */
    @!APILevel[
        since: "22"
    ]
    public prop fileNameWithoutExtension: String

    /**
     * @description Checks if the path is absolute
     * @returns True if path is absolute, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isAbsolute(): Bool

    /**
     * @description Checks if the path is relative
     * @returns True if path is relative, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isRelative(): Bool

    /**
     * @description Joins this path with another path string
     * @param path - Path string to join with
     * @returns New Path object representing the joined path
     * @throws FSException when path is an absolute path
     * @throws IllegalArgumentException when path is empty or contains null characters
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func join(path: String): Path

    /**
     * @description Joins this path with another path
     * @param path - Path object to join with
     * @returns New Path object representing the joined path
     * @throws FSException when path is an absolute path
     * @throws IllegalArgumentException when path is empty or contains null characters
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func join(path: Path): Path

    /**
     * @description Checks if the path is empty
     * @returns True if path is empty, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Normalizes the path
     * @returns Normalized Path object
     */
    @!APILevel[
        since: "22"
    ]
    public func normalize(): Path

    /**
     * @description Compares this path with another for equality
     * @param other - Path object to compare with
     * @returns True if paths are equal, false otherwise
     * @throws IllegalArgumentException when path is empty or contains null characters
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func ==(other: Path): Bool

    /**
     * @description Computes the hash code of the path
     * @returns Hash code value
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Converts the path to its string representation
     * @returns String representation of the path
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides a utility for creating symbolic links. This class cannot be instantiated.
 */
@!APILevel[
    since: "22"
]
public class SymbolicLink {
    /**
     * @description Creates a symbolic link.
     * @param link - The path of the symbolic link to be created.
     * @param to - The target path to which the symbolic link should point.
     * @throws IllegalArgumentException if link or to is empty or contains null characters.
     * @throws FSException on other failures.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(link: Path, to!: Path): Unit

    /**
     * @description Creates a symbolic link.
     * @param link - The path of the symbolic link to be created.
     * @param to - The target path to which the symbolic link should point.
     * @throws IllegalArgumentException if link or to is empty or contains null characters.
     * @throws FSException on other failures.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func create(link: String, to!: String): Unit

    /**
     * @description Reads the target of a symbolic link
     * @param path - Path string to the symbolic link
     * @param recursive - Whether to recursively resolve symbolic links, default is false
     * @returns Path object pointing to the target
     * @throws FSException when reading symbolic link fails
     * @throws IllegalArgumentException when path is not a symbolic link, is empty or contains null characters.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readFrom(path: String, recursive!: Bool = false): Path

    /**
     * @description Reads the target of a symbolic link
     * @param path - Path object to the symbolic link
     * @param recursive - Whether to recursively resolve symbolic links, default is false
     * @returns Path object pointing to the target
     * @throws FSException when reading symbolic link fails
     * @throws IllegalArgumentException when path is not a symbolic link, is empty or contains null characters.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readFrom(path: Path, recursive!: Bool = false): Path
}



