package ohos.arkui.component.text

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines the controller of Text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextController <: RemoteDataLite {
/**
 * Defines the TextController constructor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Close the select menu when menu is on.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func closeSelectionMenu(): Unit
}

/**
 * Provides a class for writing texts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Text <: CommonMethodComponent<Text> & TextAttribute {
/**
 * Called when writing text.
 *
 * @param { ?ResourceStr } content - The text content.
 * @param { ?TextController } [controller] - The text controller.
 * @param { () -> Unit } [child] - The child component builder.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(content: ?ResourceStr, controller!: ?TextController = None, child!: () -> Unit = {=>})

/**
 * Called when writing text.
 *
 * @param { ?TextController } [controller] - The text controller.
 * @param { () -> Unit } child - The child component builder.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(controller!: ?TextController = None, child!: () -> Unit)

/**
 * Called when writing text.
 *
 * @param { ?TextController } [controller] - The text controller.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(controller!: ?TextController = None)

/**
 * Set font line spacing.
 *
 * NOTE:
 * If the value specified is less than or equal to 0, the default value 0 is used.
 *
 * @param { ?Length } value - Default value is 0.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lineSpacing(value: ?Length): This

/**
 * Sets the font size
 *
 * @param { ?Length } value - Font size.The default font size is 16 fp.
 *     If fontSize is of the number type, the unit fp is used.
 *     The value cannot be a percentage.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontSize(value: ?Length): This

/**
 * Called when the maximum font size of the font is set.
 *
 * @param { ?Length } value - The unit is fp.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func maxFontSize(value: ?Length): This

/**
 * Called when the minimum font size of the font is set.
 *
 * @param { ?Length } value - The unit is fp.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func minFontSize(value: ?Length): This

/**
 * Called when the font color is set.
 *
 * @param { ?ResourceColor } value - Default value is 0xe6182431.The default value on wearable devices is 0xc5ffffff.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontColor(value: ?ResourceColor): This

/**
 * Called when the font style of a font is set.
 *
 * @param { ?FontStyle } value - Default value is FontStyle.Normal.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontStyle(value: ?FontStyle): This

/**
 * Called when the font weight is set.
 *
 * @param { ?FontWeight } value - The font weight.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontWeight(value: ?FontWeight): This

/**
 * Called when the font list of text is set.
 *
 * @param { ?ResourceStr } value - The font family.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontFamily(value: ?ResourceStr): This

/**
 * Called when the horizontal center mode of the font is set.
 *
 * @param { ?TextAlign } value - Default value is TextAlign.Start.The default value on wearable devices is TextAlign.Center.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textAlign(value: ?TextAlign): This

/**
 * Called when the overflow mode of the font is set.
 *
 * @param { ?TextOverflow } value - Default value is TextOverflow.Clip.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textOverflow(value: ?TextOverflow): This

/**
 * Called when the maximum number of lines of text is set.
 *
 * NOTE:
 * By default, text is automatically folded.
 * If this attribute is specified, the text will not exceed the specified number of lines.
 * If there is extra text, you can use textOverflow to specify how it is displayed.
 *
 * @param { ?Int32 } value - The maximum number of lines.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func maxLines(value: ?Int32): This

/**
 * Called when the vertical center mode of the font is set. NOTE: If the value is less than or equal to 0, the line height is not limited and the font size is adaptive. If the value is of the number type, the unit fp is used. For the string type, numeric string values with optional units, for example, 10 or 10fp, are supported
 *
 * @param { ?Length } value - The line height.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lineHeight(value: ?Length): This

/**
 * Called when the text decoration of the text is set.
 *
 * NOTE:
 * The style parameter cannot be used in widgets.
 *
 * @param { ?TextDecorationType } decorationType - The type value of the decoration property object.
 * @param { ?ResourceColor } color - The color value of the decoration property object.
 * @param { ?TextDecorationStyle } [decorationStyle] - The style value of the decoration property object.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func decoration(decorationType!: ?TextDecorationType, color!: ?ResourceColor,
        decorationStyle!: ?TextDecorationStyle = None): This

/**
 * Called when the baseline offset is set.
 *
 * @param { ?Length } value - The baseline offset.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func baselineOffset(value: ?Length): This

/**
 * Called when the type of letter in the text font is set.
 *
 * @param { ?TextCase } value - Default value is TextCase.Normal.
 * @returns { This } Returns itself to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textCase(value: ?TextCase): This
}

/**
 * Provides attribute for TextClock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextAttribute <: CommonMethod<TextAttribute> {
/**
 * Set font line spacing.
 *
 * NOTE:
 * If the value specified is less than or equal to 0, the default value 0 is used.
 *
 * @param { ?Length } value - Default value is 0.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func lineSpacing(value: ?Length): TextAttribute

/**
 * Sets the font size.
 *
 * @param { ?Length } value - Font size.The default font size is 16 fp.
 *     If fontSize is of the number type, the unit fp is used.
 *     The value cannot be a percentage.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontSize(value: ?Length): TextAttribute

/**
 * Called when the maximum font size of the font is set.
 *
 * @param { ?Length } value - The unit is fp.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func maxFontSize(value: ?Length): TextAttribute

/**
 * Called when the minimum font size of the font is set.
 *
 * @param { ?Length } value - The unit is fp.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func minFontSize(value: ?Length): TextAttribute

/**
 * Called when the font color is set.
 *
 * @param { ?ResourceColor } value - Default value is 0xe6182431.The default value on wearable devices is 0xc5ffffff.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontColor(value: ?ResourceColor): TextAttribute

/**
 * Called when the font style of a font is set.
 *
 * @param { ?FontStyle } value - Default value is FontStyle.Normal.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontStyle(value: ?FontStyle): TextAttribute

/**
 * Called when the font weight is set.
 *
 * @param { ?FontWeight } value - The font weight.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontWeight(value: ?FontWeight): TextAttribute

/**
 * Called when the font list of text is set.
 *
 * @param { ?ResourceStr } value - The font family.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontFamily(value: ?ResourceStr): TextAttribute

/**
 * Called when the horizontal center mode of the font is set.
 *
 * @param { ?TextAlign } value - Default value is TextAlign.Start.The default value on wearable devices is TextAlign.Center.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textAlign(value: ?TextAlign): TextAttribute

/**
 * Called when the overflow mode of the font is set.
 *
 * @param { ?TextOverflow } value - Default value is TextOverflow.Clip.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textOverflow(value: ?TextOverflow): TextAttribute

/**
 * Called when the maximum number of lines of text is set.
 *
 * NOTE:
 * By default, text is automatically folded.
 * If this attribute is specified, the text will not exceed the specified number of lines.
 * If there is extra text, you can use textOverflow to specify how it is displayed.
 *
 * @param { ?Int32 } value - The maximum number of lines.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func maxLines(value: ?Int32): TextAttribute

/**
 * Called when the vertical center mode of the font is set.
 * NOTE:
 * If the value is less than or equal to 0, the line height is not limited and the font size is adaptive.
 * If the value is of the number type, the unit fp is used.
 * For the string type, numeric string values with optional units, for example, "10" or "10fp", are supported.
 *
 * @param { ?Length } value - The line height.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func lineHeight(value: ?Length): TextAttribute

/**
 * Called when the text decoration of the text is set.
 *
 * NOTE:
 * The style parameter cannot be used in widgets.
 *
 * @param { ?TextDecorationType } decorationType - The type value of the decoration property object.
 * @param { ?ResourceColor } color - The color value of the decoration property object.
 * @param { ?TextDecorationStyle } decorationStyle - The style value of the decoration property object.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func decoration(decorationType!: ?TextDecorationType, color!: ?ResourceColor, decorationStyle!: ?TextDecorationStyle): TextAttribute

/**
 * Called when the baseline offset is set.
 *
 * @param { ?Length } value - The baseline offset.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func baselineOffset(value: ?Length): TextAttribute

/**
 * Called when the type of letter in the text font is set.
 *
 * @param { ?TextCase } value - Default value is TextCase.Normal.
 * @returns { TextAttribute } Returns the text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textCase(value: ?TextCase): TextAttribute
}