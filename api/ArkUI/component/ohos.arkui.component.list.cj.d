package ohos.arkui.component.list

import ohos.arkui.component.common.*
import ohos.arkui.component.list_item_group.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.scroll.*
import ohos.arkui.component.util.*
import ohos.arkui.shape.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*

/**
 * The data returned by the event handler when onScrollFrameBegin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OnScrollFrameBeginHandlerResult {
    /**
     * Actual scroll offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offsetRemain: ?Float64

    /**
     * Constructor.
     *
     * @param { ?Float64 } offsetRemain - Actual scroll offset.
     * @returns { OnScrollFrameBeginHandlerResult }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(offsetRemain!: ?Float64)
}

/**
 * Defines List Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class List <: ScrollableCommonMethodComponent<List> & ListAttribute {
    /**
     * Defines the constructor of List.
     *
     * @param { ?Int64 } [space] - The space between items.
     * @param { ?Int32 } [initialIndex] - The initial index of the list.
     * @param { ?Scroller } [scroller] - The scroller instance.
     * @param { () -> Unit } child - The child component builder.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        space!: ?Int64 = None,
        initialIndex!: ?Int32 = None,
        scroller!: ?Scroller = Option<Scroller>.None,
        child!: () -> Unit
    )

    /**
     * Sets the direction in which the list items are arranged.
     *
     * @param { ?Axis } value - Direction in which the list items are arranged.Default value: Axis.Vertical
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func listDirection(value: ?Axis): This

    /**
     * Sets the style of the divider for the list items. By default, there is no divider.
     *
     * @param { Option<ListDividerOptions> } value - Style of the divider for the list items.Default value: null
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func divider(value: Option<ListDividerOptions>): This

    /**
     * Set the effect used when the scroll boundary is reached
     *
     * @param { ?EdgeEffect } value - Effect used when the scroll boundary is reached. The spring and shadow effects are supported.
     *     Default value: EdgeEffect.None
     *     The value { alwaysEnabled: true } means to enable the scroll effect, and { alwaysEnabled: false } means the opposite.
     *     Default value: { alwaysEnabled: false }
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func edgeEffect(value: ?EdgeEffect): This

    /**
     * Sets whether to enable chained animations, which provide a visually connected,
     * or "chained," effect when the list is scrolled or its top or bottom edge is dragged.
     *
     * @param { ?Bool } value - Whether to enable chained animations.
     *      false (default): Chained animations are disabled.
     *      true: Chained animations are enabled.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func chainAnimation(value: ?Bool): This

    /**
     * Called when the minimum number of list item caches is set for long list deferred loading.
     *
     * @param { ?Int32 } value - Number of list items to be preloaded.
     *     Default value: number of nodes visible on the screen, with the maximum value of 16
     *     Value range: [0, +∞)
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func cachedCount(value: ?Int32): This

    /**
     * Sets whether to enable multiselect.
     *
     * @param { ?Bool } value - Whether to enable multiselect.
     *      false (default): Multiselect is disabled.
     *      true: Multiselect is enabled.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func multiSelectable(value: ?Bool): This

    /**
     * Sets the number of columns or rows in the list. If the value is set to the gutter type, it indicates the gap between columns.
     * It takes effect when the number of columns is greater than 1.
     *
     * @param { ?Int32 } value - Number of columns or rows in the list.Default value: 1
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lanes(value: ?Int32): This

    /**
     * Sets the number of columns or rows in the list. If the value is set to the gutter type, it indicates the gap between columns.
     * It takes effect when the number of columns is greater than 1.
     *
     * @param { ?Length } minLength - The minimum length of lanes.
     * @param { ?Length } maxLength - The maximum length of lanes.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lanes(minLength!: ?Length, maxLength!: ?Length): This

    /**
     * Alignment mode of list items along the cross axis when the cross-axis width of the list is greater
     * than the cross-axis width of list items multiplied by the value of lanes.
     *
     * @param { ?ListItemAlign } value - Alignment mode of list items along the cross axis.Default value: ListItemAlign.Start
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignListItem(value: ?ListItemAlign): This

    /**
     * Sets whether to pin the header to the top or the footer to the bottom in the list item group, NOTE: - Occasionally, after sticky is set, floating-point calculation precision may result in small gaps appearing during scrolling. To address this issue, you can apply the pixelRound attribute to the current component, which rounds down the pixel values and help eliminate the gaps
     *
     * @param { ?StickyStyle } value - Whether to pin the header to the top or the footer to the bottom in the list item group. Default value: StickyStyle.None.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sticky(value: ?StickyStyle): This

    /**
     * Triggered when a child component enters or leaves the list display area.
     *
     * @param { ?(Int32, Int32, Int32) -> Unit } event - The scroll index event handler.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onScrollIndex(event: ?(Int32, Int32, Int32) -> Unit): This

    /**
     * Called when scrolling begin each frame.
     *
     * @param { ?(Float64, ScrollState) -> OnScrollFrameBeginHandlerResult } event - callback function, triggered when the scrolling begin each frame.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onScrollFrameBegin(event: ?(Float64, ScrollState) -> OnScrollFrameBeginHandlerResult): This

    /**
     * Sets the effect used when the scroll boundary is reached.
     *
     * @param { ?EdgeEffect } edgeEffect - Effect used when the scroll boundary is reached. The spring and shadow
     *     effects are supported.
     *     Default value: EdgeEffect.Spring.
     * @param { ?EdgeEffectOptions } options - Whether to enable the scroll effect when the component content is smaller
     *     than the component itself. The value EdgeEffectOptions(true) means to enable the scroll effect, and
     *     EdgeEffectOptions(false) means the opposite. Default value: EdgeEffectOptions(false).
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func edgeEffect(edgeEffect: ?EdgeEffect, options!: ?EdgeEffectOptions): This

    /**
     * Sets the scroll snap alignment effect for list items when scrolling ends.
     * Scroll snap alignment is supported only for lists with uniform item heights; otherwise, the result may be 
     * inaccurate. During the alignment animation, the scroll operation source type reported by the onWillScroll 
     * event is ScrollSource.Fling.
     *
     * @param { ?ScrollSnapAlign } value - Alignment mode of the scroll snap position. Default value:
     *     ScrollSnapAlign.None.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scrollSnapAlign(value: ?ScrollSnapAlign): This
}

/**
 * Defines the List attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ListAttribute <: ScrollableCommonMethod<ListAttribute> {
    /**
     * Sets the direction in which the list items are arranged.
     *
     * @param { ?Axis } value - Direction in which the list items are arranged.Default value: Axis.Vertical
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func listDirection(value: ?Axis): ListAttribute

    /**
     * Sets the style of the divider for the list items. By default, there is no divider.
     *
     * @param { Option<ListDividerOptions> } value - Style of the divider for the list items.Default value: null
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func divider(value: Option<ListDividerOptions>): ListAttribute

    /**
     * Set the effect used when the scroll boundary is reached.
     *
     * @param { ?EdgeEffect } value - Effect used when the scroll boundary is reached. The spring and shadow effects are supported.
     *     Default value: EdgeEffect.None
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func edgeEffect(value: ?EdgeEffect): ListAttribute

    /**
     * Sets whether to enable chained animations, which provide a visually connected,
     * or "chained," effect when the list is scrolled or its top or bottom edge is dragged.
     *
     * @param { ?Bool } value - Whether to enable chained animations.
     *      false (default): Chained animations are disabled.
     *      true: Chained animations are enabled.
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func chainAnimation(value: ?Bool): ListAttribute

    /**
     * Called when the minimum number of list item caches is set for long list deferred loading.
     *
     * @param { ?Int32 } value - Number of list items to be preloaded.
     *     Default value: number of nodes visible on the screen, with the maximum value of 16
     *     Value range: [0, +∞)
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func cachedCount(value: ?Int32): ListAttribute

    /**
     * Sets whether to enable multiselect.
     *
     * @param { ?Bool } value - Whether to enable multiselect.
     *      false (default): Multiselect is disabled.
     *      true: Multiselect is enabled.
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func multiSelectable(value: ?Bool): ListAttribute

    /**
     * Sets the number of columns or rows in the list. If the value is set to the gutter type, it indicates the gap between columns.
     * It takes effect when the number of columns is greater than 1.
     *
     * @param { ?Int32 } value - Number of columns or rows in the list.Default value: 1
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func lanes(value: ?Int32): ListAttribute

    /**
     * Sets the number of columns or rows in the list. If the value is set to the gutter type, it indicates the gap between columns.
     * It takes effect when the number of columns is greater than 1.
     *
     * @param { ?Length } minLength - The minimum length of lanes.
     * @param { ?Length } maxLength - The maximum length of lanes.
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func lanes(minLength!: ?Length, maxLength!: ?Length): ListAttribute

    /**
     * Alignment mode of list items along the cross axis when the cross-axis width of the list is greater
     * than the cross-axis width of list items multiplied by the value of lanes.
     *
     * @param { ?ListItemAlign } value - Alignment mode of list items along the cross axis.Default value: ListItemAlign.Start
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func alignListItem(value: ?ListItemAlign): ListAttribute

    /**
     * Sets whether to pin the header to the top or the footer to the bottom in the list item group,
     * NOTE:
     * - Occasionally, after sticky is set, floating-point calculation precision may result in small gaps appearing during scrolling.
     * To address this issue, you can apply the pixelRound attribute to the current component, which rounds down the pixel values and help eliminate the gaps.
     *
     * @param { ?StickyStyle } value - Whether to pin the header to the top or the footer to the bottom in the list item group. Default value: StickyStyle.None.
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func sticky(value: ?StickyStyle): ListAttribute

    /**
     * Triggered when a child component enters or leaves the list display area.
     *
     * @param { ?(Int32, Int32, Int32) -> Unit } event - The scroll index event handler.
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onScrollIndex(event: ?(Int32, Int32, Int32) -> Unit): ListAttribute

    /**
     * Called when scrolling begin each frame.
     *
     * @param { ?(Float64, ScrollState) -> OnScrollFrameBeginHandlerResult } event - callback function, triggered when the scrolling begin each frame.
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onScrollFrameBegin(event: ?(Float64, ScrollState) -> OnScrollFrameBeginHandlerResult): ListAttribute

    /**
     * Sets the effect used when the scroll boundary is reached.
     *
     * @param { ?EdgeEffect } edgeEffect - Effect used when the scroll boundary is reached. The spring and shadow
     *     effects are supported.
     *     Default value: EdgeEffect.Spring.
     * @param { ?EdgeEffectOptions } options - Whether to enable the scroll effect when the component content is smaller
     *     than the component itself. The value EdgeEffectOptions(true) means to enable the scroll effect, and
     *     EdgeEffectOptions(false) means the opposite. Default value: EdgeEffectOptions(false).
     * @returns { ListAttribute }
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func edgeEffect(edgeEffect: ?EdgeEffect, options!: ?EdgeEffectOptions): ListAttribute

    /**
     * Sets the scroll snap alignment effect for list items when scrolling ends.
     * This API is available only when the heights of list items are the same. During the alignment animation,
     * the scroll operation source type reported by the onWillScroll event is ScrollSource.Fling.
     *
     * @param { ?ScrollSnapAlign } value - Alignment mode of the scroll snap position. Default value:
     *     ScrollSnapAlign.None.
     * @returns { ListAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func scrollSnapAlign(value: ?ScrollSnapAlign): ListAttribute
}

/**
 * Enumerates the areas of ListItemGroup.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ListItemGroupArea {
    /**
     * Area other than the ListItem, header, and footer areas in ListItemGroup.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None
    |
    /**
     * ListItem area in ListItemGroup.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    InListItemArea
    |
    /**
     * Header area in ListItemGroup.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    InHeaderArea
    |
    /**
     * Footer area in ListItemGroup.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    InFooterArea
    | ...
}

extend ListItemGroupArea <: Equatable<ListItemGroupArea> {
    /**
     * Compares this ListItemGroupArea with another for equality.
     *
     * @param { ListItemGroupArea } other - The ListItemGroupArea to compare with.
     * @returns { Bool } True if both areas are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: ListItemGroupArea): Bool

    /**
     * Compares this ListItemGroupArea with another for inequality.
     *
     * @param { ListItemGroupArea } other - The ListItemGroupArea to compare with.
     * @returns { Bool } True if both areas are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: ListItemGroupArea): Bool
}

/**
 * Describes the details of the child components in the visible area of a list.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class VisibleListContentInfo {
    /**
     * Index of the list item or list item group in the list display area.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var index: Int32

    /**
     * Position of the top or bottom edge of the viewport in the list item group to which the edge is located, if
     *     applicable.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var itemGroupArea: ?ListItemGroupArea

    /**
     * Index of the starting or ending list item in the list item group to which the top or bottom edge of the viewport
     *     is located.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var itemIndexInGroup: ?Int32

    /**
     * VisibleListContentInfo constructor.
     *
     * @param { Int32 } index - Index of the list item or list item group in the list display area.
     * @param { ?ListItemGroupArea } [itemGroupArea] - Position of the top or bottom edge of the viewport in the list
     *     item group to which the edge is located, if applicable.
     * @param { ?Int32 } [itemIndexInGroup] - Index of the starting or ending list item in the list item group to which
     *     the top or bottom edge of the viewport is located.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        index: Int32,
        itemGroupArea!: ?ListItemGroupArea = Option<ListItemGroupArea>.None,
        itemIndexInGroup!: ?Int32 = None
    )
}

/**
 * Defines the scroll controller for the List component.
 * A List component is bound to a ListScroller on a one-to-one basis.
 * ListScroller inherits from Scroller and has all methods of Scroller.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ListScroller <: Scroller {
    /**
     * ListScroller constructor.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Obtains the size of a list item in a list item group and its position relative to the list.
     *
     * The value of index must be the index of a child component visible in the display area.
     * The child component for which index is set must be a list item group.
     * The value of indexInGroup must be the index of a list item in the list item group visible in the display area.
     * When index or indexInGroup is set to an invalid value, the returned size and position are both 0.
     *
     * @param { Int32 } index - Index of the list item group in the list.
     * @param { Int32 } indexInGroup - Index of the list item in the list item group.
     * @returns { RectResult } Size of the list item in the list item group and its position relative to the list. Unit:
     *     vp.
     * @throws { BusinessException } 100004 - Controller not bound to a component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full",
        throwexception: true
    ]
    public func getItemRectInGroup(index: Int32, indexInGroup: Int32): RectResult

    /**
     * Scrolls to the specified list item in the specified list item group.
     *
     * If the value set for index is a negative value or greater than the maximum index of the items in the container,
     *     the value is deemed abnormal, and no scrolling will be performed.
     * If the value set for indexInGroup is a negative value or greater than the maximum index of the items in the list
     *     item group, the value is deemed abnormal, and no scrolling will be performed.
     *
     * @param { Int32 } index - Index of the target list item group in the current container.
     * @param { Int32 } indexInGroup - Index of the target list item in the list item group specified by index.
     * @param { ?Bool } [smooth] - Whether the scroll animation is enabled. Default value: false. When smooth is set to
     *     true, all passed items are loaded and counted in layout calculation. This may result in performance issues if
     *     a large number of items are involved.
     * @param { ?ScrollAlign } [align] - How the list item to scroll to is aligned with the container. Default value:
     *     ScrollAlign.Start.
     * @throws { BusinessException } 100004 - Controller not bound to a component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full",
        throwexception: true
    ]
    public func scrollToItemInGroup(
        index: Int32,
        indexInGroup: Int32,
        smooth!: ?Bool = None,
        align!: ?ScrollAlign = None
    ): Unit

    /**
     * Collapses all list items in the Expanded state and sets a callback.
     *
     * @param { ?() -> Unit } [onFinish] - The callback invoked when all list items in the Expanded state are
     *     collapsed.
     * @throws { BusinessException } 100004 - Controller not bound to a component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full",
        throwexception: true
    ]
    public func closeAllSwipeActions(onFinish!: ?() -> Unit = None): Unit

    /**
     * Obtains the index information of the child component at the specified coordinates.
     *
     * @param { Float64 } x - The x-coordinate. Unit: vp.
     * @param { Float64 } y - The y-coordinate. Unit: vp.
     * @returns { VisibleListContentInfo } The visible list content info.
     * @throws { BusinessException } 100004 - Controller not bound to a component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full",
        throwexception: true
    ]
    public func getVisibleListContentInfo(x: Float64, y: Float64): VisibleListContentInfo
}

/**
 * Enumerates the alignment modes of list items when scrolling ends.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollSnapAlign {
    /**
     * No alignment. This is the default value.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None
    |
    /**
     * The first item in the view is aligned at the start of the list.
     * When the list hits the end, the items at the end must be completely displayed,
     * and the items at the start may not be aligned.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start
    |
    /**
     * The middle items in the view are aligned in the center of the list.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center
    |
    /**
     * The last item in the view is aligned at the end of the list.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End
    | ...
}

extend ScrollSnapAlign <: Equatable<ScrollSnapAlign> {
    /**
     * Compares this ScrollSnapAlign with another for equality.
     *
     * @param { ScrollSnapAlign } other - The ScrollSnapAlign to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: ScrollSnapAlign): Bool
    /**
     * Compares this ScrollSnapAlign with another for inequality.
     *
     * @param { ScrollSnapAlign } other - The ScrollSnapAlign to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: ScrollSnapAlign): Bool
}
