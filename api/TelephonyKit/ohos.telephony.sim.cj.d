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

package ohos.telephony.sim

import ohos.labels.APILevel

/**
 * Enumerates SIM card types.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public enum CardType {

    /**
     * Unknown type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    UnknownCard
    |

    /**
     * Single-card (SIM).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SingleModeSimCard
    |

    /**
     * Single-card (USIM).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SingleModeUsimCard
    |

    /**
     * Single-card (RUIM).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SingleModeRuimCard
    |

    /**
     * Dual-card (CDMA+GSM).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    DualModeCgCard
    |

    /**
     * China Telecom internal roaming card.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    CtNationalRoamingCard
    |

    /**
     * China Unicom dual-mode card.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    CuDualModeCard
    |

    /**
     * China Telecom dual-mode LTE card.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    DualModeTelecomLteCard
    |

    /**
     * Dual-mode card (UMTS+GSM).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    DualModeUgCard
    |

    /**
     * Single-card (ISIM).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SingleModeIsimCard
    | ...
}


extend CardType <: ToString {

    /**
     * Converts the CardType to its string representation.
     * @returns { String } A string representation of the CardType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public func toString(): String
}


extend CardType <: Equatable<CardType> {

    /**
     * Compares this CardType with another for equality.
     * @param { CardType } other - The CardType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func ==(other: CardType): Bool

    /**
     * Compares this CardType with another for inequality.
     * @param { CardType } other - The CardType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func !=(other: CardType): Bool
}


/**
 * Enumerates SIM card states.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Telephony.CoreService"
]
public enum SimState {

    /**
     * The SIM card is in **unknown** state; that is, the SIM card status cannot be obtained.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SimStateUnknown
    |

    /**
     * The SIM card is in **not present** state; that is, no SIM card is inserted into the card slot.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SimStateNotPresent
    |

    /**
     * The SIM card is in **locked** state; that is, the SIM card is locked by the personal identification number
     * (PIN), PIN unblocking key (PUK), or network.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SimStateLocked
    |

    /**
     * The SIM card is in **not ready** state; that is, the SIM card has been installed but cannot work properly.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SimStateNotReady
    |

    /**
     * The SIM card is in **ready** state; that is, the SIM card has been installed and is working properly.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SimStateReady
    |

    /**
     * The SIM card is in **loaded** state; that is, the SIM card is present and all its files have been loaded.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    SimStateLoaded
    | ...
}


extend SimState <: ToString {

    /**
     * Converts the SimState to its string representation.
     * @returns { String } A string representation of the SimState.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public func toString(): String
}


extend SimState <: Equatable<SimState> {

    /**
     * Compares this SimState with another for equality.
     * @param { SimState } other - The SimState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func ==(other: SimState): Bool

    /**
     * Compares this SimState with another for inequality.
     * @param { SimState } other - The SimState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Telephony.CoreService"
    ]
    public operator func !=(other: SimState): Bool
}
