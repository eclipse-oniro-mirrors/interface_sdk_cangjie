package std.posix


/**
 * @description Open file read-only.
 */
@!APILevel[
    since: "22"
]
public const O_RDONLY: Int32 = 0x0

/**
 * @description Open the file in read/write mode.
 */
@!APILevel[
    since: "22"
]
public const O_RDWR: Int32 = 0x2

/**
 * @description Open file write-only.
 */
@!APILevel[
    since: "22"
]
public const O_WRONLY: Int32 = 0x1

/**
 * @description Open the file in append mode. That is, the written data is appended to the end of the file.
 */
@!APILevel[
    since: "22"
]
public const O_APPEND: Int32 = 0x400

/**
 * @description Flag to set close-on-exec for the file descriptor.
 */
@!APILevel[
    since: "22"
]
public const O_CLOEXEC: Int32 = 0x80000

/**
 * @description If the file to be opened does not exist, it is automatically created.
 */
@!APILevel[
    since: "22"
]
public const O_CREAT: Int32 = 0x40

/**
 * @description If the file specified by pathname is not a directory, it fails to be opened.
 */
@!APILevel[
    since: "22"
]
public const O_DIRECTORY: Int32 = 0x10000

/**
 * @description Flag for data synchronization.
 */
@!APILevel[
    since: "22"
]
public const O_DSYNC: Int32 = 0x1000

/**
 * @description Ensures that this call creates the file; if the file exists, the call fails.
 */
@!APILevel[
    since: "22"
]
public const O_EXCL: Int32 = 0x80

/**
 * @description Prevents the terminal device from becoming the controlling terminal.
 */
@!APILevel[
    since: "22"
]
public const O_NOCTTY: Int32 = 0x100

/**
 * @description If pathname is a symbolic link, then the open fails.
 */
@!APILevel[
    since: "22"
]
public const O_NOFOLLOW: Int32 = 0x20000

/**
 * @description When possible, the file is opened in nonblocking mode.
 */
@!APILevel[
    since: "22"
]
public const O_NONBLOCK: Int32 = 0x800

/**
 * @description The file is opened for synchronous I/O.
 */
@!APILevel[
    since: "22"
]
public const O_SYNC: Int32 = 0x101000

/**
 * @description If the file exists, its length is truncated to zero.
 */
@!APILevel[
    since: "22"
]
public const O_TRUNC: Int32 = 0x200

/**
 * @description The file is opened for synchronous I/O with read operations.
 */
@!APILevel[
    since: "22"
]
public const O_RSYNC: Int32 = 0x101000

/**
 * @description Read permission bit for the file owner.
 */
@!APILevel[
    since: "22"
]
public const S_IRUSR: UInt32 = 0x100

/**
 * @description Write permission bit for the file owner.
 */
@!APILevel[
    since: "22"
]
public const S_IWUSR: UInt32 = 0x80

/**
 * @description Execute permission bit for the file owner.
 */
@!APILevel[
    since: "22"
]
public const S_IXUSR: UInt32 = 0x40

/**
 * @description Read, write, and execute permissions for the file owner.
 */
@!APILevel[
    since: "22"
]
public const S_IRWXU: UInt32 = 0x1C0

/**
 * @description Read permission bit for the file group.
 */
@!APILevel[
    since: "22"
]
public const S_IRGRP: UInt32 = 0x20

/**
 * @description Write permission bit for the file group.
 */
@!APILevel[
    since: "22"
]
public const S_IWGRP: UInt32 = 0x10

/**
 * @description Execute permission bit for the file group.
 */
@!APILevel[
    since: "22"
]
public const S_IXGRP: UInt32 = 0x8

/**
 * @description Read, write, and execute permissions for the file group.
 */
@!APILevel[
    since: "22"
]
public const S_IRWXG: UInt32 = 0x38

/**
 * @description Read permission bit for others.
 */
@!APILevel[
    since: "22"
]
public const S_IROTH: UInt32 = 0x4

/**
 * @description Write permission bit for others.
 */
@!APILevel[
    since: "22"
]
public const S_IWOTH: UInt32 = 0x2

/**
 * @description Execute permission bit for others.
 */
@!APILevel[
    since: "22"
]
public const S_IXOTH: UInt32 = 0x1

/**
 * @description Read, write, and execute permissions for others.
 */
