package std.database.sql

import std.collection.Map
import std.collection.HashMap
import std.sync.Mutex
import std.sort.sort
import std.random.Random
import std.time.DateTime
import std.sync.AtomicBool
import std.collection.{Map, ArrayList}
import std.collection.concurrent.{BlockingQueue, LinkedBlockingQueue}
import std.sync.{Timer, CatchupStyle, AtomicBool, ReentrantMutex}
import std.io.InputStream
import std.math.numeric.Decimal

/**
 * @description Represents metadata for a single column in a `QueryResult`.
 * It provides information such as the column's name, type, and size.
 */
@!APILevel[
    since: "22"
]
public interface ColumnInfo {
    /**
     * @description The name of the column.
     */
    @!APILevel[
        since: "22"
    ]
    prop name: String

    /**
     * @description The database-specific type name of the column.
     */
    @!APILevel[
        since: "22"
    ]
    prop typeName: String

    /**
     * @description The length or precision of the column.
     */
    @!APILevel[
        since: "22"
    ]
    prop length: Int64

    /**
     * @description The scale of the column, for decimal types.
     */
    @!APILevel[
        since: "22"
    ]
    prop scale: Int64

    /**
     * @description Indicates whether the column can hold `null` values.
     */
    @!APILevel[
        since: "22"
    ]
    prop nullable: Bool

    /**
     * @description The recommended display size for the column.
     */
    @!APILevel[
        since: "22"
    ]
    prop displaySize: Int64
}

/**
 * @description Represents a connection to a database. It is used to execute SQL statements and manage transactions.
 */
@!APILevel[
    since: "22"
]
public interface Connection <: Resource {
    /**
     * @description The current state of the connection.
     */
    @!APILevel[
        since: "22"
    ]
    prop state: ConnectionState

    /**
     * @description Retrieves metadata about the database.
     * @returns A `Map` containing database metadata properties.
     */
    @!APILevel[
        since: "22"
    ]
    func getMetaData(): Map<String, String>

    /**
     * @description Creates a `Statement` object for sending SQL statements to the database.
     * @param sql An SQL statement that may contain one or more '?' IN parameter placeholders.
     * @returns A new `Statement` object.
     */
    @!APILevel[
        since: "22"
    ]
    func prepareStatement(sql: String): Statement

    /**
     * @description Creates a `Transaction` object for managing a database transaction.
     * @returns A new `Transaction` object.
     */
    @!APILevel[
        since: "22"
    ]
    func createTransaction(): Transaction
}

/**
 * @description An enumeration of the possible states of a database connection.
 */
@!APILevel[
    since: "22"
]
public enum ConnectionState <: Equatable<ConnectionState> {
    /**
     * @description The connection is broken and cannot be used.
     */
    @!APILevel[
        since: "22"
    ]
    Broken |
    /**
     * @description The connection is closed.
     */
    @!APILevel[
        since: "22"
    ]
    Closed |
    /**
     * @description The connection is in the process of being established.
     */
    @!APILevel[
        since: "22"
    ]
    Connecting |
    /**
     * @description The connection is established and ready for use.
     */
    @!APILevel[
        since: "22"
    ]
    Connected
    /**
     * @description Compares this connection state with another for equality.
     * @param other The other `ConnectionState` to compare with.
     * @returns `true` if the states are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: ConnectionState): Bool

    /**
     * @description Compares this connection state with another for inequality.
     * @param other The other `ConnectionState` to compare with.
     * @returns `true` if the states are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: ConnectionState): Bool
}

/**
 * @description A factory for connections to a specific database.
 */
@!APILevel[
    since: "22"
]
public interface Datasource <: Resource {
    /**
     * @description Sets a configuration option for the datasource.
     * @param key The option key.
     * @param value The option value.
     */
    @!APILevel[
        since: "22"
    ]
    func setOption(key: String, value: String): Unit

