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

package ohos.security.permission_request_result

import ohos.labels.APILevel

/**
 * The result of requestPermissionsFromUser with asynchronous callback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.AccessToken"
]
public class PermissionRequestResult {
    /**
     * The permissions passed in by the user.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public var permissions: Array<String>

    /**
     * The results for the corresponding request permissions. The value 0 indicates that a
     * permission is granted, the value -1 indicates not, and the value 2 indicates the request is invalid.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public var authResults: Array<Int32>

    /**
     * Specifies whether a dialog box is shown for each requested permission.
     * The value true means that a dialog box is shown, and false means the opposite.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public var dialogShownResults = Array<Bool>()
}
