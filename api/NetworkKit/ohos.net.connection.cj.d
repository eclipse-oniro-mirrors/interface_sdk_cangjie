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

package ohos.net.connection


import ohos.callback_invoke.*
import ohos.labels.*

/**
 * Provides an instance that bear data network capabilities.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetSpecifier {
    /**
     * The transmission capacity and support of the network's global proxy storage data network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netCapabilities: NetCapabilities

    /**
     * Network identifier, the identifier for Wi Fi networks is "wifi", and the identifier for cellular networks is
     * "simId1" (corresponding to SIM card 1).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var bearerPrivateIdentifier: String

    /**
     * NetSpecifier constructor
     *
     * @param { NetCapabilities } netCapabilities - indicates the transmission capacity and support of the network's global proxy storage data network.
     * @param { String } [bearerPrivateIdentifier] - indicates network identifier, the identifier for Wi Fi networks is "wifi", and the identifier for cellular networks is
     *                                               "simId1" (corresponding to SIM card 1).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(netCapabilities: NetCapabilities, bearerPrivateIdentifier!: String = "")
}

/**
 * Receive information about changes in network capabilities.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetCapabilityInfo {
    /**
     * Defines the handle of the data network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netHandle: NetHandle

    /**
     * Defines the network capability set.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netCap: NetCapabilities
}

/**
 * Defines the network capability set.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetCapabilities {
    /**
     * Network type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var bearerTypes: Array<NetBearType>

    /**
     * Uplink (device-to-network) bandwidth.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var linkUpBandwidthKbps: UInt32

    /**
     * Downstream (network-to-device) bandwidth.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var linkDownBandwidthKbps: UInt32

    /**
     * Network-specific capabilities.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var networkCap: Array<NetCap>

    /**
     * NetCapabilities constructor
     *
     * @param { Array<NetBearType> } bearerTypes - indicates the network type.
     * @param { UInt32 } [linkUpBandwidthKbps] - indicates the uplink (device-to-network) bandwidth.
     * @param { UInt32 } [linkDownBandwidthKbps] - indicates the downstream (network-to-device) bandwidth.
     * @param { Array<NetCap> } [networkCap] - indicates the network-specific capabilities.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(bearerTypes: Array<NetBearType>, linkUpBandwidthKbps!: UInt32 = 0, linkDownBandwidthKbps!: UInt32 = 0,
        networkCap!: Array<NetCap> = Array<NetCap>())
}

/**
 * Defines the network connection properties.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class ConnectionProperties {
    /**
     * Network card name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var interfaceName: String

    /**
     * Domain. The default value is "".
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var domains: String

    /**
     * Link information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var linkAddresses: Array<LinkAddress>

    /**
     * Network address, refer to [NetAddress].
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var dnses: Array<NetAddress>

    /**
     * Routing information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var routes: Array<RouteInfo>

    /**
     * Maximum transmission unit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var mtu: UInt32
}

/**
 * Defines network route information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class RouteInfo {
    /**
     * Network card name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var interfaceName: String

    /**
     * Destination Address
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var destination: LinkAddress

    /**
     * Gateway address.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var gateway: NetAddress

    /**
     * Whether a gateway is present.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var hasGateway: Bool

    /**
     * Whether the route is the default route.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var isDefaultRoute: Bool
}

/**
 * Defines network link information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class LinkAddress {
    /**
     * Link address.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var address: NetAddress

    /**
     * The length of the link address prefix.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var prefixLength: Int32
}

/**
 * Defines a network address.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetAddress {
    /**
     * Network address.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var address: String

    /**
     * Address family identifier. The value is 1 for IPv4 and 2 for IPv6. The default value is 1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var family: UInt32

    /**
     * Port number. The value ranges from 0 to 65535.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var port: UInt32

    /**
     * NetAddress constructor
     *
     * @param { String } address - indicates the network address.
     * @param { UInt32 } [family] - indicates the Address family identifier. The value is 1 for IPv4 and 2 for IPv6. The default value is 1.
     * @param { UInt32 } [port] - indicates the port number. The value ranges from 0 to 65535.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(address: String, family!: UInt32 = 1, port!: UInt32 = 0)
}

/**
 * Network Global Proxy Configuration Information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class HttpProxy {
    /**
     * Proxy server host name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var host: String

    /**
     * Host port.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var port: UInt32

    /**
     * Do not use a blocking list for proxy servers.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var exclusionList: Array<String>

    /**
     * Http proxy username.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var username: String

    /**
     * Http proxy password.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var password: String

    /**
     * HttpProxy constructor
     *
     * @param { String } host - indicates the proxy server host name.
     * @param { UInt32 } port - indicates the host port.
     * @param { Array<String> } exclusionList - indicates the do not use a blocking list for proxy servers.
     * @param { String } [username] - indicates the http proxy username.
     * @param { String } [password] - indicates the http proxy password.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(host: String, port: UInt32, exclusionList: Array<String>, username!: String = "", password!: String = "")
}

/**
 * Defines the network capability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetCap {
    /**
     * Indicates that the network can access the carrier's MMSC to send and receive multimedia messages.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityMms
    | 
    /**
     * Indicates that the network traffic is not metered.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityNotMetered
    | 
    /**
     * Indicates that the network can access the Internet.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityInternet
    | 
    /**
     * Indicates that the network does not use a VPN.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityNotVpn
    | 
    /**
     * Indicates that the network is available.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityValidated
    | ...
}

/**
 * Enumerates network types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetBearType {
    /**
     * Indicates that the network is based on a cellular network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BearerCellular
    | 
    /**
     * Indicates that the network is based on a Wi-Fi network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BearerWifi
    | 
    /**
     * Indicates that the network is an Ethernet network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BearerEthernet
    | ...
}

/**
 * net connection event type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetConnectionEvent {
    
    /**
     * NetAvailable enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetAvailable
    | 
    
    /**
     * NetBlockStatusChange enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetBlockStatusChange
    | 
    
    /**
     * NetCapabilitiesChange enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilitiesChange
    | 
    
    /**
     * NetConnectionPropertiesChange enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetConnectionPropertiesChange
    | 
    
    /**
     * NetLost enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetLost
    | 

    /**
     * NetUnavailable enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetUnavailable
    | ...
}


extend NetConnectionEvent <: Equatable<NetConnectionEvent> {
    
    /**
     * Compares this NetConnectionEvent with another for equality.
     * @param { NetConnectionEvent } other - The NetConnectionEvent to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public operator func ==(other: NetConnectionEvent): Bool
    
    /**
     * Compares this NetConnectionEvent with another for inequality.
     * @param { NetConnectionEvent } other - The NetConnectionEvent to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public operator func !=(other: NetConnectionEvent): Bool
}

/**
 * Create a network connection with optional netSpecifier and timeout.
 * @param { ?NetSpecifier } [netSpecifier] - Indicates the network specifier. See NetSpecifier.
 * @param { UInt32 } [timeout] - The time in milliseconds to attempt looking for a suitable network before
 * netUnavailable is called.
 * @returns { NetConnection } the NetConnection of the NetSpecifier.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func createNetConnection(netSpecifier!: ?NetSpecifier = None, timeout!: UInt32 = 0): NetConnection

/**
 * Obtains the data network that is activated by default.
 * @returns { NetHandle } Handle of the default active data network.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func getDefaultNet(): NetHandle

/**
 * Obtains the default HttpProxy proxy settings.
 * If a global proxy is set, the global proxy parameters are returned.
 * If the process is bound to a NetHandle using setAppNet,
 * the NetHandle proxy settings are returned.
 * In other cases, the proxy settings of default network are returned.
 * @returns { HttpProxy } Proxy settings of http.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func getDefaultHttpProxy(): HttpProxy

/**
 * Obtains the NetHandle bound to a process using setAppNet.
 * @returns { NetHandle } Returns the NetHandle bound to a process using setAppNet.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func getAppNet(): NetHandle

/**
 * Binds a process to NetHandle.
 * All the sockets created from the process will be bound to the NetHandle,
 * and the resolution of all host names will be managed by the NetHandle.
 * @param { NetHandle } netHandle - Indicates the handle. For details, see NetHandle.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100001 - Invalid parameter value.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func setAppNet(netHandle: NetHandle): Unit

/**
 * Obtains the list of data networks that are activated.
 * @returns { Array<NetHandle> } Returns data networks that are activated.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func getAllNets(): Array<NetHandle>

/**
 * Queries the connection properties of a network.
 * @param { NetHandle } netHandle - Indicates the network to be queried.
 * @returns { ConnectionProperties } Returns the connection properties of a network.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100001 - Invalid parameter value.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func getConnectionProperties(netHandle: NetHandle): ConnectionProperties

/**
 * Obtains NetCapabilities of a NetHandle object.
 * @param { NetHandle } netHandle - Indicates the handle. See NetHandle.
 * @returns { NetCapabilities } Returns the connection capabilities of a network.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100001 - Invalid parameter value.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func getNetCapabilities(netHandle: NetHandle): NetCapabilities

/**
 * Checks whether data traffic usage on the current network is metered.
 * @returns { Bool } Returns true if the current network is metered, else returns false.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func isDefaultNetMetered(): Bool

/**
 * Checks whether the default data network is activated.
 * @returns { Bool } Returns true if the default data network is activated, else returns false.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func hasDefaultNet(): Bool

/**
 * Reports the network state is connected.
 * @param { NetHandle } netHandle - Indicates the network whose state is to be reported.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100001 - Invalid parameter value.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func reportNetConnected(netHandle: NetHandle): Unit

/**
 * Reports the network state is disconnected.
 * @param { NetHandle } netHandle - Indicates the network whose state is to be reported.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100001 - Invalid parameter value.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func reportNetDisconnected(netHandle: NetHandle): Unit

/**
 * Resolves the host name to obtain all IP addresses based on the default data network.
 * @param { String } host - Indicates the host name or the domain.
 * @returns { Array<NetAddress> } IP addresses of network.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 2100001 - Invalid parameter value.
 * @throws { BusinessException } 2100002 - Failed to connect to the service.
 * @throws { BusinessException } 2100003 - System internal error.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core",
    throwexception: true,
    workerthread: true
]
public func getAddressesByName(host: String): Array<NetAddress>

/**
 * Represents the network connection handle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetConnection {
    /**
     * Receives status change notifications of a specified network.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 2100002 - Failed to connect to the service.
     * @throws { BusinessException } 2100003 - System internal error.
     * @throws { BusinessException } 2101008 - The callback already exists.
     * @throws { BusinessException } 2101022 - The number of requests exceeded the maximum allowed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true,
        workerthread: true
    ]
    public func register(): Unit

    /**
     * Cancels listening for network status changes.
     * @throws { BusinessException } 2100002 - Failed to connect to the service.
     * @throws { BusinessException } 2100003 - System internal error.
     * @throws { BusinessException } 2101007 - The callback does not exist.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true,
        workerthread: true
    ]
    public func unregister(): Unit

    /**
     * Registers a listener for netAvailable events.
     * Registers a listener for netLost events.
     * @param { NetConnectionEvent } event - Indicates Event type.
     * @param { Callback1Argument<NetHandle> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetHandle>): Unit

    /**
     * Registers a listener for netBlockStatusChange events.
     * @param { NetConnectionEvent } event - Indicates Event type.
     * @param { Callback1Argument<NetBlockStatusInfo> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetBlockStatusInfo>): Unit

    /**
     * Registers a listener for netCapabilitiesChange events.
     * @param { NetConnectionEvent } event - Indicates Event type.
     * @param { Callback1Argument<NetCapabilityInfo> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetCapabilityInfo>): Unit

    /**
     * Registers a listener for netConnectionPropertiesChange events.
     * @param { NetConnectionEvent } event - Indicates Event type.
     * @param { Callback1Argument<NetConnectionPropertyInfo> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetConnectionPropertyInfo>): Unit

    /**
     * Registers a listener for netUnavailable events.
     * @param { NetConnectionEvent } event - Indicates Event type.
     * @param { Callback0Argument } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true
    ]
    public func on(event: NetConnectionEvent, callback: Callback0Argument): Unit
}

/**
 * Defines the handle of the data network.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetHandle {
    /**
     * Network ID, a value of 0 means that there is no default network, and the other values must be greater than or
     * equal to 100.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netId: Int32

    /**
     * Resolves a host name to obtain all IP addresses based on the specified NetHandle.
     * @param { String } host - Indicates the host name or the domain.
     * @returns { Array<NetAddress> } IP addresses of network.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     * @throws { BusinessException } 2100002 - Failed to connect to the service.
     * @throws { BusinessException } 2100003 - System internal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAddressesByName(host: String): Array<NetAddress>

    /**
     * Resolves a host name to obtain the first IP address based on the specified NetHandle.
     * @param { String } host - Indicates the host name or the domain.
     * @returns { NetAddress } IP addresses of network.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     * @throws { BusinessException } 2100002 - Failed to connect to the service.
     * @throws { BusinessException } 2100003 - System internal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetManager.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAddressByName(host: String): NetAddress
}

/**
 * Get information about network connections.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetConnectionPropertyInfo {
    /**
     * Defines the handle of the data network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netHandle: NetHandle

    /**
     * Defines the network connection properties.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var connectionProperties: ConnectionProperties
}

/**
 * Get network status information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetBlockStatusInfo {
    /**
     * Defines the handle of the data network.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netHandle: NetHandle

    /**
     * Check whether the current state is blocked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var blocked: Bool
}
