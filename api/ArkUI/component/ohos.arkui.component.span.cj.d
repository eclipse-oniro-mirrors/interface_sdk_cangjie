package ohos.arkui.component.span

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Define the BaseSpan class, contains the common methods of span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class BaseSpan <: UINodeBase {}

/**
 * Defines Span Component.
 * A component for displaying formatted text segments within a Text component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Span <: BaseSpan {
/**
 * Called when text is entered in span.
 * Creates a span with the specified text content.
 *
 * @param { ?ResourceStr } value - The text content of the span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: ?ResourceStr)

/**
 * Called when the font size is set.
 * Sets the font size for the text in the span.
 *
 * @param { ?Length } value - Default value is 16fp.The default value on wearable devices is 18fp.
 *     If fontSize is of the number type, the unit fp is used.
 *     This parameter cannot be set in percentage.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontSize(value: ?Length): This

/**
 * Called when the font color is set.
 * Sets the font color for the text in the span.
 *
 * @param { ?ResourceColor } value - The font color.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontColor(value: ?ResourceColor): This

/**
 * Called when the font style of a font is set.
 * Sets the font style (normal or italic) for the text in the span.
 *
 * @param { ?FontStyle } value - The font style.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontStyle(value: ?FontStyle): This

/**
 * Called when the font weight is set.
 * Sets the font weight (thickness) for the text in the span.
 *
 * @param { ?FontWeight } value - The font weight.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontWeight(value: ?FontWeight): This

/**
 * Called when the font list of text is set.
 * Sets the font family for the text in the span.
 *
 * @param { ?ResourceStr } value - The font family.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontFamily(value: ?ResourceStr): This

/**
 * Called when the text decoration of the text is set.
 * Sets the text decoration (e.g., underline, strikethrough) for the text in the span.
 *
 * @param { ?TextDecorationType } decorationType - The type of text decoration.
 * @param { ?ResourceColor } [color] - The color of the text decoration.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func decoration(decorationType!: ?TextDecorationType, color!: ?ResourceColor = None): This

/**
 * Called when the distance between text fonts is set.
 * Sets the letter spacing (tracking) for the text in the span.
 *
 * @param { ?Length } value - The letter spacing.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func letterSpacing(value: ?Length): This

/**
 * Called when the type of letter in the text font is set.
 * Sets the text case transformation (e.g., uppercase, lowercase) for the text in the span.
 *
 * @param { ?TextCase } value - The text case.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textCase(value: ?TextCase): This

/**
 * Called when a click event occurs.
 *
 * NOTE:
 * Click events cannot be triggered if the finger is pressed for more than 800 ms.
 * Click events cannot be triggered if the finger moves more than 20.px after pressing down.
 *
 * @param { ?(ClickEvent) -> Unit } event - The click event handler.
 * @returns { This } Returns Span component instance itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onClick(event: ?(ClickEvent) -> Unit): This
}