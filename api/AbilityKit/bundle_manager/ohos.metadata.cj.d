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

package ohos.metadata

import ohos.labels.*

/**
 * Indicates the Metadata.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class Metadata {
    /**
     * Indicates the metadata name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var name: String

    /**
     * Indicates the metadata value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var value: String

    /**
     * Indicates the metadata resource.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var resource: String
}
