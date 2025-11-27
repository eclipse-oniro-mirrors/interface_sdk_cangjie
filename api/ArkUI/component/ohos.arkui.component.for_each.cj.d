package ohos.arkui.component.for_each

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.collection.ArrayList

/**
 * Define key generator function.
 *
 * @param { T } - item in array.
 * @param { Int64 } - index corresponding to an array item.
 * @returns { String } String generated based on item and index.
 */
public type KeyGenFuncType<T> = (T, Int64) -> String

/**
 * Define item generator function.
 *
 * @param { T } - item in array.
 * @param { Int64 } - index corresponding to an array item.
 */
public type ItemGenFuncType<T> = (T, Int64) -> Unit

/**
 * Defines ForEach Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ForEach<T> <: UINodeBase {
/**
 * Define the ForEach component.
 *
 * @param { CollectionEx<T> } arr - the array collection to be used in UI.
 * @param { ItemGenFuncType<T> } itemGenerator - item generator function.
 * @param { ?KeyGenFuncType<T> } [keyGenerator] - key generator function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(arr: CollectionEx<T>, itemGenerator!: ItemGenFuncType<T>,
        keyGenerator!: ?KeyGenFuncType<T> = None)
}