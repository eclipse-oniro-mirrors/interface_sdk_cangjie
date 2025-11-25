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

package ohos.wifi_manager

import ohos.callback_invoke.{Callback1Argument, CallbackObject}
import ohos.labels.APILevel

/**
 * Wi-Fi device address( mac / bssid ) type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.Core"
]
public enum DeviceAddressType {
    /**
     * random device address
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    RandomDeviceAddress
    | 
    /**
     * real device address
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    RealDeviceAddress
    | ...
}


extend DeviceAddressType <: ToString {
    
    /**
     * Converts the DeviceAddressType to its string representation.
     * @returns { String } A string representation of the DeviceAddressType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public func toString(): String
}


extend DeviceAddressType <: Equatable<DeviceAddressType> {
    
    /**
     * Compares this DeviceAddressType with another for equality.
     * @param { DeviceAddressType } other - The DeviceAddressType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public operator func ==(other: DeviceAddressType): Bool
    
    /**
     * Compares this DeviceAddressType with another for inequality.
     * @param { DeviceAddressType } other - The DeviceAddressType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public operator func !=(other: DeviceAddressType): Bool
}

/**
 * Describes the wifi security type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.Core"
]
public enum WifiSecurityType {
    /**
     * Invalid security type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeInvalid
    | 
    /**
     * Open security type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeOpen
    | 
    /**
     * Wired Equivalent Privacy (WEP)
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeWep
    | 
    /**
     * Pre-shared key (PSK)
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypePsk
    | 
    /**
     * Simultaneous Authentication of Equals (SAE)
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeSae
    | 
    /**
     * EAP authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeEap
    | 
    /**
     * SUITE_B_192 192 bit level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeEapSuiteB
    | 
    /**
     * Opportunistic Wireless Encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeOwe
    | 
    /**
     * WAPI certificate to be specified.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeWapiCert
    | 
    /**
     * WAPI pre-shared key to be specified.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeWapiPsk
    | ...
}


extend WifiSecurityType <: ToString {
    
    /**
     * Converts the WifiSecurityType to its string representation.
     * @returns { String } A string representation of the WifiSecurityType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public func toString(): String
}


extend WifiSecurityType <: Equatable<WifiSecurityType> {
    
    /**
     * Compares this WifiSecurityType with another for equality.
     * @param { WifiSecurityType } other - The WifiSecurityType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public operator func ==(other: WifiSecurityType): Bool
    
    /**
     * Compares this WifiSecurityType with another for inequality.
     * @param { WifiSecurityType } other - The WifiSecurityType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public operator func !=(other: WifiSecurityType): Bool
}

/**
 * Wi-Fi Category.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum WifiCategory {
    /**
     * Default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Default
    | 
    /**
     * Wifi6.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Wifi6
    | 
    /**
     * Wifi6+.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Wifi6Plus
    | ...
}


extend WifiCategory <: ToString {
    
    /**
     * Converts the WifiCategory to its string representation.
     * @returns { String } A string representation of the WifiCategory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}


extend WifiCategory <: Equatable<WifiCategory> {
    
    /**
     * Compares this WifiCategory with another for equality.
     * @param { WifiCategory } other - The WifiCategory to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func ==(other: WifiCategory): Bool
    
    /**
     * Compares this WifiCategory with another for inequality.
     * @param { WifiCategory } other - The WifiCategory to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func !=(other: WifiCategory): Bool
}

/**
 * P2P group owner band.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public enum GroupOwnerBand {
    /**
     * default band.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    GoBandAuto
    | 
    /**
     * 2.4G band.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    GoBand2GHz
    | 
    /**
     * 5G band.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    GoBand5GHz
    | ...
}


extend GroupOwnerBand <: ToString {
    
    /**
     * Converts the GroupOwnerBand to its string representation.
     * @returns { String } A string representation of the GroupOwnerBand.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public func toString(): String
}


extend GroupOwnerBand <: Equatable<GroupOwnerBand> {
    
    /**
     * Compares this GroupOwnerBand with another for equality.
     * @param { GroupOwnerBand } other -  The GroupOwnerBand to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public operator func ==(other: GroupOwnerBand): Bool
    
    /**
     * Compares this GroupOwnerBand with another for inequality.
     * @param { GroupOwnerBand } other - The GroupOwnerBand to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public operator func !=(other: GroupOwnerBand): Bool
}

/**
 * Query the Wi-Fi status
 *
 * @returns { Bool } Returns true if the Wi-Fi is active, returns false otherwise.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2501000 - Operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.STA",
    throwexception: true
]
public func isWifiActive(): Bool

/**
 * Obtain the scanned station list. If does't have the permission of ohos.permission.GET_WIFI_PEERS_MAC,
 * return random bssid.
 *
 * @returns { Array<WifiScanInfo> } Returns information about scanned Wi-Fi hotspot if any.
 * @throws {BusinessException} 201 - Permission denied.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2501000 - Operation failed.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.STA",
    throwexception: true
]
public func getScanInfoList(): Array<WifiScanInfo>

/**
 * Initiate a P2P connection to a device with the specified configuration.
 *
 * @param { WifiP2PConfig } config - Indicates the configuration for connecting to a specific group.
 * @throws {BusinessException} 201 - Permission denied.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2801000 - Operation failed.
 * @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    throwexception: true
]
public func p2pConnect(config: WifiP2PConfig): Unit

/**
 * Stop an ongoing p2p connection that is being established.
 *
 * @throws {BusinessException} 201 - Permission denied.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2801000 - Operation failed.
 * @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    throwexception: true
]
public func p2pCancelConnect(): Unit

/**
 * Start discover Wi-Fi P2P devices.
 *
 * @throws {BusinessException} 201 - Permission denied.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2801000 - Operation failed.
 * @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    throwexception: true
]
public func startDiscoverDevices(): Unit

/**
 * Stop discover Wi-Fi P2P devices.
 *
 * @throws {BusinessException} 201 - Permission denied.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2801000 - Operation failed.
 * @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    throwexception: true
]
public func stopDiscoverDevices(): Unit

/**
 * Subscribe Wi-Fi scan status change events.
 *
 * @param { WifiCallbackType } eventType - Indicates the Wi-Fi event type.
 * @param { Callback1Argument<Int32> } callback - Indicates the callback to receive Wi-Fi scan status change events.
 * @throws {BusinessException} 201 - Permission denied.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2801000 - Operation failed.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.STA",
    throwexception: true
]
public func on(eventType: WifiCallbackType, callback: Callback1Argument<Int32>): Unit

/**
 * Unsubscribe Wi-Fi related events.
 * All callback functions will be deregistered If there is no specific callback parameter.
 *
 * @param { WifiCallbackType } eventType - Indicates the Wi-Fi event type.
 * @param { ?CallbackObject } [callback] - Indicates the callback to unsubscribe. 
 *                                       If not specified, all callbacks will be removed.
 * @throws {BusinessException} 201 - Permission denied.
 * @throws {BusinessException} 801 - Capability not supported.
 * @throws {BusinessException} 2801000 - Operation failed.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.STA",
    throwexception: true
]
public func off(eventType: WifiCallbackType, callback!: ?CallbackObject = None): Unit

/**
 * WiFi registration event type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum WifiCallbackType {
    /**
     * Wi-Fi scan status change event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WifiScanStateChange | ...
}


extend WifiCallbackType <: ToString {
    
    /**
     * Converts the WifiCallbackType to its string representation.
     * @returns { String } A string representation of the WifiCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}


extend WifiCallbackType <: Equatable<WifiCallbackType> {
    
    /**
     * Compares this WifiCallbackType with another for equality.
     * @param { WifiCallbackType } other - The WifiCallbackType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func ==(other: WifiCallbackType): Bool
    
    /**
     * Compares this WifiCallbackType with another for inequality.
     * @param { WifiCallbackType } other - The WifiCallbackType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func !=(other: WifiCallbackType): Bool
}


extend WifiCallbackType <: Hashable {
    
    /**
     * Returns a hash code value for this WifiCallbackType.
     * @returns { Int64 } A hash code value for this WifiCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func hashCode(): Int64
}

/**
 * Wi-Fi information elements.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiInfoElem {
    /**
     * Element id
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var eid: UInt32

    /**
     * Element content
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var content: Array<UInt8>
}

/**
 * P2P config.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public class WifiP2PConfig {
    /**
     * Device mac address
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public var deviceAddress: String

    /**
     * Group network ID. When creating a group, -1 indicates creates a temporary group,
     * -2: indicates creates a persistent group
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public var netId: Int32

    /**
     * The passphrase of this WifiP2pConfig instance 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public var passphrase: String

    /**
     * Group name 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public var groupName: String

    /**
     * Group owner band
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public var goBand: GroupOwnerBand

    /**
     * Device mac address type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public var deviceAddressType: DeviceAddressType

    /**
     * WifiP2PConfig constructor
     *
     * @param { String } deviceAddress - Device mac address
     * @param { Int32 } netId - Group network ID. When creating a group, -1 indicates creates a temporary group,
     * -2: indicates creates a persistent group
     * @param { String } passphrase - The passphrase of this WifiP2pConfig instance 
     * @param { String } groupName - Group name 
     * @param { GroupOwnerBand } goBand - Group owner band
     * @param { DeviceAddressType } deviceAddressType - Device mac address type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public init(
        deviceAddress: String,
        netId: Int32,
        passphrase: String,
        groupName: String,
        goBand: GroupOwnerBand,
        deviceAddressType!: DeviceAddressType = RandomDeviceAddress
    )
}

/**
 * Describes the scanned Wi-Fi information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiScanInfo {
    /**
     * Wi-Fi SSID: the maximum length is 32 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var ssid: String

    /**
     * Wi-Fi bssid(MAC): the length is 6
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var bssid: String

    /**
     * Wi-Fi bssid type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var bssidType: DeviceAddressType

    /**
     * Hotspot capability
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var capabilities: String

    /**
     * Security type: reference definition of WifiSecurityType
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var securityType: WifiSecurityType

    /**
     * Received signal strength indicator (RSSI)
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var rssi: Int32

    /**
     * Frequency band, 1: 2.4G, 2: 5G
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var band: Int32

    /**
     * Frequency
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var frequency: Int32

    /**
     * Channel width
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var channelWidth: Int32

    /**
     * Center frequency 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var centerFrequency0: Int32

    /**
     * Center frequency 1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var centerFrequency1: Int32

    /**
     * Information elements.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var infoElems: Array<WifiInfoElem>

    /**
     * Time stamp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var timestamp: Int64

    /**
     * Supported wifi category
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var supportedWifiCategory: WifiCategory

    /**
     * Whether the Wi-Fi hotspot is HiLink network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public var isHiLinkNetwork: Bool
}