    /**
     * @description Attempts to establish a connection with the data source.
     * @returns A `Connection` to the datasource.
     */
    @!APILevel[
        since: "22"
    ]
    func connect(): Connection
}

/**
 * @description An interface that every database driver must implement.
 */
@!APILevel[
    since: "22"
]
public interface Driver {
    /**
     * @description The name of the driver.
     */
    @!APILevel[
        since: "22"
    ]
    prop name: String

    /**
     * @description The version of the driver.
     */
    @!APILevel[
        since: "22"
    ]
    prop version: String

    /**
     * @description Indicates whether the driver prefers to be used with connection pooling.
     */
    @!APILevel[
        since: "22"
    ]
    prop preferredPooling: Bool

    /**
     * @description Opens a new datasource.
     * @param connectionString The connection string for the database.
     * @param opts An array of driver-specific options.
     * @returns A new `Datasource` instance.
     */
    @!APILevel[
        since: "22"
    ]
    func open(connectionString: String, opts: Array<(String, String)>): Datasource
}

/**
 * @description Manages a list of database drivers.
 */
@!APILevel[
    since: "22"
]
public class DriverManager {
    /**
     * @description Registers a new driver with the `DriverManager`.
     * @param driverName The name of the driver.
     * @param driver The `Driver` instance to register.
     * @throws SqlException if a database access error occurs.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func register(driverName: String, driver: Driver): Unit

    /**
     * @description Removes a driver from the `DriverManager`.
     * @param driverName The name of the driver to deregister.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deregister(driverName: String): Unit

    /**
     * @description Retrieves a driver by its name.
     * @param driverName The name of the driver.
     * @returns An `Option<Driver>` which may contain the driver if found.
     */
    @!APILevel[
        since: "22"
    ]
    public static func getDriver(driverName: String): Option<Driver>

    /**
     * @description Retrieves a list of all registered driver names.
     * @returns An `Array<String>` of driver names.
     */
    @!APILevel[
        since: "22"
    ]
    public static func drivers(): Array<String>
}

/**
 * @description A `Datasource` implementation that provides connection pooling.
 */
@!APILevel[
    since: "22"
]
public class PooledDatasource <: Datasource {
    /**
     * @description Initializes a `PooledDatasource` with an underlying datasource.
     * @param datasource The `Datasource` to wrap with pooling capabilities.
     */
    @!APILevel[
        since: "22"
    ]
    public init(datasource: Datasource)

    /**
     * @description The maximum amount of time that a connection is allowed to sit idle in the pool.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop idleTimeout: Duration

    /**
     * @description The maximum lifetime of a connection in the pool.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop maxLifeTime: Duration

    /**
     * @description The frequency at which connections are checked to be kept alive.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keepaliveTime: Duration

    /**
     * @description The maximum number of connections in the pool.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop maxSize: Int32

    /**
     * @description The maximum number of idle connections to maintain in the pool.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop maxIdleSize: Int32

    /**
     * @description The maximum time to wait for a connection from the pool.
     * @throws ArithmeticException if an arithmetic error occurs.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop connectionTimeout: Duration

    /**
     * @description Sets a configuration option on the underlying datasource.
     * @param key The option key.
     * @param value The option value.
     */
    @!APILevel[
        since: "22"
    ]
    public func setOption(key: String, value: String): Unit

    /**
     * @description Retrieves a connection from the pool.
     * @returns A `Connection` object.
     * @throws SqlException if a database access error occurs.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func connect(): Connection

    /**
     * @description Checks if the datasource has been closed.
     * @returns `true` if the datasource is closed, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isClosed(): Bool

    /**
     * @description Closes the datasource and all its connections.
     * @throws SqlException if a database access error occurs.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func close(): Unit
}

/**
 * @description Represents the result of a database query. It provides access to the returned data and column metadata.
 */
@!APILevel[
    since: "22"
]
public interface QueryResult <: Resource {
    /**
     * @description Metadata for the columns in the result set.
     */
    @!APILevel[
        since: "22"
    ]
    prop columnInfos: Array<ColumnInfo>

