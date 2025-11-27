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

package ohos.battery_info

import ohos.labels.APILevel

/**
 * Obtains battery information of a device.
 * Battery information includes the remaining battery power,
 * voltage, temperature, model, and charger type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public class BatteryInfo {
    /**
     * Battery state of charge (SoC) of the current device, in percent.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batterySoc: Int32

    /**
     * Battery charging status of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop chargingStatus: BatteryChargeState

    /**
     * Battery health state of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop healthStatus: BatteryHealthState

    /**
     * Charger type of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop pluggedType: BatteryPluggedType

    /**
     * Battery voltage of the current device, in µV.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop voltage: Int32

    /**
     * Battery immediate current of the current device, in mA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop nowCurrent: Int32

    /**
     * Battery technology of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop technology: String

    /**
     * Battery temperature of the current device, in 0.1℃.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryTemperature: Int32

    /**
     * Battery present state of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop isBatteryPresent: Bool

    /**
     * Battery capacity level of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryCapacityLevel: BatteryCapacityLevel
}

/**
 * Charger type of a device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryPluggedType {
    /**
     * Unknown type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownType
    |
    /**
     * AC charger
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Ac
    |
    /**
     * USB charger
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Usb
    |
    /**
     * Wireless charger
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Wireless
    | ...
}

extend BatteryPluggedType <: ToString {
    /**
     * Converts the BatteryPluggedType to its string representation.
     * @returns { String } A string representation of the BatteryPluggedType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String
}

extend BatteryPluggedType <: Equatable<BatteryPluggedType> {
    /**
     * Compares this BatteryPluggedType with another for equality.
     * @param { BatteryPluggedType } other - The BatteryPluggedType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryPluggedType): Bool

    /**
     * Compares this BatteryPluggedType with another for inequality.
     * @param { BatteryPluggedType } other - The BatteryPluggedType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryPluggedType): Bool
}

/**
 * Battery charging status of a device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryChargeState {
    /**
     * Unknown state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownChargeState
    |
    /**
     * The battery is being charged.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Enabled
    |
    /**
     * The battery is not being charged.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Disabled
    |
    /**
     * The battery is fully charged.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Full
    | ...
}

extend BatteryChargeState <: ToString {
    /**
     * Converts the BatteryChargeState to its string representation.
     * @returns { String } A string representation of the BatteryChargeState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String
}

extend BatteryChargeState <: Equatable<BatteryChargeState> {
    /**
     * Compares this BatteryChargeState with another for equality.
     * @param { BatteryChargeState } other - The BatteryChargeState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryChargeState): Bool

    /**
     * Compares this BatteryChargeState with another for inequality.
     * @param { BatteryChargeState } other - The BatteryChargeState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryChargeState): Bool
}

/**
 * Battery health status of a device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryHealthState {
    /**
     * Unknown state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownHealthState
    |
    /**
     * The battery is in healthy state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Good
    |
    /**
     * The battery is overheated.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overheat
    |
    /**
     * The battery voltage is over high.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overvoltage
    |
    /**
     * The battery temperature is low.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Cold
    |
    /**
     * The battery is dead.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Dead
    | ...
}

extend BatteryHealthState <: ToString {
    /**
     * Converts the BatteryHealthState to its string representation.
     * @returns { String } A string representation of the BatteryHealthState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String
}

extend BatteryHealthState <: Equatable<BatteryHealthState> {
    /**
     * Compares this BatteryHealthState with another for equality.
     * @param { BatteryHealthState } other - The BatteryHealthState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryHealthState): Bool

    /**
     * Compares this BatteryHealthState with another for inequality.
     * @param { BatteryHealthState } other - The BatteryHealthState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryHealthState): Bool
}

/**
 * Battery capacity level of a device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryCapacityLevel {
    /**
     * The battery is in full capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelFull
    |
    /**
     * The battery is in high capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelHigh
    |
    /**
     * The battery is in normal capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelNormal
    |
    /**
     * The battery is in low capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelLow
    |
    /**
     * The battery is in warning low capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelWarning
    |
    /**
     * The battery is in critical low capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelCritical
    |
    /**
     * The battery is in the lowest capacity level, system will shut down automatically in a few seconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelShutdown
    | ...
}

extend BatteryCapacityLevel <: ToString {
    /**
     * Converts the BatteryCapacityLevel to its string representation.
     * @returns { String } A string representation of the BatteryCapacityLevel.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String
}

extend BatteryCapacityLevel <: Equatable<BatteryCapacityLevel> {
    /**
     * Compares this BatteryCapacityLevel with another for equality.
     * @param { BatteryCapacityLevel } other - The BatteryCapacityLevel to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryCapacityLevel): Bool

    /**
     * Compares this BatteryCapacityLevel with another for inequality.
     * @param { BatteryCapacityLevel } other - The BatteryCapacityLevel to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryCapacityLevel): Bool
}
