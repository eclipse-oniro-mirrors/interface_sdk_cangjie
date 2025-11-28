/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

package ohos.settings


import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.labels.APILevel

/**
 * Get value from settingsdata.
 *
 * @param { UIAbilityContext } context - Indicates the Context or dataAbilityHelper used to access
 * the database.
 * @param { T } name - Indicates the name of the character string.
 * @param { String } defValue - Indicates the default value of the character string.
 * @returns { String } Returns settingsdata value.
 * @throws { BusinessException } 14800000 - Parameter error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Applications.Settings.Core",
    throwexception: true,
    workerthread: true
]
public func getValue<T>(context: UIAbilityContext, name: T, defValue: String): String where T <: ToString

/**
 * Get value from settingsdata.
 *
 * @param { UIAbilityContext } context -Indicates the Context or dataAbilityHelper used to access
 * the database.
 * @param { T } name - Indicates the name of the character string.
 * @param { String } defValue - Indicates the default value of the character string.
 * @param { P } domainName - Indicates the name of the domain name to set.
 * @returns { String } Returns settingsdata value.
 * @throws { BusinessException } 14800000 - Parameter error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Applications.Settings.Core",
    throwexception: true,
    workerthread: true
]
public func getValue<T, P>(context: UIAbilityContext, name: T, defValue: String, domainName: P): String where T <: ToString

/**
 * Provide domain name for query.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum DomainName <: ToString {
    /**
     * Provide the domain name for device shared Key.
     * This constants is a domain name for device level shared key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    DeviceShared
    |
    /**
     * Provide the domain name for user property.
     * This constants is a domain name for user level key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    UserProperty
    | ...

    /**
     * Obtains the string of DomainName.
     * @returns {String} A string representation of the DomainName.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}

/**
 * Provides methods for setting time and date formats.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum Date <: ToString {
    /**
     * Indicates the date format.
     * The formats mm/dd/yyyy, dd/mm/yyyy, and yyyy/mm/dd are available.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    DateFormat
    |
    /**
     * Specifies whether the time is displayed in 12-hour or 24-hour format.
     * If the value is 12, the 12-hour format is used. If the value is 24, the 24-hour format is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    TimeFormat
    |
    /**
     * Specifies whether the date, time, and time zone are automatically obtained from the Network
     * Identity and Time Zone (NITZ).
     * If the value is true, the information is automatically obtained from NITZ.
     * If the value is false, the information is not obtained from NITZ.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AutoGainTime
    |
    /**
     * Specifies whether the time zone is automatically obtained from NITZ.
     * If the value is true, the information is automatically obtained from NITZ. If the value
     * is false, the information is not obtained from NITZ.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AutoGainTimeZone
    | ...

    /**
     * Obtains the string of Date.
     * @returns {String} A string representation of the Date.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}

/**
 * Provides methods for setting the display effect, including the font size, screen brightness, screen rotation,
 * animation factor, and display color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum Display <: ToString {
    /**
     * Indicates the scaling factor of fonts, which is a float number.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    FontScale
    |
    /**
     * Indicates the screen brightness. The value ranges from 0 to 255.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    ScreenBrightnessStatus
    |
    /**
     * Specifies whether automatic screen brightness adjustment is enabled.
     * If the value is 1, automatic adjustment is enabled. If the value is 0, automatic
     * adjustment is disabled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AutoScreenBrightness
    |
    /**
     * Indicates the duration that the device waits before going to sleep after a period of inactivity, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    ScreenOffTimeout
    |
    /**
     * Indicates the value of AutoScreenBrightnessMode when automatic screen brightness adjustment is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AutoScreenBrightnessMode
    |
    /**
     * Indicates the value of ManualScreenBrightnessMode when manual screen brightness adjustment is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    ManualScreenBrightnessMode
    | ...

    /**
     * Obtains the string of Display.
     * @returns {String} A string representation of the Display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}
