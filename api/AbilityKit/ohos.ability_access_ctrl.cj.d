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

package ohos.ability_access_ctrl


import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.business_exception.AsyncCallback
import ohos.labels.APILevel
public import ohos.security.permission_request_result.*
import ohos.security.permission_request_result.*

/**
 * Indicates permissions.
 *
 */
public type Permissions = String

/**
 * GrantStatus.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.AccessToken"
]
public enum GrantStatus {
    /**
     * access_token permission check fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    PermissionDenied
    | 
    /**
     * access_token permission check success
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    PermissionGranted
    | ...
}


extend GrantStatus <: ToString {
    
    /**
     * Converts the GrantStatus to its string representation.
     * @returns { String } A string representation of the GrantStatus.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public func toString(): String
}

extend GrantStatus <: Equatable<GrantStatus> {
    
    /**
     * Compares this GrantStatus with another for equality.
     * @param { GrantStatus } other - The GrantStatus to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public operator func ==(other: GrantStatus): Bool
    
    /**
     * Compares this GrantStatus with another for inequality.
     * @param { GrantStatus } other - The GrantStatus to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public operator func !=(other: GrantStatus): Bool
}

/**
 * abilityAccessCtrl
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.AccessToken"
]
public class AbilityAccessCtrl {
    /**
     * Obtains the AtManager instance.
     *
     * @returns { AtManager } Returns the instance of the AtManager.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public static func createAtManager(): AtManager
}

/**
 * Provides methods for managing access_token.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.AccessToken"
]
public class AtManager {
    /**
     * Checks whether a specified application has been granted the given permission.
     * On the cross-platform, this function can be used to check the permission grant status for the current
     * application only.
     *
     * @param { UInt32 } tokenID - Token ID of the application.
     * @param { Permissions } permissionName - Name of the permission to be verified.
     * @returns { GrantStatus } Returns permission verify result.
     * @throws { BusinessException } 12100001 - Invalid parameter. The tokenID is 0, or the permissionName exceeds 256
     * characters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken",
        throwexception: true
    ]
    public func checkAccessToken(tokenID: UInt32, permissionName: Permissions): GrantStatus

    /**
     * Requests certain permissions from the user.
     *
     * @param { UIAbilityContext } context - The context that initiates the permission request.
     * The context must belong to the Stage model and only supports UIAbilityContext and UIExtensionContext.
     * @param { Array<Permissions> } permissionList - Indicates the list of permissions to be requested. This parameter
     * cannot be null or empty.
     * @param { AsyncCallback<PermissionRequestResult> } requestCallback - Callback for the result from requesting
     * permissions.
     * @throws { BusinessException } 12100001 - Invalid parameter. The context is invalid when it does not belong to
     * the application itself.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.AccessToken",
        throwexception: true
    ]
    public func requestPermissionsFromUser(context: UIAbilityContext, permissionList: Array<Permissions>,
        requestCallback: AsyncCallback<PermissionRequestResult>): Unit
}
