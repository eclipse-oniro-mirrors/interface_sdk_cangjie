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

package ohos.bluetooth.base_profile

import ohos.bluetooth.constant.ProfileConnectionState
import ohos.labels.APILevel

/**
 * Enum for cause of disconnect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum DisconnectCause {
    /**
     * User disconnect device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    UserDisconnect
    | 
    /**
     * The connection needs to be initiated from the keyboard side.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ConnectShouldFromKeyboard
    | 
    /**
     * The connection needs to be initiated from the mouse side.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ConnectShouldFromMouse
    | 
    /**
     * The connection needs to be initiated from the car side.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ConnectShouldFromCar
    | 
    /**
     * Too many devices are currently connected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    TooManyConnectedDevices
    | 
    /**
     * Connection failed due to an internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ConnectInternalFail
    | ...
}


extend DisconnectCause <: ToString {
    
    /**
     * Converts the DisconnectCause to its string representation.
     * @returns { String } A string representation of the DisconnectCause.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend DisconnectCause <: Equatable<DisconnectCause> {
    
    /**
     * Compares this DisconnectCause with another for equality.
     * @param { DisconnectCause } other - The DisconnectCause to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: DisconnectCause): Bool
    
    /**
     * Compares this DisconnectCause with another for inequality.
     * @param { DisconnectCause } other - The DisconnectCause to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: DisconnectCause): Bool
}

/**
 * Profile state change parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class StateChangeParam {
    /**
     * The address of device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * Profile state value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var state: ProfileConnectionState

    /**
     * Cause of disconnect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var cause: DisconnectCause
}

/**
 * Base interface of profile.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public interface BaseProfile {
    /**
     * Obtains the connected devices list of profile.
     *
     * @returns { Array<String> } Returns the addresses of the connected devices list.
     * For security purposes, the device address obtained are random MAC addresses.
     * The random MAC address remains unchanged after a device is paired successfully.
     * The random address change if paired device is unpaired and scanned again or the Bluetooth service is turned off.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * The Bluetooth service is stopped, and the APIs related to the Bluetooth service cannot be called.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900004 - Profile not supported. The profile is not supported by the device.
     * @throws { BusinessException } 2900099 - Operation failed. The profile is not supported by the device.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    func getConnectedDevices(): Array<String>

    /**
     * Obtains the profile connection state.
     *
     * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
     * @returns { ProfileConnectionState } Returns the connection state.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900004 - Profile not supported.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    func getConnectionState(deviceId: String): ProfileConnectionState

    /**
     * Subscribe the event reported when the profile connection state changes.
     *
     * @param { ProfileCallbackType } eventType - The type of event to subscribe.
     * @param { Callback1Argument<StateChangeParam> } callback - The callback function to be called when the event occurs.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    func on(eventType: ProfileCallbackType, callback: Callback1Argument<StateChangeParam>): Unit

    /**
     * Unsubscribe the event reported when the profile connection state changes.
     *
     * @param { ProfileCallbackType } eventType - The type of event to unsubscribe.
     * @param { CallbackObject } callback - The callback function to be removed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    func off(eventType: ProfileCallbackType, callback: CallbackObject): Unit

    /**
     * Unsubscribe the event reported when the profile connection state changes.
     *
     * @param { ProfileCallbackType } eventType - The type of event to unsubscribe.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    func off(eventType: ProfileCallbackType): Unit
}

/**
 * Type of the profile connection state changes event to listen for.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ProfileCallbackType {
    /**
     * Connection State Change.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ConnectionStateChange | ...
}


extend ProfileCallbackType <: ToString {
    
    /**
     * Converts the ProfileCallbackType to its string representation.
     * @returns { String } A string representation of the ProfileCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}