    /**
     * @description Moves the cursor to the next row in the result set.
     * @param values An array to be populated with the values of the next row.
     * @returns `true` if there is another row, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func next(values: Array<SqlDbType>): Bool

    /**
     * @description Moves the cursor to the next row in the result set.
     * @returns `true` if there is another row, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func next(): Bool

    /**
     * @description Gets the value of the specified column in the current row.
     * @param index The 1-based index of the column.
     * @returns The column value of type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    func get<T>(index: Int64): T

    /**
     * @description Gets the value of the specified column in the current row, which may be `null`.
     * @param index The 1-based index of the column.
     * @returns The column value of type `?T`, or `null`.
     */
    @!APILevel[
        since: "22"
    ]
    func getOrNull<T>(index: Int64): ?T
}

/**
 * @description A base interface for SQL data types.
 */
@!APILevel[
    since: "22"
]
public interface SqlDbType {
    /**
     * @description The name of the SQL data type.
     */
    @!APILevel[
        since: "22"
    ]
    prop name: String
}

/**
 * @description A base interface for nullable SQL data types.
 */
@!APILevel[
    since: "22"
]
public interface SqlNullableDbType <: SqlDbType {
}

/**
 * @description Represents a CHAR SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlChar <: SqlDbType {
    /**
     * @description Initializes a `SqlChar` with a string value.
     * @param v The string value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: String)

    /**
     * @description The string value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: String

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable CHAR SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableChar <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableChar` with a nullable string value.
     * @param v The nullable string value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?String)

    /**
     * @description The nullable string value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?String

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a VARCHAR SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlVarchar <: SqlDbType {
    /**
     * @description Initializes a `SqlVarchar` with a string value.
     * @param v The string value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: String)

    /**
     * @description The string value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: String

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable VARCHAR SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableVarchar <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableVarchar` with a nullable string value.
     * @param v The nullable string value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?String)

    /**
     * @description The nullable string value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?String

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a BINARY SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlBinary <: SqlDbType {
    /**
     * @description Initializes a `SqlBinary` with a byte array.
     * @param v The byte array.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Array<Byte>)

    /**
     * @description The byte array value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Array<Byte>

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable BINARY SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableBinary <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableBinary` with a nullable byte array.
     * @param v The nullable byte array.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Array<Byte>)

    /**
     * @description The nullable byte array value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Array<Byte>

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a VARBINARY SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlVarBinary <: SqlDbType {
    /**
     * @description Initializes a `SqlVarBinary` with a byte array.
     * @param v The byte array.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Array<Byte>)

    /**
     * @description The byte array value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Array<Byte>

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable VARBINARY SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableVarBinary <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableVarBinary` with a nullable byte array.
     * @param v The nullable byte array.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Array<Byte>)

    /**
     * @description The nullable byte array value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Array<Byte>

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a CLOB (Character Large Object) SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlClob <: SqlDbType {
    /**
     * @description Initializes a `SqlClob` with an `InputStream`.
     * @param v The input stream.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: InputStream)

    /**
     * @description The `InputStream` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: InputStream

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable CLOB SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableClob <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableClob` with a nullable `InputStream`.
     * @param v The nullable input stream.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?InputStream)

    /**
     * @description The nullable `InputStream` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?InputStream

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a BLOB (Binary Large Object) SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlBlob <: SqlDbType {
    /**
     * @description Initializes a `SqlBlob` with an `InputStream`.
     * @param v The input stream.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: InputStream)

    /**
     * @description The `InputStream` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: InputStream

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable BLOB SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableBlob <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableBlob` with a nullable `InputStream`.
     * @param v The nullable input stream.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?InputStream)

    /**
     * @description The nullable `InputStream` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?InputStream

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a BOOL SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlBool <: SqlDbType {
    /**
     * @description Initializes a `SqlBool` with a boolean value.
     * @param v The boolean value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Bool)

    /**
     * @description The boolean value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Bool

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable BOOL SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableBool <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableBool` with a nullable boolean value.
     * @param v The nullable boolean value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Bool)

    /**
     * @description The nullable boolean value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Bool

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a BYTE SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlByte <: SqlDbType {
    /**
     * @description Initializes a `SqlByte` with an `Int8` value.
     * @param v The `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Int8)

    /**
     * @description The `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Int8

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable BYTE SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableByte <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableByte` with a nullable `Int8` value.
     * @param v The nullable `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Int8)

    /**
     * @description The nullable `Int8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Int8

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a SMALLINT SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlSmallInt <: SqlDbType {
    /**
     * @description Initializes a `SqlSmallInt` with an `Int16` value.
     * @param v The `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Int16)

    /**
     * @description The `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Int16

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable SMALLINT SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableSmallInt <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableSmallInt` with a nullable `Int16` value.
     * @param v The nullable `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Int16)

    /**
     * @description The nullable `Int16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Int16

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents an INTEGER SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlInteger <: SqlDbType {
    /**
     * @description Initializes a `SqlInteger` with an `Int32` value.
     * @param v The `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Int32)

    /**
     * @description The `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Int32

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable INTEGER SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableInteger <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableInteger` with a nullable `Int32` value.
     * @param v The nullable `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Int32)

    /**
     * @description The nullable `Int32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Int32

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a BIGINT SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlBigInt <: SqlDbType {
    /**
     * @description Initializes a `SqlBigInt` with an `Int64` value.
     * @param v The `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Int64)

    /**
     * @description The `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Int64

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable BIGINT SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableBigInt <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableBigInt` with a nullable `Int64` value.
     * @param v The nullable `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Int64)

    /**
     * @description The nullable `Int64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Int64

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a REAL SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlReal <: SqlDbType {
    /**
     * @description Initializes a `SqlReal` with a `Float32` value.
     * @param v The `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Float32)

    /**
     * @description The `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Float32

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable REAL SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableReal <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableReal` with a nullable `Float32` value.
     * @param v The nullable `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Float32)

    /**
     * @description The nullable `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Float32

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a DOUBLE PRECISION SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlDouble <: SqlDbType {
    /**
     * @description Initializes a `SqlDouble` with a `Float64` value.
     * @param v The `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Float64)

    /**
     * @description The `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Float64

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable DOUBLE PRECISION SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableDouble <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableDouble` with a nullable `Float64` value.
     * @param v The nullable `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Float64)

    /**
     * @description The nullable `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Float64

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a DATE SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlDate <: SqlDbType {
    /**
     * @description Initializes a `SqlDate` with a `DateTime` value.
     * @param v The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: DateTime)

    /**
     * @description The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable DATE SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableDate <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableDate` with a nullable `DateTime` value.
     * @param v The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?DateTime)

    /**
     * @description The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a TIME SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlTime <: SqlDbType {
    /**
     * @description Initializes a `SqlTime` with a `DateTime` value.
     * @param v The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: DateTime)

    /**
     * @description The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable TIME SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableTime <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableTime` with a nullable `DateTime` value.
     * @param v The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?DateTime)

    /**
     * @description The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a TIME WITH TIME ZONE SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlTimeTz <: SqlDbType {
    /**
     * @description Initializes a `SqlTimeTz` with a `DateTime` value.
     * @param v The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: DateTime)

    /**
     * @description The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable TIME WITH TIME ZONE SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableTimeTz <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableTimeTz` with a nullable `DateTime` value.
     * @param v The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?DateTime)

    /**
     * @description The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a TIMESTAMP SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlTimestamp <: SqlDbType {
    /**
     * @description Initializes a `SqlTimestamp` with a `DateTime` value.
     * @param v The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: DateTime)

    /**
     * @description The `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable TIMESTAMP SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableTimestamp <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableTimestamp` with a nullable `DateTime` value.
     * @param v The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?DateTime)

    /**
     * @description The nullable `DateTime` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?DateTime

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents an INTERVAL SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlInterval <: SqlDbType {
    /**
     * @description Initializes a `SqlInterval` with a `Duration` value.
     * @param v The `Duration` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Duration)

    /**
     * @description The `Duration` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Duration

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable INTERVAL SQL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableInterval <: SqlNullableDbType {
    /**
     * @description Initializes a `SqlNullableInterval` with a nullable `Duration` value.
     * @param v The nullable `Duration` value.
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Duration)

    /**
     * @description The nullable `Duration` value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Duration

    /**
     * @description The name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a SQL DECIMAL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlDecimal <: SqlDbType {
    /**
     * @description Creates a new SqlDecimal instance with the specified value.
     * @param v - The decimal value for the DECIMAL field
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: Decimal)

    /**
     * @description Gets or sets the decimal value of the DECIMAL field.
     * @returns The decimal value when getting
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: Decimal

    /**
     * @description Gets the name of the SQL data type.
     * @returns The type name as a string.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents a nullable SQL DECIMAL data type.
 */
@!APILevel[
    since: "22"
]
public class SqlNullableDecimal <: SqlNullableDbType {
    /**
     * @description Creates a new SqlNullableDecimal instance with the specified value.
     * @param v - The optional decimal value for the DECIMAL field
     */
    @!APILevel[
        since: "22"
    ]
    public init(v: ?Decimal)