@!APILevel[
    since: "22"
]
public const S_IRWXO: UInt32 = 0x7

/**
 * @description The offset is set to offset bytes from the beginning of the file.
 */
@!APILevel[
    since: "22"
]
public const SEEK_SET: Int32 = 0x0

/**
 * @description The offset is set to its current location plus offset bytes.
 */
@!APILevel[
    since: "22"
]
public const SEEK_CUR: Int32 = 0x1

/**
 * @description The offset is set to the size of the file plus offset bytes.
 */
@!APILevel[
    since: "22"
]
public const SEEK_END: Int32 = 0x2

/**
 * @description Opens and possibly creates a file.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @param flag: The permissions when creating a new file.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func `open`(path: String, oflag: Int32, flag: UInt32): Int32

/**
 * @description Opens and possibly creates a file.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func `open`(path: String, oflag: Int32): Int32

/**
 * @description Opens and possibly creates a file with 64-bit offsets.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @param flag: The permissions when creating a new file.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func open64(path: String, oflag: Int32, flag: UInt32): Int32

/**
 * @description Opens and possibly creates a file with 64-bit offsets.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func open64(path: String, oflag: Int32): Int32

/**
 * @description Opens and possibly creates a file relative to a directory file descriptor.
 * @param fd: The directory file descriptor.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @param flag: The permissions when creating a new file.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func openat(fd: Int32, path: String, oflag: Int32, flag: UInt32): Int32

/**
 * @description Opens and possibly creates a file relative to a directory file descriptor.
 * @param fd: The directory file descriptor.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func openat(fd: Int32, path: String, oflag: Int32): Int32

/**
 * @description Opens and possibly creates a file with 64-bit offsets relative to a directory file descriptor.
 * @param fd: The directory file descriptor.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @param flag: The permissions when creating a new file.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func openat64(fd: Int32, path: String, oflag: Int32, flag: UInt32): Int32

/**
 * @description Opens and possibly creates a file with 64-bit offsets relative to a directory file descriptor.
 * @param fd: The directory file descriptor.
 * @param path: The path to the file to open.
 * @param oflag: The flags controlling the semantics of the call.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func openat64(fd: Int32, path: String, oflag: Int32): Int32

/**
 * @description Creates a new file or rewrites an existing one.
 * @param path: The path to the file.
 * @param flag: The permissions for the new file.
 * @returns The file descriptor on success, or -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func creat(path: String, flag: UInt32): Int32

/**
 * @description Closes a file descriptor.
 * @param fd: The file descriptor to close.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func close(fd: Int32): Int32

/**
 * @description Repositions the file offset of the open file associated with the file descriptor.
 * @param fd: The file descriptor.
 * @param offset: The offset in bytes.
 * @param whence: The reference point for the offset.
 * @returns The resulting offset location as measured in bytes from the beginning of the file, or -1 on error.
 */
@!APILevel[
    since: "22"
]
public func lseek(fd: Int32, offset: Int64, whence: Int32): Int64

/**
 * @description Creates a copy of the file descriptor.
 * @param fd: The file descriptor to duplicate.
 * @returns The new file descriptor on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func dup(fd: Int32): Int32

/**
 * @description Creates a copy of the file descriptor, using the specified new descriptor.
 * @param fd: The file descriptor to duplicate.
 * @param fd2: The new file descriptor.
 * @returns The new file descriptor on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func dup2(fd: Int32, fd2: Int32): Int32

/**
 * @description Reads data from a file descriptor.
 * @param fd: The file descriptor.
 * @param buffer: The buffer to store the read data.
 * @param nbyte: The number of bytes to read.
 * @returns The number of bytes read on success, 0 on end of file, -1 on error.
 */
@!APILevel[
    since: "22"
]
public unsafe func read(fd: Int32, buffer: CPointer<UInt8>, nbyte: UIntNative): IntNative

/**
 * @description Reads data from a file descriptor at a given offset.
 * @param fd: The file descriptor.
 * @param buffer: The buffer to store the read data.
 * @param nbyte: The number of bytes to read.
 * @param offset: The file offset.
 * @returns The number of bytes read on success, 0 on end of file, -1 on error.
 */
@!APILevel[
    since: "22"
]
public unsafe func pread(fd: Int32, buffer: CPointer<UInt8>, nbyte: UIntNative, offset: Int32): IntNative

