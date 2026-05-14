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

package ohos.app.ability.ability_constant

import ohos.labels.*

/**
 * Defines the parameters for starting an ability.
 * The parameter values are automatically passed in by the system when the ability is started. You do not need to
 * change the values.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class LaunchParam {
    /**
     * Ability launch reason, which is an enumerated type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var launchReason: LaunchReason

    /**
     * Reason for the last exit, which is an enumerated type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var lastExitReason: LastExitReason
}

/**
 * Enumerates the initial ability launch reasons.
 * You can use it together with the value of launchReason in
 * onCreate(want, launchParam) of the UIAbility to complete different operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum LaunchReason {
    /**
     * Unknown reason.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Unknown
    | 
    /**
     * The ability is started by calling startAbility.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    StartAbility
    | 
    /**
     * The ability is started by calling startAbilityByCall.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Call
    | 
    /**
     * The ability is started by means of cross-device migration.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Continuation
    | 
    /**
     * The ability is automatically started when the application is restored from a fault.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    AppRecovery
    | ...
}

/**
 * Enumerates the reasons for the last exit.
 * You can use it together with the value of lastExitReason in
 * onCreate(want, launchParam) of the UIAbility to complete different operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum LastExitReason {
    /**
     * Unknown reason.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Unknown
    | 
    /**
     * The ability exits normally because the user closes the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Normal
    | 
    /**
     * The ability exits due to abnormal signals on the local host.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    CppCrash
    | 
    /**
     * The ability exits because watchdog detects that the application is frozen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    AppFreeze
    | ...
}

/**
 * Enumerates the ability continuation results.
 * You can use it together with <code>onContinue(wantParam)</code> of the UIAbility to complete different
 * operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum OnContinueResult {
    /**
     * The ability continuation is accepted.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Agree
    | 
    /**
     * The ability continuation is rejected.
     * If the application is abnormal in onContinue, which results in abnormal display during data restoration, this
     * error code is returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Reject
    | 
    /**
     * The version does not match.
     * The application on the initiator can obtain the version of the target application from onContinue. If the
     * ability continuation cannot be performed due to version mismatch, this error code is returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Mismatch
    | ...
}

/**
 * Enumerates the window mode when the ability is started.
 * It can be used together with startAbility to specify the window mode for starting the ability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum WindowMode {
    /**
     * Full screen mode. It takes effect only on tablets.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WindowModeFullscreen
    | 
    /**
     * Primary screen (left screen in the case of horizontal orientation) in split-screen mode. It is valid only in
     * intra-app redirection scenarios.
     * It takes effect only on foldable devices and tablets.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WindowModeSplitPrimary
    | 
    /**
     * Secondary screen (right screen in the case of horizontal orientation) in split-screen mode. It is valid only in
     * intra-app redirection scenarios.
     * It takes effect only on foldable devices and tablets.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WindowModeSplitSecondary
    | ...
}

/**
 * Enumerates the memory levels. You can use it in onMemoryLevel(level) of the UIAbility to complete
 * different operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum MemoryLevel {
    /**
     * Moderate memory usage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MemoryLevelModerate
    | 
    /**
     * Low memory usage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MemoryLevelLow
    | 
    /**
     * High memory usage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MemoryLevelCritical
    | ...
}


extend MemoryLevel <: ToString {
    
    /**
     * Converts the MemoryLevel to its string representation.
     * @returns { String } A string representation of the MemoryLevel.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func toString(): String
}


extend MemoryLevel <: Equatable<MemoryLevel> {
    
    /**
     * Compares this MemoryLevel with another for equality.
     * @param { MemoryLevel } other - The MemoryLevel to compare with.
     * @returns {Bool} True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public operator func ==(other: MemoryLevel): Bool
    
    /**
     * Compares this MemoryLevel with another for inequality.
     * @param { MemoryLevel } other - The MemoryLevel to compare with.
     * @returns {Bool} True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public operator func !=(other: MemoryLevel): Bool
}
