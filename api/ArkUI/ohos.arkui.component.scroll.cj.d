package ohos.arkui.component.scroll

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.rect.*
import ohos.arkui.component.util.*
import ohos.arkui.shape.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*
import std.deriving.Derive

/**
 * The actual offset by which the scrollable scrolls.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollResult {
/**
 * Actual offset by which the scrollable scrolls in vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetRemain: Float64

/**
 * Constructs a scroll result.
 *
 * @param { Float64 } offsetRemain - The offset remain of scroll.
 * @returns { ScrollResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(offsetRemain!: Float64)
}

/**
 * Represents the offset values resulting from a scroll operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OffsetResult {
/**
 * Horizontal scrolling offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xOffset: Float64

/**
 * Vertical scrolling offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var yOffset: Float64

/**
 * Constructs an offset result.
 *
 * @param { Float64 } xOffset - Horizontal scrolling offset.
 * @param { Float64 } yOffset - Vertical scrolling offset.
 * @returns { OffsetResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(xOffset: Float64, yOffset: Float64)
}

/**
 * Describe the position, width, and height of a component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RectResult {
/**
 * Horizontal coordinate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Float64

/**
 * Vertical coordinate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Float64

/**
 * Rectangle width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: ?Float64

/**
 * Rectangle height.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: ?Float64

/**
 * Constructs a rect result.
 *
 * @param { Float64 } x - Representing the x in the rect values.
 * @param { Float64 } y - Representing the y in the rect values.
 * @param { Float64 } width - Representing the width in the rect values.
 * @param { Float64 } height - Representing the height in the rect values.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        x: Float64,
        y: Float64,
        width: Float64,
        height: Float64
    )
}

/**
 * Provides parameters for customizing scroll animations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollAnimationOptions {
/**
 * Scrolling duration.
 *
 * NOTE
 * A value less than 0 evaluates to the default value.
 *
 * @default 1000.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var duration: ?Float64

/**
 * Scrolling curve.
 *
 * @default Curve.Ease
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var curve: ?Curve

/**
 * Whether to enable overscroll.
 *
 * NOTE
 * Scrolling can exceed the boundary and initiate a bounce animation when this parameter is set to true,
 * and the component's edgeEffect attribute is set to EdgeEffect.Spring.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var canOverScroll: ?Bool

/**
 * The constructor.
 *
 * @param { ?Float64 } [duration] - The animation duration. The default value is 1000.0.
 * @param { ?Curve } [curve] - The animation curve. The default value is Curve.Ease.
 * @param { ?Bool } [canOverScroll] - Whether allow over scroll. The default value is false.
 * @returns { ScrollAnimationOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        duration!: ?Float64 = None,
        curve!: ?Curve = None,
        canOverScroll!: ?Bool = None
    )
}

/**
 * Enumerates alignment modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollAlign {
/**
 * The start edge of the list item is flush with the start edge of the list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * The list item is centered along the main axis of the list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * The end edge of the list item is flush with the end edge of the list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | 
/**
 * The list item is automatically aligned.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | ...
}

extend ScrollAlign <: Equatable<ScrollAlign> {
/**
 * Compares this ScrollAlign with another for equality.
 *
 * @param { ScrollAlign } other - The ScrollAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ScrollAlign): Bool
/**
 * Compares this ScrollAlign with another for equality.
 *
 * @param { ScrollAlign } other - The ScrollAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ScrollAlign): Bool
}

/**
 * Define nested scroll options
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class NestedScrollOptions {
/**
 * Set NestedScrollMode when the scrollable component scrolls forward
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var scrollForward: ?NestedScrollMode

/**
 * Set NestedScrollMode when the scrollable component scrolls backward
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var scrollBackward: ?NestedScrollMode

/**
 * The constructor.
 *
 * @param { ?NestedScrollMode } scrollForward - The forward scroll mode.
 * @param { ?NestedScrollMode } scrollBackward - The backward scroll mode.
 * @returns { NestedScrollOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(scrollForward: ?NestedScrollMode, scrollBackward: ?NestedScrollMode)
}

/**
 * Defines the fadingEdge options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FadingEdgeOptions {
/**
 * The length of FadingEdge.
 *
 * @default 32.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fadingEdgeLength: ?Length

/**
 * The constructor.
 *
 * @param { ?Length } [fadingEdgeLength] - The fading edge length. The default value is 32.vp.
 * @returns { FadingEdgeOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(fadingEdgeLength!: ?Length = None)
}

/**
 * Enum of scrollable containers' content clip mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ContentClipMode {
/**
 * Clip to content rect inside margin & padding.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ContentOnly
    | 
/**
 * Clip to scrollable's outer rect, including padding but inside margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Boundary
    | 
/**
 * Clip to the safeArea of scrollable container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SafeArea
    | ...
}

extend ContentClipMode <: Equatable<ContentClipMode> {
/**
 * Compares this ContentClipMode with another for equality.
 *
 * @param { ContentClipMode } other - The ContentClipMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ContentClipMode): Bool
/**
 * Compares this ContentClipMode with another for equality.
 *
 * @param { ContentClipMode } other - The ContentClipMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ContentClipMode): Bool
}

/**
 * Called before scroll to allow developer to control real offset the Scrollable can scroll.
 *
 * @param { Float64 } scrollOffset - offset this frame will scroll, which may or may not be reached.
 * @param { ScrollState } scrollState - current scroll state.
 * @param { ScrollSource } scrollSource - source of current scroll.
 * @returns { ScrollResult } the remain offset for the scrollable.
 */
