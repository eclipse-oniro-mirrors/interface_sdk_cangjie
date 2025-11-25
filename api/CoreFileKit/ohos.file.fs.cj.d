/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.file.fs

import ohos.labels.APILevel

/**
 * Defines the options used in createRandomAccessFile().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class RandomAccessFileOptions {
    /**
     * Start position to read the data, in bytes. This parameter is optional. By default, data is read from the current position.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var start: Option<Int64>

    /**
     * End position to read the data, in bytes. This parameter is optional. The default value is the end of the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var end: Option<Int64>

    /**
     * RandomAccessFileOptions constructor.
     *
     * @param { ?Int64 } [start] - Start position to read the data, in bytes.
     * This parameter is optional. By default, data is read from the current position.
     * @param { ?Int64 } [end] - End position to read the data, in bytes.
     * This parameter is optional. The default value is the end of the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        start!: Option<Int64> = None,
        end!: Option<Int64> = None
    )
}

/**
 * Mode Indicates the open flags.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class OpenMode {
    /**
     * Read only Permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const READ_ONLY: Int64 = 0o0

    /**
     * Write only Permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const WRITE_ONLY: Int64 = 0o1

    /**
     * Write and Read Permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const READ_WRITE: Int64 = 0o2

    /**
     * If not exist, create file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const CREATE: Int64 = 0o100

    /**
     * File truncate len 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const TRUNC: Int64 = 0o1000

    /**
     * File append write.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const APPEND: Int64 = 0o2000

    /**
     * File open in nonblocking mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const NONBLOCK: Int64 = 0o4000

    /**
     * File is Dir.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const DIR: Int64 = 0o200000

    /**
     * File is not symbolic link.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const NOFOLLOW: Int64 = 0o400000

    /**
     * SYNC IO.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const SYNC: Int64 = 0o4010000
}

/**
 * Defines the options used in readLines().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public open class Options {
    /**
     * File encoding format. It is optional.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var encoding: String

    /**
     * Options constructor.
     *
     * @param { String } [encoding] - File encoding format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(encoding!: String = "utf-8")
}

/**
 * Provides a ReaderIterator object. Before calling APIs of ReaderIterator,
 * you need to use readLines() to create a ReaderIterator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ReaderIterator {
    /**
     * Obtains the ReaderIterator result.
     *
     * @returns { ReaderIteratorResult } Returns the ReaderIteratorResult object.
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900037 - No data available
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public func next(): ReaderIteratorResult
}

/**
 * Represents the information obtained by the ReaderIterator object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ReaderIteratorResult {
    /**
     * Whether the iteration is complete.
     * The value true means the iteration is complete; the value false means the iteration is not complete.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var done: Bool

    /**
     * File text content read line by line.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var value: String
}

/**
 * Defines the options used in write(). It inherits from Options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class WriteOptions <: Options {
    /**
     * Length of the data to write, in bytes. This parameter is optional. The default value is the buffer length.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var length: Option<UIntNative>

    /**
     * Option for creating the writeable stream. You must specify one of the following options.
     * OpenMode.READ_ONLY(0o0): read-only, which is the default value.
     * OpenMode.WRITE_ONLY(0o1): write-only.
     * OpenMode.READ_WRITE(0o2): read/write.
     * You can also specify the following options, separated by a bitwise OR operator (|).
     * By default, no additional options are given.
     * OpenMode.CREATE(0o100): If the file does not exist, create it.
     * OpenMode.TRUNC(0o1000): If the file exists and is opened in write mode, truncate the file length to 0.
     * OpenMode.APPEND(0o2000): Open the file in append mode. New data will be added to the end of the file.
     * OpenMode.NONBLOCK(0o4000): If path points to a named pipe (also known as a FIFO), block special file,
     * or character special file, perform non-blocking operations on the opened file and in subsequent I/Os.
     * OpenMode.DIR(0o200000): If path does not point to a directory, throw an exception.
     * The write permission is not allowed.
     * OpenMode.NOFOLLOW(0o400000): If path points to a symbolic link, throw an exception.
     * OpenMode.SYNC(0o4010000): Open the file in synchronous I/O mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var offset: Option<Int64>

    /**
     * WriteOptions constructor.
     *
     * @param { ?UIntNative } [length] - Length of the data to write, in bytes.
     * This parameter is optional. The default value is the buffer length.
     * @param { ?Int64 } [offset] - Start position of the file to write (current filePointer plus offset), in bytes.
     * @param { String } [encoding] - File encoding format. It is optional.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        length!: Option<UIntNative> = None,
        offset!: Option<Int64> = None,
        encoding!: String = "utf-8"
    )
}

/**
 * Defines the options used in read().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public open class ReadOptions {
    /**
     * Length of the data to read, in bytes. This parameter is optional. The default value is the buffer length.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var offset: Option<Int64>

    /**
     * Start position of the file to read (current filePointer plus offset), in bytes. This parameter is optional.
     * By default, data is read from the filePointer.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var length: Option<UIntNative>

    /**
     * ReadOptions constructor.
     *
     * @param { ?Int64 } [offset] - Length of the data to read, in bytes. This parameter is optional.
     * The default value is the buffer length.
     * @param { ?UIntNative } [length] - Start position of the file to read (current filePointer plus offset), in bytes.
     * This parameter is optional.The default value is the buffer length.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        offset!: Option<Int64> = None,
        length!: Option<UIntNative> = None
    )
}

/**
 * Defines the options used in readText(). It inherits from ReadOptions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ReadTextOptions <: ReadOptions {
    /**
     * Format of the data to be encoded. This parameter is valid only when the data type is string.
     * The default value is 'utf-8', which is the only value supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var encoding: String

    /**
     * ReadTextOptions constructor.
     *
     * @param { ?Int64 } [offset] - Length of the data to read, in bytes. This parameter is optional.
     * The default value is the buffer length.
     * @param { ?UIntNative } [length] - Start position of the file to read (current filePointer plus offset), in bytes.
     * This parameter is optional.The default value is the buffer length.
     * @param { String } [encoding] - Format of the data to be encoded. This parameter is valid only when the data type
     * is string. The default value is 'utf-8', which is the only value supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        offset!: Option<Int64> = None,
        length!: Option<UIntNative> = None,
        encoding!: String = "utf-8"
    )
}

/**
 * Enumerates the access modes to verify. If this parameter is left blank, the system checks whether the file exists.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum AccessModeType {
    /**
     * Whether the file exists.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Exist
    | 
    /**
     * Verify the write permission on the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Write
    | 
    /**
     * Verify the read permission on the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Read
    | 
    /**
     * Verify the read/write permission on the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    ReadWrite
    | ...
}

/**
 * Enumerates the locations of the file to verify.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum AccessFlagType {
    /**
     * The file is stored locally.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Local | ...
}

/**
 * Enumerates the types of the relative offset position used in lseek().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum WhenceType {
    /**
     * Starting position of the file offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SeekSet
    | 
    /**
     * Current position of the file offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SeekCur
    | 
    /**
     * Ending position of the file offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SeekEnd
    | ...
}

/**
 * Defines conflicting file information used in copyDir() or moveDir().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ConflictFiles {
    /**
     * The path of the source file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var srcFile: String

    /**
     * The path of the destination file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var destFile: String
}

/**
 * Defines the file filtering configuration used by listFile().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Filter {
    /**
     * Locate files that fully match the specified file name extensions, which are of the OR relationship.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var suffix: Array<String>

    /**
     * Locate files that fuzzy match the specified file names, which are of the OR relationship.
     * Currently, only the wildcard * is supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var displayName: Array<String>

    /**
     * Locate files that fully match the specified MIME types, which are of the OR relationship.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var mimeType: Array<String>

    /**
     * Locate files that are greater than or equal to the specified size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var fileSizeOver: ?Int64

    /**
     * Locate files whose last modification time is the same or later than the specified time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var lastModifiedAfter: ?Float64

    /**
     * Whether to exclude the files already in Media. The value true means to exclude the files already in Media;
     * the value false means not to exclude the files already in Media.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var excludeMedia: Bool

    /**
     * Filter constructor.
     *
     * @param { Array<String> } [suffix] - Locate files that fully match the specified file name extensions,
     * which are of the OR relationship.
     * @param { Array<String> } [displayName] - Locate files that fuzzy match the specified file names,
     * which are of the OR relationship. Currently, only the wildcard * is supported.
     * @param { Array<String> } [mimeType] - Locate files that fully match the specified MIME types,
     * which are of the OR relationship.
     * @param { ?Int64 } [fileSizeOver] - Locate files that are greater than or equal to the specified size.
     * @param { ?Float64 } [lastModifiedAfter] - Locate files whose last modification time is the same or
     * later than the specified time.
     * @param { Bool } [excludeMedia] - Whether to exclude the files already in Media. The value true means
     * to exclude the files already in Media; the value false means not to exclude the files already in Media.
     * @throws { BusinessException } 13900020 - Invalid argument
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public init(
        suffix!: Array<String> = Array<String>(),
        displayName!: Array<String> = Array<String>(),
        mimeType!: Array<String> = Array<String>(),
        fileSizeOver!: ?Int64 = None,
        lastModifiedAfter!: ?Float64 = None,
        excludeMedia!: Bool = false
    )
}

/**
 * Optional type. The listFile interface can be used.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ListFileOptions {
    /**
     * Whether to list all files in the subdirectories recursively.
     * The default value is false. If recursion is false, the names of files and directories that meet the filtering
     * requirements in the current directory are returned. If recursion is true, relative paths (starting with /)
     * of all files that meet the specified conditions in the current directory are returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var recursion: Bool

    /**
     * Number of file names to list. This parameter is optional. The default value is 0, which means to list all files.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var listNum: Int32

    /**
     * File filtering configuration. This parameter is optional. It specifies the file filtering conditions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var filter: Filter

    /**
     * ListFileOptions constructor.
     *
     * @param { Bool } [recursion] - Whether to list all files in the subdirectories recursively.
     * The default value is false. If recursion is false, the names of files and directories that meet the filtering
     * requirements in the current directory are returned. If recursion is true, relative paths (starting with /)
     * of all files that meet the specified conditions in the current directory are returned.
     * @param { Int32 } [listNum] - Number of file names to list. The default value is 0, which means to list all files.
     * @param { Filter } [filter] - File filtering configuration. It specifies the file filtering conditions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        recursion!: Bool = false,
        listNum!: Int32 = 0,
        filter!: Filter = Filter()
    )
}

/**
 * The FileIo class provides convenient methods for file input and output operations.
 * It encapsulates common file I/O functionalities, including reading, and writing text files,
 * as well as utility methods such as checking file existence and creating directories.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class FileIo {
    /**
     * Checks whether the file or directory is stored locally or has the operation permission.
     * If the read, write, or read and write permission verification fails,
     * the error code 13900012 (Permission denied) will be thrown.
     *
     * @param { String } path - Application sandbox path of the file to check.
     * @param { AccessModeType } [mode] - Permission on the file to verify.
     * @param { AccessFlagType } [flag] - Location of the file to verify.
     * @returns { Bool } Returns true if the file is a local file and has the related permission;
     * returns false if the file does not exist or is on the cloud or a distributed device.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func access(path: String, mode!: AccessModeType = AccessModeType.Exist,
        flag!: AccessFlagType = AccessFlagType.Local): Bool

    /**
     * Closes a file or directory.
     *
     * @param { Int32 } file - File FD of the file to close.
     * Once closed, the File FD cannot be used for read or write operations.
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func close(file: Int32): Unit

    /**
     * Closes a file or directory.
     *
     * @param { File } file - File object of the file to close.
     * Once closed, the File object cannot be used for read or write operations.
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func close(file: File): Unit

    /**
     * Copies the source directory to the destination directory.
     *
     * @param { String } src - Application sandbox path of the source directory.
     * @param { String } dest - Application sandbox path of the destination folder.
     * @param { Int32 } [mode] - Copy mode. The default value is 0.
     * 0: Throw an exception if a file conflict occurs.
     * An exception will be thrown if the destination directory contains a directory with the same name as the source directory,
     * and a file with the same name exists in the conflict directory. All the non-conflicting files in the source directory will be moved
     * to the destination directory, and the non-conflicting files in the destination directory will be retained.
     * The data attribute in the error returned provides information about the conflicting files in the Array<ConflictFiles> format.
     * 1: Forcibly overwrite the files with the same name in the destination directory.
     * When the destination directory contains a directory with the same name as the source directory,
     * the files with the same names in the destination directory are overwritten forcibly;
     * the files without conflicts in the destination directory are retained.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900031 - Function not implemented
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func copyDir(src: String, dest: String, mode!: Int32 = 0): Unit

    /**
     * Copies a file.
     *
     * @param { String } src - Path of the file to copy.
     * @param { String } dest - Destination path of the file created.
     * @param { Int32 } [mode] - Whether to overwrite the file with the same name in the destination directory.
     * The default value is 0, which is the only value supported.
     * 0: overwrite the file with the same name and truncate the part that is not overwritten.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900031 - Function not implemented
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func copyFile(src: String, dest: String, mode!: Int32 = 0): Unit

    /**
     * Copies a file.
     *
     * @param { String } src - Path of the file to copy.
     * @param { Int32 } dest - Destination FD of the file created.
     * @param { Int32 } [mode] - Whether to overwrite the file with the same name in the destination directory.
     * The default value is 0, which is the only value supported.
     * 0: overwrite the file with the same name and truncate the part that is not overwritten.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900031 - Function not implemented
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func copyFile(src: String, dest: Int32, mode!: Int32 = 0): Unit

    /**
     * Copies a file.
     *
     * @param { Int32 } src - FD of the file to copy.
     * @param { String } dest - Destination path of the file created.
     * @param { Int32 } [mode] - Whether to overwrite the file with the same name in the destination directory.
     * The default value is 0, which is the only value supported.
     * 0: overwrite the file with the same name and truncate the part that is not overwritten.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900031 - Function not implemented
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func copyFile(src: Int32, dest: String, mode!: Int32 = 0): Unit

    /**
     * Copies a file.
     *
     * @param { Int32 } src - FD of the file to copy.
     * @param { Int32 } dest - Destination FD of the file created.
     * @param { Int32 } [mode] - Whether to overwrite the file with the same name in the destination directory.
     * The default value is 0, which is the only value supported.
     * 0: overwrite the file with the same name and truncate the part that is not overwritten.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900031 - Function not implemented
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func copyFile(src: Int32, dest: Int32, mode!: Int32 = 0): Unit

    /**
     * Creates a stream based on a file path.
     * To close the stream, use close() of Stream.
     *
     * @param { String } path - Application sandbox path of the file.
     * @param { String } mode - r: Open a file for reading. The file must exist.
     * r+: Open a file for both reading and writing. The file must exist.
     * w: Open a file for writing. If the file exists, clear its content. If the file does not exist, create a file.
     * w+: Open a file for both reading and writing. If the file exists, clear its content. If the file does not exist,
     * create a file.
     * a: Open a file in append mode for writing at the end of the file. If the file does not exist, create a file.
     * If the file exists, write data to the end of the file (the original content of the file is reserved).
     * a+: Open a file in append mode for reading or updating at the end of the file.
     * If the file does not exist, create a file.
     * If the file exists, write data to the end of the file (the original content of the file is reserved).
     * @returns { Stream } Used to return the stream opened.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900006 - No such device or address
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900017 - No such device
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900022 - Too many open files
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900029 - Resource deadlock would occur
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func createStream(path: String, mode: String): Stream

    /**
     * Creates a RandomAccessFile instance based on a file path or file object.
     *
     * @param { String } file - Application sandbox path of the file or an opened file object.
     * @param { Int64 } [mode] - Mode for creating the RandomAccessFile instance.
     * This parameter is valid only when the application sandbox path of the file is passed in.
     * One of the following options must be specified:
     * OpenMode.READ_ONLY(0o0): Create the file in read-only mode. This is the default value.
     * OpenMode.WRITE_ONLY(0o1): Create the file in write-only mode.
     * OpenMode.READ_WRITE(0o2): Create the file in read/write mode.
     * You can also specify the following options, separated by a bitwise OR operator (|). By default,
     * no additional options are given.
     * OpenMode.CREATE(0o100): If the file does not exist, create it.
     * OpenMode.TRUNC(0o1000): If the RandomAccessFile object already exists and is created in write mode,
     * truncate the file length to 0.
     * OpenMode.APPEND(0o2000): Create the file in append mode. New data will be added to the end
     * of the RandomAccessFile object.
     * OpenMode.NONBLOCK(0o4000): If path points to a named pipe (also known as a FIFO), block special file,
     * or character special file, perform non-blocking operations on the created file and in subsequent I/Os.
     * OpenMode.DIR(0o200000): If path does not point to a directory, throw an exception. The write permission is not allowed.
     * OpenMode.NOFOLLOW(0o400000): If path points to a symbolic link, throw an exception.
     * OpenMode.SYNC(0o4010000): Create a RandomAccessFile instance in synchronous I/O mode.
     * @param { RandomAccessFileOptions } [options] - Defines the options used in createRandomAccessFile().
     * @returns { RandomAccessFile } RandomAccessFile instance created.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900006 - No such device or address
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900017 - No such device
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900022 - Too many open files
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900029 - Resource deadlock would occur
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func createRandomAccessFile(file: String, mode!: Int64 = OpenMode.READ_ONLY,
        options!: RandomAccessFileOptions = RandomAccessFileOptions()): RandomAccessFile

    /**
     * Creates a RandomAccessFile instance based on a file path or file object.
     *
     * @param { File } file - Application sandbox path of the file or an opened file object.
     * @param { Int64 } [mode] - Mode for creating the RandomAccessFile instance.
     * This parameter is valid only when the application sandbox path of the file is passed in.
     * One of the following options must be specified:
     * OpenMode.READ_ONLY(0o0): Create the file in read-only mode. This is the default value.
     * OpenMode.WRITE_ONLY(0o1): Create the file in write-only mode.
     * OpenMode.READ_WRITE(0o2): Create the file in read/write mode.
     * You can also specify the following options, separated by a bitwise OR operator (|). By default,
     * no additional options are given.
     * OpenMode.CREATE(0o100): If the file does not exist, create it.
     * OpenMode.TRUNC(0o1000): If the RandomAccessFile object already exists and is created in write mode,
     * truncate the file length to 0.
     * OpenMode.APPEND(0o2000): Create the file in append mode. New data will be added to the end
     * of the RandomAccessFile object.
     * OpenMode.NONBLOCK(0o4000): If path points to a named pipe (also known as a FIFO), block special file,
     * or character special file, perform non-blocking operations on the created file and in subsequent I/Os.
     * OpenMode.DIR(0o200000): If path does not point to a directory, throw an exception. The write permission is not allowed.
     * OpenMode.NOFOLLOW(0o400000): If path points to a symbolic link, throw an exception.
     * OpenMode.SYNC(0o4010000): Create a RandomAccessFile instance in synchronous I/O mode.
     * @param { RandomAccessFileOptions } [options] - Defines the options used in createRandomAccessFile().
     * @returns { RandomAccessFile } RandomAccessFile instance created.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900006 - No such device or address
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900017 - No such device
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900022 - Too many open files
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900029 - Resource deadlock would occur
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func createRandomAccessFile(file: File, mode!: Int64 = OpenMode.READ_ONLY,
        options!: RandomAccessFileOptions = RandomAccessFileOptions()): RandomAccessFile

    /**
     * Opens a File object based on an FD.
     *
     * @param { Int32 } fd - FD of the file.
     * @returns { File } File object opened.
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900022 - Too many open files
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public static func dup(fd: Int32): File

    /**
     * Synchronizes the data of a file.
     *
     * @param { Int32 } fd - FD of the file.
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func fdatasync(fd: Int32): Unit

    /**
     * Opens a stream based on an FD.
     * To close the stream, use close() of Stream.
     *
     * @param { Int32 } fd - FD of the file.
     * @param { String } mode - r: Open a file for reading. The file must exist.
     * r+: Open a file for both reading and writing. The file must exist.
     * w: Open a file for writing. If the file exists, clear its content. If the file does not exist, create a file.
     * w+: Open a file for both reading and writing. If the file exists, clear its content. If the file does not exist,
     * create a file.
     * a: Open a file in append mode for writing at the end of the file. If the file does not exist, create a file.
     * If the file exists, write data to the end of the file (the original content of the file is reserved).
     * a+: Open a file in append mode for reading or updating at the end of the file. If the file does not exist,
     * create a file. If the file exists, write data to the end of the file (the original content of the file
     * is reserved).
     * @returns { Stream } Returns the Stream object.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900006 - No such device or address
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900017 - No such device
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900022 - Too many open files
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900029 - Resource deadlock would occur
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func fdopenStream(fd: Int32, mode: String): Stream

    /**
     * Synchronizes the cached data of a file to storage.
     *
     * @param { Int32 } fd - FD of the file.
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func fsync(fd: Int32): Unit

    /**
     * Lists all file names in a directory.
     * This API supports recursive listing of all file names and file filtering.
     *
     * @param { String } path - Application sandbox path of the directory.
     * @param { ListFileOptions } [options] - Options for filtering files. The files are not filtered by default.
     * @returns { Array<String> } List of the file names obtained.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func listFile(path: String, options!: ListFileOptions = ListFileOptions()): Array<String>

    /**
     * Adjusts the position of the file offset pointer.
     *
     * @param { Int32 } fd - FD of the file.
     * @param { Int64 } offset - Number of bytes to move the offset.
     * @param { WhenceType } [whence] -  Where to start the offset.
     * If this parameter is not specified, the file start position is used by default.
     * @returns { Int64 } Returns the file offset relative to starting position of file.
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900026 - Illegal seek
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public static func lseek(fd: Int32, offset: Int64, whence!: WhenceType = SeekSet): Int64

    /**
     * Obtains information about a symbolic link that is used to refer to a file or directory.
     *
     * @param { String } path - Application sandbox path of the file.
     * @returns { Stat } Used to return the symbolic link information obtained.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func lstat(path: String): Stat

    /**
     * Creates a directory.
     *
     * @param { String } path - Application sandbox path of the directory.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900028 - Too many links
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func mkdir(path: String): Unit

    /**
     * Creates a directory. The value true means to create a directory recursively.
     *
     * @param { String } path - Application sandbox path of the directory.
     * @param { Bool } recursion - Whether to create a directory recursively.
     * The value true means to create a directory recursively. The value false means to create a single-level directory.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900028 - Too many links
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func mkdir(path: String, recursion: Bool): Unit

    /**
     * Creates a temporary directory.
     * The directory name is created by replacing a string (specified by prefix) with six randomly generated characters.
     *
     * @param { String } prefix - String to be replaced with six randomly generated characters to create a unique temporary directory.
     * @returns { String } Returns the application sandbox path of the created temporary directory.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900028 - Too many links
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func mkdtemp(prefix: String): String

    /**
     * Moves the source directory to the destination directory.
     *
     * @param { String } src - Application sandbox path of the source directory.
     * @param { String } dest - Application sandbox path of the destination directory.
     * @param { Int32 } [mode] - Move mode. The default value is 0.
     * 0: Throw an exception if a directory conflict occurs.
     * An exception will be thrown if the destination directory contains a non-empty directory with the same name as the source directory.
     * 1: Throw an exception if a file conflict occurs.
     * An exception will be thrown if the destination directory contains a directory with the same name as the source directory,
     * and a file with the same name exists in the conflict directory. All the non-conflicting files in the source directory
     * will be moved to the destination directory, and the non-conflicting files in the destination directory will be retained.
     * The data attribute in the error returned provides information about the conflicting files in the Array<ConflictFiles> format.
     * 2: Forcibly overwrite the conflicting files in the destination directory.
     * When the destination directory contains a directory with the same name as the source directory,
     * the files with the same names in the destination directory are overwritten forcibly;
     * the files without conflicts in the destination directory are retained.
     * 3: Forcibly overwrite the conflicting directory.
     * The source directory is moved to the destination directory, and the content of the moved directory is the
     * same as that of the source directory. If the destination directory contains a directory with the same name
     * as the source directory, all original files in the directory will be deleted.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900016 - Cross-device link
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900028 - Too many links
     * @throws { BusinessException } 13900032 - Directory not empty
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func moveDir(src: String, dest: String, mode!: Int32 = 0): Unit

    /**
     * Moves a file.
     *
     * @param { String } src - Application sandbox path of the file to move.
     * @param { String } dest - Application sandbox path of the destination file.
     * @param { Int32 } [mode] - Move mode.
     * The value 0 means to overwrite the file with the same name in the destination directory;
     * the value 1 means to throw an exception. The default value is 0.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900016 - Cross-device link
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900028 - Too many links
     * @throws { BusinessException } 13900032 - Directory not empty
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func moveFile(src: String, dest: String, mode!: Int32 = 0): Unit

    /**
     * Opens a file or directory.
     *
     * @param { String } path - Application sandbox path or URI of the file.
     * @param { Int64 } [mode] - Mode for opening the file.
     * You must specify one of the following options. By default, the file is opened in read-only mode.
     * OpenMode.READ_ONLY(0o0): Open the file in read-only mode.
     * OpenMode.WRITE_ONLY(0o1): Open the file in write-only mode.
     * OpenMode.READ_WRITE(0o2): Open the file in read/write mode.
     * You can add the following function options in bitwise OR mode. By default, no additional option is added.
     * OpenMode.CREATE(0o100): Create a file if the file does not exist.
     * OpenMode.TRUNC(0o1000): If the file exists and is opened in write mode, truncate the file length to 0.
     * OpenMode.APPEND(0o2000): Open the file in append mode. New data will be added to the end of the file.
     * OpenMode.NONBLOCK(0o4000): If path points to a named pipe (also known as a FIFO), block special file,
     * or character special file, perform non-blocking operations on the opened file and in subsequent I/Os.
     * OpenMode.DIR(0o200000): If path does not point to a directory, throw an exception. The write permission is not allowed.
     * OpenMode.NOFOLLOW(0o400000): If path points to a symbolic link, throw an exception.
     * OpenMode.SYNC(0o4010000): Open the file in synchronous I/O mode.
     * @returns { File } Used to return the File object.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900006 - No such device or address
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900017 - No such device
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900022 - Too many open files
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900029 - Resource deadlock would occur
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func open(path: String, mode!: Int64 = OpenMode.READ_ONLY): File

    /**
     * Reads data from a file.
     *
     * @param { Int32 } fd - FD of the file.
     * @param { Array<Byte> } buffer - Buffer used to store the file data read.
     * @param { ReadOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to read. This parameter is optional. The default value is the buffer length.
     * offset (Int64): start position to read the data (it is determined by filePointer plus offset).
     * This parameter is optional. By default, data is read from the filePointer.
     * @returns { Int64 } Used to return the data read.
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func read(fd: Int32, buffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64

    /**
     * Reads the text content of a file line by line.
     * Only the files in UTF-8 format are supported.
     *
     * @param { String } filePath - Application sandbox path of the file.
     * @param { Options } [options] - Options for reading the text. The options are as follows:
     * encoding (String): format of the data to be encoded. It is valid only when the data is of the string type.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { ReaderIterator } Used to return a ReaderIterator object..
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900022 - Too many open files
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func readLines(filePath: String, options!: Options = Options()): ReaderIterator

    /**
     * Reads the text content of a file.
     *
     * @param { String } filePath - Application sandbox path of the file.
     * @param { ReadTextOptions } [options] - The options are as follows:
     * offset (Int64): start position to read the data. By default, data is read from the current position.
     * length (UIntNative): length of the data to read. The default value is the file length.
     * encoding (String): format of the data to be encoded. It is valid only when the data is of the string type.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { String } Used to return the file content read.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func readText(filePath: String, options!: ReadTextOptions = ReadTextOptions()): String

    /**
     * Renames a file or directory.
     *
     * @param { String } oldPath - Application sandbox path of the file or directory to rename.
     * @param { String } newPath - Application sandbox path of the renamed file or directory.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900015 - File exists
     * @throws { BusinessException } 13900016 - Cross-device link
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900028 - Too many links
     * @throws { BusinessException } 13900032 - Directory not empty
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func rename(oldPath: String, newPath: String): Unit

    /**
     * Removes a directory.
     *
     * @param { String } path - Application sandbox path of the directory.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900027 - Read-only file system1
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900032 - Directory not empty
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func rmdir(path: String): Unit

    /**
     * Obtains detailed attribute information of a file or directory.
     *
     * @param { String } file - Application sandbox path of the file.
     * @returns { Stat } Used to return detailed file information.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900031 - Function not implemented
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func stat(file: String): Stat

    /**
     * Obtains detailed attribute information of a file or directory.
     *
     * @param { Int32 } file - Application sandbox FD of the file.
     * @returns { Stat } Used to return detailed file information.
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900031 - Function not implemented
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900038 - Value too large for defined data type
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func stat(file: Int32): Stat

    /**
     * Truncates a file.
     *
     * @param { String } file - Application sandbox path of the file.
     * @param { Int64 } [len] - File length, in bytes, after truncation. The default value is 0.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func truncate(file: String, len!: Int64 = 0): Unit

    /**
     * Truncates a file.
     *
     * @param { Int32 } file - Application sandbox FD of the file.
     * @param { Int64 } [len] - File length, in bytes, after truncation. The default value is 0.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900023 - Text file busy
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func truncate(file: Int32, len!: Int64 = 0): Unit

    /**
     * Deletes a file.
     *
     * @param { String } path - Application sandbox path of the file.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900014 - Device or resource busy
     * @throws { BusinessException } 13900018 - Not a directory
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900030 - File name too long
     * @throws { BusinessException } 13900033 - Too many symbolic links encountered
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func unlink(path: String): Unit

    /**
     * Updates the latest access timestamp of a file.
     *
     * @param { String } path - Application sandbox path of the file.
     * @param { Float64 } mtime - New timestamp. The value is the number of milliseconds elapsed since the
     * Epoch time (00:00:00 UTC on January 1, 1970)
     * Only the last access time of a file can be modified.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900002 - No such file or directory
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900027 - Read-only file system
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public static func utimes(path: String, mtime: Float64): Unit

    /**
     * Writes data to a file.
     *
     * @param { Int32 } fd - FD of the file.
     * @param { Array<Byte> } buffer - Data to write. It can be a string or data from a buffer.
     * @param { WriteOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to write. This parameter is optional. The default value is the buffer length.
     * offset (Int64): start position to write the data in the file. This parameter is optional.
     * By default, data is written from the current position.
     * encoding (String): format of the data to be encoded when the data is a string.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { Int64 } Returns the number of bytes written to the file.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func write(fd: Int32, buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64

    /**
     * Writes data to a file.
     *
     * @param { Int32 } fd - FD of the file.
     * @param { String } buffer - Data to write. It can be a string or data from a buffer.
     * @param { WriteOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to write. This parameter is optional. The default value is the buffer length.
     * offset (Int64): start position to write the data in the file. This parameter is optional.
     * By default, data is written from the current position.
     * encoding (String): format of the data to be encoded when the data is a string.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { Int64 } Returns the number of bytes written to the file.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public static func write(fd: Int32, buffer: String, options!: WriteOptions = WriteOptions()): Int64
}

/**
 * Represents a File object opened by open().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class File {
    /**
     * FD of the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop fd: Int32

    /**
     * Path of the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop path: String

    /**
     * Name of the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop name: String

    /**
     * Obtains the parent directory of this file object.
     *
     * @returns { String } Parent directory obtained.
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 14300002 - Invalid URI
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public func getParent(): String

    /**
     * Unlocks a file.
     *
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900043 - No record locks available
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public func unlock(): Unit

    /**
     * Applies an exclusive lock or a shared lock on this file in non-blocking mode.
     *
     * @param { Bool } [exclusive] - Lock to apply. The value true means an exclusive lock,
     * and the value false (default) means a shared lock.
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900043 - No record locks available
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true
    ]
    public func tryLock(exclusive!: Bool = false): Unit
}

/**
 * Provides APIs for randomly reading and writing a stream. Before invoking any API of RandomAccessFile,
 * you need to use createRandomAccessFile() to create a RandomAccessFile instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class RandomAccessFile {
    /**
     * FD of the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop fd: Int32

    /**
     * Offset pointer to the RandomAccessFile instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop filePointer: Int64

    /**
     * Sets the file offset pointer.
     *
     * @param { Int64 } filePointer - Offset pointer to the RandomAccessFile instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func setFilePointer(filePointer: Int64): Unit

    /**
     * Closes this RandomAccessFile instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        workerthread: true
    ]
    public func close(): Unit

    /**
     * Writes data to a file.
     *
     * @param { String } buffer - The data to write.
     * @param { WriteOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to write. The default value is the buffer length.
     * offset (Int64): start position to write the data (it is determined by filePointer plus offset).
     * By default, data is written from the filePointer.
     * encoding (String): format of the data to be encoded when the data is a string.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { Int64 } Returns the number of bytes written to the file.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func write(buffer: String, options!: WriteOptions = WriteOptions()): Int64

    /**
     * Writes data to a file.
     *
     * @param { Array<Byte> } buffer - The data to write.
     * @param { WriteOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to write. The default value is the buffer length.
     * offset (Int64): start position to write the data (it is determined by filePointer plus offset).
     * By default, data is written from the filePointer.
     * encoding (String): format of the data to be encoded when the data is a string.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { Int64 } Returns the number of bytes written to the file.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func write(buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64

    /**
     * Reads data from a file.
     *
     * @param { Array<Byte> } buffer - Buffer used to store the file read.
     * @param { ReadOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to read. The default value is the buffer length.
     * offset (Int64): start position to read the data (it is determined by filePointer plus offset).
     * By default, data is read from the filePointer.
     * @returns { Int64 } Used to return the data read.
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func read(buffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64
}

/**
 * Represents detailed file information. Before calling any API of the Stat() class,
 * use stat() to create a Stat instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Stat {
    /**
     * File identifier, which varies with files on the same device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop ino: Int64

    /**
     * File permissions. The meaning of each bit is as follows:
     * The following values are in octal format. The return values are in decimal format. You need to convert the
     * values.
     * 0o400: The user has the read permission on a regular file or a directory entry.
     * 0o200: The user has the permission to write a regular file or create and delete a directory entry.
     * 0o100: The user has the permission to execute a regular file or search for the specified path in a directory.
     * 0o040: The user group has the read permission on a regular file or a directory entry.
     * 0o020: The user group has the permission to write a regular file or create and delete a directory entry.
     * 0o010: The user group has the permission to execute a regular file or search for the specified path in a
     * directory.
     * 0o004: Other users have the permission to read a regular file or read a directory entry.
     * 0o002: Other users have the permission to write a regular file or create and delete a directory entry.
     * 0o001: Other users have the permission to execute a regular file or search for the specified path in a directory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop mode: Int64

    /**
     * ID of the file owner.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop uid: Int64

    /**
     * ID of the user group of the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop gid: Int64

    /**
     * File size, in bytes. This parameter is valid only for regular files.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop size: Int64

    /**
     * Time when the file was last accessed. The value is the number of seconds elapsed since 00:00:00 on January 1, 1970.
     * NOTE: Currently, user data partitions are mounted in noatime mode by default, and atime update is disabled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop atime: Int64

    /**
     * Time when the file content was last modified. The value is the number of seconds elapsed
     * since 00:00:00 on January 1, 1970.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop mtime: Int64

    /**
     * Time when the file metadata was last modified. The value is the number of seconds elapsed
     * since 00:00:00 on January 1, 1970.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop ctime: Int64

    /**
     * Checks whether this file is a block special file. A block special file supports access by block only, and it is
     * cached when accessed.
     *
     * @returns { Bool } Returns whether the path/fd point to a block device or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isBlockDevice(): Bool

    /**
     * Checks whether this file is a character special file. A character special device supports random access, and it
     * is not cached when accessed.
     *
     * @returns { Bool } Returns whether the path/fd point to a character device or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isCharacterDevice(): Bool

    /**
     * Checks whether this file is a directory.
     *
     * @returns { Bool } Returns whether the path/fd point to a directory or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isDirectory(): Bool

    /**
     * Checks whether this file is a named pipe (or FIFO). Named pipes are used for inter-process communication.
     *
     * @returns { Bool } Returns whether the path/fd point to a fifo file or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isFifo(): Bool

    /**
     * Checks whether this file is a regular file.
     *
     * @returns { Bool } Returns whether the path/fd point to a normal file or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isFile(): Bool

    /**
     * Checks whether this file is a socket.
     *
     * @returns { Bool } Returns whether the path/fd point to a socket file or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isSocket(): Bool

    /**
     * Checks whether this file is a symbolic link.
     *
     * @returns { Bool } Returns whether the path/fd point to a symbolic link or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isSymbolicLink(): Bool
}

/**
 * Provides API for stream operations. Before calling any API of Stream,
 * you need to create a Stream instance by using createStream or fdopenStream.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Stream {
    /**
     * Close stream.
     *
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func close(): Unit

    /**
     * Flushes this stream.
     *
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func flush(): Unit

    /**
     * Writes data to this stream.
     *
     * @param { String } buffer - Data to write.
     * @param { WriteOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to write. The default value is the buffer length.
     * offset (Int64): start position to write the data (it is determined by filePointer plus offset).
     * By default, data is written from the filePointer.
     * encoding (String): format of the data to be encoded when the data is a string.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { Int64 } Used to return the length of the data written.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func write(buffer: String, options!: WriteOptions = WriteOptions()): Int64

    /**
     * Writes data to this stream.
     *
     * @param { Array<Byte> } buffer - Data to write.
     * @param { WriteOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to write. The default value is the buffer length.
     * offset (Int64): start position to write the data (it is determined by filePointer plus offset).
     * By default, data is written from the filePointer.
     * encoding (String): format of the data to be encoded when the data is a string.
     * The default value is 'utf-8', which is the only value supported.
     * @returns { Int64 } Used to return the length of the data written.
     * @throws { BusinessException } 13900001 - Operation not permitted
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900024 - File too large
     * @throws { BusinessException } 13900025 - No space left on device
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900041 - Quota exceeded
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func write(buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64

    /**
     * Reads data from this stream.
     *
     * @param { Array<Byte> } buffer - Buffer used to store the file read.
     * @param { ReadOptions } [options] - The options are as follows:
     * length (UIntNative): length of the data to read. The default value is the buffer length.
     * offset (Int64): start position to read the data. By default, data is read from the current position.
     * @returns { Int64 } Used to return the data read.
     * @throws { BusinessException } 13900004 - Interrupted system call
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900008 - Bad file descriptor
     * @throws { BusinessException } 13900010 - Try again
     * @throws { BusinessException } 13900013 - Bad address
     * @throws { BusinessException } 13900019 - Is a directory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900034 - Operation would block
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 13900044 - Network is unreachable
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.File.FileIO",
        throwexception: true,
        workerthread: true
    ]
    public func read(buffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64
}
