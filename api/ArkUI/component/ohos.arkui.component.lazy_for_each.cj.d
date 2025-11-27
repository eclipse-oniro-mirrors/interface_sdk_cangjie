package ohos.arkui.component.lazy_for_each

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.collection.ArrayList
import std.collection.HashMap

/**
 * Developers need to implement this interface to provide data to LazyForEach component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface IDataSource<T> {
/**
 * Obtains the total number of data items.
 *
 * @returns { Int64 } The total number of data items in the data source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func totalCount(): Int64

/**
 * Obtains the data item that matches the specified index.
 * Retrieves a specific data item from the data source by its index.
 *
 * @param { Int64 } index - The zero-based index of the data item to retrieve.
 * @returns { T } The data item at the specified index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func getData(index: Int64): T

/**
 * Registers a listener for data changes.
 *
 * @param { DataChangeListener } listener - The listener to be registered for data changes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func registerDataChangeListener(listener: DataChangeListener): Unit

/**
 * Unregisters the listener for data changes.
 *
 * @param { DataChangeListener } listener - The listener to be unregistered from data changes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func unregisterDataChangeListener(listener: DataChangeListener): Unit
}

/**
 * Listener for data changes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DataChangeListener <: RemoteData {
/**
 * Invoked when all data is reloaded. For data items whose key remains unchanged,
 * the original child component is used. For data items whose key changes, a new child component is created.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDataReloaded(): Unit

/**
 * Invoked when data is added to the position indicated by the specified index.
 *
 * @param { IntNative } index - The index at which to insert the data record.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDataAdd(index: IntNative): Unit

/**
 * Invoked when data is deleted from the position indicated by the specified index.
 * LazyForEach will update the displayed content accordingly.
 *
 * @param { IntNative } index - The index at which to delete the data record.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDataDelete(index: IntNative): Unit

/**
 * Invoked when data in the position indicated by the specified index is changed.
 *
 * @param { IntNative } index - The index of the data to be changed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDataChange(index: IntNative): Unit

/**
 * Invoked when data is moved, that is, when data is swapped between the from and to positions.
 *
 * @param { IntNative } from - The start position for the movement.
 * @param { IntNative } to - The end position for the movement.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDataMove(from: IntNative, to: IntNative): Unit
}

/**
 * Defines LazyForEach Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LazyForEach<T> <: UINodeBase {
/**
 * Constructs a LazyForEach component.
 *
 * @param { IDataSource<T> } dataSource - LazyForEach data source, need to implement the IDataSource interface.
 * @param { ItemGenFuncType<T> } itemGenerator - Sub-component generator function, create a sub-component for each data in the array.
 * @param { KeyGenFuncType<T> } [keyGenerator] - Key generator function, used to generate a unique and fixed key for each data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(dataSource: IDataSource<T>, itemGenerator!: ItemGenFuncType<T>,
        keyGenerator!: ?KeyGenFuncType<T> = None)
}