/**
 * @description Writes data to a file descriptor.
 * @param fd: The file descriptor.
 * @param buffer: The buffer containing the data to write.
 * @param nbyte: The number of bytes to write.
 * @returns The number of bytes written on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public unsafe func write(fd: Int32, buffer: CPointer<UInt8>, nbyte: UIntNative): IntNative

/**
 * @description Writes data to a file descriptor at a given offset.
 * @param fd: The file descriptor.
 * @param buffer: The buffer containing the data to write.
 * @param nbyte: The number of bytes to write.
 * @param offset: The file offset.
 * @returns The number of bytes written on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public unsafe func pwrite(fd: Int32, buffer: CPointer<UInt8>, nbyte: UIntNative, offset: Int32): IntNative

/**
 * @description File type constant for regular files.
 */
@!APILevel[
    since: "22"
]
public const S_IFREG: UInt32 = 0x8000

/**
 * @description File type constant for directories.
 */
@!APILevel[
    since: "22"
]
public const S_IFDIR: UInt32 = 0x4000

/**
 * @description File type constant for character devices.
 */
@!APILevel[
    since: "22"
]
public const S_IFCHR: UInt32 = 0x2000

/**
 * @description File type constant for block devices.
 */
@!APILevel[
    since: "22"
]
public const S_IFBLK: UInt32 = 0x6000

/**
 * @description File type constant for FIFOs.
 */
@!APILevel[
    since: "22"
]
public const S_IFIFO: UInt32 = 0x1000

/**
 * @description File type constant for symbolic links.
 */
@!APILevel[
    since: "22"
]
public const S_IFLNK: UInt32 = 0xA000

/**
 * @description File type constant for sockets.
 */
@!APILevel[
    since: "22"
]
public const S_IFSOCK: UInt32 = 0xC000

/**
 * @description Checks if the file is of the specified type.
 * @param path: The file path.
 * @param mode: The file type mode.
 * @returns True if the file is of the specified type, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isType(path: String, mode: UInt32): Bool

/**
 * @description Checks if the file is a regular file.
 * @param path: The file path.
 * @returns True if the file is a regular file, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isReg(path: String): Bool

/**
 * @description Checks if the file is a directory.
 * @param path: The file path.
 * @returns True if the file is a directory, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isDir(path: String): Bool

/**
 * @description Checks if the file is a character device.
 * @param path: The file path.
 * @returns True if the file is a character device, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isChr(path: String): Bool

/**
 * @description Checks if the file is a block device.
 * @param path: The file path.
 * @returns True if the file is a block device, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isBlk(path: String): Bool

/**
 * @description Checks if the file is a FIFO.
 * @param path: The file path.
 * @returns True if the file is a FIFO, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isFIFO(path: String): Bool

/**
 * @description Checks if the file is a socket.
 * @param path: The file path.
 * @returns True if the file is a socket, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isSock(path: String): Bool

/**
 * @description Checks if the file is a symbolic link.
 * @param path: The file path.
 * @returns True if the file is a symbolic link, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isLnk(path: String): Bool

/**
 * @description Changes the current working directory.
 * @param path: The path to the new working directory.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func chdir(path: String): Int32

/**
 * @description Changes the current working directory using a file descriptor.
 * @param fd: The file descriptor of the directory.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func fchdir(fd: Int32): Int32

/**
 * @description Gets the current working directory.
 * @returns The current working directory path.
 */
@!APILevel[
    since: "22"
]
public func getcwd(): String

/**
 * @description Gets the operating system name.
 * @returns The operating system name.
 */
@!APILevel[
    since: "22"
]
public func getos(): String

/**
 * @description Gets the hostname of the system.
 * @returns The hostname. */
@!APILevel[
    since: "22"
]
public func gethostname(): String

/**
 * @description Sets the hostname of the system.
 * @param buf: The new hostname.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func sethostname(buf: String): Int32

/**
 * @description Gets the login name of the user.
 * @returns The login name.
 */
@!APILevel[
    since: "22"
]
public func getlogin(): String

/**
 * @description Creates a hard link to a file.
 * @param path: The existing file path.
 * @param newpath: The new link path.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func link(path: String, newpath: String): Int32

/**
 * @description Removes a file or symbolic link.
 * @param path: The path to remove.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func unlink(path: String): Int32

/**
 * @description Flag to allow empty path in *at functions.
 */