public type OnWillScrollCallBack = (Float64, ScrollState, ScrollSource) -> ScrollResult

/**
 * On scroll callback using in scrollable onDidScroll.
 *
 * @param { Float64 } scrollOffset - offset this frame did scroll.
 * @param { ScrollState } scrollState - current scroll state.
 */
public type OnScrollCallBack = (scrollOffset: Float64, scrollState: ScrollState) -> Unit

/**
 * Represents the callback triggered when the Scroll component scrolls.
 *
 * NOTE
 * If the onScrollFrameBegin event and scrollBy method are used to implement nested scrolling,
 * Set the edgeEffect attribute of the scrollable child component to None. For example,
 * if a List is nested in the Scroll component, edgeEffect of the List must be set to EdgeEffect.None.
 *
 * @param { Float64 } xOffset - Horizontal offset per frame during scrolling. A positive offset indicates scrolling to the left,
 * and a negative offset indicates scrolling to the right.
 * Unit: vp
 * @param { Float64 } yOffset - Vertical offset per frame during scrolling.
 * A positive offset indicates scrolling upward, and a negative offset indicates scrolling downward.
 * Unit: vp
 * @param { ScrollState } scrollState - Current scrolling state.
 */
public type ScrollOnScrollCallback = (Float64, Float64, ScrollState) -> Unit

/**
 * Represents the callback triggered before each frame scrolling starts.
 *
 * @param { Float64 } offset - Amount to scroll by, in vp.
 * @param { ScrollState } state - Current scroll state.
 * @returns { Float64 } data - the scroll data return by handler
 */
public type OnScrollFrameBeginCallback = (Float64, ScrollState) -> Float64

/**
 * Represents the callback triggered when scrolling reaches an edge.
 *
 * @param { Edge } side - Edge position to scroll to.
 */
public type OnScrollEdgeCallback = (Edge) -> Unit

