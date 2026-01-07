package ohos.arkui.component.tab

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines Tabs Component.
 * A component that allows navigation between multiple views through tabs.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Tabs <: CommonMethodComponent<Tabs> & TabsAttribute {
    /**
     * Create a Tabs.
     * Initializes a Tabs component with the specified parameters.
     *
     * @param { ?BarPosition } [barPosition] - Position of the tab bar.
     * @param { ?TabsController } [controller] - Controller for managing tab switching.
     * @param { ?Int32 } [index] - Initial index of the selected tab.
     * @param { () -> Unit } [child] - Builder function for tab content. The default value is an empty function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        barPosition!: ?BarPosition = None,
        controller!: ?TabsController = None,
        index!: ?Int32 = None,
        child!: () -> Unit = {=>}
    )

    /**
     * Sets the width of the tab bar. Notice: barWidth only supports Number type on 7, supports Length type since 8
     *
     * @param { ?Length } value - Width of the tab bar. If the set value is less than 0
     * or greater than the width of the Tabs component, the default value is used.
     * @returns { This }  Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func barWidth(value: ?Length): This

    /**
     * Sets the height of the tab bar. Notice: barHeight only supports Number type on 7, supports Length type since 8
     *
     * @param { ?Length } value - Height of the tab bar. If the set value is less than 0 or
     * greater than the height of the Tabs component, the default value is used.
     * @returns { This }  Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func barHeight(value: ?Length): This

    /**
     * Sets whether to use vertical tabs.
     * Configures the orientation of the tabs.
     *
     * @param { ?Bool } value - Whether to use vertical tabs. Default value is false.
     * @returns { This }  Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func vertical(value: ?Bool): This

    /**
     * Sets whether the tabs are scrollable.
     * Controls whether the tab bar can be scrolled when there are many tabs.
     *
     * @param { ?Bool } value - Whether the tabs are scrollable. Default value is true.
     * @returns { This }  Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scrollable(value: ?Bool): This

    /**
     * Sets the tab bar layout mode to BarMode.Fixed.
     * Configures the layout mode of the tab bar.
     *
     * @param { ?BarMode } value - The width of each tab is determined by equally dividing
     * the number of tabs by the bar width (or bar height in the vertical layout).
     * @returns { This }  Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func barMode(value: ?BarMode): This

    /**
     * Sets the length of time required to complete the tab switching animation,
     * which is initiated by clicking a specific tab or by calling the changeIndex API of TabsController.
     * Configures the duration of the tab switching animation.
     *
     * @param { ?Float32 } value - default value:
     *     When this property is not set or set to null, the default value is 0.
     *     When set to a value less than 0 or None, the default value is 300.
     * @returns { This }  Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animationDuration(value: ?Float32): This

    /**
     * Triggered when a tab is switched. NOTE: This event is triggered when any of the following conditions is met: 1. The swiping animation is completed, followed by tab switching. 2. The Controller API is called. 3. The attribute value is updated using a state variable. 4. A tab is clicked
     *
     * @param { ?Callback<Int32, Unit> } event - Callback function triggered when tab changes.
     * The parameter is the index of the selected tab.
     * @returns { This }  Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(event: ?Callback<Int32, Unit>): This
}

/**
 * Provides methods for switching tabs.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TabsController <: RemoteDataLite {
    /**
     * Creates a new TabsController instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Switches to the specified tab.
     * Programmatically changes the currently selected tab.
     *
     * @param { ?Int32 } value - Index of the tab. If this parameter is set to a value less than 0
     * or greater than the maximum number, the default value 0 is used.
     * @returns { Unit }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func changeIndex(value: ?Int32): Unit
}

/**
 * Defines TabContent Component.
 * Represents the content of a single tab within the Tabs component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TabContent <: CommonMethodComponent<TabContent> & TabContentAttribute {
    /**
     * TabContent constructor.
     * Initializes a TabContent component with a child builder function.
     *
     * @param { () -> Unit } child - Builder function for tab content.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)

    /**
     * TabContent constructor.
     * Initializes a TabContent component without a child builder function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Sets the content displayed on the tab bar. NOTE: If the content set exceeds the space provided by the tab bar, it will be clipped
     *
     * @param { ?ResourceStr } content - Content displayed on the tab bar.
     * @returns { This } Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabBar(content: ?ResourceStr): This

    /**
     * Sets the content displayed on the tab bar.
     *
     * NOTE:
     * The bottom tab style does not include an indicator.
     * When an icon display error occurs, a gray blank block is displayed.
     *
     * @param { ?ResourceStr } [icon] - TabBar icon.
     * @param { ?ResourceStr } [text] - TabBar text.
     * @returns { This } Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabBar(icon!: ?ResourceStr = None, text!: ?ResourceStr = None): This

    /**
     * Sets the content displayed on the tab bar.
     *
     * NOTE:
     * If the content set exceeds the space provided by the tab bar, it will be clipped.
     *
     * @param { ?CustomBuilder } content - Content displayed on the tab bar.
     * @returns { This } Returns the TabContent instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabBar(content: ?CustomBuilder): This
}

/**
 * Defines the tabs attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TabsAttribute <: CommonMethod<TabsAttribute> {
    /**
     * Sets the width of the tab bar.
     * Notice: barWidth only supports Number type on 7, supports Length type since 8.
     *
     * @param { ?Length } value - Width of the tab bar. If the set value is less than 0
     * or greater than the width of the Tabs component, the default value is used.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func barWidth(value: ?Length): TabsAttribute

    /**
     * Sets the height of the tab bar.
     * Notice: barHeight only supports Number type on 7, supports Length type since 8.
     *
     * @param { ?Length } value - Height of the tab bar. If the set value is less than 0 or
     * greater than the height of the Tabs component, the default value is used.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func barHeight(value: ?Length): TabsAttribute

    /**
     * Sets whether to use vertical tabs.
     * Configures the orientation of the tabs.
     *
     * @param { ?Bool } value - Whether to use vertical tabs. Default value is false.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func vertical(value: ?Bool): TabsAttribute

    /**
     * Sets whether the tabs are scrollable.
     * Controls whether the tab bar can be scrolled when there are many tabs.
     *
     * @param { ?Bool } value - Whether the tabs are scrollable. Default value is true.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func scrollable(value: ?Bool): TabsAttribute

    /**
     * Sets the tab bar layout mode to BarMode.Fixed.
     * Configures the layout mode of the tab bar.
     *
     * @param { ?BarMode } value - The width of each tab is determined by equally dividing
     * the number of tabs by the bar width (or bar height in the vertical layout).
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func barMode(value: ?BarMode): TabsAttribute

    /**
     * Sets the length of time required to complete the tab switching animation,
     * which is initiated by clicking a specific tab or by calling the changeIndex API of TabsController.
     *
     * @param { ?Float32 } value - default value:
     *     When this property is not set or set to null, the default value is 0.
     *     When set to a value less than 0 or None, the default value is 300.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func animationDuration(value: ?Float32): TabsAttribute

    /**
     * Triggered when a tab is switched.
     *
     * NOTE:
     * This event is triggered when any of the following conditions is met:
     * 1. The swiping animation is completed, followed by tab switching.
     * 2. The Controller API is called.
     * 3. The attribute value is updated using a state variable.
     * 4. A tab is clicked.
     *
     * @param { ?Callback<Int32, Unit> } event - Callback function triggered when tab changes.
     * The parameter is the index of the selected tab.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onChange(event: ?Callback<Int32, Unit>): TabsAttribute
}

/**
 * Defines the attribute functions of TabContent.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TabContentAttribute <: CommonMethod<TabContentAttribute> {
    /**
     * Sets the content displayed on the tab bar.
     *
     * NOTE:
     * If the content set exceeds the space provided by the tab bar, it will be clipped.
     *
     * @param { ?ResourceStr } content - Content displayed on the tab bar.
     * @returns { TabContentAttribute } Returns the tab content attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func tabBar(content: ?ResourceStr): TabContentAttribute

    /**
     * Sets the content displayed on the tab bar.
     *
     * NOTE:
     * The bottom tab style does not include an indicator.
     * When an icon display error occurs, a gray blank block is displayed.
     *
     * @param { ?ResourceStr } icon - TabBar icon.
     * @param { ?ResourceStr } text - TabBar text.
     * @returns { TabContentAttribute } Returns the tab content attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func tabBar(icon!: ?ResourceStr, text!: ?ResourceStr): TabContentAttribute

    /**
     * Sets the content displayed on the tab bar.
     *
     * NOTE:
     * If the content set exceeds the space provided by the tab bar, it will be clipped.
     *
     * @param { ?CustomBuilder } content - Content displayed on the tab bar.
     * @returns { TabContentAttribute } Returns the tab content attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func tabBar(content: ?CustomBuilder): TabContentAttribute
}