    /**
     * @description Gets or sets the optional decimal value of the DECIMAL field.
     * @returns The optional decimal value when getting
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop value: ?Decimal

    /**
     * @description Gets the name of the SQL data type.
     * @returns The type name as a string.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description Represents an exception that occurs during SQL operations.
 */
@!APILevel[
    since: "22"
]
public open class SqlException <: Exception {
    /**
     * @description Gets the SQL state code associated with this exception.
     * @returns The SQL state as a string.
     */
    @!APILevel[
        since: "22"
    ]
    public prop sqlState: String

    /**
     * @description Gets the vendor-specific error code associated with this exception.
     * @returns The error code as an integer.
     */
    @!APILevel[
        since: "22"
    ]
    public prop errorCode: Int64

    /**
     * @description Gets the descriptive message for this exception.
     * @returns The exception message as a string.
     */
    @!APILevel[
        since: "22"
    ]
    public override prop message: String

    /**
     * @description Creates a new SqlException with default values.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a new SqlException with the specified message, SQL state, and error code.
     * @param message - The descriptive message for the exception
     * @param sqlState - The SQL state code
     * @param errorCode - The vendor-specific error code
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String, sqlState: String, errorCode: Int64)

    /**
     * @description Creates a new SqlException with the specified message.
     * @param message - The descriptive message for the exception
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Contains predefined SQL option names and values for database connections and operations.
 */
@!APILevel[
    since: "22"
]
public class SqlOption {
    /**
     * @description URL, which is usually used for database connection strings in SQL API.
     */
    @!APILevel[
        since: "22"
    ]
    public static const URL: String = "url"

