package ohos.arkui.component.custom_view

import ohos.base.ReuseParams
import ohos.ffi.*
import ohos.labels.APILevel
import std.collection.ArrayList
import std.collection.HashMap

/**
 * Definition of RemoteView class.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class RemoteView <: FFIData {
/**
 * Constructor of RemoteView.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Customize the pop-up content constructor and it is migrated from class CustomComponent.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func build(): Unit

/**
 * Invoked after a new instance of the custom component is created
 * and before its build() function is executed. You can change state variables in aboutToAppear.
 * The change will take effect when you execute the build() function next time.
 * The aboutToAppear lifecycle callback of a custom component with a custom layout
 * is invoked during the layout process.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    protected open func aboutToAppear(): Unit

/**
 * Invoked each time the page is displayed, for example, during page redirection.
 * When the application is switched to the foreground.
 * It works only for the custom components decorated by **@Entry**.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    protected open func onPageShow(): Unit

/**
 * Invoked each time the page is hidden, for example, during page redirection.
 * When the application is switched to the background. 
 * It works only for the custom components decorated by **@Entry**.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    protected open func onPageHide(): Unit

/**
 * Invoked when the user clicks the Back button.
 * It works only for the custom components decorated by @Entry.
 * The value **true** means that the page executes its own return logic.
 * And false (default) means that the default return logic is used.
 * @returns { Bool }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    protected open func onBackPress(): Bool

/**
 * PageTransition Method and it is migrated from class CustomComponent.
 * Implement Animation when enter this page or move to other pages.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    protected open func pageTransition(): Unit

/**
 * Invoked when this component is about to disappear.
 * Do not change state variables in the aboutToDisappear function as doing this can cause unexpected errors.
 * For example, the modification of the @Link decorated variable may cause unstable application running.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    protected open func aboutToDisappear(): Unit

/**
 * The callback method after the custom component is built and it is migrated from class CustomComponent.
 *
 * Triggered when the custom component has been built.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    protected open func onDidBuild(): Unit
}