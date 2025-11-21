
package std.process
import std.collection.*
import std.fs.*
import std.io.*
import std.sync.*

import std.time.*

/**
 * @description Represents the current process and provides access to its properties and operations
 */
@!APILevel[
    since: "22"
]
public class CurrentProcess <: Process {
    /**
     * @description Standard error stream of the current process
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdErr: OutputStream
    
    /**
     * @description Standard output stream of the current process
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdOut: OutputStream
    
    /**
     * @description Standard input stream of the current process
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdIn: InputStream
    
    /**
     * @description Gets the command-line arguments of the current process
     */
    @!APILevel[
        since: "22"
    ]
    public prop arguments: Array<String>
    
    /**
     * @description Gets the home directory path of the current user
     */
    @!APILevel[
        since: "22"
    ]
    public prop homeDirectory: Path
    
    /**
     * @description Gets the temporary directory path for the current process
     */
    @!APILevel[
        since: "22"
    ]
    public prop tempDirectory: Path
    
    /**
     * @description Retrieves the value of an environment variable
     * @param key - The name of the environment variable
     * @returns An Option containing the value if the variable exists
     */
    @!APILevel[
        since: "22"
    ]
    public func getEnv(key: String): Option<String>
    
    /**
     * @description Sets an environment variable to a specified value
     * @param k - The name of the environment variable
     * @param v - The value to set
     * @throws IllegalArgumentException when k or v is empty
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setEnv(k: String, v: String): Unit
    
    /**
     * @description Removes an environment variable
     * @param k - The name of the environment variable to remove
     * @throws IllegalArgumentException when k is empty
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func removeEnv(k: String): Unit
    
    /**
     * @description Registers a callback function to be executed when the process exits
     * @param callback - The function to execute at process exit
     */
    @!APILevel[
        since: "22"
    ]
    public func atExit(callback: () -> Unit): Unit
    
    /**
     * @description Terminates the current process with the specified exit code
     * @param code - The exit code to return to the operating system
     * @throws ProcessException If the process cannot be terminated normally and is already closed.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func exit(code: Int64): Nothing
}

/**
 * @description Represents an operating system process and provides access to its properties and operations
 */
@!APILevel[
    since: "22"
]
public open class Process {
    /**
     * @description Gets the current process instance
     * @throws ProcessException when the process operation fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static prop current: CurrentProcess
    
    /**
     * @description Gets the process identifier (PID)
     */
    @!APILevel[
        since: "22"
    ]
    public prop pid: Int64
    
    /**
     * @description Gets the name of the process
     * @throws ProcessException when the process information cannot be retrieved
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop name: String
    
    /**
     * @description Gets the command used to start the process
     * @throws ProcessException when the process information cannot be retrieved
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop command: String
    
    /**
     * @description Gets the time when the process was started
     */
    @!APILevel[
        since: "22"
    ]
    public prop startTime: DateTime
    
    /**
     * @description Gets the amount of system CPU time used by the process
     * @returns The duration of system CPU time consumed by the process
     */
    @!APILevel[
        since: "22"
    ]
    public prop systemTime: Duration
    
    /**
     * @description Gets the amount of user CPU time used by the process
     * @returns The duration of user CPU time consumed by the process
     */
    @!APILevel[
        since: "22"
    ]
    public prop userTime: Duration
    