    /**
     * @description Host, host name or IP address of the database server.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Host: String = "host"

    /**
     * @description Username, user name for connecting to the database.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Username: String = "username"

    /**
     * @description Password, password for connecting to the database.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Password: String = "password"

    /**
     * @description Driver, database driver name, for example, postgres and opengauss.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Driver: String = "driver"

    /**
     * @description Database, database name.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Database: String = "database"

    /**
     * @description Encoding, encoding type of the database character set.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Encoding: String = "encoding"

    /**
     * @description ConnectionTimeout, timeout interval of the connect operation, in milliseconds.
     */
    @!APILevel[
        since: "22"
    ]
    public static const ConnectionTimeout: String = "connection_timeout"

    /**
     * @description UpdateTimeout, timeout interval of the update operation, in milliseconds.
     */
    @!APILevel[
        since: "22"
    ]
    public static const UpdateTimeout: String = "update_timeout"

    /**
     * @description QueryTimeout, timeout interval of the query operation, in milliseconds.
     */
    @!APILevel[
        since: "22"
    ]
    public static const QueryTimeout: String = "query_timeout"

    /**
     * @description FetchRows, the number of rows to fetch in a single network trip.
     */
    @!APILevel[
        since: "22"
    ]
    public static const FetchRows: String = "fetch_rows"

