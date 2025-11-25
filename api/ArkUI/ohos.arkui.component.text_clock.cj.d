package ohos.arkui.component.text_clock

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*

/**
 * Whether to display a leading zero for the hours and minutes.
 *
 * NOTE:
 * Currently only the configuration of the hour and minute parameters is supported.
 *
 * In the 12-hour format, it defaults to numeric, which means no leading zero is used.
 * minute: defaults to 2-digit, which means a leading zero is used.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DateTimeOptions {
/**
 * Define Preview locale
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var locale: ?String

/**
 * Indicates the TextMenuItemId to open calendar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var dateStyle: ?String

/**
 * The time of the TextClock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timeStyle: ?String

/**
 * Hour portion of the selected time
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hourCycle: ?String

/**
 * Specifies the current time zone.
 * The valid value is an integer ranging from - 14 to 12,
 * Where a negative value indicates the eastern time zone, for example, -8.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timeZone: ?String

/**
 * Numbering system. The value can be: "adlm", "ahom", "arab", "arabext", "bali", "beng", "bhks",
 * "brah", "cakm", "cham", "deva", "diak", "fullwide", "gong", "gonm", "gujr", "guru", "hanidec", "hmng", "hmnp",
 * "java", "kali", "khmr", "knda", "lana", "lanatham", "laoo", "latn", "lepc", "limb", "mathbold", "mathdbl",
 * "mathmono", "mathsanb", "mathsans", "mlym", "modi", "mong", "mroo", "mtei", "mymr", "mymrshan", "mymrtlng",
 * "newa", "nkoo", "olck", "orya", "osma", "rohg", "saur", "segment", "shrd", "sind", "sinh", "sora", "sund",
 * "takr", "talu", "tamldec", "telu", "thai", "tibt", "tirh", "vaii", "wara", or "wcho".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var numberingSystem: ?String

/**
 * Hour portion of the selected time.
 *
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hour12: ?Bool

/**
 * Style of week width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var weekday: ?String

/**
 * Epoch display format. The value can be: "long", "short", "narrow", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var era: ?String

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
    public var year: ?String

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
    public var month: ?String

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
    public var day: ?String

/**
 * Hour portion of the selected time.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hour: ?String

/**
 * Minute portion of the selected time.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var minute: ?String

/**
 * Second portion of the selected time.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var second: ?String

/**
 * Specifies the current time zone.
 * The valid value is an integer ranging from - 14 to 12,
 * Where a negative value indicates the eastern time zone, for example, -8.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timeZoneName: ?String

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
    public var dayPeriod: ?String

/**
 * Locale matching algorithm. The value can be:
 * "lookup": exact match.
 * "best fit": best match.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var localeMatcher: ?String

/**
 * Format matching algorithm. The value can be:
 * "basic": exact match.
 * "best fit": best match.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var formatMatcher: ?String

/**
 * Creates a new DateTimeOptions instance with the specified formatting options.
 *
 * @param { ?String } [locale] - Valid locale ID, for example, "zh-Hans-CN".
 * @param { ?String } [dateStyle] - Date display format.
 * @param { ?String } [timeStyle] - Time display format.
 * @param { ?String } [hourCycle] - Hour cycle.
 * @param { ?String } [timeZone] - Time zone in use.
 * @param { ?String } [numberingSystem] - Numbering system.
 * @param { ?Bool } [hour12] - Whether to use the 12-hour clock.
 * @param { ?String } [weekday] - Week display format.
 * @param { ?String } [era] - Epoch display format.
 * @param { ?String } [year] - Year display format.
 * @param { ?String } [month] - Month display format.
 * @param { ?String } [day] - Day display format.
 * @param { ?String } [hour] - Hour display format.
 * @param { ?String } [minute] - Minute display format.
 * @param { ?String } [second] - Second display format.
 * @param { ?String } [timeZoneName] - Localized representation of a time zone name.
 * @param { ?String } [dayPeriod] - Time period display format.
 * @param { ?String } [localeMatcher] - Locale matching algorithm.
 * @param { ?String } [formatMatcher] - Format matching algorithm.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(locale!: ?String = None, dateStyle!: ?String = None, timeStyle!: ?String = None,
        hourCycle!: ?String = None, timeZone!: ?String = None, numberingSystem!: ?String = None, hour12!: ?Bool = None,
        weekday!: ?String = None, era!: ?String = None, year!: ?String = None, month!: ?String = None,
        day!: ?String = None, hour!: ?String = None, minute!: ?String = None, second!: ?String = None,
        timeZoneName!: ?String = None, dayPeriod!: ?String = None, localeMatcher!: ?String = None,
        formatMatcher!: ?String = None)
}

/**
 * Provides a way to control the textclock status.
 * Allows starting and stopping the TextClock component updates.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextClockController <: RemoteDataLite {
/**
 * TextClockController constructor.
 * Creates a new TextClockController instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Provides a start event for textclock.
 * Starts the TextClock updates.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func start(): Unit

/**
 * Provides a stop event for textclock.
 * Stops the TextClock updates.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stop(): Unit
}

/**
 * Defines TextClock Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextClock <: CommonMethodComponent<TextClock> & TextClockAttribute {
/**
 * Construct the text clock component.
 * Specifies the current time zone.
 * The valid value is an integer ranging from -14 to 12,
 * where a negative value indicates the western time zone and a positive value indicates the eastern time zone.
 *
 * @param { ?Float32 } [timeZoneOffset] - The time zone offset in hours.
 * @param { ?TextClockController } [controller] - The controller for the text clock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(timeZoneOffset!: ?Float32 = None, controller!: ?TextClockController = None)

/**
 * Provides a date change callback.
 * The callback parameter is Unix Time Stamp,
 * The number of milliseconds that have elapsed since January 1, 1970 (UTC).
 * The minimum callback interval for this event default is seconds when TextClock is not in a form.
 * The minimum callback interval for this event is minutes when TextClock is in a form.
 * If visibility is Hidden the callback be disabled when TextClock is in a form.
 * You can listen to this callback,
 * Use the format attribute method to customize data display in the callback.
 *
 * @param { ?(Int64) -> Unit } callback - Listening date event callback.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDateChange(callback: ?(Int64) -> Unit): This

/**
 * Set display time format,such as yyyy/MM/dd,yyyy-MM-dd. support time format：yyyy,MM,MMM(English month abbreviation),MMMM(Full name of the month in English), dd,ddd(English Week abbreviation),dddd(Full name of the week in English), HH/hh(24-hour clock/12-hour clock),mm(minute),ss(second). The default value is hh:mm:ss when TextClock is not in a form. The default value is hh:mm when TextClock is in a form. If the value has second or millisecond, the value will be set to the default value
 *
 * @param { ?ResourceStr } value - The time format string.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func format(value: ?ResourceStr): This

/**
 * Called when the value of TextClock fontSize is set
 *
 * @param { ?Length } value - The font size.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontSize(value: ?Length): This

/**
 * Called when the value of TextClock fontColor is set
 *
 * @param { ?ResourceColor } value - The font color resource.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontColor(value: ?ResourceColor): This

/**
 * Called when the value of TextClock fontStyle is set
 *
 * @param { ?FontStyle } value - The font style.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontStyle(value: ?FontStyle): This

/**
 * Called when the value of TextClock fontWeight is set
 *
 * @param { ?FontWeight } value - The font weight.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontWeight(value: ?FontWeight): This

/**
 * Called when the value of TextClock fontFamily is set
 *
 * @param { ?ResourceStr } value - The font family.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontFamily(value: ?ResourceStr): This

/**
 * Called when the text shadow is set
 *
 * @param { ?Array<ShadowOptions> } values - The shadow options.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textShadow(values: ?Array<ShadowOptions>): This

/**
 * Called when the text shadow is set.
 * NOTE:
 * This API does not work with the fill attribute or coloring strategy.
 *
 * @param { ?ShadowOptions } value - The shadow options.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textShadow(value: ?ShadowOptions): This
}

/**
 * Provides attribute for TextClock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextClockAttribute <: CommonMethod<TextClockAttribute> {
/**
 * Provides a date change callback.
 * The callback parameter is Unix Time Stamp,
 * The number of milliseconds that have elapsed since January 1, 1970 (UTC).
 * The minimum callback interval for this event default is seconds when TextClock is not in a form.
 * The minimum callback interval for this event is minutes when TextClock is in a form.
 * If visibility is Hidden the callback be disabled when TextClock is in a form.
 * You can listen to this callback,
 * Use the format attribute method to customize data display in the callback.
 *
 * @param { ?(Int64) -> Unit } callback - Listening date event callback.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDateChange(callback: ?(Int64) -> Unit): TextClockAttribute

/**
 * Set display time format,such as "yyyy/MM/dd","yyyy-MM-dd".
 * support time format：yyyy,MM,MMM(English month abbreviation),MMMM(Full name of the month in English),
 * dd,ddd(English Week abbreviation),dddd(Full name of the week in English),
 * HH/hh(24-hour clock/12-hour clock),mm(minute),ss(second).
 * The default value is "hh:mm:ss" when TextClock is not in a form.
 * The default value is "hh:mm" when TextClock is in a form.
 * If the value has second or millisecond, the value will be set to the default value.
 *
 * @param { ?ResourceStr } value - The time format string.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func format(value: ?ResourceStr): TextClockAttribute

/**
 * Called when the value of TextClock fontSize is set
 *
 * @param { ?Length } value - The font size.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontSize(value: ?Length): TextClockAttribute

/**
 * Called when the value of TextClock fontColor is set
 *
 * @param { ?ResourceColor } value - The font color resource.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontColor(value: ?ResourceColor): TextClockAttribute

/**
 * Called when the value of TextClock fontStyle is set
 *
 * @param { ?FontStyle } value - The font style.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontStyle(value: ?FontStyle): TextClockAttribute

/**
 * Called when the value of TextClock fontWeight is set
 *
 * @param { ?FontWeight } value - The font weight.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontWeight(value: ?FontWeight): TextClockAttribute

/**
 * Called when the value of TextClock fontFamily is set
 *
 * @param { ?ResourceStr } value - The font family.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontFamily(value: ?ResourceStr): TextClockAttribute

/**
 * Called when the text shadow is set.
 *
 * @param { ?Array<ShadowOptions> } values - The shadow options.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textShadow(values: ?Array<ShadowOptions>): TextClockAttribute

/**
 * Called when the text shadow is set.
 *
 * @param { ?ShadowOptions } value - The shadow options.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textShadow(value: ?ShadowOptions): TextClockAttribute
}