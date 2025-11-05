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

package ohos.data.distributed_kv_store

import ohos.app.ability.BaseContext
import ohos.labels.*

/**
 * Provides methods related to device-collaboration distributed databases.
 * To create a DeviceKVStore database, you can use the
 * data.distributed.common.KVManager.getKVStore(KVOptions, String)
 * method with KVStoreType set to DeviceCollaboration for the input parameter KVOptions.
 * This database manages distributed
 * data by device, and cannot modify data synchronized from remote devices. When an application writes a
 * key-value pair entry
 * into the database, the system automatically adds the ID of the device running the application to the key.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class DeviceKVStore <: SingleKVStore {
    /**
     * Obtains the value matching the local device ID and specified key.
     *
     * @param { String } key - Indicates the key. The length must be less than MAX_KEY_LENGTH.
     * @returns { KVValueType } KVValueType the returned value specified by the key.
     *
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100004 - Not found.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func get(key: String): KVValueType

    /**
     * Obtains all key-value pairs that match the local device ID and specified key prefix.
     *
     * @param { String } keyPrefix - Indicates the key prefix to match.
     * @returns { Array<Entry> } Array<Entry> the list of all key-value pairs that match the specified key prefix.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getEntries(keyPrefix: String): Array<Entry>

    /**
     * Obtains the list of key-value pairs matching the local device ID and specified Query object.
     *
     * @param { Query } query - Indicates the Query object.
     * @returns { Array<Entry> } Array<Entry> the list of all key-value pairs matching the
     * specified Query object.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getEntries(query: Query): Array<Entry>

    /**
     * Obtains the result set with the local device ID and specified prefix from a DeviceKVStore database.
     * The KVStoreResultSet object can be used to query all key-value pairs that meet the search criteria.
     * Each DeviceKVStore instance can have a maximum of four KVStoreResultSet objects at the
     * same time.
     * If you have created four objects, calling this method will return a failure. Therefore, you are advised to
     * call the closeResultSet method to close unnecessary KVStoreResultSet objects in a timely manner.
     *
     * @param { String } keyPrefix - Indicates the key prefix to match.
     * @returns { KVStoreResultSet } KVStoreResultSet the KVStoreResultSet
     * object matching the specified keyPrefix.
     * @throws { BusinessException } 15100001 - Over max limits.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getResultSet(keyPrefix: String): KVStoreResultSet

    /**
     * Obtains the KVStoreResultSet object matching the local device ID and specified Query object.
     *
     * @param { Query } query - Indicates the Query object.
     * @returns { KVStoreResultSet } KVStoreResultSet the KVStoreResultSet
     * object matching the specified Query object.
     * @throws { BusinessException } 15100001 - Over max limits.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getResultSet(query: Query): KVStoreResultSet

    /**
     * Obtains the number of results matching the local device ID and specified Query object.
     *
     * @param { Query } query - Indicates the Query object.
     * @returns { Int32 } Int32 the number of results matching the specified Query object.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getResultSize(query: Query): Int32
}

/**
 * Provider interfaces to create a KVManager instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class DistributedKVStore {
    /**
     * Creates a KVManager instance based on the configuration information.
     * You must pass KVManagerConfig to provide configuration information
     * to create a KVManager instance.
     *
     * @param { KVManagerConfig } config - Indicates the KVStore configuration information,
     * including the user information and package name.
     * @returns { KVManager } the KVManager instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true
    ]
    public static func createKVManager(config: KVManagerConfig): KVManager
}

/**
 * Provides interfaces to manage a SingleKVStore database, including obtaining, closing, and deleting the
 * SingleKVStore.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVManager {
    /**
     * Creates and obtains a KVStore database by specifying KVOptions and storeId.
     *
     * @param { String } storeId - Identifies the KVStore database. The value of this parameter must be unique
     * for the same application, and different applications can share the same value. The storeId can consist
     * of only letters, digits, and underscores (_), and cannot exceed 128 characters.
     * @param { KVOptions } options - Indicates the options used for creating and obtaining the KVStore database,
     * including isCreateIfMissing, isEncrypt, and KVStoreType.
     * @returns { T } Returns the created KVStore instance.
     * @throws { BusinessException } 15100002 - Open existed database with changed options.
     * @throws { BusinessException } 15100003 - Database corrupted.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getKVStore<T>(storeId: String, options: KVOptions): T where T <: SingleKVStore

    /**
     * Closes the KVStore database.
     * Warning: This method is not thread-safe. If you call this method to stop a KVStore database that is running,
     * your thread may crash.
     * The KVStore database to close must be an object created by using the getKVStore method. Before using
     * this method, release the resources created for the database, for example, KVStoreResultSet for KVStore,
     * otherwise closing the database will fail.
     *
     * @param { String } appId - Identifies the application that the database belong to, and cannot exceed 256
     * characters.
     * @param { String } storeId - Identifies the KVStore database to close. The storeId can consist of only letters,
     * digits, and underscores (_), and cannot exceed 128 characters.
     */
    @!APILevel[ 
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func closeKVStore(appId: String, storeId: String): Unit

    /**
     * Closes the KVStore database.
     * Warning: This method is not thread-safe. If you call this method to stop a KVStore database that is running,
     * your thread may crash.
     * The KVStore database to close must be an object created by using the getKVStore method. Before using
     * this method, release the resources created for the database, for example, KVStoreResultSet for KVStore,
     * otherwise closing the database will fail.
     *
     * @param { String } appId - Identifies the application that the database belong to, and cannot exceed 256
     * characters.
     * @param { String } storeId - Identifies the KVStore database to close. The storeId can consist of only letters,
     * digits, and underscores (_), and cannot exceed 128 characters.
     * @throws { BusinessException } 15100004 - Not found.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func deleteKVStore(appId: String, storeId: String): Unit

    /**
     * Obtains the storeId of all KVStore databases that are created by using the getKVStore method and not
     * deleted by calling the deleteKVStore method.
     *
     * @param { String } appId - Identifies the application that obtains the databases, and cannot exceed 256
     * characters.
     * @returns { Array<String> } Array<String> the storeId of all created KVStore databases.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAllKVStoreId(appId: String): Array<String>
}

/**
 * KVStore constants
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Constants {
    /**
     * Max key length is 1024.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_KEY_LENGTH: Int32 = 1024

    /**
     * Max value length is 4194303.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_VALUE_LENGTH: Int32 = 4194303

    /**
     * Max device coordinate key length is 896.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_KEY_LENGTH_DEVICE: Int32 = 896

    /**
     * Max store id length is 128.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_STORE_ID_LENGTH: Int32 = 128

    /**
     * Max query length is 512000.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_QUERY_LENGTH: Int32 = 512000

    /**
     * Max batch operation size is 128.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_BATCH_SIZE: Int32 = 128
}

/**
 * Indicates the KVValueType.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public enum KVValueType {
    /**
     * Indicates that the value type is string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ] 
    StringValue(String)
    | 
    /**
     * Indicates that the value type is int.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ] 
    Integer(Int32)
    | 
    /**
     * Indicates that the value type is float.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ] 
    Float(Float32)
    | 
    /**
     * Indicates that the value type is byte array.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ] 
    ByteArray(Array<Byte>)
    | 
    /**
     * Indicates that the value type is boolean.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ] 
    Boolean(Bool)
    | 
    /**
     * Indicates that the value type is double.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ] 
    Double(Float64)
    | ...
}

/**
 * Provides configuration information to create a KVManager instance,
 * which includes the caller's package name and ability or hap context.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVManagerConfig {
    /**
     * Indicates the bundleName
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var bundleName: String

    /**
     * Indicates the ability or hap context
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var context: BaseContext

    /**
     * KVManagerConfig constructor.
     *
     * @param { BaseContext } context - Indicates the ability or hap context
     * @param { String } bundleName - Indicates the bundleName
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(context: BaseContext, bundleName: String)
}

/**
 * Describes the KVStore security level.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public enum KVSecurityLevel {
    /**
     * S1: means the db is in the low security level
     * There are some low impact when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S1
    | 
    /**
     * S2: means the db is in the middle security level
     * There are some major impact when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S2
    | 
    /**
     * S3: means the db is in the high security level
     * There are some severity impact when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S3
    | 
    /**
     * S4: means the db is in the critical security level
     * There are some critical impact when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S4
    | ...
}

/**
 * Represents a node of a Schema instance.
 * With a Schema instance, you can define the value fields which stored in the database.
 * A FieldNode of the Schema instance is either a leaf or a non-leaf node.
 * The leaf node must have a value; the non-leaf node must have a child FieldNode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class FieldNode {
    /**
     * Indicates the default value of field node.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var default: String

    /**
     * Indicates the nullable of database field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var nullable: Bool

    /**
     * Indicates the type of value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var nodeType: Int32

    /**
     * FieldNode constructor.
     *
     * @param { String } name - It can not be empty.
     * @param { Bool } nullable - Indicates the nullable of database field.
     * @param { String } default - Indicates the default value of field node.
     * @param { Int32 } nodeType - Indicates the type of value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public init(name: String, nullable: Bool, default: String, nodeType: Int32)
}

/**
 * Represents the database schema.
 * You can set the schema object in options when create or open the database.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class Schema {
    /**
     * Indicates the root json object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var root: FieldNode

    /**
     * Indicates the string array of json.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var indexes: Array<String>

    /**
     * Indicates the mode of schema.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var mode: Int32

    /**
     * Indicates the skip size of schema.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var skip: Int32

    /**
     * Schema constructor.
     *
     * @param { FieldNode } root - Indicates the root json object.
     * @param { Array<String> } indexes - Indicates the string array of json.
     * @param { Int32 } mode - Indicates the mode of schema.
     * @param { Int32 } skip - Indicates the skip size of schema.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public init(root: FieldNode, indexes: Array<String>, mode: Int32, skip: Int32)
}

/**
 * Provides configuration options to create a SingleKVStore or DeviceKVStore.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVOptions {
    /**
     * Indicates whether to create a database when the database file does not exist
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var createIfMissing: Bool

    /**
     * Indicates whether database files to be encrypted
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var encrypt: Bool

    /**
     * Indicates whether to back up database files
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var backup: Bool

    /**
     * Indicates whether database files are automatically synchronized
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.DISTRIBUTED_DATASYNC",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var autoSync: Bool

    /**
     * Indicates the database security level
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var securityLevel: KVSecurityLevel

    /**
     * Indicates the database schema
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var schema: ?Schema

    /**
     * KVOptions constructor.
     *
     * @param { KVSecurityLevel } securityLevel - Indicates the database security level
     * @param { Bool } [createIfMissing] - Indicates whether to create a database when the database file does not exist
     * @param { Bool } [encrypt] - Indicates whether database files to be encrypted
     * @param { Bool } backup - Indicates whether to back up database files
     * @param { Bool } autoSync - Indicates whether database files are automatically synchronized
     * @param { ?Schema } schema - Indicates the database schema
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(securityLevel: KVSecurityLevel, createIfMissing!: Bool = true, encrypt!: Bool = false,
        backup!: Bool = true, autoSync!: Bool = false, schema!: ?Schema = None)
}

/**
 * Provides key-value pairs stored in the distributedKVStore.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Entry {
    /**
     * Indicates the key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var key: String

    /**
     * Indicates the value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var value: KVValueType

    /**
     * Entry constructor.
     *
     * @param { String } key - Indicates the key.
     * @param { KVValueType } value - Indicates the value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(key: String, value: KVValueType)
}

/**
 * Provides methods to operate the result set of the SingleKVStore or DeviceKVStore database.
 * The result set is created by using the getResultSet method in the SingleKVStore or
 * DeviceKVStore class. This interface also provides methods to move the data read
 * position in the result set.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVStoreResultSet {
    /**
     * Obtains the number of lines in a result set.
     *
     * @returns { Int32 } Returns the number of lines.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getCount(): Int32
}

/**
 * Represents a database query using predicates.
 * This class provides a constructor used to create a Query instance, which is used to query data
 * matching specified conditions in the database.
 * This class also provides methods to add predicates to the Query instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Query {
    /**
     * A constructor used to create a Query instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init()
}

/**
 * Provides methods related to single-version distributed databases.
 * To create a SingleKVStore database,
 * you can use the data.distributed.common.KVManager#getKVStore​(KVOptions, String) method
 * with KVStoreType set to SingleVersion for the input parameter KVOptions.
 * This database synchronizes data to other databases in time sequence.
 * The SingleKVStore database does not support
 * synchronous transactions, or data search using snapshots.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public open class SingleKVStore {
    /**
     * Writes a key-value pair of the string type into the SingleKVStore database.
     * If you do not want to synchronize this key-value pair to other devices, set the write option in the local
     * database.
     *
     * @param { String } key - Indicates the key. Length must be less than MAX_KEY_LENGTH.
     * Spaces before and after the key will be cleared.
     * @param { KVValueType } value - Indicates the value to be inserted.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func put(key: String, value: KVValueType): Unit

    /**
     * Inserts key-value pairs into the SingleKVStore database in batches.
     *
     * @param { Array<Entry> } entries - Indicates the key-value pairs to be inserted in batches.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func putBatch(entries: Array<Entry>): Unit

    /**
     * Deletes the key-value pair based on a specified key.
     *
     * @param { String } key - Indicates the key. Length must be less than MAX_KEY_LENGTH.
     * Spaces before and after the key will be cleared.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func delete(key: String): Unit

    /**
     * Deletes key-value pairs in batches from the SingleKVStore database.
     *
     * @param { Array<String> } keys - Indicates the key-value pairs to be deleted in batches, It can not be empty.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func deleteBatch(keys: Array<String>): Unit

    /**
     * Obtains the value of a specified key.
     *
     * @param { String } key - Indicates the key. The length must be less than MAX_KEY_LENGTH.
     * @returns { KVValueType } the returned value specified by the key.
     * {KVValueType}: the returned value specified by the key.
     * @throws { BusinessException } 15100003 - Database corrupted.
     * @throws { BusinessException } 15100004 - Not found.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func get(key: String): KVValueType

    /**
     * Backs up a database in the specified filename.
     *
     * @param { String } file - Indicates the database backup filename, It can not be empty and
     * The length must be less than MAX_KEY_LENGTH.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func backup(file: String): Unit

    /**
     * Restores a database from a specified database file.
     *
     * @param { String } file - Indicates the database backup filename, It can not be empty and
     * The length must be less than MAX_KEY_LENGTH.
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func restore(file: String): Unit

    /**
     * Starts a transaction operation in the SingleKVStore database.
     * After the database transaction is started, you can submit or roll back the operation.
     *
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func startTransaction(): Unit

    /**
     * Submits a transaction operation in the SingleKVStore database.
     *
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func commit(): Unit

    /**
     * Rolls back a transaction operation in the SingleKVStore database.
     *
     * @throws { BusinessException } 15100005 - Database or result set already closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public open func rollback(): Unit

    /**
     * Sets whether to enable synchronization.
     *
     * @param { Bool } enabled - Specifies whether to enable synchronization. The value true
     * means to enable synchronization, and false means the opposite.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        workerthread: true
    ]
    public open func enableSync(enabled: Bool): Unit

    /**
     * Sets the default delay allowed for database synchronization.
     *
     * @param { UInt32 } defaultAllowedDelayMs - Indicates the default delay allowed for the
     * database synchronization, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core",
        workerthread: true
    ]
    public open func setSyncParam(defaultAllowedDelayMs: UInt32): Unit
}