    /**
     * @description SSLMode, SSL connection mode.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLMode: String = "ssl.mode"

    /**
     * @description SSLModePreferred, SSL connection mode preferred.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLModePreferred: String = "ssl.mode.preferred"

    /**
     * @description SSLModeDisabled, SSL connection mode disabled.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLModeDisabled: String = "ssl.mode.disabled"

    /**
     * @description SSLModeRequired, SSL connection mode required.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLModeRequired: String = "ssl.mode.required"

    /**
     * @description SSLModeVerifyCA, SSL connection mode verify CA.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLModeVerifyCA: String = "ssl.mode.verify_ca"

    /**
     * @description SSLModeVerifyFull, SSL connection mode verify full.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLModeVerifyFull: String = "ssl.mode.verify_full"

    /**
     * @description SSLCA, SSL certificate authority file path.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLCA: String = "ssl.ca"

    /**
     * @description SSLCert, SSL certificate file path.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLCert: String = "ssl.cert"

    /**
     * @description SSLKey, SSL key file path.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLKey: String = "ssl.key"

    /**
     * @description SSLKeyPassword, SSL key password.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLKeyPassword: String = "ssl.key.password"

    /**
     * @description SSLSni, SSL server name indication.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SSLSni: String = "ssl.sni"

    /**
     * @description Tls12Ciphersuites, TLS 1.2 cipher suites.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Tls12Ciphersuites: String = "tls1.2.ciphersuites"

    /**
     * @description Tls13Ciphersuites, TLS 1.3 cipher suites.
     */
    @!APILevel[
        since: "22"
    ]
    public static const Tls13Ciphersuites: String = "tls1.3.ciphersuites"

    /**
     * @description TlsVersion, TLS version.
     */
    @!APILevel[
        since: "22"
    ]
    public static const TlsVersion: String = "tls.version"
}

/**
 * @description Represents a prepared statement that can be executed against a database.
 */
@!APILevel[
    since: "22"
]
public interface Statement <: Resource {
    /**
     * @description Gets the parameter column information for this prepared statement.
     * @returns An array of ColumnInfo objects describing each parameter
     */
    @!APILevel[
        since: "22"
    ]
    prop parameterColumnInfos: Array<ColumnInfo>

    /**
     * @description Sets a string option on this statement.
     * @param key - The option key
     * @param value - The option value as a string
     */
    @!APILevel[
        since: "22"
    ]
    func setOption(key: String, value: String): Unit

    /**
     * @description Executes a prepared statement with the given parameters and returns an update result.
     * @param params - An array of parameters for the prepared statement
     * @returns An UpdateResult summarizing the effect of the statement
     * @throws SqlException if a database access error occurs.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func update(params: Array<SqlDbType>): UpdateResult

    /**
     * @description Executes a prepared query statement with the given parameters and returns the query results.
     * @param params - An array of parameters for the prepared statement
     * @returns A QueryResult containing the query results
     * @throws SqlException if a database access error occurs.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func query(params: Array<SqlDbType>): QueryResult

    /**
     * @description Sets the value of a parameter at the specified index.
     * @param index - The zero-based index of the parameter
     * @param value - The value to set for the parameter
     */
    @!APILevel[
        since: "22"
    ]
    func set<T>(index: Int64, value: T): Unit

