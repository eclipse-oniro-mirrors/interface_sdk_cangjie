package ohos.arkui.component.for_each

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.collection.ArrayList

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
 * @param { ItemGeneratorFunc<T> } itemGenerator - item generator function.
 * @param { ?KeyGeneratorFunc<T> } [keyGenerator] - key generator function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(arr: CollectionEx<T>, itemGenerator!: ItemGeneratorFunc<T>,
        keyGenerator!: ?KeyGeneratorFunc<T> = None)
}