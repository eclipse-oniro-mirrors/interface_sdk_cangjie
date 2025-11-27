package ohos.arkui.component.date_picker

import ohos.arkui.component.common.*
import ohos.arkui.component.text_clock.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.time.*

/**
 * Defines the struct of DatePickerResult.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DatePickerResult {
/**
 * Year of the selected date.
 *
 * NOTE:
 * Value range: depends on start and end.
 * If start and end are not set, the default range is [1970, 2100].
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var year: Int64

/**
 * Month index of the selected date.
 * The index is zero-based. 0 indicates January, and 11 indicates December.
 *
 * NOTE:
 * Value range: depends on start and end. If start and end are not set, the default range is [0, 11].
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var month: Int64

/**
 * Day of the selected date.
 *
 * NOTE:
 * Value range: depends on start and end. If start and end are not set, the default range is [1, 31].
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var day: Int64

/**
 * DatePickerResult constructor.
 *
 * @param { Int64 } year - Year of the selected date.
 * @param { Int64 } month - Month index of the selected date (0-11).
 * @param { Int64 } day - Day of the selected date.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        year: Int64,
        month: Int64,
        day: Int64
    )
}

/**
 * Defines DatePicker Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DatePicker <: CommonMethodComponent<DatePicker> & DatePickerAttribute {
/**
 * Parameters of the date picker.
 *
 * @param { ?DateTime } [start] - Start date of the picker.
 * @param { ?DateTime } [end] - End date of the picker.
 * @param { ?DateTime } [selected] - Date of the selected item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        start!: ?DateTime = None,
        end!: ?DateTime = None,
        selected!: ?DateTime = None
    )

/**
 * Specifies whether to display the lunar calendar.
 *
 * @param { ?Bool } value - Whether to display the lunar calendar. The default value is false.
 *     true: Display the lunar calendar.
 *     false: Do not display the lunar.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lunar(value: ?Bool): This

/**
 * Triggered when a date is selected.
 *
 * @param { ?Callback<DateTime, Unit> } callback - The callback on date change.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDateChange(callback: ?Callback<DateTime, Unit>): This

/**
 * Sets the text style for the top and bottom items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the top and bottom items.
 *    The default value is PickerTextStyle(color: 0xff18243, font: Font(size: 14.fp, weight: FontWeight.Regular))
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func disappearTextStyle(value: ?PickerTextStyle): This

/**
 * Sets the text style for all items except the top, bottom, and selected items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of all items except the top,
 *   bottom, and selected items.
 *   The default value is PickerTextStyle(color: 0xff18243, font: Font(size: 16.fp, weight: FontWeight.Regular))
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textStyle(value: ?PickerTextStyle): This

/**
 * Sets the text style for the selected item.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the selected item.
 *   The default value is PickerTextStyle(color: 0xff007dff, font: Font(size: 20.fp, weight: FontWeight.Medium))
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedTextStyle(value: ?PickerTextStyle): This
}

/**
 * Defines the DatePicker attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface DatePickerAttribute <: CommonMethod<DatePickerAttribute> {
/**
 * Specifies whether to display the lunar calendar.
 *
 * @param { ?Bool } value - Whether to display the lunar calendar.
 *     - true: Display the lunar calendar.
 *     - false: Do not display the lunar.
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lunar(value: ?Bool): DatePickerAttribute

/**
 * Triggered when a date is selected.
 *
 * @param { ?Callback<DateTime, Unit> } callback - The callback function to invoke when the date changes.
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDateChange(callback: ?Callback<DateTime, Unit>): DatePickerAttribute

/**
 * Sets the text style for the top and bottom items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the top and bottom items.
 *    The default value is PickerTextStyle(color: 0xff18243, font: Font(size: 14.fp, weight: FontWeight.Regular))
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func disappearTextStyle(value: ?PickerTextStyle): DatePickerAttribute

/**
 * Sets the text style for all items except the top, bottom, and selected items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of all items except the top,
 *   bottom, and selected items.
 *   The default value is PickerTextStyle(color: 0xff18243, font: Font(size: 16.fp, weight: FontWeight.Regular))
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textStyle(value: ?PickerTextStyle): DatePickerAttribute

/**
 * Sets the text style for the selected item.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the selected item.
 *      The default value is PickerTextStyle(color: 0xff007dff, font: Font(size: 20.fp, weight: FontWeight.Medium))
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedTextStyle(value: ?PickerTextStyle): DatePickerAttribute
}