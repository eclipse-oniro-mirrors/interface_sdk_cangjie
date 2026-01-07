package ohos.arkui.component.text_input

import ohos.arkui.component.common.*
import ohos.arkui.component.text_field.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Provides the method of switching the cursor position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextInputController <: RemoteDataLite {
    /**
     * TextInputController constructor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Called when the position of the insertion cursor is set.
     *
     * NOTE:
     * If the value is less than 0, the value 0 is used.
     * If the value exceeds the text length, the caret is placed at the end of the text.
     *
     * @param { ?Int32 } value
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func caretPosition(value: ?Int32): Unit

    /**
     * Text selection is achieved by specifying the start and end positions of the text.
     *
     * NOTE:
     * If selectionStart or selectionEnd is set to None, the value 0 will be used.
     * If selectionMenuHidden is set to true or a 2-in-1 device is used,
     * calling setTextSelection does not display the context menu even when options is set to MenuPolicy.SHOW.
     * If the selected text contains an emoji,
     * the emoji is selected when its start position is within the text selection range.
     *
     * @param { ?Int32 } selectionStart - The start position of the selected text.The start position of text in the text box is 0.
     * @param { ?Int32 } selectionEnd - The end position of the selected text.
     * @param { ?MenuPolicy } [options] - Indicates the options of the text selection.Default value is MenuPolicy.DEFAULT.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setTextSelection(selectionStart: ?Int32, selectionEnd: ?Int32, options!: ?MenuPolicy = None): Unit

    /**
     * Exit edit state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stopEditing(): Unit
}

/**
 * Defines TextInput Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextInput <: CommonMethodComponent<TextInput> & TextInputAttribute {
    /**
     * Called when writing a single line of text.
     *
     * @param { ?ResourceStr } [placeholder] - The place holder text string.
     * @param { ?ResourceStr } [text] - Sets the current value of TextInput.
     * @param { ?TextInputController } [controller] - Called when the position of the insertion cursor is set.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(placeholder!: ?ResourceStr = None, text!: ?ResourceStr = None, controller!: ?TextInputController = None)

    /**
     * Called when the type of soft keyboard input button is set
     *
     * @param { ?EnterKeyType } value - Default value is EnterKeyType.Done.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func enterKeyType(value: ?EnterKeyType): This

    /**
     * Called when the text align is set. NOTE: Available options are TextAlign.Start, TextAlign.Center, and TextAlign.End. To set vertical alignment for the text, use the align attribute. The align attribute alone does not control the horizontal position of the text. In other words, Alignment.TopStart, Alignment.Top, and Alignment.TopEnd produce the same effect, top-aligning the text; Alignment.Start, Alignment.Center, and Alignment.End produce the same effect, centered-aligning the text vertically; Alignment.BottomStart, Alignment.Bottom, and Alignment.BottomEnd produce the same effect, bottom-aligning the text
     *
     * @param { ?TextAlign } value - Default value is TextAlign.Start.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textAlign(value: ?TextAlign): This

    /**
     * Called when the color of the placeholder is set
     *
     * @param { ?ResourceColor } value - Default value follows the theme. The default value on wearable devices is 0x99ffffff.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderColor(value: ?ResourceColor): This

    /**
     * Called when the color of the insertion cursor is set.
     *
     * @param { ?ResourceColor } value - Default value is 0x007DFF.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func caretColor(value: ?ResourceColor): This

    /**
     * Called when the font property of the placeholder is set. The 'HarmonyOS Sans' font and registered custom fonts are supported
     *
     * @param { ?Length } size - The font size of the placeholder.
     * @param { ?FontWeight } [weight] - The font weight of the placeholder.
     * @param { ?String } [family] - The font family of the placeholder.
     * @param { ?FontStyle } [style] - The font style of the placeholder.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderFont(size!: ?Length, weight!: ?FontWeight = None, family!: ?String = None,
        style!: ?FontStyle = None): This

    /**
     * Called when the input of maximum text length is set. NOTE: If this attribute is not set or is set to an invalid value, the default value is used. If a decimal number is specified, the integer part is used
     *
     * @param { ?UInt32 } value - Default value is Infinity, indicating that there is no upper limit on the number of characters that can be entered.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxLength(value: ?UInt32): This

    /**
     * Called when the font size is set. NOTE: If fontSize is of the number type, the unit fp is used. The default font size is 16 fp. The value cannot be a percentage. The default value on wearable devices is 18fp
     *
     * @param { ?Length } value - The font size.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: ?Length): This

    /**
     * Sets the font color
     *
     * @param { ?ResourceColor } value - Default value is 0xe6182431.The default value on wearable devices is 0xc5ffffff.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ?ResourceColor): This

    /**
     * Called when the font weight is set
     *
     * @param { ?FontWeight } value - The font weight.
     * @returns { This } returns the instance of the TextInput.
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
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: ?FontStyle): This

    /**
     * Called when the font list of text is set. NOTE: Default font: 'HarmonyOS Sans' The 'HarmonyOS Sans' font and registered custom fonts are supported for applications. Only the 'HarmonyOS Sans' font is supported for widgets
     *
     * @param { ?ResourceStr } value - The font family resource.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ?ResourceStr): This

    /**
     * Called when the inputFilter of text is set.
     * NOTE: Only inputs that comply with the regular expression can be displayed.
     * Other inputs are filtered out.
     * The specified regular expression can match single characters, but not strings.
     * if inputFilter is set and the entered characters are not null, the filtering effect attached to the text box type (specified through the type attribute) does not take effect.
     *
     * @param { ?ResourceStr } value - The input filter pattern.
     * @param { ?(String) -> Unit } [error] - Callback function when input error occurs.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func inputFilter(value: ?ResourceStr, error!: ?(String) -> Unit = None): This

    /**
     * Called when submitted.
     *
     * @param { ?(EnterKeyType) -> Unit } callback - If it is EnterKeyType.NewLine and the text box is in inline input style, onSubmit is not triggered.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSubmit(callback: ?(EnterKeyType) -> Unit): This

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback used to return the copied text content.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onCopy(callback: ?(String) -> Unit): This

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback function when text is cut from the input.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onCut(callback: ?(String) -> Unit): This

    /**
     * Called when the input of the input box changes.
     *
     * NOTE:
     * In this callback, if cursor operations are performed, you need to adjust the cursor logic
     * based on the previewText parameter to ensure it works seamlessly within the preview display scenario.
     *
     * @param { ?(String) -> Unit } callback - Callback function when the input text changes.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: ?(String) -> Unit): This

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPaste(callback: ?(String) -> Unit): This

    /**
     * Called when judging whether the text editing change finished. NOTE: The text box is in the editing state when it has the caret placed in it, and is in the non-editing state otherwise. It returns true if the input operation is currently in progress
     *
     * @param { ?(Bool) -> Unit} callback - Triggered when the text area status changes.
     *     If the value of isEditing is true, text area is in progress.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onEditChange(callback: ?(Bool) -> Unit): This

    /**
     * Define custom keyboard of the text input. NOTE: When a custom keyboard is set, activating the text box opens the specified custom component, instead of the system input method. The custom keyboard's height can be set through the height attribute of the custom component's root node, and its width is fixed at the default value. The custom keyboard is presented by overlaying the original screen, which is not compressed or lifted if avoid mode is not enabled or avoidance is not needed for the text box. The custom keyboard cannot obtain the focus, but it blocks gesture events. By default, the custom keyboard is closed when the input component loses the focus. You can also use the TextInputController.stopEditing API to close the keyboard. When a custom keyboard is set, the text box does not support camera input, even when the device supports. When setting a custom keyboard, you can bind the onKeyPrelme event to prevent input from the physical keyboard
     *
     * @param { ?CustomBuilder } value - Set up a custom keyboard of TextInput.
     * @param { ?Bool } [supportAvoidance] - Indicates the custom keyboard options of TextInput.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func customKeyboard(value: ?CustomBuilder, supportAvoidance!: ?Bool = None): This

    /**
     * Text input style NOTE: The inline input style only supports InputType.Normal
     *
     * @param { ?TextInputStyle } value - Text input style.Default value is TextInputStyle.Default.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func style(value: ?TextInputStyle): This

    /**
     * Sets whether request keyboard or not when on focus.
     * Sets whether to enable the input method when the TextInput component obtains focus in a way other than clicking.
     * NOTE: the TextInput component brings up the keyboard by default when it obtains focus.
     *
     * @param { ?Bool } value - Default value is true.
     * @returns { This } Returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func enableKeyboardOnFocus(value: ?Bool): This

    /**
     * Controls whether the selection menu pops up.
     *
     * NOTE:
     * true:
     * The system text selection menu does not appear under the following circumstances:
     * clicking the text box cursor, long-pressing the text box, double-tapping the text box,
     * triple-tapping the text box, or right-clicking the text box.
     * false:
     * The system text selection menu appears under the following circumstances:
     * clicking the text box cursor, long-pressing the text box, double-tapping the text box,
     * triple-tapping the text box, or right-clicking the text box.
     *
     * @param { ?Bool } value - Default value is false.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectionMenuHidden(value: ?Bool): This

    /**
     * Define the show underline of the text input.
     * NOTE: By default, the underline comes in the color of 0x33182431, thickness of 1.px, and text box size of 48.vp.
     * The underline is only available for the InputType.Normal type
     *
     * @param { ?Bool } value - Default value is false.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showUnderline(value: ?Bool): This

    /**
     * Define max lines of the text input.
     * Value range: (0, +∞)
     *
     * @param { ?Int32 } value - Default value is 3.
     * @returns { This } returns the instance of the TextInput.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxLines(value: ?Int32): This
}

/**
 * Defines the TextInput attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextInputAttribute <: CommonMethod<TextInputAttribute> {
    /**
     * Called when the type of soft keyboard input button is set.
     *
     * @param { ?EnterKeyType } value - Default value is EnterKeyType.Done.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func enterKeyType(value: ?EnterKeyType): TextInputAttribute

    /**
     * Called when the text align is set.
     * NOTE:
     * Available options are TextAlign.Start, TextAlign.Center, and TextAlign.End.
     * To set vertical alignment for the text, use the align attribute.
     * The align attribute alone does not control the horizontal position of the text.
     * In other words, Alignment.TopStart, Alignment.Top, and Alignment.TopEnd produce the same effect, top-aligning the text;
     * Alignment.Start, Alignment.Center, and Alignment.End produce the same effect, centered-aligning the text vertically;
     * Alignment.BottomStart, Alignment.Bottom, and Alignment.BottomEnd produce the same effect, bottom-aligning the text.
     *
     * @param { ?TextAlign } value - Default value is TextAlign.Start.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func textAlign(value: ?TextAlign): TextInputAttribute

    /**
     * Called when the color of the placeholder is set.
     *
     * @param { ?ResourceColor } value - Default value follows the theme.The default value on wearable devices is 0x99ffffff.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func placeholderColor(value: ?ResourceColor): TextInputAttribute

    /**
     * Set the caret color.
     *
     * @param { ?ResourceColor } value - Default value is 0x007DFF.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func caretColor(value: ?ResourceColor): TextInputAttribute

    /**
     * Called when the font property of the placeholder is set.
     * The 'HarmonyOS Sans' font and registered custom fonts are supported.
     *
     * @param { ?Length } size - The font size of the placeholder.
     * @param { ?FontWeight } weight - The font weight of the placeholder.
     * @param { ?String } family - The font family of the placeholder.
     * @param { ?FontStyle } style - The font style of the placeholder.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func placeholderFont(size!: ?Length, weight!: ?FontWeight, family!: ?String, style!: ?FontStyle): TextInputAttribute

    /**
     * Called when the input of maximum text length is set.
     * NOTE:
     * If this attribute is not set or is set to an invalid value, the default value is used.
     * If a decimal number is specified, the integer part is used.
     *
     * @param { ?UInt32 } value - Default value is Infinity, indicating that there is no upper limit on the number of characters that can be entered.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func maxLength(value: ?UInt32): TextInputAttribute

    /**
     * Called when the font size is set.
     * NOTE:
     * If fontSize is of the number type, the unit fp is used.
     * The default font size is 16 fp.
     * The value cannot be a percentage.
     * The default value on wearable devices is 18fp.
     *
     * @param { ?Length } value - The value of font size.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontSize(value: ?Length): TextInputAttribute

    /**
     * Sets the font color.
     *
     * @param { ?ResourceColor } value - The default value on wearable devices is 0xdbffffff.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontColor(value: ?ResourceColor): TextInputAttribute

    /**
     * Called when the font weight is set.
     *
     * @param { ?FontWeight } value - The font weight of the text.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontWeight(value: ?FontWeight): TextInputAttribute

    /**
     * Sets the font style.
     *
     * @param { ?FontStyle } value - Font style.Default value: FontStyle.Normal
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontStyle(value: ?FontStyle): TextInputAttribute

    /**
     * Called when the font list of text is set.
     * NOTE:
     * Default font: 'HarmonyOS Sans'
     * The 'HarmonyOS Sans' font and registered custom fonts are supported for applications.
     * Only the 'HarmonyOS Sans' font is supported for widgets.
     *
     * @param { ?ResourceStr } value - The font family resource.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontFamily(value: ?ResourceStr): TextInputAttribute

    /**
     * Called when the inputFilter of text is set.
     *
     * NOTE:
     * Only inputs that comply with the regular expression can be displayed.
     * Other inputs are filtered out.
     * The specified regular expression can match single characters, but not strings.
     * if inputFilter is set and the entered characters are not null,
     * the filtering effect attached to the text box type (specified through the type attribute) does not take effect.
     *
     * @param { ?ResourceStr } value - The input filter pattern.
     * @param { ?(String) -> Unit } error - Callback function when input does not match the filter.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func inputFilter(value: ?ResourceStr, error!: ?(String) -> Unit): TextInputAttribute

    /**
     * Called when submitted.
     *
     * @param { ?(EnterKeyType) -> Unit } callback - If it is EnterKeyType.NewLine and the text box is in inline input style, onSubmit is not triggered.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onSubmit(callback: ?(EnterKeyType) -> Unit): TextInputAttribute

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback function when text is copied from the input.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onCopy(callback: ?(String) -> Unit): TextInputAttribute

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Callback function when text is cut from the input.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onCut(callback: ?(String) -> Unit): TextInputAttribute

    /**
     * Called when the input of the input box changes.
     *
     * NOTE:
     * In this callback, if cursor operations are performed, you need to adjust the cursor logic
     * based on the previewText parameter to ensure it works seamlessly within the preview display scenario.
     *
     * @param { ?(String) -> Unit } callback - Callback function when the input text changes.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onChange(callback: ?(String) -> Unit): TextInputAttribute

    /**
     * Called when using the Clipboard menu.
     *
     * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onPaste(callback: ?(String) -> Unit): TextInputAttribute

    /**
     * Called when judging whether the text editing change finished.
     *
     * NOTE:
     * The text box is in the editing state when it has the caret placed in it,
     * and is in the non-editing state otherwise.
     * It returns true if the input operation is currently in progress.
     *
     * @param { ?(Bool) -> Unit} callback - Callback function when text editing state changes.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onEditChange(callback: ?(Bool) -> Unit): TextInputAttribute

    /**
     * Define custom keyboard of the text input.
     * * NOTE:
     * When a custom keyboard is set, activating the text box opens the specified custom component,
     * instead of the system input method.
     * The custom keyboard's height can be set through the height attribute of the custom component's root node,
     * and its width is fixed at the default value.
     * The custom keyboard is presented by overlaying the original screen,
     * which is not compressed or lifted if avoid mode is not enabled or avoidance is not needed for the text box.
     * The custom keyboard cannot obtain the focus, but it blocks gesture events.
     * By default, the custom keyboard is closed when the input component loses the focus.
     * You can also use the TextInputController.stopEditing API to close the keyboard.
     * When a custom keyboard is set, the text box does not support camera input, even when the device supports.
     * When setting a custom keyboard, you can bind the onKeyPrelme event to prevent input from the physical keyboard.
     *
     * @param { ?CustomBuilder } value - Set up a custom keyboard of TextInput.
     * @param { ?Bool } supportAvoidance - Indicates the custom keyboard options of TextInput.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func customKeyboard(value: ?CustomBuilder, supportAvoidance!: ?Bool): TextInputAttribute

    /**
     * Text input style
     * NOTE:
     * The inline input style only supports InputType.Normal.
     *
     * @param { ?TextInputStyle } value - Text input style.Default value is TextInputStyle.Default.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func style(value: ?TextInputStyle): TextInputAttribute

    /**
     * Sets whether request keyboard or not when on focus.
     * Sets whether to enable the input method when the TextInput component obtains focus in a way other than clicking.
     *
     * @param { ?Bool } value - Default value is true.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func enableKeyboardOnFocus(value: ?Bool): TextInputAttribute

    /**
     * Controls whether the selection menu pops up.
     *
     * NOTE:
     * true:
     * The system text selection menu does not appear under the following circumstances:
     * clicking the text box cursor, long-pressing the text box, double-tapping the text box,
     * triple-tapping the text box, or right-clicking the text box.
     * false:
     * The system text selection menu appears under the following circumstances:
     * clicking the text box cursor, long-pressing the text box, double-tapping the text box,
     * triple-tapping the text box, or right-clicking the text box.
     *
     * @param { ?Bool } value - Default value is false.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func selectionMenuHidden(value: ?Bool): TextInputAttribute

    /**
     * Define the show underline of the text input.
     * NOTE:
     * By default, the underline comes in the color of 0x33182431, thickness of 1.px, and text box size of 48.vp.
     * The underline is only available for the InputType.Normal type.
     *
     * @param { ?Bool } value - Default value is false.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func showUnderline(value: ?Bool): TextInputAttribute

    /**
     * Define max lines of the text input.
     * Value range: (0, +∞)
     *
     * @param { ?Int32 } value - Default value is 3.
     * @returns { TextInputAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func maxLines(value: ?Int32): TextInputAttribute
}