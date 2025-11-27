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

package ohos.resource

import ohos.base.{Length, ResourceColor, ResourceStr}
import ohos.labels.APILevel

/**
 * Contains resource descriptor information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public class AppResource <: Length & ResourceColor & ResourceStr {
    /**
     * bundle name in hap
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var bundleName: String

    /**
     * module name in hap
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var moduleName: String

    /**
     * resource id in hap
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var id: UInt32

    /**
     * Set params.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var params: ?Array<Any>

    /**
     * Set type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var resType: ?Int32

    /**
     * AppResource constructor.
     *
     * Create an AppResource instance with specified parameters.
     * @param { String } bundleName - Bundle name in hap.
     * @param { String } moduleName - Module name in hap.
     * @param { UInt32 } id - Resource id in hap.
     * @param { ?Array<Any> } [params] - Set params. Default is None.
     * @param { ?Int32 } [resType] - Set type. Default is None.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public init(
        bundleName: String,
        moduleName: String,
        id: UInt32,
        params!: ?Array<Any> = None,
        resType!: ?Int32 = None
    )
}