/**
 * Provides parameters for scrolling to the edge of a scrollable container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollEdgeOptions {
/**
 * Fixed velocity for scrolling to the edge of the container.
 * If the value specified is less than or equal to 0, the parameter will not take effect.
 *
 * @default 0vp/s
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var velocity: ?Float32

/**
 * The constructor.
 *
 * @param { ?Float32 } [velocity] - Fixed velocity for scrolling to the edge of the container. The default value is 0vp/s.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(velocity!: ?Float32 = None)
}

/**
 * Provides parameters for scrolling to a specific index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollToIndexOptions {
/**
 * Extra offset for scrolling to a specified index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var extraOffset: ?Length

/**
 * The constructor.
 *
 * @param { ?Length } [extraOffset] - Extra offset for scrolling to a specified index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(extraOffset!: ?Length = None)
}

/**
 * Defines Scroll Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Scroll <: ScrollableCommonMethodComponent<Scroll> & ScrollAttribute {
/**
 * Constructs a scroll component.
 *
 * @returns { Scroll }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Constructs a scroll component.
 *
 * @param { () -> Unit } child - The child component.
 * @returns { Scroll }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(child: () -> Unit)

/**
 * Constructs a scroll component.
 *
 * @param { ?Scroller } scroller - The scroller of current Scroll component.
 * @param { () -> Unit } child - The child component.
 * @returns { Scroll }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(scroller: ?Scroller, child: () -> Unit)

/**
 * Sets the scrolling direction.
 *
 * @param { ?ScrollDirection } scrollDirection - Scrolling direction. Default value: ScrollDirection.Vertical
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollable(scrollDirection: ?ScrollDirection): This

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult } handler - Callback triggered before scrolling.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult): This

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> Unit } handler - Callback triggered before scrolling.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> Unit): This

/**
 * Triggered when the Scroll component scrolls. NOTE 1. This event is triggered when scrolling is started by the Scroll component or other input settings, such as keyboard and mouse operations. 2. This event is triggered when the controller API is called. 3. This event supports the out-of-bounds bounce effect
 *
 * @param { ?ScrollOnScrollCallback } callback - Callback triggered when the Scroll component scrolls.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDidScroll(callback: ?ScrollOnScrollCallback): This

/**
 * Triggered when each frame scrolling starts.
 *
 * @param { ?OnScrollFrameBeginCallback } event - Callback triggered when each frame scrolling starts.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollFrameBegin(event: ?OnScrollFrameBeginCallback): This

/**
 * Triggered when scrolling reaches the edge.
 *
 *
 * NOTE
 * 1. This event is triggered when scrolling reaches the edge after being started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 *
 * @param { ?OnScrollEdgeCallback } event - Edge position to scroll to.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollEdge(event: ?OnScrollEdgeCallback): This
}

/**
 * Defines a controller for scrollable container components.
 *
 * NOTE
 * 1. The binding of a Scroller instance to a scrollable container component occurs during the component creation phase.
 * 2. Scroller APIs can only be effectively called after the Scroller instance is bound to a scrollable container component.
 * Otherwise, depending on the API called, it may have no effect or throw an exception.
 * 3. For example, with aboutToAppear, this callback is executed after a new instance of a custom component is
 * created and before its build() method is called.
 * Therefore, if a scrollable component is defined within the build method of a custom component,
 * the internal scrollable component has not yet been created during the aboutToAppear callback
 * of that custom component, and therefore the Scroller APIs cannot be called effectively.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Scroller {
/**
 * A constructor used to create a Scroller object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Scrolls to the specified position.
 *
 * @param { Length } xOffset - Horizontal scrolling offset.
 * @param { Length } yOffset - Vertical scrolling offset.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollTo(xOffset!: Length, yOffset!: Length): Unit

/**
 * Scrolls to the specified position.
 *
 *
 * @param { Length } xOffset - Horizontal scrolling offset.
 * @param { Length } yOffset - Vertical scrolling offset.
 * @param { ?ScrollAnimationOptions } animation - Animation configuration.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollTo(xOffset!: Length, yOffset!: Length, animation!: ?ScrollAnimationOptions): Unit

/**
 * Scrolls to the specified position.
 *
 *
 * @param { Length } xOffset - Horizontal scrolling offset.
 * @param { Length } yOffset - Vertical scrolling offset.
 * @param { ?Bool } animation - Animation configuration.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollTo(xOffset!: Length, yOffset!: Length, animation!: ?Bool): Unit

/**
 * Scrolls by the specified amount.
 * NOTE
 * This API is available for the ArcList, Scroll, List, Grid, and WaterFlow components.
 *
 *
 * @param { Length } xOffset - Amount to scroll by in the horizontal direction. The percentage format is not supported.
 *     Value range: (-∞, +∞).
 * @param { Length } yOffset - Amount to scroll by in the vertical direction. The percentage format is not supported.
 *     Value range: (-∞, +∞).
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBy(xOffset!: Length, yOffset!: Length): Unit

/**
 * Scrolls to the edge of the container, regardless of the scroll axis direction
 *
 * @param { Edge } value - Edge position to scroll to.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollEdge(value: Edge): Unit

/**
 * Scrolls to the edge of the container, regardless of the scroll axis direction.
 *
 * @param { Edge } value - Edge position to scroll to.
 * @param { ?ScrollEdgeOptions } options - Mode of scrolling to the edge position.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollEdge(value: Edge, options: ?ScrollEdgeOptions): Unit

/**
 * Performs inertial scrolling based on the initial velocity passed in.
 *
 * @param { Float64 } velocity -  Initial velocity of inertial scrolling. Unit: vp/s
 * NOTE
 * If the value specified is 0, it is considered as invalid, and the scrolling for this instance will not take effect.
 * A positive value indicates scrolling towards the top, while a negative value indicates scrolling towards the bottom.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fling(velocity: Float64): Unit

/**
 * Scrolls to the next or previous page.
 *
 * @param { Bool } next - Whether to turn to the next page.
 *     The value true means to scroll to the next page, and false means to scroll to the previous page.
 * @param { ?Bool } [animation] - Whether enable animation on page scroll. The default value is false.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollPage(next: Bool, animation!: ?Bool = None): Unit

/**
 * Obtains the current scrolling offset.
 *
 * @returns { Option<OffsetResult> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func currentOffset(): Option<OffsetResult>

/**
 * Scrolls to a specified index, with support for setting an extra offset for the scroll.
 * NOTE:
 * This API only works for the ArcList, Grid, List, and WaterFlow components.
 *
 * @param { Int32 } index - Index of the item to be scrolled to in the container.
 *     NOTE:
 *     If the value set is a negative value or greater than the maximum index of the items in the container,
 *     the value is deemed abnormal, and no scrolling will be performed.
 * @param { ?Bool } [smooth] - If true, scroll to index item with animation. If false, scroll to index item without animation. The default value is false.
 * @param { ?ScrollAlign } [align] - Sets the alignment mode of a specified index.
 * @param { ?ScrollToIndexOptions } [options] - Sets the options of a specified index, such as extra offset.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollToIndex(
        index: Int32,
        smooth!: ?Bool = None,
        align!: ?ScrollAlign = None,
        options!: ?ScrollToIndexOptions = None
    ): Unit

/**
 * Checks whether the component has scrolled to the bottom.
 *
 * NOTE
 * This API is available for the ArcList, Scroll, List, Grid, and WaterFlow components.
 *
 * @returns { Bool } Returns whether the component scrolls to the end position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func isAtEnd(): Bool

/**
 * Obtains the size and position of a child component relative to its container.
 *
 * NOTE
 * - The value of index must be the index of a child component visible in the display area.
 * Otherwise, the value is considered invalid.
 * - The value of index must be the index of a child component visible in the display area. Otherwise,
 * the value is considered invalid.
 *
 * @param { ?Int32 } index - Index of the target child component.
 * @returns { RectResult } Returns the size and position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getItemRect(index: ?Int32): RectResult

/**
 * Obtains the index of a child component based on coordinates.
 *
 * NOTE
 * The returned index is -1 for invalid coordinates.
 *
 * @param { Float64 } x - X-coordinate, in vp.
 * @param { Float64 } y - Y-coordinate, in vp.
 * @returns { Int32 } Index of the item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getItemIndex(x: Float64, y: Float64): Int32
}

/**
 * Defines the scroll attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ScrollAttribute <: ScrollableCommonMethod<ScrollAttribute> {
/**
 * Sets the scrolling direction.
 *
 * @param { ?ScrollDirection } scrollDirection - Scrolling direction.Default value: ScrollDirection.Vertical
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollable(scrollDirection: ?ScrollDirection): ScrollAttribute

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult } handler - Callback triggered before scrolling.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult): ScrollAttribute

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> Unit } handler - Callback triggered before scrolling.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> Unit): ScrollAttribute

/**
 * Triggered when the Scroll component scrolls.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?ScrollOnScrollCallback } callback -  Callback triggered when the Scroll component scrolls.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDidScroll(callback: ?ScrollOnScrollCallback): ScrollAttribute

/**
 * Triggered when each frame scrolling starts.
 *
 * @param { ?OnScrollFrameBeginCallback } event - Callback triggered when each frame scrolling starts.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollFrameBegin(event: ?OnScrollFrameBeginCallback): ScrollAttribute

/**
 * Triggered when scrolling reaches the edge.
 *
 *
 * NOTE
 * 1. This event is triggered when scrolling reaches the edge after being started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?OnScrollEdgeCallback } event - Edge position to scroll to.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollEdge(event: ?OnScrollEdgeCallback): ScrollAttribute
}

/**
 * CommonScrollableMethod
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class ScrollableCommonMethodComponent<T> <: CommonMethodComponent<T> {
    protected init(id: Int64)

    protected init()

    protected open func initial(): Unit

    protected open func update(): Unit

/**
 * Sets the scrollbar state.
 *
 * @param { ?BarState } barState - Scrollbar state.Default value: BarState.Auto for the List, Grid,
 *     and Scroll components and BarState.Off for the WaterFlow component
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBar(barState: ?BarState): T

    protected func scrollBarInner(barState: BarState): T

/**
 * Sets the scrollbar color.
 *
 * @param { ?ResourceColor } color - Scrollbar color.Default value: 0x182431 (40% opacity)
 *     A number value indicates a HEX color in RGB or ARGB format,
 *     for example, 0xffffff. A string value indicates a color in RGB or ARGB format, for example, 0xffffff.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBarColor(color: ?ResourceColor): T

    protected func scrollBarColorInner(color: ?ResourceColor): T

/**
 * Sets the scrollbar width.
 *
 * @param { ?Length } value - Scrollbar width.Default value: 4
 *     Unit: vp
 *     If this parameter is set to a value less than or equal to 0, the default value is used.
 *     The value 0 means not to show the scrollbar.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBarWidth(value: ?Length): T

    protected func scrollBarWidthInner(value: ?Length): T

/**
 * Sets the nested scrolling options. You can set the nested scrolling mode in the forward and backward directions
 * to implement scrolling linkage with the parent component.
 *
 * @param { ?NestedScrollOptions } value - options for nested scrolling.
 *      Default value: scrollForward: NestedScrollMode.SelfOnly, scrollBackward: NestedScrollMode.SelfOnly.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func nestedScroll(value: ?NestedScrollOptions): T

    protected func nestedScrollInner(value: ?NestedScrollOptions): T

/**
 * Sets whether to support scroll gestures. When this attribute is set to false,
 * scrolling by finger or mouse is not supported, but the scroll controller API is not affected.
 *
 * @param { ?Bool } value - Whether to support scroll gestures.Default value: true
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func enableScrollInteraction(value: ?Bool): T

    protected func enableScrollInteractionInner(value: ?Bool): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func friction(value: ?Float64): T

    protected func frictionInner(value: ?Float64): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func friction(value: ?AppResource): T

    protected func frictionInner(value: ?AppResource): T

/**
 * Triggered when the scrollable component reaches the start position.
 *
 * @param { ?() -> Unit } event - Callback function, triggered when the scrollable reaches the start position.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onReachStart(event: ?() -> Unit): T

    protected func onReachStartInner(event: () -> Unit): T

/**
 * Triggered when the scrollable component reaches the end position.
 *
 * @param { ?() -> Unit } event - Callback function, triggered when the scrollable reaches the end position.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onReachEnd(event: ?() -> Unit): T

    protected func onReachEndInner(event: () -> Unit): T

/**
 * Triggered when the scrollable component starts scrolling initiated by the user's finger dragging the component or its scrollbar.
 *
 * @param { ?() -> Unit } event - Callback function, triggered when the scrollable starts scrolling.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollStart(event: ?() -> Unit): T

    protected func onScrollStartInner(event: () -> Unit): T

/**
 * Called when scrolling has stopped.
 *
 * NOTE
 * 1. This event is triggered when scrolling is stopped by the Scroll component or other input settings, such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called, accompanied by a transition animation.
 *
 * @param { ?() -> Unit } event - Callback function, triggered when the scrollable stops scrolling.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollStop(event: ?() -> Unit): T

    protected func onScrollStopInner(event: () -> Unit): T

/**
 * Sets the maximum initial velocity at the start of the fling animation that occurs after gesture-driven scrolling ends.
 *
 * @param { ?Float64 } speedLimit - Maximum initial velocity at the start of the fling animation.
 *     Default value: 9000
 *     Unit: vp/s
 *     Value range: (0, +∞). If this parameter is set to a value less than or equal to 0, the default value is used.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func flingSpeedLimit(speedLimit: ?Float64): T

    protected func flingSpeedLimitInner(speedLimit: Float64): T

/**
 * Called when setting whether to enable fading Edge effect.
 *
 * @param { Option<Bool> } enabled - Whether to turn on the edge fade effect
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fadingEdge(enabled: Option<Bool>): T

/**
 * Called when setting whether to enable fading Edge effect.
 *
 * @param { Option<Bool> } enabled - Whether to turn on the edge fade effect
 * @param { ?FadingEdgeOptions } options - Fading edge options.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fadingEdge(enabled: Option<Bool>, options: ?FadingEdgeOptions): T

/**
 * Sets the content clipping area for this scrollable component.
 *
 * @param { ?ContentClipMode } clip - A value from enum ContentClipMode or a customized clip rect.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clipContent(clip: ?ContentClipMode): T

/**
 * Sets the content clipping area for this scrollable component.
 *
 * @param { ?RectShape } clip - A value from enum ContentClipMode or a customized clip rect.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clipContent(clip: ?RectShape): T

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> ScrollResult> } handler - Callback triggered before scrolling.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> ScrollResult>): T

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> Unit> } handler - Callback triggered before scrolling.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> Unit>): T

/**
 * Triggered when the Scroll component scrolls.
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?OnScrollCallBack } handler - Callback triggered when the Scroll component scrolls.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDidScroll(handler: ?OnScrollCallBack): T

    protected func onDidScrollInner(handler: OnScrollCallBack): T
}

/**
 * CommonScrollableMethod
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface ScrollableCommonMethod<T> <: CommonMethod<T> {
/**
 * Sets the scrollbar state.
 *
 * @param { ?BarState } barState - Scrollbar state.Default value: BarState.Auto for the List, Grid,
 *     and Scroll components and BarState.Off for the WaterFlow component
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollBar(barState: ?BarState): T

/**
 * Sets the scrollbar color.
 *
 * @param { ?ResourceColor } color - Scrollbar color. Default value: 0x182431 (40% opacity)
 *     A number value indicates a HEX color in RGB or ARGB format,
 *     for example, 0xffffff. A string value indicates a color in RGB or ARGB format, for example, 0xffffff.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollBarColor(color: ?ResourceColor): T

/**
 * Sets the scrollbar width.
 *
 * @param { ?Length } value - Scrollbar width. Default value: 4
 *     Unit: vp
 *     If this parameter is set to a value less than or equal to 0, the default value is used.
 *     The value 0 means not to show the scrollbar.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollBarWidth(value: ?Length): T

/**
 * Sets the nested scrolling options. You can set the nested scrolling mode in the forward and backward directions
 * to implement scrolling linkage with the parent component.
 *
 * @param { ?NestedScrollOptions } value - Nested scrolling options.
 *      Default value: scrollForward: NestedScrollMode.SelfOnly, scrollBackward: NestedScrollMode.SelfOnly.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func nestedScroll(value: ?NestedScrollOptions): T

/**
 * Sets whether to support scroll gestures. When this attribute is set to false,
 * scrolling by finger or mouse is not supported, but the scroll controller API is not affected.
 *
 * @param { ?Bool } value - Whether to support scroll gestures. The default value is true.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func enableScrollInteraction(value: ?Bool): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func friction(value: ?Float64): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func friction(value: ?AppResource): T

/**
 * Triggered when the scrollable component reaches the start position.
 *
 * @param { ?() -> Unit } event - The callback on reach start.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onReachStart(event: ?() -> Unit): T

/**
 * Triggered when the scrollable component reaches the end position.
 *
 * @param { ?() -> Unit } event - The callback on reach end.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onReachEnd(event: ?() -> Unit): T

/**
 * Triggered when the scrollable component starts scrolling initiated by the user's finger dragging the component or its scrollbar.
 *
 * @param { ?() -> Unit } event - Callback function, triggered when the scrollable starts scrolling.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollStart(event: ?() -> Unit): T

/**
 * Triggered when scrolling stops after the user's finger leaves the screen.
 *
 * NOTE
 * 1. This event is triggered when scrolling is stopped by the Scroll component or other input settings, such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called, accompanied by a transition animation.
 *
 * @param { ?() -> Unit } event - Callback triggered when scrolling stops.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollStop(event: ?() -> Unit): T

/**
 * Sets the maximum initial velocity at the start of the fling animation that occurs after gesture-driven scrolling ends.
 *
 * @param { ?Float64 } speedLimit - Maximum initial velocity at the start of the fling animation.
 * Default value: 9000
 * Unit: vp/s
 * Value range: (0, +∞). If this parameter is set to a value less than or equal to 0, the default value is used.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func flingSpeedLimit(speedLimit: ?Float64): T

/**
 * Called when setting whether to enable fading Edge effect.
 *
 * @param { Option<Bool> } enabled - Whether enable fading edge.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fadingEdge(enabled: Option<Bool>): T

/**
 * Called when setting whether to enable fading Edge effect.
 *
 * @param { Option<Bool> } enabled - Whether enable fading edge.
 * @param { ?FadingEdgeOptions } options - Fading edge options.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fadingEdge(enabled: Option<Bool>, options: ?FadingEdgeOptions): T

/**
 * Sets the content clipping area for this scrollable component.
 *
 * @param { ?ContentClipMode } clip - A value from enum ContentClipMode or a customized clip rect.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func clipContent(clip: ?ContentClipMode): T

/**
 * Sets the content clipping area for this scrollable component.
 *
 * @param { ?RectShape } clip - A value from enum ContentClipMode or a customized clip rect.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func clipContent(clip: ?RectShape): T

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> ScrollResult> } handler - Callback triggered before scrolling.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> ScrollResult>): T

/**
 * Triggered before scrolling.
 *
 * NOTE
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,
 * such as keyboard and mouse operations.
 * 2. This event is triggered when the controller API is called.
 * 3. This event supports the out-of-bounds bounce effect.
 *
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> Unit> } handler - Callback triggered before scrolling.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> Unit>): T

/**
 * Triggered when the Scroll component scrolls.
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,such as keyboard and mouse operations;
 * 2. This event is triggered when the controller API is called;
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?OnScrollCallBack } handler - Callback triggered when the Scroll component scrolls.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDidScroll(handler: ?OnScrollCallBack): T
}