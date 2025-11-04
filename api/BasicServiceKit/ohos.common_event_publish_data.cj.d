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

package ohos.common_event_publish_data


import ohos.labels.APILevel
import ohos.value_type.CommonEventValueType
import std.collection.HashMap

/**
 * The CommonEventPublishData module provides APIs for defining common event content and attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Notification.CommonEvent"
]
public class CommonEventPublishData {
    /**
     * Bundle name of the subscriber that can receive the common event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var bundleName: String

    /**
     * Common event data transferred by the publisher. The data size cannot exceed 64 KB.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var data: String

    /**
     * Common event data transferred by the publisher. The default value is 0.
     *
     * @default 0
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var code: Int32

    /**
     * Permissions required for subscribers to receive the common event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var subscriberPermissions: Array<String>

    /**
     * Whether the common event is an ordered one.
     *
     * @default false
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var isOrdered: Bool

    /**
     * Whether the common event is a sticky one. Only system applications and system services are allowed to
     * send sticky events.
     *
     * @default false
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.COMMONEVENT_STICKY",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var isSticky: Bool

    /**
     * The description of the parameters in a common event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var parameters: HashMap<String, CommonEventValueType>

    /**
     * CommonEventPublishData constructor.
     *
     * @param { String } [bundleName] - Bundle name of the subscriber that can receive the common event.
     * @param { String } [data] - Common event data transferred by the publisher. The data size cannot exceed 64 KB.
     * @param { Int32 } [code] - Common event data transferred by the publisher. The default value is 0.
     * @param { Array<String> } [subscriberPermissions] - Permissions required for subscribers to
     * receive the common event.
     * @param { Bool } [isOrdered] - Whether the common event is an ordered one.
     * @param { Bool } [isSticky] - Whether the common event is a sticky one. Only system applications
     * and system services are allowed to send sticky events.
     * @param { HashMap<String, CommonEventValueType> } [parameters] - The description of the parameters in a common event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public init(
        bundleName!: String = "",
        data!: String = "",
        code!: Int32 = 0,
        subscriberPermissions!: Array<String> = Array<String>(),
        isOrdered!: Bool = false,
        isSticky!: Bool = false,
        parameters!: HashMap<String, CommonEventValueType> = HashMap<String, CommonEventValueType>()
    )
}
