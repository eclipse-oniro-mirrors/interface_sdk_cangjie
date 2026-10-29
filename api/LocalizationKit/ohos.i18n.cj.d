/*
 * Copyright (c) 2025 - 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.i18n

import ohos.labels.APILevel

/**
 * Obtains the Calendar object for the specified locale and calendar type.
 *
 * @param { String } locale - Locale ID, which consists of the language, script, and country/region,
 *                            for example, zh-Hans-CN.
 * @param { ?CalendarType } [calendarType] - Calendar type. The value can be: "Buddhist", "Chinese", "Coptic", "Ethiopic",
 *                            "Hebrew", "Gregory", "Gregory", "IslamicCivil", "IslamicTbla",
 *                            "IslamicUmalqura", "Japanese", or "Persian". The default value is the default
 *                            calendar of the locale. For details about the meanings and application scenarios of
 *                            different values, see Calendar Setting.
 * @returns { Calendar } Calendar object
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.I18n"
]
public func getCalendar(locale: String, calendarType!: ?CalendarType = None): Calendar

/**
 * Provides the API for accessing Calendar name, time and date related information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.I18n"
]
public class Calendar {
    /**
     * Sets the date and time for a Calendar object.
     *
     * @param { Float64 } time - Unix timestamp, which indicates the number of milliseconds that have elapsed since the
     *                          Unix epoch.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setTime(time: Float64): Unit

    /**
     * Sets the year, month, day, hour, minute, and second for this Calendar object.
     *
     * @param { Int32 } year - Year to set.
     * @param { Int32 } month - Month to set. Note: The month starts from 0. For example, 0 indicates January.
     * @param { Int32 } date - Day to set.
     * @param { ?Int32 } [hour] - Hour to set. The default value is the current system time.
     * @param { ?Int32 } [minute] - Minute to set. The default value is the current system time.
     * @param { ?Int32 } [second] - Second to set. The default value is the current system time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func set(year: Int32, month: Int32, date: Int32, hour!: ?Int32 = None, minute!: ?Int32 = None,
        second!: ?Int32 = None): Unit

    /**
     * Sets the time zone of this Calendar object.
     *
     * @param { String } timeZone - Valid time zone ID, for example, Asia/Shanghai.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setTimeZone(timeZone: String): Unit

    /**
     * Obtains the time zone ID of this Calendar object.
     *
     * @returns { String } Time zone ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getTimeZone(): String

    /**
     * Obtains the first day of a week for this Calendar object.
     *
     * @returns { Int32 } First day of a week. The value 1 indicates Sunday, and the value 7 indicates Saturday.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getFirstDayOfWeek(): Int32

    /**
     * Sets the first day of a week for this Calendar object.
     *
     * @param { Int32 } value - Start day of a week. The value 1 indicates Sunday, and the value 7 indicates Saturday.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setFirstDayOfWeek(value: Int32): Unit

    /**
     * Obtains the minimum number of days in the first week for this Calendar object.
     *
     * @returns { Int32 } Minimum number of days in the first week of a year.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getMinimalDaysInFirstWeek(): Int32

    /**
     * Sets the minimum number of days in the first week for this Calendar object.
     *
     * @param { Int32 } value - Minimum number of days in the first week of a year.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setMinimalDaysInFirstWeek(value: Int32): Unit

    /**
     * Obtains the values of the calendar attributes in this Calendar object.
     *
     * @param { String } field - Calendar attributes. The following table lists the supported attribute values.
     * @returns { Int32 } Value of the calendar attribute. For example, if the year of the internal date of the
     *                     current Calendar object is 1990, get('year') returns 1990.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func get(field: String): Int32

    /**
     * Obtains calendar display name in the specified language.
     *
     * @param { String } locale - System locale, which consists of the language, script, and country/region.
     * @returns { String } Calendar display name in the specified language. For example, buddhist is displayed as
     *                     Buddhist Calendar if the locale is en-US.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getDisplayName(locale: String): String

    /**
     * Performs addition or subtraction on the calendar attributes of this Calendar object.
     *
     *
     * @param { String } field - Calendar attribute. The value can be any of the following: year, month, week_of_year,
     *                           week_of_month, date, day_of_year, day_of_week, day_of_week_in_month, hour,
     *                           hour_of_day, minute, second, millisecond. For details about the values, see get.
     * @param { Int32 } amount - Addition or subtraction amount.
     * @throws { BusinessException } 890001 - Invalid parameter. Possible causes: Parameter verification failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n",
        throwexception: true
    ]
    public func add(field: String, amount: Int32): Unit

    /**
     * Obtains the timestamp of this Calendar object.
     *
     * @returns { Float64 } Unix timestamp, which indicates the number of milliseconds that have elapsed since the
     *                     Unix epoch.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getTimeInMillis(): Float64
}

/**
 * Calendar type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.I18n"
]
public enum CalendarType {
    /**
     * buddhist calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Buddhist
    | 
    /**
     * chinese calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Chinese
    | 
    /**
     * coptic calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Coptic
    | 
    /**
     * ethiopic calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Ethiopic
    | 
    /**
     * hebrew calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Hebrew
    | 
    /**
     * gregory calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Gregory
    | 
    /**
     * indian calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Indian
    | 
    /**
     * islamic_civil calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    IslamicCivil
    | 
    /**
     * islamic_tbla calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    IslamicTbla
    | 
    /**
     * islamic_umalqura calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    IslamicUmalqura
    | 
    /**
     * japanese calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Japanese
    | 
    /**
     * persian calendar type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    Persian
    | ...
}

/**
 * Provides system functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.I18n"
]
public class System {
    /**
     * Obtains the preferred language of an application.
     *
     * @returns { String } Returns the preferred language of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.I18n"
    ]
    public static func getAppPreferredLanguage(): String

    /**
     * Obtains the current system language.
     * To listen for system language changes, enable listening for CommonEventManager.COMMON_EVENT_LOCALE_CHANGED.
     *
     * @returns { String } Language ID.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Global.I18n"
    ]
    public static func getSystemLanguage(): String

    /**
     * Obtains the current system country/region.
     * To listen for system region changes, enable listening for CommonEventManager.COMMON_EVENT_LOCALE_CHANGED.
     *
     * @returns { String } Country/region ID.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Global.I18n"
    ]
    public static func getSystemRegion(): String
}

/**
 * Checks whether a language is an RTL language. For an RTL language,
 * [UI mirroring](docroot://internationalization/i18n-ui-design.md#ui-mirroring) is required.
 *
 * @param { String } locale - System locale, which consists of the language, script, and country/region.
 * @returns { Bool } Whether a language is an RTL language. The value **true** indicates that the language is an
 *     RTL language, and the value **false** indicates the opposite.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Global.I18n"
]
public func isRTL(locale: String): Bool

/**
 * Provides text transliteration capabilities, such as obtaining the supported language IDs and transliterating text.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Global.I18n"
]
public class Transliterator {
    /**
     * Creates a **Transliterator** object based on the specified ID.
     *
     * @param { String } id - ID supported by the **Transliterator** object.
     * @returns { Transliterator } **Transliterator** object.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Global.I18n"
    ]
    public static func getInstance(id: String): Transliterator

    /**
     * Converts the input text from the source format to the target format.
     *
     * @param { String } text - Input text.
     * @returns { String } Text after conversion.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Global.I18n"
    ]
    public func transform(text: String): String
}