@!APILevel[
    since: "22"
]
public const AT_EMPTY_PATH: Int32 = 0x1000

/**
 * @description Flag to follow symbolic links in *at functions.
 */
@!APILevel[
    since: "22"
]
public const AT_SYMLINK_FOLLOW: Int32 = 0x400

/**
 * @description Special value to use current working directory in *at functions.
 */
@!APILevel[
    since: "22"
]
public const AT_FDCWD: Int32 = -0x64

/**
 * @description Creates a hard link to a file using file descriptors.
 * @param fd: The directory file descriptor for the existing file.
 * @param path: The existing file path.
 * @param nfd: The directory file descriptor for the new link.
 * @param newPath: The new link path.
 * @param lflag: Flags for the operation.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func linkat(fd: Int32, path: String, nfd: Int32, newPath: String, lflag: Int32): Int32

/**
 * @description Flag to remove directory instead of file in unlinkat.
 */
@!APILevel[
    since: "22"
]
public const AT_REMOVEDIR: Int32 = 0x200

/**
 * @description Removes a file or directory using file descriptors.
 * @param fd: The directory file descriptor.
 * @param path: The path to remove.
 * @param ulflag: Flags for the operation.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func unlinkat(fd: Int32, path: String, ulflag: Int32): Int32

/**
 * @description Creates a symbolic link.
 * @param path: The target path.
 * @param symPath: The symbolic link path.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func symlink(path: String, symPath: String): Int32

/**
 * @description Creates a symbolic link using file descriptors.
 * @param path: The target path.
 * @param fd: The directory file descriptor for the link.
 * @param symPath: The symbolic link path.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func symlinkat(path: String, fd: Int32, symPath: String): Int32

/**
 * @description Removes a file or directory.
 * @param path: The path to remove.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func remove(path: String): Int32

/**
 * @description Renames a file or directory.
 * @param oldName: The old path.
 * @param newName: The new path.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func rename(oldName: String, newName: String): Int32

/**
 * @description Renames a file or directory using file descriptors.
 * @param oldfd: The directory file descriptor for old path.
 * @param oldName: The old name.
 * @param newfd: The directory file descriptor for new path.
 * @param newName: The new name.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func renameat(oldfd: Int32, oldName: String, newfd: Int32, newName: String): Int32

/**
 * @description Hangup signal.
 */
@!APILevel[
    since: "22"
]
public const SIGHUP: Int32 = 0x1

/**
 * @description Interrupt signal.
 */
@!APILevel[
    since: "22"
]
public const SIGINT: Int32 = 0x2

/**
 * @description Quit signal.
 */
@!APILevel[
    since: "22"
]
public const SIGQUIT: Int32 = 0x3

/**
 * @description Illegal instruction signal.
 */
@!APILevel[
    since: "22"
]
public const SIGILL: Int32 = 0x4

/**
 * @description Trace trap signal.
 */
@!APILevel[
    since: "22"
]
public const SIGTRAP: Int32 = 0x5

/**
 * @description Abort signal.
 */
@!APILevel[
    since: "22"
]
public const SIGABRT: Int32 = 0x6

/**
 * @description IOT signal (same as SIGABRT).
 */
@!APILevel[
    since: "22"
]
public const SIGIOT: Int32 = 0x6

/**
 * @description Bus error signal.
 */
@!APILevel[
    since: "22"
]
public const SIGBUS: Int32 = 0x7

/**
 * @description Floating point exception signal.
 */
@!APILevel[
    since: "22"
]
public const SIGFPE: Int32 = 0x8

/**
 * @description Kill signal.
 */
@!APILevel[
    since: "22"
]
public const SIGKILL: Int32 = 0x9

/**
 * @description User defined signal 1.
 */
@!APILevel[
    since: "22"
]
public const SIGUSR1: Int32 = 0xA

/**
 * @description Segmentation fault signal.
 */
@!APILevel[
    since: "22"
]
public const SIGSEGV: Int32 = 0xB

/**
 * @description User defined signal 2.
 */
@!APILevel[
    since: "22"
]
public const SIGUSR2: Int32 = 0xC

/**
 * @description Broken pipe signal.
 */
