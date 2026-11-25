/*
 * Copyright (c) 2025 - 2026 Huawei Device Co., Ltd.
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

package ohos.bluetooth.connection

import ohos.bluetooth.constant.{ MajorClass, MajorMinorClass, ProfileConnectionState, ProfileId }
import ohos.business_exception.AsyncCallback
import ohos.callback_invoke.Callback1Argument
import ohos.labels.*

/**
 * Get the profile connection state of the current device.
 *
 * @param { ?ProfileId } [profileId] - Indicate the profile id. This is an optional parameter.
 *     With profileId, returns the current connection state of this profile, ProfileConnectionState.
 *     Without profileId, if any profile is connected, ProfileConnectionState.StateConnected is returned.
 *     Otherwise, ProfileConnectionState.StateDisconnected is returned.
 * @returns { ProfileConnectionState } Returns the connection state.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900004 - Profile not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func getProfileConnectionState(profileId!: ?ProfileId = None): ProfileConnectionState

/**
 * Starts pairing with a remote Bluetooth device.
 *
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @param { AsyncCallback<Unit> } callback - the callback of pairDevice.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func pairDevice(deviceId: String, callback: AsyncCallback<Unit>): Unit

/**
 * Obtains the name or alias of the Bluetooth peer device.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @returns { String } Returns the device name in character string format.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Failed to obtain the name or alias of the peer Bluetooth device.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func getRemoteDeviceName(deviceId: String): String

/**
 * Obtains the class of a peer Bluetooth device.
 *
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @returns { DeviceClass } The class of the remote device.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func getRemoteDeviceClass(deviceId: String): DeviceClass

/**
 * Obtains the Bluetooth local name of a device.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH
 * @returns { String } Returns the name the device.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func getLocalName(): String

/**
 * Obtains the list of Bluetooth devices that have been paired with the current device.
 *
 * @returns { Array<String> } Returns a list of paired Bluetooth devices's address.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func getPairedDevices(): Array<String>

/**
 * Obtains the pair state of a specified device.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @returns { BondState } Returns the pair state.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func getPairState(deviceId: String): BondState

/**
 * Sets the confirmation of pairing with a certain device.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH and ohos.permission.MANAGE_BLUETOOTH
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @param { Bool } accept - Indicates whether to accept the pairing request, {@code true} indicates accept or
 *     {@code false} otherwise.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH" & "ohos.permission.MANAGE_BLUETOOTH",
    throwexception: true
]
public func setDevicePairingConfirmation(deviceId: String, accept: Bool): Unit

/**
 * Set the pin during pairing when the pin type is PIN_TYPE_ENTER_PIN_CODE.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @param { String } code - The pin code entered by the user.
 * @param { AsyncCallback<Unit> } callback - the callback of setDevicePinCode.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func setDevicePinCode(deviceId: String, code: String, callback: AsyncCallback<Unit>): Unit

/**
 * Sets the Bluetooth scan mode for a device.
 *
 * @param { ScanMode } mode - Indicates the Bluetooth scan mode to set.
 * @param { Int32 } duration - Indicates the duration in seconds, in which the host is discoverable.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func setBluetoothScanMode(mode: ScanMode, duration: Int32): Unit

/**
 * Obtains the Bluetooth scanning mode of a device.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH
 * @returns { ScanMode } Returns the Bluetooth scanning mode.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func getBluetoothScanMode(): ScanMode

/**
 * Starts scanning Bluetooth devices.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func startBluetoothDiscovery(): Unit

/**
 * Stops Bluetooth device scanning.
 *
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func stopBluetoothDiscovery(): Unit

/**
 * Check if bluetooth is discovering.
 *
 * @returns { Bool } Returns {@code true} if the local device is discovering; returns {@code false} otherwise.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func isBluetoothDiscovering(): Bool

/**
 * Subscribe the event reported when a remote Bluetooth device is discovered.
 *
 * @param { Callback1Argument<Array<String>> } callback - Callback used to listen for the discovering event.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func onBluetoothDeviceFind(callback: Callback1Argument<Array<String>>): Unit

/**
 * Unsubscribe the event reported when a remote Bluetooth device is discovered.
 *
 * @param { ?Callback1Argument<Array<String>> } [callback] - Callback used to listen for the discovering event.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func offBluetoothDeviceFind(callback!: ?Callback1Argument<Array<String>> = None): Unit

/**
 * Subscribe the event reported when a remote Bluetooth device is bonded.
 *
 * @permission ohos.permission.ACCESS_BLUETOOTH
 * @param { Callback1Argument<BondStateParam> } callback - Callback used to listen for the bond state event.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func onBondStateChange(callback: Callback1Argument<BondStateParam>): Unit

/**
 * Unsubscribe the event reported when a remote Bluetooth device is bonded.
 *
 * @param { ?Callback1Argument<BondStateParam> } [callback] - Callback used to listen for the bond state event.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func offBondStateChange(callback!: ?Callback1Argument<BondStateParam> = None): Unit

/**
 * Subscribe the event of a pairing request from a remote Bluetooth device.
 *
 * @param { Callback1Argument<PinRequiredParam> } callback - Callback used to listen for the pairing request event.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func onPinRequired(callback: Callback1Argument<PinRequiredParam>): Unit

/**
 * Unsubscribe the event of a pairing request from a remote Bluetooth device.
 *
 * @param { ?Callback1Argument<PinRequiredParam> } [callback] - Callback used to listen for the pairing request event.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func offPinRequired(callback!: ?Callback1Argument<PinRequiredParam> = None): Unit

/**
 * Subscribe the event of battery state changed from a remote device.
 *
 * @param { Callback1Argument<BatteryInfo> } callback - Callback used to listen.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func onBatteryChange(callback: Callback1Argument<BatteryInfo>): Unit

/**
 * Unsubscribe the event of battery state changed from a remote device.
 *
 * @param { ?Callback1Argument<BatteryInfo> } [callback] - Callback used to listen.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func offBatteryChange(callback!: ?Callback1Argument<BatteryInfo> = None): Unit

/**
 * Describes the class of a bluetooth device.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BondStateParam {
    /**
     * Address of a Bluetooth device.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop deviceId: String

    /**
     * Profile connection state of the device.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop state: BondState

    /**
     * Cause of unbond.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop cause: UnbondCause
}

/**
 * Describes the bond key param.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class PinRequiredParam {
    /**
     * ID of the device to pair.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop deviceId: String

    /**
     * Key for the device pairing.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop pinCode: String
}

/**
 * Describes the class of a bluetooth device.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class DeviceClass {
    /**
     * Major classes of Bluetooth devices.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop majorClass: MajorClass

    /**
     * Major and minor classes of Bluetooth devices.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop majorMinorClass: MajorMinorClass

    /**
     * Class of the device.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop classOfDevice: Int32
}

/**
 * The enum of BR scan mode.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ScanMode {
    /**
     * Indicates the scan mode is none.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeNone
    |
    /**
     * Indicates the scan mode is connectable.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeConnectable
    |
    /**
     * Indicates the scan mode is general discoverable.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeGeneralDiscoverable
    |
    /**
     * Indicates the scan mode is limited discoverable.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeLimitedDiscoverable
    |
    /**
     * Indicates the scan mode is connectable and general discoverable.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeConnectableGeneralDiscoverable
    |
    /**
     * Indicates the scan mode is connectable and limited discoverable.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeConnectableLimitedDiscoverable
    | ...
}

extend ScanMode <: ToString {
    /**
     * Converts the ScanMode to its string representation.
     * @returns { String } A string representation of the ScanMode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}

extend ScanMode <: Equatable<ScanMode> {
    /**
     * Compares this ScanMode with another for equality.
     * @param { ScanMode } other - The ScanMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: ScanMode): Bool

    /**
     * Compares this ScanMode with another for inequality.
     * @param { ScanMode } other - The ScanMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: ScanMode): Bool
}

/**
 * The enum of bond state.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BondState {
    /**
     * Indicate the bond state is invalid.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BondStateInvalid
    |
    /**
     * Indicate the bond state is bonding.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BondStateBonding
    |
    /**
     * Indicate the bond state is bonded.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BondStateBonded
    | ...
}

extend BondState <: ToString {
    /**
     * Converts the BondState to its string representation.
     * @returns { String } A string representation of the BondState.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}

extend BondState <: Equatable<BondState> {
    /**
     * Compares this BondState with another for equality.
     * @param { BondState } other - The BondState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: BondState): Bool

    /**
     * Compares this BondState with another for inequality.
     * @param { BondState } other - The BondState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: BondState): Bool
}

/**
 * Describes the contents of the battery information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BatteryInfo {
    /**
     * Electricity value of the general device. {@code -1} means no power information.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop batteryLevel: Int32

    /**
     * Electricity value of the left ear. {@code -1} means no power information.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop leftEarBatteryLevel: Int32

    /**
     * The charge state of the left ear.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop leftEarChargeState: DeviceChargeState

    /**
     * Electricity value of the right ear. {@code -1} means no power information.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop rightEarBatteryLevel: Int32

    /**
     * The charge state of the right ear.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop rightEarChargeState: DeviceChargeState

    /**
     * Electricity value of the box. {@code -1} means no power information.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop boxBatteryLevel: Int32

    /**
     * The charge state of the box.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop boxChargeState: DeviceChargeState
}

/**
 * Enum for the charge state.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum DeviceChargeState {
    /**
     * Not support super charge, and not charged.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DeviceNormalChargeNotCharged
    |
    /**
     * Not support super charge, and in charging.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DeviceNormalChargeInCharging
    |
    /**
     * Support super charge, and not charged.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DeviceSuperChargeNotCharged
    |
    /**
     * Support super charge, and in charging.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DeviceSuperChargeInCharging
    | ...
}

extend DeviceChargeState <: ToString {
    /**
     * Converts the DeviceChargeState to its string representation.
     * @returns { String } A string representation of the DeviceChargeState.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}

extend DeviceChargeState <: Equatable<DeviceChargeState> {
    /**
     * Compares this DeviceChargeState with another for equality.
     * @param { DeviceChargeState } other - The DeviceChargeState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: DeviceChargeState): Bool

    /**
     * Compares this DeviceChargeState with another for inequality.
     * @param { DeviceChargeState } other - The DeviceChargeState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: DeviceChargeState): Bool
}

/**
 * Enum for cause of unbond.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum UnbondCause {
    /**
     * User proactively removed device.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    UserRemoved
    |
    /**
     * Remote device shut down.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    RemoteDeviceDown
    |
    /**
     * Wrong PIN code.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    AuthFailure
    |
    /**
     * Remote device rejected.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    AuthRejected
    |
    /**
     * Internal error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    InternalError
    | ...
}

extend UnbondCause <: ToString {
    /**
     * Converts the UnbondCause to its string representation.
     * @returns { String } A string representation of the UnbondCause.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}

extend UnbondCause <: Equatable<UnbondCause> {
    /**
     * Compares this UnbondCause with another for equality.
     * @param { UnbondCause } other - The UnbondCause to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: UnbondCause): Bool

    /**
     * Compares this UnbondCause with another for inequality.
     * @param { UnbondCause } other - The UnbondCause to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: UnbondCause): Bool
}
