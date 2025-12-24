package ohos.arkui.component.badge

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel
import std.deriving.Derive

/**
 * Defines the badge position property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BadgePosition {
    /**
     * The badge is displayed in the upper right corner of the parent component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RightTop
    | 
    /**
     * The badge is vertically centered on the right of the parent component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Right
    | 
    /**
     * The badge is vertically centered on the left of the parent component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Left
    | ...
}

extend BadgePosition <: Equatable<BadgePosition> {
    /**
     * Compares this BadgePosition with another for equality.
     * @param { BadgePosition } other - The BadgePosition to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: BadgePosition): Bool
    /**
     * Compares this BadgePosition with another for equality.
     * @param { BadgePosition } other - The BadgePosition to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: BadgePosition): Bool
}

/**
 * BadgeStyle object
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BadgeStyle {
    /**
     * Font color.
     * @default Color.White
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ?ResourceColor

    /**
     * Font size.
     * For the string type, only numeric string values with optional units.
     * The value must be greater than or equal to 0. If the value is less than 0, the default value is used.
     * Unit: fp
     *
     * NOTE:
     * This parameter cannot be set in percentage.
     * @default 10
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var fontSize: ?Length

    /**
     * Badge size.
     * For the string type, numeric string values with optional units.
     * The value must be greater than or equal to 0. If the value is less than 0, the default value is used.
     * Unit: vp
     *
     * NOTE:
     * This parameter cannot be set in percentage.
     * If it is set to an invalid value, the default value is used.
     * @default 16
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var badgeSize: ?Length

    /**
     * Badge color.
     * @default Color.Red
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var badgeColor: ?ResourceColor

    /**
     * Border color of the background.
     * @default Color.Red
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderColor: ?ResourceColor

    /**
     * Border width of the background.
     * This parameter cannot be set in percentage.
     * Unit: vp
     * @default 1
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderWidth: ?Length

    /**
     * Font weight of the text.
     * For the number type, the value ranges from 100 to 900, at an interval of 100. Default value: 400
     * A larger value indicates a heavier font weight.
     * For the string type, only strings that represent a number. Default value: FontWeight.Normal
     * NOTE:
     * This parameter cannot be set in percentage.
     *
     * @default 400 or FontWeight.Normal
     *
     * NOTE:
     * This parameter cannot be set in percentage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var fontWeight: ?FontWeight    

    /**
     * BadgeStyle constructor.
     *
     * @param { ?ResourceColor } [color] - Font color.
     * @param { ?Length } [fontSize] - Font size.
     * @param { ?Length } [badgeSize] - Badge size.
     * @param { ?ResourceColor } [badgeColor] - Badge color.
     * @param { ?ResourceColor } [borderColor] - Border color of the background.
     * @param { ?Length } [borderWidth] - Border width of the background.
     * @param { ?FontWeight } [fontWeight] - Font weight of the text.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color!: ?ResourceColor = None, fontSize!: ?Length = None, badgeSize!: ?Length = None,
        badgeColor!: ?ResourceColor = None, borderColor!: ?ResourceColor = None,
        borderWidth!: ?Length = None, fontWeight!: ?FontWeight = None)
}

/**
 * Defines Badge Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Badge <: CommonMethodComponent<Badge> & BadgeAttribute {
    /**
     * Creates a Badge component with a numeric count.
     * position: Set the display position of the prompt point.
     * maxCount: Maximum number of messages. If the number of messages exceeds the maximum, only maxCount+ is displayed.
     * count: Set the number of reminder messages.
     * style: You can set the style of the Badge component, including the text color, size, dot color, and size.
     *
     * @param { Int32 } count - Number of notifications.
     * @param { ?BadgeStyle } style - Style of the badge, including the font color, font size, badge color, and badge size.
     * @param { ?BadgePosition } [position] - Position to display the badge relative to the parent component.
     * @param { ?Int32 } [maxCount] - Maximum number of notifications.
     * @param { () -> Unit } child - The child component to be wrapped.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(count!: Int32, style!: ?BadgeStyle, position!: ?BadgePosition = None, maxCount!: ?Int32 = None,
        child!: () -> Unit)

    /**
     * Creates a Badge component with a text value.
     * value: Text string of the prompt content.
     * position: Set the display position of the prompt point.
     * style: You can set the style of the Badge component, including the text color, size, dot color, and size.
     *
     * @param { String } value - Prompt content.
     * @param { ?BadgeStyle } style - Style of the badge, including the font color, font size, badge color, and badge size.
     * @param { ?BadgePosition } [position] - Position to display the badge relative to the parent component.
     * @param { () -> Unit } child - The child component to be wrapped.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: String, style!: ?BadgeStyle, position!: ?BadgePosition = None, child!: () -> Unit)
}

/**
 * Defines Badge Component attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface BadgeAttribute <: CommonMethod<BadgeAttribute> {}