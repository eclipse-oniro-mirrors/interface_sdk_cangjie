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

    /**
     * Sets the divider between the TabBar and TabContent components.
     *
     * @param { ?Length } strokeWidth - Width of the divider. It cannot be set in percentage.
     *  Default value: 0.0, Unit: vp, Value range: [0, +∞).
     * @param { ?ResourceColor } color - Color of the divider. Default value: #33182431.
     * @param { ?Length } startMargin - Distance between the divider and the top of the sidebar.
     *  It cannot be set in percentage. Default value: 0.0, Unit: vp, Value range: [0, +∞).
     * @param { ?Length } endMargin - Distance between the divider and the bottom of the sidebar.
     *  It cannot be set in percentage. Default value: 0.0, Unit: vp, Value range: [0, +∞).
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func divider(strokeWidth!: ?Length, color!: ?ResourceColor = None,
        startMargin!: ?Length = None, endMargin!: ?Length = None): This

    /**
     * Sets the edge effect used when the boundary of the scrolling area is reached.
     *
     * @param { ?EdgeEffect } edgeEffect - Effect used when the boundary of the scrolling area is reached.
     *  Default value: EdgeEffect.Spring
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func edgeEffect(edgeEffect: ?EdgeEffect): This

    /**
     * Triggered when the transition animation starts. If animationDuration is
     * set to 0 and scrollable is set to false, this callback is not triggered.
     *
     * @param { ?(Int32, Int32, TabsAnimationEvent) -> Unit } handler - Callback triggered when the transition animation starts.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onAnimationStart(handler: ?(Int32, Int32, TabsAnimationEvent) -> Unit): This

    /**
     * Triggered when a new page is about to be displayed.
     *
     * This event is triggered when any of the following occurs:
     *
     * 1. When the user swipes through the TabContent to switch to a new page.
     *
     * 2. When TabsController.changeIndex is called to switch to a new page.
     *
     * 3. When the index attribute is changed to switch to a new page.
     *
     * 4. When the user taps a tab on the tab bar to switch to a new page.
     *
     * 5. When the user presses the left or
     *     right arrow key on the keyboard to switch to a new page while the tab bar has focus.
     *
     * @param { ?(Int32, Int32) -> Bool } handler - Callback triggered when a new page is about to be displayed.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onContentWillChange(handler: ?(Int32, Int32) -> Bool): This

    /**
     * Triggered on a frame-by-frame basis during swipe gestures for tab switching.
     *
     * @param { ?(Int32, TabsAnimationEvent) -> Unit } handler - Triggered on a frame-by-frame basis during swipe gestures for tab switching.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onGestureSwipe(handler: ?(Int32, TabsAnimationEvent) -> Unit): This

    /**
     * Triggered when a tab is clicked.
     *
     * @param { ?(Int32) -> Unit } event - Index of the clicked tab. The index starts from 0.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onTabBarClick(event: ?(Int32) -> Unit): This
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

    /**
     * Sets the divider between the TabBar and TabContent components.
     *
     * @param { ?Length } strokeWidth - Width of the divider. It cannot be set in percentage.
     *  Default value: 0.0, Unit: vp, Value range: [0, +∞).
     * @param { ?ResourceColor } color - Color of the divider. Default value: #33182431.
     * @param { ?Length } startMargin - Distance between the divider and the top of the sidebar.
     *  It cannot be set in percentage. Default value: 0.0, Unit: vp, Value range: [0, +∞).
     * @param { ?Length } endMargin - Distance between the divider and the bottom of the sidebar.
     *  It cannot be set in percentage. Default value: 0.0, Unit: vp, Value range: [0, +∞).
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func divider(strokeWidth!: ?Length, color!: ?ResourceColor, startMargin!: ?Length,
        endMargin!: ?Length): TabsAttribute

    /**
     * Sets the edge effect used when the boundary of the scrolling area is reached.
     *
     * @param { ?EdgeEffect } edgeEffect - Effect used when the boundary of the scrolling area is reached.
     * Default value: EdgeEffect.Spring
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func edgeEffect(edgeEffect: ?EdgeEffect): TabsAttribute

    /**
     * Triggered when the transition animation starts. If animationDuration is
     * set to 0 and scrollable is set to false, this callback is not triggered.
     *
     * @param { ?(Int32, Int32, TabsAnimationEvent) -> Unit } handler - Callback triggered when the transition animation starts.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onAnimationStart(handler: ?(Int32, Int32, TabsAnimationEvent) -> Unit): TabsAttribute

    /**
     * Triggered when a new page is about to be displayed.
     *
     * This event is triggered when any of the following occurs:
     *
     * 1. When the user swipes through the TabContent to switch to a new page.
     *
     * 2. When TabsController.changeIndex is called to switch to a new page.
     *
     * 3. When the index attribute is changed to switch to a new page.
     *
     * 4. When the user taps a tab on the tab bar to switch to a new page.
     *
     * 5. When the user presses the left or
     *     right arrow key on the keyboard to switch to a new page while the tab bar has focus.
     *
     * @param { ?(Int32, Int32) -> Bool } handler - Callback triggered when a new page is about to be displayed.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onContentWillChange(handler: ?(Int32, Int32) -> Bool): TabsAttribute

    /**
     * Triggered on a frame-by-frame basis during swipe gestures for tab switching.
     *
     * @param { ?(Int32, TabsAnimationEvent) -> Unit } handler - Triggered on a frame-by-frame basis during swipe gestures for tab switching.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onGestureSwipe(handler: ?(Int32, TabsAnimationEvent) -> Unit): TabsAttribute

    /**
     * Triggered when a tab is clicked.
     *
     * @param { ?(Int32) -> Unit } event - Index of the clicked tab. The index starts from 0.
     * @returns { TabsAttribute } Returns the tabs attribute.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onTabBarClick(event: ?(Int32) -> Unit): TabsAttribute
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

/**
 * Describes the animation information of the Tabs component.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TabsAnimationEvent {
    /**
     * Offset of the currently displayed element relative to the start position of the Tabs component along the main axis.
     * Unit: vp.
     * Default value: 0.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var currentOffset: Float32

    /**
     * Offset of the target element relative to the start position of the Tabs component along the main axis.
     * Unit: vp.
     * Default value: 0.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var targetOffset: Float32

    /**
     * Hands-off velocity at the beginning of the animation. Unit: vp/s.
     *
     * Default value: 0.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var velocity: Float32
}
