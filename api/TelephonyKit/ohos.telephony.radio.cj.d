/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

package ohos.telephony.radio

import ohos.business_exception.AsyncCallback
import ohos.labels.APILevel

/**
 * Defines the radio access technology for the packet switched (PS) or circuit switched (CS) network.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public class NetworkRadioTech {
    /**
     * PS.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop psRadioTech: RadioTechnology

    /**
     * CS.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop csRadioTech: RadioTechnology
}

/**
 * Enumerates radio access technologies.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public enum RadioTechnology {

    /**
     * Unknown RAT
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyUnknown
    |

    /**
     * Global System for Mobile Communication (GSM)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyGsm
    |

    /**
     * Single-Carrier Radio Transmission Technology (1XRTT)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnology1xrtt
    |

    /**
     * Wideband Code Division Multiple Access (WCDMA)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyWcdma
    |

    /**
     * High Speed Packet Access (HSPA)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyHspa
    |

    /**
     * Evolved High Speed Packet Access (HSPA+)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyHspap
    |

    /**
     * TD-SCDMA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyTdScdma
    |

    /**
     * Evolution-Data Optimized (EVDO)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyEvdo
    |

    /**
     * Evolved High Rate Package Data (EHRPD)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyEhrpd
    |

    /**
     * Long Term Evolution (LTE)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyLte
    |

    /**
     * Long Term Evolution_Carrier Aggregation (LTE_CA)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyLteCa
    |

    /**
     * Industrial Wireless LAN (IWLAN)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyIwlan
    |

    /**
     * New Radio (NR)
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RadioTechnologyNr
    | ...
}

extend RadioTechnology <: ToString {

    /**
     * Converts the RadioTechnology to its string representation.
     * @returns { String } A string representation of the RadioTechnology.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public func toString(): String
}

extend RadioTechnology <: Equatable<RadioTechnology> {

    /**
     * Compares this RadioTechnology with another for equality.
     * @param { RadioTechnology } other - The RadioTechnology to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func ==(other: RadioTechnology): Bool

    /**
     * Compares this RadioTechnology with another for inequality.
     * @param { RadioTechnology } other - The RadioTechnology to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func !=(other: RadioTechnology): Bool
}

/**
 * Defines the signal strength.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public class SignalInformation {
    /**
     * Signal strength type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop signalType: NetworkType

    /**
     * Signal strength level. The value range is [0, 5]. If the value is out of range, an error is returned.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop signalLevel: Int32

    /**
     * Signal strength. The value range is [–140, 140]. If the value is out of range, an error is returned.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop dBm: Int32
}

/**
 * Enumerates network types.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public enum NetworkType {

    /**
     * Unknown network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkTypeUnknown
    |

    /**
     * GSM network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkTypeGsm
    |

    /**
     * CDMA network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkTypeCdma
    |

    /**
     * WCDMA network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkTypeWcdma
    |

    /**
     * TD-SCDMA network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkTypeTdscdma
    |

    /**
     * LTE network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkTypeLte
    |

    /**
     * NR network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkTypeNr
    | ...
}

extend NetworkType <: ToString {

    /**
     * Converts the NetworkType to its string representation.
     * @returns { String } A string representation of the NetworkType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public func toString(): String
}

extend NetworkType <: Equatable<NetworkType> {

    /**
     * Compares this NetworkType with another for equality.
     * @param { NetworkType } other - The NetworkType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func ==(other: NetworkType): Bool

    /**
     * Compares this NetworkType with another for inequality.
     * @param { NetworkType } other - The NetworkType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func !=(other: NetworkType): Bool
}

/**
 * Defines the network status.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public class NetworkState {
    /**
     * Long carrier name of the registered network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop longOperatorName: String

    /**
     * Short carrier name of the registered network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop shortOperatorName: String

    /**
     * PLMN code of the registered network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop plmnNumeric: String

    /**
     * Whether the user is roaming.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop isRoaming: Bool

    /**
     * Network registration status of the device.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop regState: RegState

    /**
     * RAT of the device.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop cfgTech: RadioTechnology

    /**
     * NSA network registration status of the device.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop nsaState: NsaState

    /**
     * CA status.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop isCaActive: Bool

    /**
     * Whether only emergency calls are allowed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public mut prop isEmergency: Bool
}

/**
 * Defines the network registration status of the device.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public enum RegState {

    /**
     * The device cannot use any services, including data, SMS, and call services.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RegStateNoService
    |

    /**
     * The device can use services properly, including data, SMS, and call services.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RegStateInService
    |

    /**
     * The device can use only the emergency call service.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RegStateEmergencyCallOnly
    |

    /**
     * The device cannot communicate with the network because the cellular radio service is disabled or the modem is
     * powered off.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    RegStatePowerOff
    | ...
}

extend RegState <: ToString {

    /**
     * Converts the RegState to its string representation.
     * @returns { String } A string representation of the RegState.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public func toString(): String
}

extend RegState <: Equatable<RegState> {

    /**
     * Compares this RegState with another for equality.
     * @param { RegState } other - The RegState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func ==(other: RegState): Bool

    /**
     * Compares this RegState with another for inequality.
     * @param { RegState } other - The RegState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func !=(other: RegState): Bool
}

/**
 * Enumerates NSA network states.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public enum NsaState {

    /**
     * The device is in idle or connected state in an LTE cell that does not support NSA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NsaStateNotSupport
    |

    /**
     * The device is in the idle state in an LTE cell that supports NSA but not NR coverage detection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NsaStateNoDetect
    |

    /**
     * The device is connected to the LTE network in an LTE cell that supports NSA and NR coverage detection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NsaStateConnectedDetect
    |

    /**
     * The device is in the idle state in an LTE cell that supports NSA and NR coverage detection.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NsaStateIdleDetect
    |

    /**
     * The device is connected to the LTE/NR network in an LTE cell that supports NSA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NsaStateDualConnected
    |

    /**
     * The device is idle or connected to the NG-RAN cell when being attached to the 5G Core.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NsaStateSaAttached
    | ...
}

extend NsaState <: ToString {

    /**
     * Converts the NsaState to its string representation.
     * @returns { String } A string representation of the NsaState.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public func toString(): String
}

extend NsaState <: Equatable<NsaState> {

    /**
     * Compares this NsaState with another for equality.
     * @param { NsaState } other - The NsaState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func ==(other: NsaState): Bool

    /**
     * Compares this NsaState with another for inequality.
     * @param { NsaState } other - The NsaState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func !=(other: NsaState): Bool
}

/**
 * Enumerates network selection modes.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public enum NetworkSelectionMode {

    /**
     * Unknown network selection mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkSelectionUnknown
    |

    /**
     * Automatic network selection mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkSelectionAutomatic
    |

    /**
     * Manual network selection mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    NetworkSelectionManual
    | ...
}

extend NetworkSelectionMode <: ToString {

    /**
     * Converts the NetworkSelectionMode to its string representation.
     * @returns { String } A string representation of the NetworkSelectionMode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public func toString(): String
}

extend NetworkSelectionMode <: Equatable<NetworkSelectionMode> {

    /**
     * Compares this NetworkSelectionMode with another for equality.
     * @param { NetworkSelectionMode } other - The NetworkSelectionMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func ==(other: NetworkSelectionMode): Bool

    /**
     * Compares this NetworkSelectionMode with another for inequality.
     * @param { NetworkSelectionMode } other - The NetworkSelectionMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func !=(other: NetworkSelectionMode): Bool
}

/**
 * Obtains the ISO country code of the network with which the SIM card in the specified slot is registered.
 *
 * @param { Int32 } slotId - Card slot ID.
 *     - **0**: card slot 1.
 *     - **1**: card slot 2.
 * @returns { String } ISO country code of the network, for example, **CN** (China). If the device is not registered
 *     with any network, an empty string is returned.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public func getISOCountryCodeForNetworkSync(slotId: Int32): String

/**
 * Obtains the network selection mode of the SIM card in the specified slot. This API uses an asynchronous callback to
 * return the result.
 *
 * @param { Int32 } slotId - Card slot ID.
 *     - **0**: card slot 1.
 *     - **1**: card slot 2.
 * @param { AsyncCallback<NetworkSelectionMode> } callback - Callback used to return the result.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService",
    throwexception: true
]
public func getNetworkSelectionMode(slotId: Int32, callback: AsyncCallback<NetworkSelectionMode>): Unit

/**
 * Obtains the network status of the SIM card in the specified slot. This API uses an asynchronous callback to return
 * the result.
 *
 * @param { Int32 } slotId - Card slot ID.
 *     - **0**: card slot 1.
 *     - **1**: card slot 2.
 * @param { AsyncCallback<NetworkState> } callback - Callback used to return the result.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Telephony.CoreService",
    throwexception: true
]
public func getNetworkState(slotId: Int32, callback: AsyncCallback<NetworkState>): Unit

/**
 * Obtains the network status. This API uses an asynchronous callback to return the result.
 *
 * @param { AsyncCallback<NetworkState> } callback - Callback used to return the result.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Telephony.CoreService",
    throwexception: true
]
public func getNetworkState(callback: AsyncCallback<NetworkState>): Unit

/**
 * Obtains the ID of the slot in which the primary card is located. This API uses an asynchronous callback to return
 * the result.
 *
 * @param { AsyncCallback<Int32> } callback - Callback used to return the result.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService",
    throwexception: true
]
public func getPrimarySlotId(callback: AsyncCallback<Int32>): Unit

/**
 * Obtains the RAT used in the CS and PS domains for the SIM card in the specified slot. The CS domain refers to the
 * Circuit Switched domain, and the PS domain refers to the Packet Switched domain.
 *
 * @param { Int32 } slotId - Card slot ID.
 *     - **0**: card slot 1.
 *     - **1**: card slot 2.
 * @returns { NetworkRadioTech } RAT used in the CS and PS domains. The CS domain refers to the Circuit Switched
 *     domain, and the PS domain refers to the Packet Switched domain.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error code.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Telephony.CoreService",
    throwexception: true
]
public func getRadioTechSync(slotId: Int32): NetworkRadioTech

/**
 * Checks whether the current device supports NR.
 *
 * @returns { Bool } Returns **true** if the current device supports NR; returns **false** otherwise.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public func isNRSupported(): Bool
