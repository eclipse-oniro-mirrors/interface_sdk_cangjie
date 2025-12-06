package ohos.arkui.component.text_picker

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Callback of TextPicker item is selected event.
 *
 * @param { String } selectItem - Value of the selected item.
 * @param { UInt32 } index - Index of the selected item.
 */
public type OnTextPickerChangeCallback = (String, UInt32) -> Unit

/**
 * Creates a text picker based on the selection range specified by range.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextPicker <: CommonMethodComponent<TextPicker> & TextPickerAttribute {
/**
 * Defines the TextPicker constructor.
 *
 * @param { ?Array<String> } range - Data selection range of the picker.
 * @param { ?UInt32 } [selected] - Index of the default selected item in the array.
 * @param { ?String } [value] - Value of the default item in the range.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        range!: ?Array<String>,
        selected!: ?UInt32 = Option.None,
        value!: ?String = Option.None
    )

/**
 * Sets the height of each item in the picker.
 *
 * @param { ?Length } value - Height of each item in the picker. The default value 56.vp (selected) and 36.vp (unselected).
 *     For the number type, the value range is [0, +∞).
 *     For the string type, only numeric string values, for example, "56" are supported.
 * @returns { This } Returns TextPicker instance to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func defaultPickerItemHeight(value: ?Length): This

/**
 * Sets whether scrolling is loopable.
 *
 * @param { ?Bool } value - Whether scrolling is loopable. true: loopable; false: not loopable. The default value is true.
 * @returns { This } Returns TextPicker instance to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func canLoop(value: ?Bool): This

/**
 * Triggered when the text picker snaps to the selected item. Compared to onChange, this API supports the None type for the callback parameter
 *
 * @param { ?OnTextPickerChangeCallback } callback - the callback of onChange.
 * @returns { This } Returns TextPicker instance to allow method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?OnTextPickerChangeCallback): This
}

/**
 * Style the text selector.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextPickerAttribute <: CommonMethod<TextPickerAttribute> {
/**
 * Sets the height of each item in the picker.
 *
 * @param { ?Length } value - Height of each item in the picker.
 *     For the number type, the value range is [0, +∞).
 *     For the string type, only numeric string values, for example, "56", are supported.
 * @returns { TextPickerAttribute } Returns the text picker attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func defaultPickerItemHeight(value: ?Length): TextPickerAttribute

/**
 * Sets whether scrolling is loopable.
 *
 * @param { ?Bool } value - Whether scrolling is loopable. true: loopable; false: not loopable. The default value is true.
 * @returns { TextPickerAttribute } Returns the text picker attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func canLoop(value: ?Bool): TextPickerAttribute

/**
 * Triggered when the text picker snaps to the selected item.
 * Compared to onChange, this API supports the None type for the callback parameter.
 *
 * @param { ?OnTextPickerChangeCallback } callback - the callback of onChange.
 * @returns { TextPickerAttribute } Returns the text picker attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?OnTextPickerChangeCallback): TextPickerAttribute
}