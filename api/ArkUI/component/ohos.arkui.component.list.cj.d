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
}