    /**
     * @description Sets a parameter at the specified index to NULL.
     * @param index - The zero-based index of the parameter
     */
    @!APILevel[
        since: "22"
    ]
    func setNull(index: Int64): Unit

    /**
     * @description Executes a prepared statement and returns an update result.
     * @returns An UpdateResult summarizing the effect of the statement
     */
    @!APILevel[
        since: "22"
    ]
    func update(): UpdateResult

    /**
     * @description Executes a prepared query statement and returns the query results.
     * @returns A QueryResult containing the query results
     */
    @!APILevel[
        since: "22"
    ]
    func query(): QueryResult
}

/**
 * @description Represents the isolation level for database transactions.
 */
@!APILevel[
    since: "22"
]
public enum TransactionIsoLevel <: ToString & Hashable & Equatable<TransactionIsoLevel> {
    /**
     * @description Unspecified transaction isolation level.
     */
    @!APILevel[
        since: "22"
    ]
    Unspecified |
    /**
     * @description Read committed isolation level. Dirty reads are prevented; non-repeatable reads and phantom reads can occur.
     */
    @!APILevel[
        since: "22"
    ]
    ReadCommitted |
    /**
     * @description Read uncommitted isolation level. Dirty reads, non-repeatable reads and phantom reads can occur.
     */
    @!APILevel[
        since: "22"
    ]
    ReadUncommitted |
    /**
     * @description Repeatable read isolation level. Dirty reads and non-repeatable reads are prevented; phantom reads can occur.
     */
    @!APILevel[
        since: "22"
    ]
    RepeatableRead |
    /**
     * @description Snapshot isolation level. Data can be read as it was at the start of the transaction, regardless of subsequent changes.
     */
    @!APILevel[
        since: "22"
    ]
    Snapshot |
    /**
     * @description Serializable isolation level. Dirty reads, non-repeatable reads and phantom reads are prevented.
     */
    @!APILevel[
        since: "22"
    ]
    Serializable |
    /**
     * @description Linearizable isolation level. Provides the highest level of isolation, ensuring operations appear to occur instantaneously.
     */
    @!APILevel[
        since: "22"
    ]
    Linearizable |
    /**
     * @description Chaos isolation level. A special isolation level used for advanced testing scenarios.
     */
    @!APILevel[
        since: "22"
    ]
    Chaos
    /**
     * @description Returns a string representation of this transaction isolation level.
     * @returns A string describing the transaction isolation level.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Compares this transaction isolation level with another for equality.
     * @param other - The TransactionIsoLevel to compare with
     * @returns True if the levels are equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TransactionIsoLevel): Bool

    /**
     * @description Compares this transaction isolation level with another for inequality.
     * @param other - The TransactionIsoLevel to compare with
     * @returns True if the levels are not equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TransactionIsoLevel): Bool

    /**
     * @description Computes a hash code for this transaction isolation level.
     * @returns The hash code as an integer.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Represents the access mode for database transactions.
 */
@!APILevel[
    since: "22"
]
public enum TransactionAccessMode <: ToString & Hashable & Equatable<TransactionAccessMode> {
    /**
     * @description Unspecified transaction access mode.
     */
    @!APILevel[
        since: "22"
    ]
    Unspecified |
    /**
     * @description Read-write transaction access mode.
     */
    @!APILevel[
        since: "22"
    ]
    ReadWrite |
    /**
     * @description Read-only transaction access mode.
     */
    @!APILevel[
        since: "22"
    ]
    ReadOnly
    /**
     * @description Returns a string representation of this transaction access mode.
     * @returns A string describing the transaction access mode.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Compares this transaction access mode with another for equality.
     * @param other - The TransactionAccessMode to compare with
     * @returns True if the modes are equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TransactionAccessMode): Bool

    /**
     * @description Compares this transaction access mode with another for inequality.
     * @param other - The TransactionAccessMode to compare with
     * @returns True if the modes are not equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TransactionAccessMode): Bool

    /**
     * @description Computes a hash code for this transaction access mode.
     * @returns The hash code as an integer.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Represents the deferrable mode for database transactions.
 */
@!APILevel[
    since: "22"
]
public enum TransactionDeferrableMode <: ToString & Hashable & Equatable<TransactionDeferrableMode> {
    /**
     * @description Unspecified transaction deferrable mode.
     */
    @!APILevel[
        since: "22"
    ]
    Unspecified |
    /**
     * @description Deferrable transaction mode.
     */
    @!APILevel[
        since: "22"
    ]
    Deferrable |
    /**
     * @description Not deferrable transaction mode.
     */
    @!APILevel[
        since: "22"
    ]
    NotDeferrable
    /**
     * @description Returns a string representation of this transaction deferrable mode.
     * @returns A string describing the transaction deferrable mode.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Compares this transaction deferrable mode with another for equality.
     * @param other - The TransactionDeferrableMode to compare with
     * @returns True if the modes are equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TransactionDeferrableMode): Bool

    /**
     * @description Compares this transaction deferrable mode with another for inequality.
     * @param other - The TransactionDeferrableMode to compare with
     * @returns True if the modes are not equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TransactionDeferrableMode): Bool

    /**
     * @description Computes a hash code for this transaction deferrable mode.
     * @returns The hash code as an integer.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Represents a database transaction that can be used to manage transactional operations.
 */
@!APILevel[
    since: "22"
]
public interface Transaction {
    /**
     * @description Gets or sets the isolation level for this transaction.
     * @returns The current TransactionIsoLevel when getting
     */
    @!APILevel[
        since: "22"
    ]
    mut prop isoLevel: TransactionIsoLevel

