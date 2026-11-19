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

package ohos.geo_location_manager

import ohos.business_exception.*
import ohos.callback_invoke.*
import ohos.labels.APILevel

/**
 * Provides interfaces for acquiring location information, managing location switches,
 * geocoding, reverse geocoding, country code, fencing and other functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public class GeoLocationManager {
    /**
      * Obtain current location.
      *
      * @returns { Location } Returns the current location information.
      * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
      * permission required to call the API.
      * @throws { BusinessException } 801 - Capability not supported. Failed to call
      * ${geoLocationManager.getCurrentLocation} due to limited device capabilities.
      * @throws { BusinessException } 3301000 - The location service is unavailable.
      * @throws { BusinessException } 3301100 - The location switch is off.
      * @throws { BusinessException } 3301200 - Failed to obtain the geographical location.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.APPROXIMATELY_LOCATION",
        syscap: "SystemCapability.Location.Location.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func getCurrentLocation(): Location

    /**
      * Obtain current location.
      *
      * @param { CurrentLocationRequest } request - Indicates the location request parameters.
      * @returns { Location } Returns the current location information.
      * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
      * permission required to call the API.
      * @throws { BusinessException } 801 - Capability not supported. Failed to call
      * ${geoLocationManager.getCurrentLocation} due to limited device capabilities.
      * @throws { BusinessException } 3301000 - The location service is unavailable.
      * @throws { BusinessException } 3301100 - The location switch is off.
      * @throws { BusinessException } 3301200 - Failed to obtain the geographical location.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.APPROXIMATELY_LOCATION",
        syscap: "SystemCapability.Location.Location.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func getCurrentLocation(request: CurrentLocationRequest): Location

    /**
      * Obtain current location.
      *
      * @param { SingleLocationRequest } request - Indicates the location request parameters.
      * @returns { Location } Returns the current location information.
      * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
      * permission required to call the API.
      * @throws { BusinessException } 801 - Capability not supported. Failed to call
      * ${geoLocationManager.getCurrentLocation} due to limited device capabilities.
      * @throws { BusinessException } 3301000 - The location service is unavailable.
      * @throws { BusinessException } 3301100 - The location switch is off.
      * @throws { BusinessException } 3301200 - Failed to obtain the geographical location.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.APPROXIMATELY_LOCATION",
        syscap: "SystemCapability.Location.Location.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func getCurrentLocation(request: SingleLocationRequest): Location

    /**
      * Obtain current location switch status.
      *
      * @returns { Bool } Returns true if the location switch is on, returns false otherwise.
      * @throws { BusinessException } 801 - Capability not supported. Failed to call
      * ${geoLocationManager.isLocationEnabled} due to limited device capabilities.
      * @throws { BusinessException } 3301000 - The location service is unavailable.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core",
        throwexception: true
    ]
    public static func isLocationEnabled(): Bool
}

/**
 * Enum for the source of the location.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationSourceType {
    /**
     * The location is obtained from the GNSS.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Gnss
    | 
    /**
     * The location comes from the network positioning technology.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Network
    | 
    /**
     * The location comes from the indoor positioning technology.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Indoor
    | 
    /**
     * The location comes from the GNSS RTK technology.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Rtk
    | ...
}

/**
 * Provides information about geographic locations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public class Location {
    /**
     * Indicates latitude information.
     * A positive value indicates north latitude,
     * and a negative value indicates south latitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var latitude: Float64

    /**
     * Indicates Longitude information.
     * A positive value indicates east longitude ,
     * and a negative value indicates west longitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var longitude: Float64

    /**
     * Indicates location altitude, in meters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var altitude: Float64

    /**
     * Indicates location accuracy, in meters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var accuracy: Float64

    /**
     * Indicates speed, in m/s.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var speed: Float64

    /**
     * Indicates location timestamp in the UTC format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timestamp: Int64

    /**
     * Indicates direction information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var direction: Float64

    /**
     * Indicates location timestamp since boot.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeSinceBoot: Int64

    /**
     * Indicates additional information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additions: ?Array<String>

    /**
     * Indicates additional information map.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additionsMap: ?Map<String, String>

    /**
     * Indicates the amount of additional descriptive information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additionSize: ?Int64

    /**
     * Indicates vertical position accuracy in meters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var altitudeAccuracy: ?Float64

    /**
     * Indicates speed accuracy in meter per seconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var speedAccuracy: ?Float64

    /**
     * Indicates direction accuracy in degrees.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var directionAccuracy: ?Float64

    /**
     * Time uncertainty Of timeSinceBoot in nanosecond.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var uncertaintyOfTimeSinceBoot: ?Int64

    /**
     * Indicates the source of the location.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var sourceType: ?LocationSourceType
}

/**
 * Enum for location priority.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationRequestPriority {
    /**
     * Default priority.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Unset
    | 
    /**
     * Preferentially ensure the locating accuracy.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Accuracy
    | 
    /**
     * Preferentially ensure low power consumption for locating.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LowPower
    | 
    /**
     * Preferentially ensure that the first location is time-consuming.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    FirstFix
    | ...
}

/**
 * Enum for location scenario.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationRequestScenario {
    /**
     * Default scenario.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Unset
    | 
    /**
     * Navigation scenario. High positioning precision and real-time performance are required.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Navigation
    | 
    /**
     * Trajectory tracking scenario. High positioning precision is required.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    TrajectoryTracking
    | 
    /**
     * Car hailing scenario. High positioning precision and real-time performance are required.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    CarHailing
    | 
    /**
     * Daily life scenarios. Low requirements on positioning precision and real-time performance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    DailyLifeService
    | 
    /**
     * Power saving scenarios.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    NoPower
    | ...
}

/**
 * Configuring parameters in current location requests.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public class CurrentLocationRequest {
    /**
     * Priority of the location request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var priority: LocationRequestPriority

    /**
     * User scenario of the location request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var scenario: LocationRequestScenario

    /**
     * Accuracy requirements for reporting locations.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var maxAccuracy: Float32

    /**
     * Timeout interval of a single location request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeoutMs: Int32

    /**
     * CurrentLocationRequest Constructor.
     *
     * @param { LocationRequestPriority } [priority] - The priority of the location request. The default value is FirstFix.
     * @param { LocationRequestScenario } [scenario] - The user scenario of the location request. The default value is Unset.
     * @param { Float32 } [maxAccuracy] - The accuracy requirements for reporting locations. The default value is 0.0.
     * @param { Int32 } [timeoutMs] - The timeout interval of a single location request. The default value is 5000.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(priority!: LocationRequestPriority = LocationRequestPriority.FirstFix,
        scenario!: LocationRequestScenario = LocationRequestScenario.Unset, maxAccuracy!: Float32 = 0.0,
        timeoutMs!: Int32 = 5000)
}

/**
 * Enum for locating priority.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocatingPriority {
    /**
     * Preferentially ensure the highest locating accuracy.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    PriorityAccuracy
    | 
    /**
     * Preferentially ensure the fastest locating speed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    PriorityLocatingSpeed
    | ...
}

/**
 * Configuring parameters in single location requests.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Location.Location.Core"
]
public class SingleLocationRequest {
    /**
     * Priority of the location request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var locatingPriority: LocatingPriority

    /**
     * Timeout of a single location request, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var locatingTimeoutMs: Int32

    /**
     * SingleLocationRequest Constructor.
     *
     * @param { LocatingPriority } locatingPriority - The priority of the location request.
     * @param { Int32 } locatingTimeoutMs - The timeout of a single location request, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(locatingPriority: LocatingPriority, locatingTimeoutMs: Int32)
}

/**
 * Configuring parameters in location requests.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public class LocationRequest {
    /**
     * Priority of the location request.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop priority: ?LocationRequestPriority

    /**
     * User scenario of the location request.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop scenario: ?LocationRequestScenario

    /**
     * Location report interval.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop timeInterval: ?Int32

    /**
     * Location report distance interval.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop distanceInterval: ?Float64

    /**
     * Accuracy requirements for reporting locations.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop maxAccuracy: ?Float32

    /**
     * LocationRequest Constructor.
     *
     * @param { ?LocationRequestPriority } [priority] - The priority of the location request. The default value is FirstFix.
     * @param { ?LocationRequestScenario } [scenario] - The user scenario of the location request. The default value is Unset.
     * @param { ?Int32 } [timeInterval] - The location report interval, in seconds. The default value is 1.
     * @param { ?Float64 } [distanceInterval] - The location report distance interval. The default value is 0.0.
     * @param { ?Float32 } [maxAccuracy] - The accuracy requirements for reporting locations. The default value is 0.0.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(priority!: ?LocationRequestPriority = None,
        scenario!: ?LocationRequestScenario = None, timeInterval!: ?Int32 = None,
        distanceInterval!: ?Float64 = None, maxAccuracy!: ?Float32 = None)
}

/**
 * Configuring parameters in continuous location requests.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public class ContinuousLocationRequest {
    /**
     * Location report interval, in seconds.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop interval: Int32

    /**
     * Location scenario. You can select a user activity scenario or power consumption scenario.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop locationScenario: ScenarioValueType

    /**
     * ContinuousLocationRequest Constructor.
     *
     * @param { Int32 } interval - The location report interval, in seconds.
     * @param { ScenarioValueType } locationScenario - The location scenario, which is a user activity
     *     scenario or a power consumption scenario.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(interval: Int32, locationScenario: ScenarioValueType)
}

/**
 * Indicates the location scenario type.
 *
 * It is used as the locationScenario parameter of ContinuousLocationRequest. You can select a user
 *     activity scenario or a power consumption scenario.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum ScenarioValueType {
    /**
     * Represents the user activity scenario.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    UserActivityScenarioValue(UserActivityScenario)
    |
    /**
     * Represents the power consumption scenario.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    PowerConsumptionScenarioValue(PowerConsumptionScenario)
}

extend ScenarioValueType <: ToString {
    /**
     * Converts the ScenarioValueType to its string representation.
     * @returns { String } A string representation of the ScenarioValueType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public func toString(): String
}

extend ScenarioValueType <: Equatable<ScenarioValueType> {
    /**
     * Compares this ScenarioValueType with another for equality.
     * @param { ScenarioValueType } other - The ScenarioValueType to compare with.
     * @returns { Bool } True if both values are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func ==(other: ScenarioValueType): Bool

    /**
     * Compares this ScenarioValueType with another for inequality.
     * @param { ScenarioValueType } other - The ScenarioValueType to compare with.
     * @returns { Bool } True if both values are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func !=(other: ScenarioValueType): Bool
}

/**
 * Enum for location error code.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationError {
    /**
     * Default cause for location failure.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LocatingFailedDefault
    |
    /**
     * Locating failed because the location permission fails to be verified.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LocatingFailedLocationPermissionDenied
    |
    /**
     * Locating failed because the app is in the background and the background location permission
     * verification failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LocatingFailedBackgroundPermissionDenied
    |
    /**
     * Locating failed because the location switch is turned off.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LocatingFailedLocationSwitchOff
    |
    /**
     * Locating failed because internet access failure.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LocatingFailedInternetAccessFailure
    | ...
}

extend LocationError <: ToString {
    /**
     * Converts the LocationError to its string representation.
     * @returns { String } A string representation of the LocationError.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public func toString(): String
}

extend LocationError <: Equatable<LocationError> {
    /**
     * Compares this LocationError with another for equality.
     * @param { LocationError } other - The LocationError to compare with.
     * @returns { Bool } True if both values are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func ==(other: LocationError): Bool

    /**
     * Compares this LocationError with another for inequality.
     * @param { LocationError } other - The LocationError to compare with.
     * @returns { Bool } True if both values are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func !=(other: LocationError): Bool
}

/**
 * Enum for user activity scenario.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum UserActivityScenario {
    /**
     * Navigation scenario. High positioning precision and real-time performance are required.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Navigation
    |
    /**
     * Sport scenario. High positioning precision is required.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Sport
    |
    /**
     * Transport scenario. High positioning precision and real-time performance are required.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Transport
    |
    /**
     * Daily life scenarios. Low requirements on positioning precision.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    DailyLifeService
    | ...
}

extend UserActivityScenario <: ToString {
    /**
     * Converts the UserActivityScenario to its string representation.
     * @returns { String } A string representation of the UserActivityScenario.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public func toString(): String
}

extend UserActivityScenario <: Equatable<UserActivityScenario> {
    /**
     * Compares this UserActivityScenario with another for equality.
     * @param { UserActivityScenario } other - The UserActivityScenario to compare with.
     * @returns { Bool } True if both values are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func ==(other: UserActivityScenario): Bool

    /**
     * Compares this UserActivityScenario with another for inequality.
     * @param { UserActivityScenario } other - The UserActivityScenario to compare with.
     * @returns { Bool } True if both values are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func !=(other: UserActivityScenario): Bool
}

/**
 * Enum for power consumption scenario.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum PowerConsumptionScenario {
    /**
     * High power consumption mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    HighPowerConsumption
    |
    /**
     * Low power consumption mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LowPowerConsumption
    |
    /**
     * Power saving scenarios.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    NoPowerConsumption
    | ...
}

extend PowerConsumptionScenario <: ToString {
    /**
     * Converts the PowerConsumptionScenario to its string representation.
     * @returns { String } A string representation of the PowerConsumptionScenario.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public func toString(): String
}

extend PowerConsumptionScenario <: Equatable<PowerConsumptionScenario> {
    /**
     * Compares this PowerConsumptionScenario with another for equality.
     * @param { PowerConsumptionScenario } other - The PowerConsumptionScenario to compare with.
     * @returns { Bool } True if both values are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func ==(other: PowerConsumptionScenario): Bool

    /**
     * Compares this PowerConsumptionScenario with another for inequality.
     * @param { PowerConsumptionScenario } other - The PowerConsumptionScenario to compare with.
     * @returns { Bool } True if both values are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func !=(other: PowerConsumptionScenario): Bool
}

/**
 * Location subsystem command structure.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public class LocationCommand {
    /**
     * Information about the scenario where the command is sent.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop scenario: LocationRequestScenario

    /**
     * Sent command content.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop command: String

    /**
     * LocationCommand constructor.
     *
     * @param { LocationRequestScenario } scenario - Information about the scenario where the command is sent.
     * @param { String } command - Sent command content.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(scenario: LocationRequestScenario, command: String)
}

/**
 * Country code structure.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public class CountryCode {
    /**
     * Country code character string.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop country: String

    /**
     * Country code source.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public mut prop countryCodeType: CountryCodeType
}

/**
 * Enum for country code type.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core"
]
public enum CountryCodeType {
    /**
     * Country code obtained from the locale setting.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    CountryCodeFromLocale
    |
    /**
     * Country code obtained from the SIM information.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    CountryCodeFromSim
    |
    /**
     * Query the country code information from the reverse geocoding result.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    CountryCodeFromLocation
    |
    /**
     * Obtain the country code from the cell registration information.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    CountryCodeFromNetwork
    | ...
}

extend CountryCodeType <: ToString {
    /**
     * Converts the CountryCodeType to its string representation.
     * @returns { String } A string representation of the CountryCodeType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public func toString(): String
}

extend CountryCodeType <: Equatable<CountryCodeType> {
    /**
     * Compares this CountryCodeType with another for equality.
     * @param { CountryCodeType } other - The CountryCodeType to compare with.
     * @returns { Bool } True if both values are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func ==(other: CountryCodeType): Bool

    /**
     * Compares this CountryCodeType with another for inequality.
     * @param { CountryCodeType } other - The CountryCodeType to compare with.
     * @returns { Bool } True if both values are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public operator func !=(other: CountryCodeType): Bool
}

/**
 * Subscribe location changed.
 *
 * @param { LocationRequest } request - Indicates the location request parameters.
 * @param { Callback1Argument<Location> } callback - Indicates the callback for reporting the location result.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
 *     permission required to call the API.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.onLocationChange} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 * @throws { BusinessException } 3301100 - The location switch is off.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.APPROXIMATELY_LOCATION",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func onLocationChange(request: LocationRequest, callback: Callback1Argument<Location>): Unit

/**
 * Subscribe location changed.
 *
 * @param { ContinuousLocationRequest } request - Indicates the location request parameters.
 * @param { Callback1Argument<Location> } callback - Indicates the callback for reporting the location result.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
 *     permission required to call the API.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.onLocationChange} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 * @throws { BusinessException } 3301100 - The location switch is off.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.APPROXIMATELY_LOCATION",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func onLocationChange(request: ContinuousLocationRequest, callback: Callback1Argument<Location>): Unit

/**
 * Unsubscribe location changed.
 *
 * @param { ?Callback1Argument<Location> } [callback] - Indicates the callback for reporting the location result.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.offLocationChange} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func offLocationChange(callback!: ?Callback1Argument<Location> = None): Unit

/**
 * Subscribe continuous location error changed.
 *
 * @param { Callback1Argument<LocationError> } callback - Indicates the callback for reporting the continuous location error.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
 *     permission required to call the API.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.onLocationError} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.APPROXIMATELY_LOCATION",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func onLocationError(callback: Callback1Argument<LocationError>): Unit

/**
 * Unsubscribe continuous location error changed.
 *
 * @param { ?Callback1Argument<LocationError> } [callback] - Indicates the callback for reporting the
 *     continuous location error.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
 *     permission required to call the API.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.offLocationError} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.APPROXIMATELY_LOCATION",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func offLocationError(callback!: ?Callback1Argument<LocationError> = None): Unit

/**
 * Subscribe location switch changed.
 *
 * @param { Callback1Argument<Bool> } callback - Indicates the callback for reporting the location switch status.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.onLocationEnabledChange} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func onLocationEnabledChange(callback: Callback1Argument<Bool>): Unit

/**
 * Unsubscribe location switch changed.
 *
 * @param { ?Callback1Argument<Bool> } [callback] - Indicates the callback for reporting the location switch status.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.offLocationEnabledChange} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func offLocationEnabledChange(callback!: ?Callback1Argument<Bool> = None): Unit

/**
 * Registering the callback function for listening to country code changes.
 *
 * @param { Callback1Argument<CountryCode> } callback - Indicates the callback for reporting country code changes.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.onCountryCodeChange} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 * @throws { BusinessException } 3301500 - Failed to query the area information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func onCountryCodeChange(callback: Callback1Argument<CountryCode>): Unit

/**
 * Unregistering the callback function for listening to country code changes.
 *
 * @param { ?Callback1Argument<CountryCode> } [callback] - Indicates the callback for reporting country code changes.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.offCountryCodeChange} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 * @throws { BusinessException } 3301500 - Failed to query the area information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func offCountryCodeChange(callback!: ?Callback1Argument<CountryCode> = None): Unit

/**
 * Obtain last known location.
 *
 * @returns { Location } The last known location information.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
 *     permission required to call the API.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.getLastLocation} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 * @throws { BusinessException } 3301100 - The location switch is off.
 * @throws { BusinessException } 3301200 - Failed to obtain the geographical location.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.APPROXIMATELY_LOCATION",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func getLastLocation(): Location

/**
 * Send extended commands to location subsystem.
 *
 * @param { LocationCommand } command - Indicates the extended command message body.
 * @param { AsyncCallback<Unit> } callback - Indicates the callback for reporting the error message.
 *     If the function fails to execute, the error message will be carried in the first parameter err of
 *     AsyncCallback, If the function executes successfully, execute the callback function only, no data
 *     will be returned.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.sendCommand} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func sendCommand(command: LocationCommand, callback: AsyncCallback<Unit>): Unit

/**
 * Obtain the current country code.
 *
 * @param { AsyncCallback<CountryCode> } callback - Indicates the callback for reporting the country code.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call
 *     ${geoLocationManager.getCountryCode} due to limited device capabilities.
 * @throws { BusinessException } 3301000 - The location service is unavailable.
 * @throws { BusinessException } 3301500 - Failed to query the area information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Location.Location.Core",
    throwexception: true
]
public func getCountryCode(callback: AsyncCallback<CountryCode>): Unit
