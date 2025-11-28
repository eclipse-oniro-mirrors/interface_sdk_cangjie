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

package ohos.element_name

import ohos.labels.*

/**
 * Contains basic Ability information, which uniquely identifies an ability.
 * You can use this class to obtain values of the fields set in an element,
 * such as the device ID, bundle name, and ability name.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ElementName {
    /**
     * Indicates device id.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var deviceId: String

    /**
     * Indicates bundle name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var bundleName: String

    /**
     * Indicates ability name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var abilityName: String

    /**
     * Indicates module name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var moduleName: String

    /**
     * ElementName constructor.
     *
     * @param { String } bundleName - Indicates bundle name.
     * @param { String } abilityName - Indicates ability name.
     * @param { String } [deviceId] - Indicates device id. The default value is "".
     * @param { String } [moduleName] - Indicates module name. The default value is "".
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public init(bundleName: String, abilityName: String, deviceId!: String = "", moduleName!: String = "")
}
