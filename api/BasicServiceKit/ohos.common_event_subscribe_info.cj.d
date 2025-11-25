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

package ohos.common_event_subscribe_info

import ohos.labels.APILevel

/**
 * The CommonEventSubscribeInfo module provides APIs for providing subscriber information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Notification.CommonEvent"
]
public class CommonEventSubscribeInfo {
    /**
     * Common events to subscribe to.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var events: Array<String>

    /**
     * Subscriber priority. The value ranges from –100 to +1000. If the value exceeds the upper or lower limit, the upper or lower limit is used.
     * The default value is 0.
     * The higher the numerical value, the higher the priority.
     * The value should be set by subscribers of the same event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var priority: Int32

    /**
     * User ID. If this parameter is not specified, the default value, which is the ID of the current user, will be
     * used. The value must be an existing user ID in the system. Use getOsAccountLocalId to obtain the system account
     * ID and use it as the user ID of the subscriber.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var userId: Int32

    /**
     * Permission of the publisher. The subscriber can receive only the events from the publisher with this permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var publisherPermission: String

    /**
     * Device ID. Use @ohos.device_info to obtain the UDID as the device ID of the subscriber. Not supported currently.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var publisherDeviceId: String

    /**
     * Bundle name of the publisher to subscribe to.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var publisherBundleName: String

    /**
     * Constructor of CommonEventSubscribeInfo.
     *
     * @param { Array<String> } events - Common events to subscribe to.
     * @param { String } [publisherPermission] - Permission of the publisher. The subscriber can receive only events from the publisher with the this permission.
     * @param { String } [publisherDeviceId] - Device ID.
     * @param { Int32 } [userId] - User ID. If this parameter is not specified, the default value, which is the ID of the current user, well be used.
     * @param { Int32 } [priority] - Subscriber priority. The value ranges from –100 to +1000. If the value exceeds the upper or lower limit, the upper or lower limit is used.
     * @param { String } [publisherBundleName] - Bundle name of the publisher to subscribe to.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public init(
        events: Array<String>,
        publisherPermission!: String = "",
        publisherDeviceId!: String = "",
        userId!: Int32 = UNDEFINED_USER,
        priority!: Int32 = 0,
        publisherBundleName!: String = ""
    )
}
