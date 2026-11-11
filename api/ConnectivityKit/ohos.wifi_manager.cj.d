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
import ohos.business_exception.AsyncCallback
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
 * Obtain the scanned station list. If does't have the permission of ohos.permission.GET_WIFI_PEERS_MAC, return random bssid.
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
 * @param { WifiP2pConfig } config - Indicates the configuration for connecting to a specific group.
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
public func p2pConnect(config: WifiP2pConfig): Unit

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
public class WifiInfoElement {
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
public class WifiP2pConfig {
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
     * WifiP2pConfig constructor
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
    public var infoElems: Array<WifiInfoElement>

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

/**
 * Wi-Fi EAP method.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum EapMethod {
    /**
     * EAP NONE.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapNone
    |
    /**
     * EAP PEAP.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapPeap
    |
    /**
     * EAP TLS.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapTls
    |
    /**
     * EAP TTLS.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapTtls
    |
    /**
     * EAP PWD.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapPwd
    |
    /**
     * EAP SIM.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapSim
    |
    /**
     * EAP AKA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapAka
    |
    /**
     * EAP AKA PRIME.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapAkaPrime
    |
    /**
     * EAP UNAUTH TLS.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    EapUnauthTls
    | ...
}

/**
 * Wi-Fi phase 2 method.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum Phase2Method {
    /**
     * Phase2 NONE.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2None
    |
    /**
     * Phase2 PAP.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2Pap
    |
    /**
     * Phase2 MSCHAP.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2Mschap
    |
    /**
     * Phase2 MSCHAPV2.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2Mschapv2
    |
    /**
     * Phase2 GTC.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2Gtc
    |
    /**
     * Phase2 SIM.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2Sim
    |
    /**
     * Phase2 AKA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2Aka
    |
    /**
     * Phase2 AKA+.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Phase2AkaPrime
    | ...
}

/**
 * Describes the WAPI pre-shared key Type.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.Core"
]
public enum WapiPskType {
    /**
     * ASCII character type of WAPI pre-shared key.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WapiPskAscii
    |
    /**
     * HEX character type of WAPI pre-shared key.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WapiPskHex
    | ...
}

/**
 * Wi-Fi band type.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum WifiBandType {
    /**
     * Default.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WifiBandNone
    |
    /**
     * Band 2.4G.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WifiBand2g
    |
    /**
     * Band 5G.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WifiBand5g
    |
    /**
     * Band 6G.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WifiBand6g
    |
    /**
     * Band 60G.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WifiBand60g
    | ...
}

/**
 * P2P connection status.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public enum P2pConnectState {
    /**
     * p2p is disconnected.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    Disconnected
    |
    /**
     * p2p is connected.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    Connected
    | ...
}

/**
 * P2P device status.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public enum P2pDeviceStatus {
    /**
     * Indicate p2p device is connected.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    Connected
    |
    /**
     * Indicate p2p device is invited.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    Invited
    |
    /**
     * Indicate p2p device is failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    Failed
    |
    /**
     * Indicate p2p device is available.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    Available
    |
    /**
     * Indicate p2p device is unavailable.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    Unavailable
    | ...
}

extend EapMethod <: ToString {
    /**
     * Converts the EapMethod to its string representation.
     * @returns { String } A string representation of the EapMethod.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}

extend EapMethod <: Equatable<EapMethod> {
    /**
     * Compares this EapMethod with another for equality.
     * @param { EapMethod } other - The EapMethod to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func ==(other: EapMethod): Bool

    /**
     * Compares this EapMethod with another for inequality.
     * @param { EapMethod } other - The EapMethod to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func !=(other: EapMethod): Bool
}

extend Phase2Method <: ToString {
    /**
     * Converts the Phase2Method to its string representation.
     * @returns { String } A string representation of the Phase2Method.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}

extend Phase2Method <: Equatable<Phase2Method> {
    /**
     * Compares this Phase2Method with another for equality.
     * @param { Phase2Method } other - The Phase2Method to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func ==(other: Phase2Method): Bool

    /**
     * Compares this Phase2Method with another for inequality.
     * @param { Phase2Method } other - The Phase2Method to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func !=(other: Phase2Method): Bool
}

extend WapiPskType <: ToString {
    /**
     * Converts the WapiPskType to its string representation.
     * @returns { String } A string representation of the WapiPskType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public func toString(): String
}

extend WapiPskType <: Equatable<WapiPskType> {
    /**
     * Compares this WapiPskType with another for equality.
     * @param { WapiPskType } other - The WapiPskType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public operator func ==(other: WapiPskType): Bool

    /**
     * Compares this WapiPskType with another for inequality.
     * @param { WapiPskType } other - The WapiPskType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public operator func !=(other: WapiPskType): Bool
}

extend WifiBandType <: ToString {
    /**
     * Converts the WifiBandType to its string representation.
     * @returns { String } A string representation of the WifiBandType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}

extend WifiBandType <: Equatable<WifiBandType> {
    /**
     * Compares this WifiBandType with another for equality.
     *
     * @param { WifiBandType } other - The WifiBandType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func ==(other: WifiBandType): Bool

    /**
     * Compares this WifiBandType with another for inequality.
     *
     * @param { WifiBandType } other - The WifiBandType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public operator func !=(other: WifiBandType): Bool
}

extend P2pConnectState <: ToString {
    /**
     * Converts the P2pConnectState to its string representation.
     * @returns { String } A string representation of the P2pConnectState.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public func toString(): String
}

extend P2pConnectState <: Equatable<P2pConnectState> {
    /**
     * Compares this P2pConnectState with another for equality.
     * @param { P2pConnectState } other - The P2pConnectState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public operator func ==(other: P2pConnectState): Bool

    /**
     * Compares this P2pConnectState with another for inequality.
     * @param { P2pConnectState } other - The P2pConnectState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public operator func !=(other: P2pConnectState): Bool
}

extend P2pDeviceStatus <: ToString {
    /**
     * Converts the P2pDeviceStatus to its string representation.
     * @returns { String } A string representation of the P2pDeviceStatus.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public func toString(): String
}

extend P2pDeviceStatus <: Equatable<P2pDeviceStatus> {
    /**
     * Compares this P2pDeviceStatus with another for equality.
     * @param { P2pDeviceStatus } other - The P2pDeviceStatus to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public operator func ==(other: P2pDeviceStatus): Bool

    /**
     * Compares this P2pDeviceStatus with another for inequality.
     * @param { P2pDeviceStatus } other - The P2pDeviceStatus to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public operator func !=(other: P2pDeviceStatus): Bool
}

/**
 * Wi-Fi EAP config.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiEapConfig {
    /**
     * Creates WifiEapConfig information.
     *
     * @param { EapMethod } eapMethod - EAP authentication method.
     * @param { Phase2Method } phase2Method - Phase 2 authentication method.
     * @param { String } identity - The identity.
     * @param { String } anonymousIdentity - Anonymous identity.
     * @param { String } password - Password.
     * @param { String } caCertAlias - CA certificate alias.
     * @param { String } caPath - CA certificate path.
     * @param { String } clientCertAlias - Client certificate alias.
     * @param { UInt8Array } certEntry - Content of user's certificate.
     * @param { String } certPassword - Password of user's certificate.
     * @param { String } altSubjectMatch - Alternate subject match.
     * @param { String } domainSuffixMatch - Domain suffix match.
     * @param { String } realm - Realm for Passpoint credential.
     * @param { String } plmn - Public Land Mobile Network of the provider of Passpoint credential.
     * @param { Int32 } eapSubId - Sub ID of the SIM card.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public init(
        eapMethod: EapMethod,
        phase2Method: Phase2Method,
        identity: String,
        anonymousIdentity: String,
        password: String,
        caCertAlias: String,
        caPath: String,
        clientCertAlias: String,
        certEntry: UInt8Array,
        certPassword: String,
        altSubjectMatch: String,
        domainSuffixMatch: String,
        realm: String,
        plmn: String,
        eapSubId: Int32
    )

    /**
     * EAP authentication method.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop eapMethod: EapMethod

    /**
     * Phase 2 authentication method.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop phase2Method: Phase2Method

    /**
     * The identity.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop identity: String

    /**
     * Anonymous identity.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop anonymousIdentity: String

    /**
     * Password.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop password: String

    /**
     * CA certificate alias.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop caCertAlias: String

    /**
     * CA certificate path.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop caPath: String

    /**
     * Client certificate alias.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop clientCertAlias: String

    /**
     * Content of user's certificate.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop certEntry: UInt8Array

    /**
     * Password of user's certificate.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop certPassword: String

    /**
     * Alternate subject match.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop altSubjectMatch: String

    /**
     * Domain suffix match.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop domainSuffixMatch: String

    /**
     * Realm for Passpoint credential.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop realm: String

    /**
     * Public Land Mobile Network of the provider of Passpoint credential.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop plmn: String

    /**
     * Sub ID of the SIM card.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop eapSubId: Int32
}

/**
 * Wi-Fi device configuration information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiDeviceConfig {
    /**
     * Creates WifiDeviceConfig information.
     *
     * @param { String } ssid - Wi-Fi SSID: the maximum length is 32.
     * @param { String } preSharedKey - Wi-Fi key: maximum length is 64.
     * @param { WifiSecurityType } securityType - Security type: reference definition of WifiSecurityType
     * @param { ?String } [bssid] - Wi-Fi bssid(MAC): the length is 6.
     * @param { ?DeviceAddressType } [bssidType] - Wi-Fi bssid type.
     * @param { ?Bool } [isHiddenSsid] - Hide SSID or not, false(default): not hide
     * @param { ?WifiEapConfig } [eapConfig] - EAP config info.
     * @param { ?WifiWapiConfig } [wapiConfig] - WAPI config info.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public init(
        ssid: String,
        preSharedKey: String,
        securityType: WifiSecurityType,
        bssid!: ?String = None,
        bssidType!: ?DeviceAddressType = None,
        isHiddenSsid!: ?Bool = None,
        eapConfig!: ?WifiEapConfig = None,
        wapiConfig!: ?WifiWapiConfig = None
    )

    /**
     * Wi-Fi SSID: the maximum length is 32.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop ssid: String

    /**
     * Wi-Fi bssid(MAC): the length is 6.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop bssid: ?String

    /**
     * Wi-Fi bssid type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop bssidType: ?DeviceAddressType

    /**
     * Wi-Fi key: maximum length is 64.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop preSharedKey: String

    /**
     * Hide SSID or not, false(default): not hide
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop isHiddenSsid: ?Bool

    /**
     * Security type: reference definition of WifiSecurityType
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop securityType: WifiSecurityType

    /**
     * EAP config info.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop eapConfig: ?WifiEapConfig

    /**
     * WAPI config info.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop wapiConfig: ?WifiWapiConfig
}

/**
 * Wi-Fi WAPI config.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiWapiConfig {
    /**
     * Creates WifiWapiConfig information.
     *
     * @param { WapiPskType } wapiPskType - WAPI pre-shared key type.
     * @param { String } wapiAsCert - WAPI AS certification.
     * @param { String } wapiUserCert - WAPI user certification.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public init(
        wapiPskType: WapiPskType,
        wapiAsCert: String,
        wapiUserCert: String
    )

    /**
     * WAPI user certification.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop wapiPskType: WapiPskType

    /**
     * WAPI AS certification.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop wapiAsCert: String

    /**
     * WAPI user certification.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop wapiUserCert: String
}

/**
 * Wi-Fi connection information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiLinkedInfo {
    /**
     * The SSID of the Wi-Fi hotspot.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop ssid: String

    /**
     * The BSSID of the Wi-Fi hotspot.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop bssid: String

    /**
     * The RSSI(dBm) of a Wi-Fi access point.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop rssi: Int32

    /**
     * The frequency band of a Wi-Fi access point.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop band: Int32

    /**
     * The frequency of a Wi-Fi access point.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop frequency: Int32
}

/**
 * Wi-Fi IP information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class IpInfo {
    /**
     * The IP address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop ipAddress: UInt32

    /**
     * The gateway of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop gateway: UInt32

    /**
     * The network mask of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop netmask: UInt32

    /**
     * The primary DNS server IP address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop primaryDns: UInt32

    /**
     * The secondary DNS server IP address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop secondDns: UInt32

    /**
     * The DHCP server IP address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop serverIp: UInt32

    /**
     * The IP address lease duration of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop leaseDuration: UInt32
}

/**
 * Wi-Fi IPv6 information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class Ipv6Info {
    /**
     * The link IPv6 address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop linkIpv6Address: String

    /**
     * The global IPv6 address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop globalIpv6Address: String

    /**
     * The rand Global IPv6 address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop randomGlobalIpv6Address: String

    /**
     * The unique IPv6 address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop uniqueIpv6Address: ?String

    /**
     * The rand unique IPv6 address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop randomUniqueIpv6Address: ?String

    /**
     * The gateway of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop gateway: String

    /**
     * The network mask of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop netmask: String

    /**
     * The primary DNS server IPV6 address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop primaryDNS: String

    /**
     * The secondary DNS server IPV6 address of the Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop secondDNS: String
}

/**
 * P2P device information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public class WifiP2pDevice {
    /**
     * Creates WifiP2pDevice information.
     *
     * @param { String } deviceName - Device name.
     * @param { String } deviceAddress - Device mac address.
     * @param { String } primaryDeviceType - Primary device type.
     * @param { P2pDeviceStatus } deviceStatus - Device status.
     * @param { Int32 } groupCapabilities - Device group capabilities.
     * @param { ?DeviceAddressType } [deviceAddressType] - Device mac address type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public init(
        deviceName: String,
        deviceAddress: String,
        primaryDeviceType: String,
        deviceStatus: P2pDeviceStatus,
        groupCapabilities: Int32,
        deviceAddressType!: ?DeviceAddressType = None
    )

    /**
     * Device name.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop deviceName: String

    /**
     * Device mac address.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop deviceAddress: String

    /**
     * Device mac address type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop deviceAddressType: ?DeviceAddressType

    /**
     * Primary device type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop primaryDeviceType: String

    /**
     * Device status.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop deviceStatus: P2pDeviceStatus

    /**
     * Device group capabilities.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop groupCapabilities: Int32
}

/**
 * P2P group information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public class WifiP2pGroupInfo {
    /**
     * Indicates whether it is group owner.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop isP2pGo: Bool

    /**
     * Group owner information.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop ownerInfo: WifiP2pDevice

    /**
     * The group passphrase.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop passphrase: String

    /**
     * Interface name.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop interfaceName: String

    /**
     * Group name.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop groupName: String

    /**
     * Network ID.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop networkId: Int32

    /**
     * Frequency.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop frequency: Int32

    /**
     * Client list.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop clientDevices: Array<WifiP2pDevice>

    /**
     * Group owner IP address.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop goIpAddress: String
}

/**
 * Connection settings of the candidate hotspot.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class ConnectSettings {
    /**
     * The ID (uniquely identifies) of a Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop networkId: Int32

    /**
     * Returned with user action, default value is false.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop withUserAction: ?Bool

    /**
     * User action timeout threshold (unit is seconds).
     * The maximum value cannot exceed 30, and the default value is 10.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop userActionTimeout: ?Int32

    /**
     * Whether to add the network to the system for connection.
     * The default value is false. If set to true, the network will be added to the system
     *     before connection and cannot be retrieved again.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public mut prop addNetworkToSystem: ?Bool

    /**
     * Creates ConnectSettings information.
     *
     * @param { Int32 } networkId - The ID (uniquely identifies) of a Wi-Fi connection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public init(networkId: Int32)
}

/**
 * P2P linked information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public class WifiP2pLinkedInfo {
    /**
     * Connection status.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop connectState: P2pConnectState

    /**
     * Indicates whether it is group owner.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop isGroupOwner: Bool

    /**
     * Group owner address.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public mut prop groupOwnerAddr: String
}

/**
 * Scan Wi-Fi hotspot.
 *
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.SET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.STA",
    throwexception: true
]
public func startScan(): Unit

/**
 * Add a specified candidate hotspot configuration and returns the networkId.
 * This method adds one configuration at a time. After this configuration is added,
 *     your device will determine whether to connect to the hotspot.
 * The app must be in the foreground.
 *
 * @param { WifiDeviceConfig } config - candidate config.
 * @returns { Unit } Returns {@code networkId} if the configuration is added; returns {@code -1} otherwise.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.SET_WIFI_INFO",
    throwexception: true
]
public func addCandidateConfig(config: WifiDeviceConfig, callback: AsyncCallback<Int32>): Unit

/**
 * Remove a specified candidate hotspot configuration, only the configuration which is added by ourself is allowed
 * to be removed.
 * The app must be in the foreground.
 *
 * @param { Int32 } networkId - Network ID which will be removed.
 * @param { AsyncCallback<Unit> } callback - Indicates call back of removeCandidateConfig.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 * @throws { BusinessException } 2501001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.SET_WIFI_INFO",
    throwexception: true
]
public func removeCandidateConfig(networkId: Int32, callback: AsyncCallback<Unit>): Unit

/**
 * Obtain the list of all existed candidate Wi-Fi configurations which added by ourself.
 * You can obtain only the Wi-Fi configurations you created on your own application.
 *
 * @returns { Array<WifiDeviceConfig> } Returns the list of all existed Wi-Fi configurations you created on your application.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getCandidateConfigs(): Array<WifiDeviceConfig>

/**
 * Connect to the specified candidate hotspot using connect settings.
 *
 * @param { ConnectSettings } settings - Indicates the connection settings.
 * @param { AsyncCallback<Unit> } callback - Indicates callback of connectToCandidateConfig.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 * @throws { BusinessException } 2501001 - Wi-Fi STA disabled.
 * @throws { BusinessException } 2501005 - The user does not respond.
 * @throws { BusinessException } 2501006 - The user refused the action.
 * @throws { BusinessException } 2501007 - Parameter validation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.SET_WIFI_INFO",
    throwexception: true
]
public func connectToCandidateConfig(settings: ConnectSettings, callback: AsyncCallback<Unit>): Unit

/**
 * Calculate the Wi-Fi signal level based on the Wi-Fi RSSI and frequency band.
 *
 * @param { Int32 } rssi - Indicates the Wi-Fi RSSI.
 * @param { Int32 } band - Indicates the Wi-Fi frequency band.
 * @returns { UInt32 } Returns Wi-Fi signal level ranging from 0 to 4.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getSignalLevel(rssi: Int32, band: Int32): UInt32

/**
 * Obtain connection information about the Wi-Fi connection.
 * If the app does not have the ohos.permission.GET_WIFI_PEERS_MAC permission, a random bssid is returned.
 *
 * @returns { WifiLinkedInfo } Returns the Wi-Fi linked information.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 * @throws { BusinessException } 2501001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getLinkedInfoSync(): WifiLinkedInfo

/**
 * Check whether the Wi-Fi connection has been set up.
 *
 * @returns { Bool } Returns {@code true} if a Wi-Fi connection has been set up, returns {@code false} otherwise.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func isConnected(): Bool

/**
 * Check whether the device supports a specified feature.
 *
 * @param { Int64 } featureId Indicates the ID of the feature.
 * @returns { Bool } Returns {@code true} if this device supports the specified feature, returns {@code false} otherwise.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2401000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.Core",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func isFeatureSupported(featureId: Int64): Bool

/**
 * Obtain the IPv4 information of the Wi-Fi connection.
 * The IP information includes the host IP address, gateway address, and DNS information.
 *
 * @returns { IpInfo } Returns the IP information of the Wi-Fi connection.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getIpInfo(): IpInfo

/**
 * Obtain the IPv6 information of the Wi-Fi connection.
 * The IPv6 information includes the host IP address, gateway address, and DNS information.
 *
 * @returns { Ipv6Info } Returns the IPv6 information of the Wi-Fi connection.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getIpv6Info(): Ipv6Info

/**
 * Obtain the country code of the device.
 *
 * @returns { String } Returns the country code of this device.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2401000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.Core",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getCountryCode(): String

/**
 * Check whether the current device supports the specified band.
 *
 * @param { WifiBandType } bandType - Indicates the band type.
 * @returns { Bool } Returns {@code true} if the specified band is supported, returns {@code false} otherwise.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2501000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.STA",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func isBandTypeSupported(bandType: WifiBandType): Bool

/**
 * Obtain information about the P2P connection.
 *
 * @param { AsyncCallback<WifiP2pLinkedInfo> } callback - Indicates callback of function.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2801000 - Operation failed.
 * @throws { BusinessException } 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getP2pLinkedInfo(callback: AsyncCallback<WifiP2pLinkedInfo>): Unit

/**
 * Obtain information about the current p2p group.
 *
 * @param { AsyncCallback<WifiP2pGroupInfo> } callback - Indicates callback of function.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2801000 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getCurrentGroup(callback: AsyncCallback<WifiP2pGroupInfo>): Unit

/**
 * Obtain the information about the found devices.
 *
 * @param { AsyncCallback<Array<WifiP2pDevice>> } callback - Indicates callback of function.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2801000 - Operation failed.
 * @throws { BusinessException } 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getP2pPeerDevices(callback: AsyncCallback<Array<WifiP2pDevice>>): Unit

/**
 * Obtain the information about own device information.
 * DeviceAddress in the returned WifiP2pDevice will be set "00:00:00:00:00:00",
 * if ohos.permission.GET_WIFI_LOCAL_MAC is not granted.
 *
 * @param { AsyncCallback<WifiP2pDevice> } callback - Indicates callback of function.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2801000 - Operation failed.
 * @throws { BusinessException } 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func getP2pLocalDevice(callback: AsyncCallback<WifiP2pDevice>): Unit

/**
 * Create a P2P group.
 *
 * @param { WifiP2pConfig } config - Indicates the configuration for a group.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2801000 - Operation failed.
 * @throws { BusinessException } 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func createGroup(config: WifiP2pConfig): Unit

/**
 * Remove a P2P group.
 *
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2801000 - Operation failed.
 * @throws { BusinessException } 2801001 - Wi-Fi STA disabled.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.WiFi.P2P",
    permission: "ohos.permission.GET_WIFI_INFO",
    throwexception: true
]
public func removeGroup(): Unit