@!APILevel[
    since: "22"
]
public const SIGPIPE: Int32 = 0xD

/**
 * @description Alarm clock signal.
 */
@!APILevel[
    since: "22"
]
public const SIGALRM: Int32 = 0xE

/**
 * @description Termination signal.
 */
@!APILevel[
    since: "22"
]
public const SIGTERM: Int32 = 0xF

/**
 * @description Stack fault signal.
 */
@!APILevel[
    since: "22"
]
public const SIGSTKFLT: Int32 = 0x10

/**
 * @description Child status changed signal.
 */
@!APILevel[
    since: "22"
]
public const SIGCHLD: Int32 = 0x11

/**
 * @description Continue signal.
 */
@!APILevel[
    since: "22"
]
public const SIGCONT: Int32 = 0x12

/**
 * @description Stop signal.
 */
@!APILevel[
    since: "22"
]
public const SIGSTOP: Int32 = 0x13

/**
 * @description Stop typed at terminal signal.
 */
@!APILevel[
    since: "22"
]
public const SIGTSTP: Int32 = 0x14

/**
 * @description Terminal input for background process signal.
 */
@!APILevel[
    since: "22"
]
public const SIGTTIN: Int32 = 0x15

/**
 * @description Terminal output for background process signal.
 */
@!APILevel[
    since: "22"
]
public const SIGTTOU: Int32 = 0x16

/**
 * @description Urgent condition on socket signal.
 */
@!APILevel[
    since: "22"
]
public const SIGURG: Int32 = 0x17

/**
 * @description CPU time limit exceeded signal.
 */
@!APILevel[
    since: "22"
]
public const SIGXCPU: Int32 = 0x18

/**
 * @description File size limit exceeded signal.
 */
@!APILevel[
    since: "22"
]
public const SIGXFSZ: Int32 = 0x19

/**
 * @description Virtual alarm clock signal.
 */
@!APILevel[
    since: "22"
]
public const SIGVTALRM: Int32 = 0x1A

/**
 * @description Profiling timer expired signal.
 */
@!APILevel[
    since: "22"
]
public const SIGPROF: Int32 = 0x1B

/**
 * @description Window size change signal.
 */
@!APILevel[
    since: "22"
]
public const SIGWINCH: Int32 = 0x1C

/**
 * @description I/O now possible signal.
 */
@!APILevel[
    since: "22"
]
public const SIGIO: Int32 = 0x1D

/**
 * @description Power failure signal.
 */
@!APILevel[
    since: "22"
]
public const SIGPWR: Int32 = 0x1E

/**
 * @description Bad system call signal.
 */
@!APILevel[
    since: "22"
]
public const SIGSYS: Int32 = 0x1F

/**
 * @description Gets the real group ID of the calling process.
 * @returns The group ID.
 */
@!APILevel[
    since: "22"
]
public func getgid(): UInt32

/**
 * @description Gets the real user ID of the calling process.
 * @returns The user ID.
 */
@!APILevel[
    since: "22"
]
public func getuid(): UInt32

/**
 * @description Sets the group ID of the calling process.
 * @param id: The group ID.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func setgid(id: UInt32): Int32

/**
 * @description Sets the user ID of the calling process.
 * @param id: The user ID.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func setuid(id: UInt32): Int32

/**
 * @description Gets the process group ID of the specified process.
 * @param pid: The process ID.
 * @returns The process group ID on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func getpgid(pid: Int32): Int32

/**
 * @description Gets the supplementary group IDs of the calling process.
 * @param size: The size of the gidArray.
 * @param gidArray: The array to store the group IDs.
 * @returns The number of group IDs on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public unsafe func getgroups(size: Int32, gidArray: CPointer<UInt32>): Int32

/**
 * @description Gets the process ID of the calling process.
 * @returns The process ID.
 */
@!APILevel[
    since: "22"
]
public func getpid(): Int32

/**
 * @description Gets the parent process ID of the calling process.
 * @returns The parent process ID.
 */
@!APILevel[
    since: "22"
]
public func getppid(): Int32

/**
 * @description Gets the process group ID of the calling process.
 * @returns The process group ID.
 */
@!APILevel[
    since: "22"
]
public func getpgrp(): Int32

