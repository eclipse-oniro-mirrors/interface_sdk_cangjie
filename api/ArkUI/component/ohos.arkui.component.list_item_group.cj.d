package ohos.arkui.component.list_item_group

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive

/**
 * Defines the list item group style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ListItemGroupStyle {
    /**
     * Show custom style.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None
    | 
    /**
     * Show default style.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Card
    | ...
}

extend ListItemGroupStyle <: Equatable<ListItemGroupStyle> {
    /**
     * Compares this ListItemGroupStyle with another for equality.
     *
     * @param { ListItemGroupStyle } other - The ListItemGroupStyle to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: ListItemGroupStyle): Bool

    /**
     * Compares this ListItemGroupStyle with another for equality.
     *
     * @param { ListItemGroupStyle } other - The ListItemGroupStyle to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: ListItemGroupStyle): Bool
}

/**
 * Defines the divider style of the list or list item group.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ListDividerOptions {
    /**
     * Width of the divider. It cannot be set in percentage.
     *
     * @default 0.vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var strokeWidth: ?Length

    /**
     * Color of the divider.
     *
     * @default 0x08000000
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ?ResourceColor

    /**
     * Distance between the divider and the start edge of the list.
     *
     * @default 0.vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var startMargin: ?Length

    /**
     * Distance between the divider and the end edge of the list.
     *
     * @default 0.vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var endMargin: ?Length

    /**
     * ListDividerOptions constructor
     *
     * @param { ?Length } strokeWidth - Set the line width of the dividing line.
     * @param { ?ResourceColor } [color] - Set the color of the dividing line.
     * @param { ?Length } [startMargin] - Set the distance between the dividing line and the starting end of the side of the list.
     * @param { ?Length } [endMargin] - Set the distance between the dividing line and the end of the side of the list.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        strokeWidth!: ?Length,
        color!: ?ResourceColor = None,
        startMargin!: ?Length = None,
        endMargin!: ?Length = None
    )
}

/**
 * Defines ListItemGroup Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ListItemGroup <: CommonMethodComponent<ListItemGroup> & ListItemGroupAttribute {
    /**
     * Defines the constructor of ListItemGroup.
     *
     * @param { ?CustomBuilder } [header] - Describes the ListItemGroup header.
     * @param { ?CustomBuilder } [footer] - Describes the ListItemGroup footer.
     * @param { ?Length } [space] - Describes the ListItemGroup space.
     * @param { ?ListItemGroupStyle } [style] - Describes the ListItemGroup style.
     * @param { () -> Unit } child - The child component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        header!: ?CustomBuilder = None,
        footer!: ?CustomBuilder = None,
        space!: ?Length = None,
        style!: ?ListItemGroupStyle = Option.None,
        child!: () -> Unit
    )

    /**
     * Called when the ListItemGroup split line style is set.
     *
     * @param { Option<ListDividerOptions> } value - ListItem divider style.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func divider(value: Option<ListDividerOptions>): This
}

/**
 * Defines the item group attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ListItemGroupAttribute <: CommonMethod<ListItemGroupAttribute> {
    /**
     * Called when the ListItemGroup split line style is set.
     *
     * @param { Option<ListDividerOptions> } value - ListItem divider style.
     * @returns { ListItemGroupAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func divider(value: Option<ListDividerOptions>): ListItemGroupAttribute
}