package ohos.arkui.component.text_area

import ohos.arkui.component.common.*
import ohos.arkui.component.text_field.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Provides the method of switching the cursor position.
 * TextAreaController allows you to control the caret position in a TextArea component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextAreaController <: RemoteDataLite {
    /**
     * TextAreaController constructor.
     * Creates a new instance of TextAreaController.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Called when the position of the insertion cursor is set.
     *
     * @param { ?Int32 } value  - Length from the start of the string to the position where the caret is located.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func caretPosition(value: ?Int32): Unit
}

/**
 * Defines TextArea Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextArea <: CommonMethodComponent<TextArea> & TextAreaAttribute {
    /**
     * The TextArea constructor.
     *
     * @param { ?ResourceStr } [placeholder] - The place holder text string. Text displayed when there is no input.
     * @param { ?ResourceStr } [text] - Sets the current value of TextArea.
     * @param { ?TextAreaController } [controller] - Called when the position of the insertion cursor is set.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(placeholder!: ?ResourceStr = None, text!: ?ResourceStr = None, controller!: ?TextAreaController = None)

    /**
     * Called when the insertion cursor color is set. NOTE: this API can be used to set the text handle color, which is the same as the caret color
     *
     * @param { ?ResourceColor } value - Default value is 0X007DFF.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func caretColor(value: ?ResourceColor): This

    /**
     * Called when the font property of the placeholder is set. The 'HarmonyOS Sans' font and registered custom fonts are supported
     *
     * @param { ?Length } size - Font size of the placeholder text.
     * @param { ?FontWeight } [weight] - Font weight of the placeholder text.
     * @param { ?String } [family] - Font family of the placeholder text.
     * @param { ?FontStyle } [style] - Font style of the placeholder text.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderFont(size!: ?Length, weight!: ?FontWeight = None, family!: ?String = None,
        style!: ?FontStyle = None): This

    /**
     * Called when the alignment of the contents of a multiline text box is set.
     * NOTE: To set vertical alignment for the text, use the align attribute.
     * The align attribute alone does not control the horizontal position of the text.
     * In other words, Alignment.TopStart, Alignment.Top, and Alignment.TopEnd produce the same effect, top-aligning the text;
     * Alignment.Start, Alignment.Center, and Alignment.End produce the same effect, centered-aligning the text vertically;
     * Alignment.BottomStart, Alignment.Bottom, and Alignment.BottomEnd produce the same effect, bottom-aligning the text.
     * When textAlign is set to TextAlign.JUSTIFY, the text in the last line is horizontally aligned with the start edge.
     *
     * @param { ?TextAlign } value - Default value is TextAlign.Start.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textAlign(value: ?TextAlign): This

    /**
     * Sets the font size
     *
     * @param { ?Length } value - Font size.The default font size is 16 fp.
     *     If fontSize is of the number type, the unit fp is used.
     *     The value cannot be a percentage.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: ?Length): This

    /**
     * Sets the font color
     *
     * @param { ?ResourceColor } value - Color of the text. The default value is 0xe6182431.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ?ResourceColor): This

    /**
     * Called when the font weight is set
     *
     * @param { ?FontWeight } value - Weight of the font.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: ?FontWeight): This

    /**
     * Sets the font style
     *
     * @param { ?FontStyle } value - Font style.Default value: FontStyle.Normal
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: ?FontStyle): This

    /**
     * Called when the font list of text is set. NOTE: The 'HarmonyOS Sans' font and registered custom fonts are supported for applications. Only the 'HarmonyOS Sans' font is supported for widgets
     *
     * @param { ?ResourceStr } value - Default value is 'HarmonyOS Sans'.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ?ResourceStr): This

    /**
     * Set enter key type of soft keyboard
     *
     * @param { ?EnterKeyType } value - the enter key type of soft keyboard
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func enterKeyType(value: ?EnterKeyType): This

    /**
     * Called when the inputFilter of text is set.
     *
     * NOTE:
     * Only inputs that comply with the regular expression can be displayed.
     * Other inputs are filtered out.
     * The specified regular expression can match single characters, but not strings.
     *
     * @param { ?ResourceStr } value - Regular expression pattern for input filtering.
     * @param { ?(String) -> Unit } [error] - Callback function executed when input doesn't match the pattern.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func inputFilter(value!: ?ResourceStr, error!: ?(String) -> Unit = None): This

    /**
     * Define the max length content of the text area.
     * NOTE: By default, there is no maximum number of characters.
     * When the maximum number of characters is reached,
     * no more characters can be entered, and the border turns red.
     *
     * @param { ?UInt32 } value - Maximum number of characters allowed.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxLength(value: ?UInt32): This

    /**
     * Called when the color of the placeholder is set
     *
     * @param { ?ResourceColor } value - Default value follows the theme.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderColor(value: ?ResourceColor): This

    /**
     * Called when submitted.
     *
     * @param { ?(EnterKeyType) -> Unit } callback - If it is EnterKeyType.NewLine and the text box is in inline input style, onSubmit is not triggered.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSubmit(callback: ?(EnterKeyType) -> Unit): This

    /**
     * Called when the input changes.
     * NOTE: In this callback, if cursor operations are performed,
     * you need to adjust the cursor logic based on the previewText parameter
     * to make sure it works seamlessly under the preview display scenario.
     *
     * @param { ?(String) -> Unit }  callback - Callback function executed when the text content changes.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: ?(String) -> Unit): This

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback function executed when copy operation is performed.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onCopy(callback: ?(String) -> Unit): This

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback function executed when cut operation is performed.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onCut(callback: ?(String) -> Unit): This

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed. { string } value - The text content to be pasted. { PasteEvent } event - The user-defined paste event
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPaste(callback: ?(String) -> Unit): This

    /**
     * Called when judging whether the text editing change finished.
     * The text box is in the editing state when it has the caret placed in it, and is in the non-editing state otherwise.
     *
     * @param { ?(Bool) -> Unit} callback - Triggered when the text area status changes. If the value of isEditing is true, text area is in progress.
     * @returns { This } returns the instance of the TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onEditChange(callback: ?(Bool) -> Unit): This
}

/**
 * Defines the attribute functions of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextAreaAttribute <: CommonMethod<TextAreaAttribute> {
    /**
     * Called when the insertion cursor color is set.
     *
     * @param { ?ResourceColor } value - Default value is 0x007DFF.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func caretColor(value: ?ResourceColor): TextAreaAttribute

    /**
     * Called when the font property of the placeholder is set.
     * The 'HarmonyOS Sans' font and registered custom fonts are supported.
     *
     * @param { ?Length } size - Font size of the placeholder text.
     * @param { ?FontWeight } weight - Font weight of the placeholder text.
     * @param { ?String } family - Font family of the placeholder text.
     * @param { ?FontStyle } style - Font style of the placeholder text.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func placeholderFont(size!: ?Length, weight!: ?FontWeight, family!: ?String, style!: ?FontStyle): TextAreaAttribute

    /**
     * Called when the alignment of the contents of a multiline text box is set.
     * NOTE:
     * To set vertical alignment for the text, use the align attribute.
     * The align attribute alone does not control the horizontal position of the text.
     * In other words, Alignment.TopStart, Alignment.Top, and Alignment.TopEnd produce the same effect,
     * top-aligning the text; Alignment.Start, Alignment.Center, and Alignment.End produce the same effect,
     * centered-aligning the text vertically; Alignment.BottomStart, Alignment.Bottom,
     * and Alignment.BottomEnd produce the same effect, bottom-aligning the text.
     * When textAlign is set to TextAlign.Justify, the text in the last line is horizontally aligned with the start edge.
     *
     * @param { ?TextAlign } value - Default value is TextAlign.Start.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func textAlign(value: ?TextAlign): TextAreaAttribute

    /**
     * Sets the font size.
     *
     * @param { ?Length } value - Font size.The default font size is 16 fp.
     *     If fontSize is of the number type, the unit fp is used.
     *     The value cannot be a percentage.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontSize(value: ?Length): TextAreaAttribute

    /**
     * Sets the font color.
     *
     * @param { ?ResourceColor } value - Color of the text.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontColor(value: ?ResourceColor): TextAreaAttribute

    /**
     * Called when the font weight is set.
     *
     * @param { ?FontWeight } value - Weight of the font.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontWeight(value: ?FontWeight): TextAreaAttribute

    /**
     * Sets the font style.
     *
     * @param { ?FontStyle } value - Font style.Default value: FontStyle.Normal
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontStyle(value: ?FontStyle): TextAreaAttribute

    /**
     * Called when the font list of text is set.
     * NOTE:
     * The 'HarmonyOS Sans' font and registered custom fonts are supported for applications.
     * Only the 'HarmonyOS Sans' font is supported for widgets.
     *
     * @param { ?ResourceStr } value - Default value is 'HarmonyOS Sans'.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontFamily(value: ?ResourceStr): TextAreaAttribute

    /**
     * Set enter key type of soft keyboard.
     *
     * @param { ?EnterKeyType } value - the enter key type of soft keyboard
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func enterKeyType(value: ?EnterKeyType): TextAreaAttribute

    /**
     * Called when the inputFilter of text is set.
     *
     * NOTE:
     * Only inputs that comply with the regular expression can be displayed.
     * Other inputs are filtered out.
     * The specified regular expression can match single characters, but not strings.
     *
     * @param { ?ResourceStr } value - Regular expression pattern for input filtering.
     * @param { ?(String) -> Unit } error - Callback function executed when input doesn't match the pattern.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func inputFilter(value!: ?ResourceStr, error!: ?(String) -> Unit): TextAreaAttribute

    /**
     * Define the max length content of the text area.
     * NOTE: By default, there is no maximum number of characters.
     * When the maximum number of characters is reached,
     * no more characters can be entered, and the border turns red.
     *
     * @param { ?UInt32 } value - Maximum number of characters allowed.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func maxLength(value: ?UInt32): TextAreaAttribute

    /**
     * Called when the color of the placeholder is set.
     *
     * @param { ?ResourceColor } value - Default value follows the theme.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func placeholderColor(value: ?ResourceColor): TextAreaAttribute

    /**
     * Called when submitted.
     *
     * @param { ?(EnterKeyType) -> Unit } callback - If it is EnterKeyType.NewLine and the text box is in inline input style, onSubmit is not triggered.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onSubmit(callback: ?(EnterKeyType) -> Unit): TextAreaAttribute

    /**
     * Called when the input changes.
     * NOTE: In this callback, if cursor operations are performed,
     * you need to adjust the cursor logic based on the previewText parameter
     * to make sure it works seamlessly under the preview display scenario.
     *
     * @param { ?(String) -> Unit }  callback - Callback function executed when the text content changes.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onChange(callback: ?(String) -> Unit): TextAreaAttribute

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback function executed when copy operation is performed.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onCopy(callback: ?(String) -> Unit): TextAreaAttribute

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback function executed when cut operation is performed.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onCut(callback: ?(String) -> Unit): TextAreaAttribute

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed.
     *      String value - The text content to be pasted.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onPaste(callback: ?(String) -> Unit): TextAreaAttribute

    /**
     * Called when judging whether the text editing change finished.
     * The text box is in the editing state when it has the caret placed in it, and is in the non-editing state otherwise.
     *
     * @param { ?(Bool) -> Unit} callback - Triggered when the text area status changes. If the value of isEditing is true, text area is in progress.
     * @returns { TextAreaAttribute } Returns the attribute of TextArea.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onEditChange(callback: ?(Bool) -> Unit): TextAreaAttribute
}