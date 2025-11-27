package ohos.arkui.component.custom_component

import ohos.ark_interop.*
import ohos.arkui.component.common.*
import ohos.arkui.component.custom_view.*
import ohos.arkui.component.for_each.*
import ohos.arkui.component.ifcomponent.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.state_management.*
import ohos.arkui.ui_context.*
import ohos.base.*
import ohos.ffi.*
import ohos.hilog.*
import ohos.labels.APILevel
import std.collection.*
import std.collection.ArrayList
import std.collection.HashMap
import std.math.*
import std.sort.*

/**
 * Binds the view builder to the custom view.
 *
 * @param { (CustomView) -> ViewBuilder } builder - Custom build function modified by @Builder.
 * @param { CustomView } thisView - Current page object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind(builder: (CustomView) -> ViewBuilder, thisView: CustomView)

/**
 * Binds the view builder to the custom view with one observed property.
 *
 * @param { (CustomView, ObservedProperty<T1>) -> ViewBuilder } builder - Custom build function modified by @Builder.
 * @param { CustomView } thisView - Current page object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind<T1>(builder: (CustomView, ObservedProperty<T1>) -> ViewBuilder, thisView: CustomView)

/**
 * Binds the view builder to the custom view with two observed properties.
 *
 * @param { (CustomView, ObservedProperty<T1>, ObservedProperty<T2>) -> ViewBuilder } builder - Custom build function modified by @Builder.
 * @param { CustomView } thisView - Current page object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind<T1, T2>(
    builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>) -> ViewBuilder,
    thisView: CustomView
)

/**
 * Binds the view builder to the custom view with three observed properties.
 *
 * @param { (CustomView, ObservedProperty<T1>, ObservedProperty<T2>, ObservedProperty<T3>) -> ViewBuilder } builder - Custom build function modified by @Builder.
 * @param { CustomView } thisView - Current page object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind<T1, T2, T3>(
    builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>, ObservedProperty<T3>) -> ViewBuilder,
    thisView: CustomView
)

/**
 * CustomView class.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class CustomView <: RemoteView & Observer {
/**
 * Get the LocalStorage instance of current page.
 *
 * @returns { LocalStorage } The LocalStorage instance of the current page.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getLocalStorage(): LocalStorage


/**
 * Customize the pop-up content constructor and it is migrated from class CustomComponent.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func build(): Unit

/**
 * Called when processing information about to be deleted.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func aboutToBeDeleted(): Unit

/**
 * Get current UIContext and it is migrated from class CustomComponent.
 *
 * @returns { UIContext } The UIContext that the custom component belongs to.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getUIContext(): UIContext
}