    /**
     * @description Gets the command-line arguments of the process
     * @returns An array of strings containing the command-line arguments
     * @throws ProcessException when the process information cannot be retrieved
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open prop arguments: Array<String>
    
    /**
     * @description Gets the full command line used to start the process
     * @returns An array of strings representing the command line
     * @throws ProcessException when the process information cannot be retrieved
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop commandLine: Array<String>
    
    /**
     * @description Gets the working directory of the process
     * @returns The path to the working directory
     * @throws ProcessException when the process information cannot be retrieved
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop workingDirectory: Path
    
    /**
     * @description Gets the environment variables of the process
     * @returns A map of environment variable names to their values
     * @throws ProcessException when the process information cannot be retrieved
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop environment: Map<String, String>
    
    /**
     * @description Creates a Process object for the specified process ID
     * @param pid - The process ID to find
     * @returns A Process object representing the specified process
     * @throws ProcessException when memory allocation fails or the process corresponding to pid does not exist
     * @throws IllegalArgumentException when pid is less than 0 or greater than max value of Int32
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(pid: Int64): Process
    
    /**
     * @description Launches a new subprocess with the specified command and arguments
     * @param command - The command to execute
     * @param arguments - The arguments to pass to the command
     * @param workingDirectory - The working directory for the subprocess
     * @param environment - The environment variables for the subprocess
     * @param stdIn - The standard input redirection
     * @param stdOut - The standard output redirection
     * @param stdErr - The standard error redirection
     * @returns A SubProcess object representing the launched subprocess
     * @throws ProcessException when memory allocation fails or the command corresponding to command does not exist
     * @throws IllegalArgumentException when the input parameter command contains a null character, 
     *         or the strings in the arguments array contain a null character, 
     *         or workingDirectory is not an existing directory, is an empty path, or contains a null character, 
     *         or in the environment table, the key string contains a null character or '=', 
     *         or the value string contains a null character, or when stdIn, stdOut
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func start(command: String, arguments: Array<String>, workingDirectory!: ?Path = None,
        environment!: ?Map<String, String> = None, stdIn!: ProcessRedirect = Inherit,
        stdOut!: ProcessRedirect = Inherit, stdErr!: ProcessRedirect = Inherit): SubProcess
    
    /**
     * @description Executes a command and waits for it to complete
     * @param command - The command to execute
     * @param arguments - The arguments to pass to the command
     * @param workingDirectory - The working directory for the process
     * @param environment - The environment variables for the process
     * @param stdIn - The standard input redirection
     * @param stdOut - The standard output redirection
     * @param stdErr - The standard error redirection
     * @param timeout - The maximum duration to wait for the process to complete
     * @returns The exit code of the process
     * @throws ProcessException when memory allocation fails or the command corresponding to command does not exist or timeout
     * @throws IllegalArgumentException when the input parameter command contains a null character, 
     *         or the strings in the arguments array contain a null character, 
     *         or workingDirectory is not an existing directory, is an empty path, or contains a null character, 
     *         or in the environment table, the key string contains a null character or '=', 
     *         or the value string contains a null character, or when stdIn, stdOut
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func run(command: String, arguments: Array<String>,
            workingDirectory!: ?Path = None,
            environment!: ?Map<String, String> = None,
            stdIn!: ProcessRedirect = Inherit,
            stdOut!: ProcessRedirect = Inherit,
            stdErr!: ProcessRedirect = Inherit,
            timeout!: ?Duration = None): Int64
    
    /**
     * @description Executes a command, captures its output, and waits for it to complete
     * @param command - The command to execute
     * @param arguments - The arguments to pass to the command
     * @param workingDirectory - The working directory for the process
     * @param environment - The environment variables for the process
     * @param stdIn - The standard input redirection
     * @param stdOut - The standard output redirection
     * @param stdErr - The standard error redirection
     * @returns A tuple containing the exit code, standard output, and standard error
     * @throws ProcessException when memory allocation fails or the command corresponding to command does not exist, 
     *         or subprocess does not exist, or fails to read stdout
     * @throws IllegalArgumentException when the input parameter command contains a null character, 
     *         or the strings in the arguments array contain a null character, 
     *         or workingDirectory is not an existing directory, is an empty path, or contains a null character, 
     *         or in the environment table, the key string contains a null character or '=', 
     *         or the value string contains a null character, or when stdIn, stdOut
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func runOutput(command: String, arguments: Array<String>, workingDirectory!: ?Path = None,
        environment!: ?Map<String, String> = None, stdIn!: ProcessRedirect = Inherit, stdOut!: ProcessRedirect = Pipe,
        stdErr!: ProcessRedirect = Pipe): (Int64, Array<Byte>, Array<Byte>)
    
    /**
     * @description Checks if the process is still running
     * @returns True if the process is running, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isAlive(): Bool
    
    /**
     * @description Terminates the process
     * @param force - If true, forcefully terminates the process; otherwise attempts a graceful termination
     * @throws IllegalArgumentException when the process does not exist
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func terminate(force!: Bool = false): Unit
}

/**
 * @description Defines how process input/output streams are redirected
 */
@!APILevel[
    since: "22"
]
public enum ProcessRedirect {
    /**
     * @description Inherits the stream from the parent process
     */
    @!APILevel[
        since: "22"
    ]
    Inherit |
    /**
     * @description Creates a pipe for the stream
     */
    @!APILevel[
        since: "22"
    ]
    Pipe |
    /**
     * @description Redirects the stream from a file
     */
    @!APILevel[
        since: "22"
    ]
    FromFile(File) |
    /**
     * @description Discards the stream output
     */
    @!APILevel[
        since: "22"
    ]
    Discard
}

/**
 * @description Finds a process by its process ID
 * @param pid - The process ID to find
 * @returns A Process object representing the specified process
 * @throws ProcessException when the process cannot be found or accessed
 * @throws IllegalArgumentException when providing invalid arguments
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func findProcess(pid: Int64): Process

/**
 * @description Launches a new subprocess with the specified command and arguments
 * @param command - The command to execute
 * @param arguments - The arguments to pass to the command
 * @param workingDirectory - The working directory for the subprocess
 * @param environment - The environment variables for the subprocess
 * @param stdIn - The standard input redirection
 * @param stdOut - The standard output redirection
 * @param stdErr - The standard error redirection
 * @returns A SubProcess object representing the launched subprocess
 * @throws FSException when workingDirectory does not exist
 * @throws ProcessException when the process cannot be launched
 * @throws IllegalArgumentException when providing invalid arguments
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func launch(command: String, arguments: Array<String>, workingDirectory!: ?Path = None,
    environment!: ?Map<String, String> = None, stdIn!: ProcessRedirect = Inherit, stdOut!: ProcessRedirect = Inherit,
    stdErr!: ProcessRedirect = Inherit): SubProcess

/**
 * @description Executes a command and waits for it to complete
 * @param command - The command to execute
 * @param arguments - The arguments to pass to the command
 * @param workingDirectory - The working directory for the process
 * @param environment - The environment variables for the process
 * @param stdIn - The standard input redirection
 * @param stdOut - The standard output redirection
 * @param stdErr - The standard error redirection
 * @param timeout - The maximum duration to wait for the process to complete
 * @returns The exit code of the process
 * @throws IllegalArgumentException when providing invalid arguments
 * @throws TimeoutException when the process execution exceeds the timeout
 * @throws FSException when workingDirectory does not exist
 * @throws ProcessException when the process execution fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func execute(command: String, arguments: Array<String>, workingDirectory!: ?Path = None,
    environment!: ?Map<String, String> = None, stdIn!: ProcessRedirect = Inherit, stdOut!: ProcessRedirect = Inherit,
    stdErr!: ProcessRedirect = Inherit, timeout!: ?Duration = None): Int64

/**
 * @description Executes a command, captures its output, and waits for it to complete
 * @param command - The command to execute
 * @param arguments - The arguments to pass to the command
 * @param workingDirectory - The working directory for the process
 * @param environment - The environment variables for the process
 * @param stdIn - The standard input redirection
 * @param stdOut - The standard output redirection
 * @param stdErr - The standard error redirection
 * @returns A tuple containing the exit code, standard output, and standard error
 * @throws IllegalArgumentException when providing invalid arguments
 * @throws FSException when workingDirectory does not exist
 * @throws ProcessException when the process execution fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func executeWithOutput(command: String, arguments: Array<String>, workingDirectory!: ?Path = None,
    environment!: ?Map<String, String> = None, stdIn!: ProcessRedirect = Inherit, stdOut!: ProcessRedirect = Pipe,
    stdErr!: ProcessRedirect = Pipe): (Int64, Array<Byte>, Array<Byte>)

/**
 * @description Exception thrown when a process operation fails
 */
@!APILevel[
    since: "22"
]
public class ProcessException <: IOException {
    /**
     * @description Initializes a new instance of ProcessException with the specified error message
     * @param message - The error message that explains the reason for the exception
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Represents a child process created by the current process
 */
@!APILevel[
    since: "22"
]
public class SubProcess <: Process {
    /**
     * @description Output stream for writing to the standard input of the subprocess
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdInPipe: OutputStream
    
    /**
     * @description Input stream for reading from the standard output of the subprocess
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdOutPipe: InputStream
    
    /**
     * @description Input stream for reading from the standard error of the subprocess
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdErrPipe: InputStream
    
    /**
     * @description Input stream for reading from the standard error of the subprocess
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdErr: InputStream
    
    /**
     * @description Input stream for reading from the standard output of the subprocess
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdOut: InputStream
    
    /**
     * @description Output stream for writing to the standard input of the subprocess
     */
    @!APILevel[
        since: "22"
    ]
    public prop stdIn: OutputStream
    
    /**
     * @description Waits for the subprocess to complete
     * @param timeout - The maximum time to wait for the process to complete
     * @returns The exit code of the subprocess
     * @throws TimeoutException when the process does not complete within the specified timeout
     * @throws ProcessException when the process operation fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func wait(timeout!: ?Duration = None): Int64
    
    /**
     * @description Waits for the subprocess to complete and returns its output
     * @returns A tuple containing the exit code, standard output, and standard error
     * @throws ProcessException when the process operation fails
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func waitOutput(): (Int64, Array<Byte>, Array<Byte>)
}

