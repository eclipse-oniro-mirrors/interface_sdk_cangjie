package ohos.arkui.component.sidebar

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * ButtonStyle icons.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ButtonIconOptions {
    /**
     * Defines whether an icon is shown.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shown: ?ResourceStr

    /**
     * Defines whether an icon is hidden.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var hidden: ?ResourceStr

    /**
     * Defines whether an icon is switching.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var switching: ?ResourceStr

    /**
     * Constructs a button style icons.
     * Initializes a ButtonIconOptions instance with icon resources for different states.
     *
     * @param { ?ResourceStr } shown - The resource string for the shown icon.
     * @param { ?ResourceStr } hidden - The resource string for the hidden icon.
     * @param { ?ResourceStr } [switching] - The resource string for the switching icon.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(shown!: ?ResourceStr, hidden!: ?ResourceStr, switching!: ?ResourceStr = None)
}

/**
 * Sets the control button style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ButtonStyle {
    /**
     * Set the left of control button.
     * @default 16.0
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var left: ?Float64

    /**
     * Set the top of control button.
     * @default 24.0
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var top: ?Float64

    /**
     * Set the width of control button.
     * @default 24.0
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: ?Float64

    /**
     * Set the height of control button.
     * @default 24.0
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: ?Float64

    /**
     * Set the button icon when sidebar status has changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var icons: ?ButtonIconOptions

    /**
     * Constructs a button style.
     * Initializes a ButtonStyle instance with positioning, sizing, and icon options.
     *
     * @param { ?Float64 } [left] - The left position of the button.
     * @param { ?Float64 } [top] - The top position of the button.
     * @param { ?Float64 } [width] - The width of the button.
     * @param { ?Float64 } [height] - The height of the button.
     * @param { ?ButtonIconOptions } [icons] - The button icon options.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        left!: ?Float64 = None,
        top!: ?Float64 = None,
        width!: ?Float64 = None,
        height!: ?Float64 = None,
        icons!: ?ButtonIconOptions = None
    )
}

/**
 * Provides a class for the style of an divider including stroke width, color, start margin
 * and end margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DividerStyle {
    /**
     * Define the stroke width of the divider.
     * @default 1.vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var strokeWidth: ?Length

    /**
     * Define the color of the divider
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ?ResourceColor

    /**
     * Define the start margin of the divider
     *
     * @default 0.vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var startMargin: ?Length

    /**
     * Define the end margin of the divider
     *
     * @default 0.vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var endMargin: ?Length

    /**
     * Constructs a divider style.
     * Initializes a DividerStyle instance with stroke width, color, and margin properties.
     *
     * @param { ?Length } strokeWidth - The stroke width of the divider.
     * @param { ?ResourceColor } [color] - The color of the divider.
     * @param { ?Length } [startMargin] - The start margin of the divider.
     * @param { ?Length } [endMargin] - The end margin of the divider.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(strokeWidth!: ?Length, color!: ?ResourceColor = None, startMargin!: ?Length = None,
        endMargin!: ?Length = None)
}

/**
 * Defines SideBarContainer Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SideBarContainer <: CommonMethodComponent<SideBarContainer> & SideBarContainerAttribute {
    /**
     * Constructs a sidebar container.
     * Initializes a SideBarContainer component with optional type and child content.
     *
     * @param { ?SideBarContainerType } [sideBarType] - The type of the sidebar container.
     * @param { () -> Unit } [child] - The child component builder function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(sideBarType!: ?SideBarContainerType = None, child!: () -> Unit = {=>})

    /**
     * Callback showControlButton function when setting the status of sidebar.
     *
     * @param { ?Bool } value - Whether to show the sidebar.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showSideBar(value: ?Bool): This

    /**
     * Callback controlButton function when setting the style of button.
     *
     * @param { ?ButtonStyle } value - The button style.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func controlButton(value: ?ButtonStyle): This

    /**
     * Callback showControlButton function when setting the status of button.
     *
     * @param { ?Bool } value - Whether to show the control button.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showControlButton(value: ?Bool): This

    /**
     * Trigger callback when sidebar style of showing change finished.
     *
     * @param { ?(Bool) -> Unit } callback - The callback function triggered when sidebar style changes.
     * The parameter indicates whether the sidebar is currently shown (true) or hidden (false).
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: ?(Bool) -> Unit): This

    /**
     * Sets the length of sidebar. default value is 240vp
     *
     * @param { ?Length } value - The width of the sidebar. The default value is 240.vp.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sideBarWidth(value: ?Length): This

    /**
     * Sets the min length of sidebar. default value is 200vp
     *
     * @param { ?Length } value - The minimum width of the sidebar.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func minSideBarWidth(value: ?Length): This

    /**
     * Sets the max length of sidebar. default value is 280vp
     *
     * @param { ?Length } value - The maximum width of the sidebar.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxSideBarWidth(value: ?Length): This

    /**
     * Sets whether to automatically hide when drag sidebar width is less than the minimum width. default value is true
     *
     * @param { ?Bool } value - Whether to automatically hide.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func autoHide(value: ?Bool): This

    /**
     * Called when determining the location of the sidebar. default value is Start
     *
     * @param { ?SideBarPosition } value - The position of the sidebar.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sideBarPosition(value: ?SideBarPosition): This

    /**
     * Set divider style for sideBarContainer
     *
     * @param { ?DividerStyle } value - indicates the style of the divider or whether to show the divider.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func divider(value: ?DividerStyle): This

    /**
     * Sets the min length of content. default value is 360vp
     *
     * @param { ?Length } value - min length of content.
     * @returns { This } Returns the SideBarContainer instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func minContentWidth(value: ?Length): This
}

/**
 * The attribute function of sidebar.
 * Provides methods for configuring the appearance and behavior of the SideBarContainer component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface SideBarContainerAttribute <: CommonMethod<SideBarContainerAttribute> {
    /**
     * Callback showControlButton function when setting the status of sidebar.
     *
     * @param { ?Bool } value - Whether to show the sidebar.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func showSideBar(value: ?Bool): SideBarContainerAttribute

    /**
     * Callback controlButton function when setting the style of button.
     *
     * @param { ?ButtonStyle } value - The button style.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func controlButton(value: ?ButtonStyle): SideBarContainerAttribute

    /**
     * Callback showControlButton function when setting the status of button.
     *
     * @param { ?Bool } value - Whether to show the control button.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func showControlButton(value: ?Bool): SideBarContainerAttribute

    /**
     * Trigger callback when sidebar style of showing change finished.
     *
     * @param { ?(Bool) -> Unit } callback - Trigger callback when sidebar style of showing change finished.
     * The parameter indicates whether the sidebar is currently shown (true) or hidden (false).
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onChange(callback: ?(Bool) -> Unit): SideBarContainerAttribute

    /**
     * Sets the length of sidebar.
     * default value is 240vp.
     *
     * @param { ?Length } value - The width of the sidebar. The default value is 240.vp.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func sideBarWidth(value: ?Length): SideBarContainerAttribute

    /**
     * Sets the min length of sidebar.
     * default value is 200vp.
     *
     * @param { ?Length } value - The minimum width of the sidebar.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func minSideBarWidth(value: ?Length): SideBarContainerAttribute

    /**
     * Sets the max length of sidebar.
     * default value is 280vp.
     *
     * @param { ?Length } value - The maximum width of the sidebar.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func maxSideBarWidth(value: ?Length): SideBarContainerAttribute

    /**
     * Sets whether to automatically hide when drag sidebar width is less than the minimum width.
     * default value is true.
     *
     * @param { ?Bool } value - Whether to automatically hide.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func autoHide(value: ?Bool): SideBarContainerAttribute

    /**
     * Called when determining the location of the sidebar.
     * default value is Start.
     *
     * @param { ?SideBarPosition } value - The position of the sidebar.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func sideBarPosition(value: ?SideBarPosition): SideBarContainerAttribute

    /**
     * Set divider style for sideBarContainer
     *
     * @param { ?DividerStyle } value - indicates the style of the divider or whether to show the divider.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func divider(value: ?DividerStyle): SideBarContainerAttribute

    /**
     * Sets the min length of content.
     * default value is 360vp.
     *
     * @param { ?Length } value - min length of content.
     * @returns { SideBarContainerAttribute } Returns the sidebar container attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func minContentWidth(value: ?Length): SideBarContainerAttribute
}