    /**
     * @description Gets or sets the access mode for this transaction.
     * @returns The current TransactionAccessMode when getting
     */
    @!APILevel[
        since: "22"
    ]
    mut prop accessMode: TransactionAccessMode

    /**
     * @description Gets or sets the deferrable mode for this transaction.
     * @returns The current TransactionDeferrableMode when getting
     */
    @!APILevel[
        since: "22"
    ]
    mut prop deferrableMode: TransactionDeferrableMode

    /**
     * @description Begins the transaction.
     */
    @!APILevel[
        since: "22"
    ]
    func begin(): Unit

    /**
     * @description Commits the transaction, making all changes permanent.
     */
    @!APILevel[
        since: "22"
    ]
    func commit(): Unit

    /**
     * @description Rolls back the transaction, reverting all changes.
     */
    @!APILevel[
        since: "22"
    ]
    func rollback(): Unit

    /**
     * @description Rolls back the transaction to a specific savepoint.
     * @param savePointName - The name of the savepoint to roll back to
     */
    @!APILevel[
        since: "22"
    ]
    func rollback(savePointName: String): Unit

    /**
     * @description Creates a savepoint in the transaction.
     * @param savePointName - The name of the savepoint to create
     */
    @!APILevel[
        since: "22"
    ]
    func save(savePointName: String): Unit

    /**
     * @description Releases a savepoint, removing it from the transaction.
     * @param savePointName - The name of the savepoint to release
     */
    @!APILevel[
        since: "22"
    ]
    func release(savePointName: String): Unit
}

/**
 * @description Represents the result of a database update operation.
 */
@!APILevel[
    since: "22"
]
public interface UpdateResult {
    /**
     * @description Gets the number of rows affected by the update operation.
     * @returns The row count as an integer.
     */
    @!APILevel[
        since: "22"
    ]
    prop rowCount: Int64

    /**
     * @description Gets the ID of the last inserted row, if applicable.
     * @returns The last insert ID as an integer.
     */
    @!APILevel[
        since: "22"
    ]
    prop lastInsertId: Int64
}