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

package ohos.telephony.observer

import ohos.callback_invoke.{ Callback0Argument, Callback1Argument }
import ohos.labels.APILevel
import ohos.telephony.call.CallState
import ohos.telephony.radio.{ NetworkState, SignalInformation }
import ohos.telephony.sim.{ CardType, SimState }

/**
 * Subscribes to the carrier call state changes and obtains the call number. This method uses an asynchronous callback
 * to return the execution result.
 *
 * @param { Callback1Argument<CallStateInfo> } callback - Callback function used to return the call status information object.
 *     The application can obtain CallState.
 * @param { ?ObserverOptions } [options] - Event subscription parameters. The default value is **None**.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 8800001 - Invalid parameter value.
 * @throws { BusinessException } 8800002 - Service connection failed.
 * @throws { BusinessException } 8800003 - System internal error.
 * @throws { BusinessException } 8800999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.MANAGE_CALL_FOR_DEVICES",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func onCallStateChange(callback: Callback1Argument<CallStateInfo>, options!: ?ObserverOptions = None): Unit

/**
 * Cancels the listening on the carrier call status and obtaining of the call number by a third-party application.
 * This method uses an asynchronous callback to return the result.
 *
 * @param { ?Callback1Argument<CallStateInfo> } [callback] - Callback function used to return the call status information
 *     object. The application can obtain CallState.
 *     If this parameter is not specified, all callbacks of this event are unsubscribed.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 8800001 - Invalid parameter value.
 * @throws { BusinessException } 8800002 - Service connection failed.
 * @throws { BusinessException } 8800003 - System internal error.
 * @throws { BusinessException } 8800999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.MANAGE_CALL_FOR_DEVICES",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func offCallStateChange(callback!: ?Callback1Argument<CallStateInfo> = None): Unit

/**
 * Callback when the network state corresponding to the monitored card slot is updated. This API uses an asynchronous
 * callback to return the execution result.
 *
 * @param { Callback1Argument<NetworkState> } callback - Callback used to return the network status object, which is an
 *     instance of the NetworkState class.
 * @param { ?ObserverOptions } [options] - Indicates the options for observer. The default value is **None**.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func onNetworkStateChange(callback: Callback1Argument<NetworkState>, options!: ?ObserverOptions = None): Unit

/**
 * Cancel callback when the network state is updated.
 *
 * @param { ?Callback1Argument<NetworkState> } [callback] - Indicates the callback for getting an instance of the NetworkState
 *     class.
 *     If this parameter is not specified, all callbacks of this event are unsubscribed.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func offNetworkStateChange(callback!: ?Callback1Argument<NetworkState> = None): Unit

/**
 * Callback when the signal strength corresponding to the monitored card slot is updated. This API uses an asynchronous
 * callback to return the execution result.
 *
 * @param { Callback1Argument<Array<SignalInformation>> } callback - Indicates the callback for getting an array of instances
 *     of the SignalInformation class.
 * @param { ?ObserverOptions } [options] - Indicates the options for observer. The default value is **None**.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func onSignalInfoChange(callback: Callback1Argument<Array<SignalInformation>>, options!: ?ObserverOptions = None): Unit

/**
 * Cancel callback when the signal strength is updated.
 *
 * @param { ?Callback1Argument<Array<SignalInformation>> } [callback] - Indicates the callback to unsubscribe from the
 *     signalInfoChange event.
 *     If this parameter is not specified, all callbacks of this event are unsubscribed.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func offSignalInfoChange(callback!: ?Callback1Argument<Array<SignalInformation>> = None): Unit

/**
 * Callback when the SIM card state corresponding to the monitored card slot is updated. This API uses an asynchronous
 * callback to return the execution result.
 *
 * @param { Callback1Argument<Array<SimStateData>> } callback - Indicates the callback for getting the SimStateData objects,
 *     including the SIM card state and the cause of the change.
 * @param { ?ObserverOptions } [options] - Indicates the options for observer. The default value is **None**.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func onSimStateChange(callback: Callback1Argument<Array<SimStateData>>, options!: ?ObserverOptions = None): Unit

/**
 * Cancel callback when the SIM card state is updated.
 *
 * @param { ?Callback1Argument<Array<SimStateData>> } [callback] - Indicates the callback to unsubscribe from the simStateChange
 *     event.
 *     If this parameter is not specified, all callbacks of this event are unsubscribed.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func offSimStateChange(callback!: ?Callback1Argument<Array<SimStateData>> = None): Unit

/**
 * Receives an ICC account change. This callback is invoked when the ICC account updates and the observer is added to
 * monitor the updates.
 *
 * @param { Callback0Argument } callback - Indicates the callback for getting the ICC account information and the
 *     cause of the change.
 * @param { ?ObserverOptions } [options] - Indicates the options for observer. The default value is **None**.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func onIccAccountInfoChange(callback: Callback0Argument, options!: ?ObserverOptions = None): Unit

/**
 * Cancel to receive an ICC account change.
 *
 * @param { ?Callback0Argument } [callback] - Indicates the callback to unsubscribe from the iccAccountInfoChange
 *     event.
 *     If this parameter is not specified, all callbacks of this event are unsubscribed.
 * @throws { BusinessException } 8300001 - Invalid parameter value.
 * @throws { BusinessException } 8300002 - Service connection failed.
 * @throws { BusinessException } 8300003 - System internal error.
 * @throws { BusinessException } 8300999 - Unknown error.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry",
    throwexception: true
]
public func offIccAccountInfoChange(callback!: ?Callback0Argument = None): Unit

/**
 * Enumerates SIM card types and states.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry"
]
public class SimStateData {
    /**
     * SIM card type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public mut prop cardType: CardType

    /**
     * SIM card state.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public mut prop state: SimState

    /**
     * SIM card lock type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public mut prop reason: LockReason
}

/**
 * Defines information about the call status.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry"
]
public class CallStateInfo {
    /**
     * Call type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public mut prop state: CallState

    /**
     * Phone number.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public mut prop number: String
}

/**
 * Defines event subscription parameters.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry"
]
public class ObserverOptions {
    /**
     * Card slot ID.
     *
     * - **0**: card slot 1.
     * - **1**: card slot 2.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public mut prop slotId: Int32

    /**
     * ObserverOptions constructor.
     *
     * @param { ?Int32 } [slotId] - Card slot ID.
     *     - **0**: card slot 1.
     *     - **1**: card slot 2.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public init(slotId!: ?Int32 = None)
}

/**
 * Enumerates SIM card lock types.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.StateRegistry"
]
public enum LockReason {

    /**
     * No lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimNone
    |

    /**
     * PIN lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPin
    |

    /**
     * PUK lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPuk
    |

    /**
     * Network PIN lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPnPin
    |

    /**
     * Network PUK lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPnPuk
    |

    /**
     * Subnet PIN lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPuPin
    |

    /**
     * Subnet PUK lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPuPuk
    |

    /**
     * Service provider PIN lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPpPin
    |

    /**
     * Service provider PUK lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPpPuk
    |

    /**
     * Organization PIN lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPcPin
    |

    /**
     * Organization PUK lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimPcPuk
    |

    /**
     * SIM PIN lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimSimPin
    |

    /**
     * SIM PUK lock.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    SimSimPuk
    | ...
}


extend LockReason <: ToString {

    /**
     * Converts the LockReason to its string representation.
     * @returns { String } A string representation of the LockReason.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public func toString(): String
}


extend LockReason <: Equatable<LockReason> {

    /**
     * Compares this LockReason with another for equality.
     * @param { LockReason } other - The LockReason to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public operator func ==(other: LockReason): Bool

    /**
     * Compares this LockReason with another for inequality.
     * @param { LockReason } other - The LockReason to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.StateRegistry"
    ]
    public operator func !=(other: LockReason): Bool
}
