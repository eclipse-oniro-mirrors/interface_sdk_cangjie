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

package ohos.system_date_time

import ohos.labels.APILevel

/**
 * Indicates time type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.MiscServices.Time"
]
public enum TimeType {
    /**
     * Indicates the time elapsed since the system was booted, including deep sleep time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time"
    ]
    Startup
    |
    /**
     * Indicates the time elapsed since the system was booted, not including deep sleep time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time"
    ]
    Active
    | ...
}

/**
 * System time and timezone.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.MiscServices.Time"
]
public class SystemDateTime {
    /**
     * Obtains the number of timestamp that have elapsed since the Unix epoch.
     *
     * @param { Bool } [isNanoseconds] - True if the result is in nanoseconds, otherwise in milliseconds.
     * @returns { Int64 } The timestamp returned of getTime.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getTime(isNanoseconds!: Bool = false): Int64

    /**
     * Obtains the number of milliseconds since the system has been running.
     *
     * @param { TimeType } timeType - indicates the type of get uptime. It can only be `STARTUP` or `ACTIVE`.
     * @param { Bool } [isNanoseconds] - True if the result is in nanoseconds, otherwise in milliseconds.
     * @returns { Int64 } The timestamp returned of getUpTime.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getUptime(timeType: TimeType, isNanoseconds!: Bool = false): Int64

    /**
     * Obtains the number of milliseconds since the system has been running.
     *
     * @returns { String } The timezone returned of getTimezone.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time",
        workerthread: true
    ]
    public static func getTimezone(): String
}
