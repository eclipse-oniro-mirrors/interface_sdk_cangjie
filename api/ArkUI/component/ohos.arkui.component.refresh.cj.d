package ohos.arkui.component.refresh

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines the options of refresh component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RefreshOptions {
    /**
     * Whether the current component is being refreshed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var refreshing: ?Bool

    /**
     * Whether the current event has changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var changeEvent: ?(Bool) -> Unit

    /**
     * Defines the options of refresh component.
     *
     * @param { ?Bool } refreshing - Whether the component is in refreshing state.
     * @returns { RefreshOptions }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(refreshing!: ?Bool)

    /**
     * Defines the options of refresh component.
     *
     * @param { ?Bindable<Bool> } refreshing - Bindable refreshing state.
     * @returns { RefreshOptions }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(refreshing!: ?Bindable<Bool>)
}

/**
 * Defines Refresh Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Refresh <: CommonMethodComponent<Refresh> & RefreshAttribute {
    /**
     * Defines Refresh Component.
     *
     * @param { ?RefreshOptions } value - Refresh options.
     * @param { () -> Unit } child - Content of the refresh component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: ?RefreshOptions, child: () -> Unit)

    /**
     * Called when the refresh state changes.
     *
     * @param { ?(RefreshStatus) -> Unit } callback - Callback function when refresh state changes.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onStateChange(callback: ?(RefreshStatus) -> Unit): This

    /**
     * Called when the refresh state is entered.
     *
     * @param { ?() -> Unit } callback - Callback function when entering refresh state.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onRefreshing(callback: ?() -> Unit): This
}

/**
 * Defines the refresh attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RefreshAttribute <: CommonMethod<RefreshAttribute> {
    /**
     * Called when the refresh state changes.
     *
     * @param { ?(RefreshStatus) -> Unit } callback - Callback function when refresh state changes.
     * @returns { RefreshAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onStateChange(callback: ?(RefreshStatus) -> Unit): RefreshAttribute

    /**
     * Called when the refresh state is entered.
     *
     * @param { ?() -> Unit } callback - Callback function when entering refresh state.
     * @returns { RefreshAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onRefreshing(callback: ?() -> Unit): RefreshAttribute
}