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

package ohos.data.preferences


import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.callback_invoke.Callback1Argument
import ohos.labels.*
import std.collection.*

/**
 * Preferences change type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public enum PreferencesEvent {
    /**
     * PreferencesEvent change enum instance
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    PreferencesChange
    | 
    /**
     * PreferencesEvent multiProcessChange enum instance
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    PreferencesMultiProcessChange
    | ...
}

/**
 * Provides interfaces to obtain and modify preferences data.
 * The preferences data is stored in a file, which matches only one Preferences instance in the memory.
 * You can use getPreferences to obtain the Preferences instance matching
 * the file that stores preferences data, and use movePreferencesFromCache
 * to remove the Preferences instance from the memory.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public class Preferences {
    /**
     * Obtains a Preferences instance matching a specified preferences file name.
     * The Preferences instance loads all data of the preferences file and
     * resides in the memory. You can use removePreferencesFromCache to remove the instance from the memory.
     *
     * @param { UIAbilityContext } context - Indicates the context of application or capability.
     * @param { String } name - Indicates the preferences file name.
     * @returns { Preferences } The Preferences instance matching the specified preferences file name.
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func getPreferences(context: UIAbilityContext, name: String): Preferences

    /**
     * Obtains a Preferences instance matching a specified preferences file name.
     * The Preferences instance loads all data of the preferences file and
     * resides in the memory. You can use removePreferencesFromCache to remove the instance from the memory.
     *
     * @param { UIAbilityContext } context - Indicates the context of application or capability.
     * @param { PreferencesOptions } options - Indicates the PreferencesOptions option of preferences
     * file position.
     * @returns { Preferences } The Preferences instance matching the specified preferences file name.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 15500000 - Inner error.
     * @throws { BusinessException } 15501001 - The operations is supported in stage mode only.
     * @throws { BusinessException } 15501002 - Invalid dataGroupId.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func getPreferences(context: UIAbilityContext, options: PreferencesOptions): Preferences

    /**
     * Deletes a Preferences instance matching a specified preferences file name
     * from the cache which is performed by removePreferencesFromCache and deletes the
     * preferences file.
     * When deleting the Preferences instance, you must release all references
     * of the instance. In addition, do not use the instance to perform data operations. Otherwise, data inconsistency
     * will occur.
     *
     * @param { UIAbilityContext } context - Indicates the context of application or capability.
     * @param { String } name - Indicates the preferences file name.
     * @throws { BusinessException } 15500000 - Inner error.
     * @throws { BusinessException } 15500010 - Failed to delete the user preferences persistence file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func deletePreferences(context: UIAbilityContext, name: String): Unit

    /**
     * Deletes a Preferences instance matching a specified preferences file name
     * from the cache which is performed by removePreferencesFromCache and deletes the
     * preferences file.
     * When deleting the Preferences instance, you must release all references
     * of the instance. In addition, do not use the instance to perform data operations. Otherwise, data inconsistency
     * will occur.
     *
     * @param { UIAbilityContext } context - Indicates the context of application or capability.
     * @param { PreferencesOptions } options - Indicates the PreferencesOptions option of preferences
     * file position.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 15500000 - Inner error.
     * @throws { BusinessException } 15500010 - Failed to delete the user preferences persistence file.
     * @throws { BusinessException } 15501001 - The operations is supported in stage mode only.
     * @throws { BusinessException } 15501002 - Invalid dataGroupId.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func deletePreferences(context: UIAbilityContext, options: PreferencesOptions): Unit

    /**
     * Deletes a Preferences instance matching a specified preferences file name
     * from the cache.
     * When deleting the Preferences instance, you must release all references
     * of the instance. In addition, do not use the instance to perform data operations. Otherwise, data inconsistency
     * will occur.
     *
     * @param { UIAbilityContext } context - Indicates the context of application or capability.
     * @param { String } name - Indicates the preferences file name.
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func removePreferencesFromCache(context: UIAbilityContext, name: String): Unit

    /**
     * Deletes a Preferences instance matching a specified preferences file name
     * from the cache.
     * When deleting the Preferences instance, you must release all references
     * of the instance. In addition, do not use the instance to perform data operations. Otherwise, data inconsistency
     * will occur.
     *
     * @param { UIAbilityContext } context - Indicates the context of application or capability.
     * @param { PreferencesOptions } options - Indicates the PreferencesOptions option of preferences
     * file position.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 15500000 - Inner error.
     * @throws { BusinessException } 15501001 - The operations is supported in stage mode only.
     * @throws { BusinessException } 15501002 - Invalid dataGroupId.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func removePreferencesFromCache(context: UIAbilityContext, options: PreferencesOptions): Unit

    /**
     * Obtains the value of a preferences in the PreferencesValueType format.
     * If the value is null or not in the PreferencesValueType format, the default value is returned.
     *
     * @param { String } key - Indicates the key of the preferences. It cannot be null or empty.
     * @param { PreferencesValueType } defValue - Indicates the default value to return.
     * @returns { PreferencesValueType } The value matching the specified key if it is found;
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public func get(key: String, defValue: PreferencesValueType): PreferencesValueType

    /**
     * Obtains all the keys and values of a preferences in an HashMap.
     *
     * @returns { HashMap<String, PreferencesValueType> } The values and keys in an HashMap.
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAll(): HashMap<String, PreferencesValueType>

    /**
     * Checks whether the Preferences object contains a preferences matching a specified key.
     *
     * @param { String } key - Indicates the key of the preferences to modify. It cannot be null or empty.
     * @returns { Bool } true if the Preferences object contains
     * a preferences with the specified key; returns false otherwise.
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public func has(key: String): Bool

    /**
     * Sets an int value for the key in the Preferences object.
     * You can call the flush method to save the Preferences object to the
     * file.
     * When the value contains strings in a non-UTF-8 format, use the Uint8Array type for storage.
     * Otherwise, the format of the persistent file is incorrect and the file is damaged.
     * If the corresponding key already exists, the put method will overwrite its value.
     * You can use the hasSync method to check whether the corresponding key-value pair exists.
     *
     * @param { String } key - Indicates the key of the preferences to modify. It cannot be null or empty.
     * @param { PreferencesValueType } value - Indicates the value of the preferences.
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public func put(key: String, value: PreferencesValueType): Unit

    /**
     * Deletes the preferences with a specified key from the Preferences object.
     * You can call the flush method to save the Preferences object to the file.
     *
     * @param { String } key - Indicates the key of the preferences to delete. It cannot be null or empty.
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public func delete(key: String): Unit

    /**
     * Clears all preferences from the Preferences object.
     * You can call the flush method to save the Preferences object to the file.
     *
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public func clear(): Unit

    /**
     * saves the Preferences object to the file.
     *
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true,
        workerthread: true
    ]
    public func flush(): Unit

    /**
     * Registers an observer to listen for the change of a Preferences object.
     *
     * @param { PreferencesEvent } event - Indicates the callback when preferences changes.
     * @param { Callback1Argument<String> } callback - Indicates the callback function.
     * @throws { BusinessException } 15500000 - Inner error.
     * @throws { BusinessException } 15500019 - Failed to obtain the subscription service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true
    ]
    public func on(event: PreferencesEvent, callback: Callback1Argument<String>): Unit

    /**
     * Unregisters an existing observer.
     *
     * @param { PreferencesEvent } event - Indicates the callback when preferences changes.
     * @param { Callback1Argument<String> } [callback] - Indicates the callback function.
     * @throws { BusinessException } 15500000 - Inner error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core",
        throwexception: true
    ]
    public func off(event: PreferencesEvent, callback!: ?Callback1Argument<String> = None): Unit
}

/**
 * the storage type
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public enum StorageType {
    /**
     * XML storage type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    Xml
    | 
    /**
     * GSKV storage type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    Gskv
    | ...
}

/**
 * Indicates possible value types
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public enum PreferencesValueType {
    /**
     * Type for Int64.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ] 
    Integer(Int64)
    | 
    /**
     * Type for Float64.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ] 
    Double(Float64)
    | 
    /**
     * Type for String.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ] 
    StringData(String)
    | 
    /**
     * Type for Bool.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ] 
    BoolData(Bool)
    | 
    /**
     * Type for Array<Bool>.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ] 
    BoolArray(Array<Bool>)
    | 
    /**
     * Type for Float64.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ] 
    DoubleArray(Array<Float64>)
    | 
    /**
     * Type for Array<String>.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ] 
    StringArray(Array<String>)
    | ...
}

/**
 * Maximum length of a key, which is 1024 bytes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public const MAX_KEY_LENGTH: UInt32 = 1024
/**
 * Maximum length of value, which is 16 MB.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public const MAX_VALUE_LENGTH: UInt32 = 16 * 1024 * 1024

/**
 * Manages preferences file configurations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public class PreferencesOptions {
    /**
     * The preferences file name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public var name: String

    /**
     * Application Group Id.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public var dataGroupId: String

    /**
     * The preferences storage type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public var storageType: StorageType

    /**
     * PreferencesOptions constructor.
     *
     * @param { String } name - The preferences file name.
     * @param { String } [dataGroupId] - Application Group Id.
     * @param { StorageType } [storageType] - The preferences file storage type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public init(name: String, dataGroupId!: String = String.empty, storageType!: StorageType = StorageType.Xml)
}
