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

package ohos.app.ability.context_constant

import ohos.labels.*

/**
 * File area mode
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum AreaMode {
    /**
     * System level device encryption area
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El1
    | 
    /**
     * User credential encryption area
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El2
    | 
    /**
     * User credential encryption area
     * when screen locked, can read/write, and create file
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El3
    | 
    /**
     * User credential encryption area
     * when screen locked, FEB2.0 can read/write, FEB3.0 can't
     * read/write, and all can't create file
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El4
    | 
    /**
     * User privacy sensitive encryption area
     * when the screen locked, a closed file cannot be opened, read, or written,
     * a file can be created and then opened, read, or written.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El5
    | ...
}


extend AreaMode <: ToString {
    
    /**
     * Converts the AreaMode to its string representation.
     * @returns { String } A string representation of the AreaMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func toString(): String
}


extend AreaMode <: Equatable<AreaMode> {
    
    /**
     * Compares this AreaMode with another for equality.
     * @param { AreaMode } other - The AreaMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public operator func ==(other: AreaMode): Bool
    
    /**
     * Compares this AreaMode with another for inequality.
     * @param { AreaMode } other - The AreaMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public operator func !=(other: AreaMode): Bool
}