/**
 * @description Sets the process group ID of the calling process.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func setpgrp(): Int32

/**
 * @description Sets the process group ID of the specified process.
 * @param pid: The process ID.
 * @param pgrp: The process group ID.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func setpgid(pid: Int32, pgrp: Int32): Int32

/**
 * @description Changes the priority of the calling process.
 * @param inc: The increment to the priority.
 * @returns The new priority on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func nice(inc: Int32): Int32

/**
 * @description Sends a signal to a process.
 * @param pid: The process ID.
 * @param sig: The signal number.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func kill(pid: Int32, sig: Int32): Int32

/**
 * @description Sends a signal to a process group.
 * @param pgid: The process group ID.
 * @param sig: The signal number.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func killpg(pgid: Int32, sig: Int32): Int32

/**
 * @description Test for read permission.
 */
@!APILevel[
    since: "22"
]
public const R_OK: Int32 = 0x4

/**
 * @description Test for write permission.
 */
@!APILevel[
    since: "22"
]
public const W_OK: Int32 = 0x2

/**
 * @description Test for execute permission.
 */
@!APILevel[
    since: "22"
]
public const X_OK: Int32 = 0x1

/**
 * @description Test for file existence.
 */
@!APILevel[
    since: "22"
]
public const F_OK: Int32 = 0x0

/**
 * @description Checks the accessibility of a file.
 * @param path: The file path.
 * @param mode: The access mode.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func access(path: String, mode: Int32): Int32

/**
 * @description Checks the accessibility of a file using file descriptors.
 * @param fd: The directory file descriptor.
 * @param path: The file path.
 * @param mode: The access mode.
 * @param flag: Flags for the operation.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func faccessat(fd: Int32, path: String, mode: Int32, flag: Int32): Int32

/**
 * @description Sets the file mode creation mask.
 * @param cmask: The mask.
 * @returns The previous mask.
 */
@!APILevel[
    since: "22"
]
public func umask(cmask: UInt32): UInt32

/**
 * @description Changes the owner and group of a file.
 * @param path: The file path.
 * @param owner: The new owner.
 * @param group: The new group.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func chown(path: String, owner: UInt32, group: UInt32): Int32

/**
 * @description Changes the owner and group of a file using file descriptor.
 * @param fd: The file descriptor.
 * @param owner: The new owner.
 * @param group: The new group.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func fchown(fd: Int32, owner: UInt32, group: UInt32): Int32

/**
 * @description Changes the owner and group of a symbolic link.
 * @param path: The symbolic link path.
 * @param owner: The new owner.
 * @param group: The new group.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func lchown(path: String, owner: UInt32, group: UInt32): Int32

/**
 * @description Changes the owner and group of a file using file descriptors.
 * @param fd: The directory file descriptor.
 * @param path: The file path.
 * @param owner: The new owner.
 * @param group: The new group.
 * @param flag: Flags for the operation.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func fchownat(fd: Int32, path: String, owner: UInt32, group: UInt32, flag: Int32): Int32

/**
 * @description Changes the permissions of a file.
 * @param path: The file path.
 * @param mode: The new permissions.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func chmod(path: String, mode: UInt32): Int32

/**
 * @description Changes the permissions of a file using file descriptor.
 * @param fd: The file descriptor.
 * @param mode: The new permissions.
 * @returns 0 on success, -1 on error.
 */
@!APILevel[
    since: "22"
]
public func fchmod(fd: Int32, mode: UInt32): Int32

/**
 * @description Changes the permissions of a file using file descriptors.
 * @param fd: The directory file descriptor.
 * @param path: The file path.
 * @param mode: The new permissions.
 * @param flag: Flags for the operation.
 * @returns 0 on success, -1 on error.
 * @throws IllegalArgumentException if the arguments are invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func fchmodat(fd: Int32, path: String, mode: UInt32, flag: Int32): Int32

/**
 * @description Checks if a file descriptor refers to a terminal.
 * @param fd: The file descriptor.
 * @returns True if it is a terminal, false otherwise.
 */
@!APILevel[
    since: "22"
]
public func isatty(fd: Int32): Bool

/**
 * @description Gets the name of the terminal associated with a file descriptor.
 * @param fd: The file descriptor.
 * @returns The terminal name.
 */
@!APILevel[
    since: "22"
]
public func ttyname(fd: Int32): String

