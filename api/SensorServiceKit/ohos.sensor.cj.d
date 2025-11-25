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

package ohos.sensor

import ohos.callback_invoke.{CallbackObject, Callback1Argument}
import ohos.labels.*

/**
 * Enum for obtain the type of sensor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorId {
    | 
    /**
      * Acceleration sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCELEROMETER",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Accelerometer
    | 
    /**
      * Gyroscope sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GYROSCOPE",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Gyroscope
    | 
    /**
      * Ambient light sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AmbientLight
    | 
    /**
      * Magnetic field sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MagneticField
    | 
    /**
      * Barometric pressure sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Barometer
    | 
    /**
      * Hall effect sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Hall
    | 
    /**
      * Proximity sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Proximity
    | 
    /**
      * Humidity sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Humidity
    | 
    /**
      * Orientation sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Orientation
    | 
    /**
      * Gravity sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Gravity
    | 
    /**
      * Linear accelerometer sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCELEROMETER",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    LinearAccelerometer
    | 
    /**
      * Rotation vector sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    RotationVector
    | 
    /**
      * Ambient temperature sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AmbientTemperature
    | 
    /**
      * Uncalibrated magnetic field sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MagneticFieldUncalibrated
    | 
    /**
      * Uncalibrated gyroscope sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GYROSCOPE",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GyroscopeUncalibrated
    | 
    /**
      * Significant motion sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    SignificantMotion
    | 
    /**
      * Pedometer detection sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACTIVITY_MOTION",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    PedometerDetection
    | 
    /**
      * Pedometer sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACTIVITY_MOTION",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Pedometer
    | 
    /**
      * Heart rate sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.READ_HEALTH_DATA",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    HeartRate
    | 
    /**
      * Wear detection sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    WearDetection
    | 
    /**
      * Uncalibrated acceleration sensor.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCELEROMETER",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccelerometerUncalibrated
    | ...

    /**
     * Get the corresponding mapping value.
     * @returns { Int32 } Returns the corresponding mapping value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public func getValue(): Int32
}


extend SensorId <: ToString {
    
    /**
     * Converts the SensorId to its string representation.
     * @returns { String } A string representation of the SensorId.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public func toString(): String
}


extend SensorId <: Equatable<SensorId> {
    
    /**
     * Compares this SensorId with another for equality.
     * @param { SensorId } other - The SensorId to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public operator func ==(other: SensorId): Bool
    
    /**
     * Compares this SensorId with another for inequality.
     * @param { SensorId } other - The SensorId to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public operator func !=(other: SensorId): Bool
}

/**
 * Enumerates the accuracy levels of data reported by a sensor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorAccuracy {
    | 
    /**
      * The sensor data is unreliable. It is possible that the sensor does not contact with the device to measure.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyUnreliable
    | 
    /**
      * The sensor data is at a low accuracy level. The data must be calibrated based on the environment 
      * before being used.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyLow
    | 
    /**
      * The sensor data is at a medium accuracy level. You are advised to calibrate the data based on the
      * environment before using it.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyMedium
    | 
    /**
      * The sensor data is at a high accuracy level. The data can be used directly.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyHigh
    | ...
}


extend SensorAccuracy <: ToString {
    
    /**
     * Converts the SensorAccuracy to its string representation.
     * @returns { String } A string representation of the SensorAccuracy.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public func toString(): String
}


extend SensorAccuracy <: Equatable<SensorAccuracy> {
    
    /**
     * Compares this SensorAccuracy with another for equality.
     * @param { SensorAccuracy } other - The SensorAccuracy to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public operator func ==(other: SensorAccuracy): Bool
    
    /**
     * Compares this SensorAccuracy with another for inequality.
     * @param { SensorAccuracy } other - The SensorAccuracy to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public operator func !=(other: SensorAccuracy): Bool
}

/**
 * Enumeration of event intervals in sensor event reports.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum IntervalOption {
    /**
      * Indicate the time interval for reporting sensor events.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ] 
    SensorNumber(Int64)
    | 
    /**
      * Sensor Frequency Types: Game Mode.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GameMode
    | 
    /**
      * Sensor Frequency Types: UIMode sensor.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    UIMode
    | 
    /**
      * Sensor Frequency Types: Normal Mode.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    NormalMode
    | ...
}


extend IntervalOption <: ToString {
    
    /**
     * Converts the IntervalOption to its string representation.
     * @returns { String } A string representation of the IntervalOption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public func toString(): String
}


extend IntervalOption <: Equatable<IntervalOption> {
    
    /**
     * Compares this IntervalOption with another for equality.
     * @param { IntervalOption } other - The IntervalOption to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public operator func ==(other: IntervalOption): Bool
    
    /**
     * Compares this IntervalOption with another for inequality.
     * @param { IntervalOption } other - The IntervalOption to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public operator func !=(other: IntervalOption): Bool
}


extend IntervalOption {}


extend IntervalOption {}

/**
* Parameters of sensor on the device.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class SensorInfoParam {
    /**
    * Unique identifier for the device that contains one or multiple sensors.
    * By default, deviceId may default to querying or controlling the local default sensor.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var deviceId: Int32

    /**
    * Index of sensors of the same type. By default, it controls default sensors of the sensor type.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorIndex: Int32

    /**
    * Options constructor.
    *
    * @param { Int32 } [deviceId] - Indicates the unique identifier for the device that contains one or multiple sensors.
    * @param { Int32 } [sensorIndex] - Indicates the index of sensors of the same type. By default, it controls default sensors of the sensor type.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(deviceId!: Int32 = -1, sensorIndex!: Int32 = 0)
}

/**
* Acceleration sensor event data.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class AccelerometerResponse <: Response {
    /**
    * Acceleration x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Acceleration y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Acceleration z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}

/**
 * Subscribe to the sensor's optional parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class Options {
    /**
    * Sensor event reporting event interval.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var interval: IntervalOption

    /**
    * Parameters of sensor on the device.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorInfoParam: ?SensorInfoParam

    /**
    * Options constructor.
    *
    * @param { IntervalOption } [interval] - Indicates the sensor event reporting event interval.
    * @param { SensorInfoParam } [sensorInfoParam] - Indicates the parameters of sensor on the device.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(interval!: IntervalOption = NormalMode, sensorInfoParam!: ?SensorInfoParam = None)
}

/**
 * The basic data structure of the sensor event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public open class Response {
    /**
     * The timestamp of the reported sensor data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var timestamp: Int64

    /**
     * The accuracy levels of data reported by a sensor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var accuracy: SensorAccuracy
}

/**
 * Acceleration uncalibrated sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class AccelerometerUncalibratedResponse <: Response {
    /**
    * Acceleration uncalibrated x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Acceleration uncalibrated y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Acceleration uncalibrated z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32

    /**
    * Acceleration uncalibrated x-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasX: Float32

    /**
    * Acceleration uncalibrated y-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasY: Float32

    /**
    * Acceleration uncalibrated z-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasZ: Float32
}

/**
 * Light sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class LightResponse <: Response {
    /**
    * Indicates light intensity, in lux.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var intensity: Float32

    /**
    * Indicates color temperature, in kelvin.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var colorTemperature: ?Float32

    /**
    * Indicates infrared luminance, in cd/m2.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var infraredLuminance: ?Float32
}

/**
 * Ambient temperature sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class AmbientTemperatureResponse <: Response {
    /**
    * Indicates ambient temperature, in celsius.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var temperature: Float32
}

/**
 * Barometer sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class BarometerResponse <: Response {
    /**
    * Indicates the number of barometer, in hpa.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var pressure: Float32
}

/**
 * Gravity sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class GravityResponse <: Response {
    /**
    * Gravity x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Gravity y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Gravity z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}

/**
 * Gyroscope sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class GyroscopeResponse <: Response {
    /**
    * Gyroscope x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Gyroscope y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Gyroscope z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}

/**
 * Gyroscope uncalibrated sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class GyroscopeUncalibratedResponse <: Response {
    /**
    * Gyroscope uncalibrated x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Gyroscope uncalibrated y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Gyroscope uncalibrated z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32

    /**
    * Gyroscope uncalibrated x-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasX: Float32

    /**
    * Gyroscope uncalibrated y-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasY: Float32

    /**
    * Gyroscope uncalibrated z-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasZ: Float32
}

/**
 * Hall sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class HallResponse <: Response {
    /**
    * Indicates hall status, 0 indicates open, and greater than 0 indicates suction.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var status: Float32
}

/**
 * Heart rate sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class HeartRateResponse <: Response {
    /**
    * Indicates the number of heart rate.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var heartRate: Float32
}

/**
 * Humidity sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class HumidityResponse <: Response {
    /**
    * Indicates the number of humidity.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var humidity: Float32
}

/**
 * Linear acceleration sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class LinearAccelerometerResponse <: Response {
    /**
    * Linear acceleration x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Linear acceleration y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Linear acceleration z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}

/**
 * Magnetic field sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class MagneticFieldResponse <: Response {
    /**
    * Magnetic field x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Magnetic field y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Magnetic field z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}

/**
 * Magnetic field uncalibrated sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class MagneticFieldUncalibratedResponse <: Response {
    /**
    * Magnetic field uncalibrated x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Magnetic field uncalibrated y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Magnetic field uncalibrated z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32

    /**
    * Magnetic field uncalibrated x-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasX: Float32

    /**
    * Magnetic field uncalibrated y-axis offset.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasY: Float32

    /**
    * Magnetic field uncalibrated z-axis offset.    *
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasZ: Float32
}

/**
 * Orientation sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class OrientationResponse <: Response {
    /**
    * The device rotates at an angle around the Z axis.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var alpha: Float32

    /**
    * The device rotates at an angle around the X axis.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var beta: Float32

    /**
    * The device rotates at an angle around the Y axis.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var gamma: Float32
}

/**
 * Pedometer sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class PedometerResponse <: Response {
    /**
    * Indicates the number of steps.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var steps: Float32
}

/**
 * Pedometer detection sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class PedometerDetectionResponse <: Response {
    /**
    * Indicates the pedometer detection status, 1 indicates that a walking action has occurred,
    * and 0 indicates that no movement has occurred.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var scalar: Float32
}

/**
 * Proximity sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class ProximityResponse <: Response {
    /**
    * Indicates the degree of proximity, event 0 indicates proximity, and greater than 0 indicates distance.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var distance: Float32
}

/**
 * Rotation vector sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class RotationVectorResponse <: Response {
    /**
    * Rotation vector x-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32

    /**
    * Rotation vector y-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32

    /**
    * Rotation vector z-axis component.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32

    /**
    * Scalar quantity.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var w: Float32
}

/**
 * Significant motion sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class SignificantMotionResponse <: Response {
    /**
     * The degree of significant motion.
     * Whether the device has a significant motion.
     * The value 1 means that the device has a significant motion, and 0 means the opposite.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var scalar: Float32
}

/**
 * Wear detection sensor event data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class WearDetectionResponse <: Response {
    /**
    * Indicates the status of wear detection, 1 for wearing, 0 for wearing not.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var value: Float32
}

/**
 * Indicates sensor information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class Sensor {
    /**
     * Sensor name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorName: String

    /**
     * Sensor vendor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var vendorName: String

    /**
     * Sensor firmware version.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var firmwareVersion: String

    /**
     * Sensor hardware version.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var hardwareVersion: String

    /**
     * Sensor type ID, SensorType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorId: Int32

    /**
     * Maximum measurement range of the sensor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var maxRange: Float32

    /**
     * Minimum sample period allowed, in ns.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var minSamplePeriod: Int64

    /**
     * Maximum sample period allowed, in ns.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var maxSamplePeriod: Int64

    /**
     * Sensor accuracy.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var precision: Float32

    /**
     * Sensor power.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var power: Float32
}

/**
 * Subscribe to sensor data.
 * @param { SensorId } sensorType - Indicates the sensor type to subscribe.
 * @param { Callback1Argument<T> } callback - Indicates the callback function that returns sensor data.
 * @param { Options } [option] - Indicates the optional subscription parameters.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have permission to call
 * the API.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 * 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func on<T>(sensorType: SensorId, callback: Callback1Argument<T>, option!: ?Options = None): Unit where T <: Response

/**
 * Subscribe to sensor data once.
 * @param { SensorId } sensorType - Indicates the sensor type to subscribe.
 * @param { Callback1Argument<T> } callback - Indicates the callback function that returns sensor data.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have permission to call
 * the API.
 * @throws { BusinessException } 14500101 - Service exception.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func once<T>(sensorType: SensorId, callback: Callback1Argument<T>): Unit where T <: Response

/**
 * Unsubscribe from sensor data.
 * @param { SensorId } sensorType - Indicates the sensor type to unsubscribe from.
 * @param { CallbackObject } [callback] - Indicates the callback function to remove. If not provided, all callbacks for
 * the sensor type will be removed.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have permission to call
 * the API.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func off(sensorType: SensorId, callback!: ?CallbackObject = None): Unit

/**
 * Obtains all sensor information on the device.
 * @returns { Array<Sensor> } Returns an array containing all available sensor information.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception; 2.
 * Sensor service ipc exception; 3. Sensor data channel exception.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true,
    workerthread: true
]
public func getSensorList(): Array<Sensor>

/**
 * Obtains the sensor information of a specified type.
 * @param { SensorId } sensorType - Indicates the sensor type to query.
 * @returns { Sensor } Returns the sensor information of the specified type.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception; 2.
 * Sensor service ipc exception; 3. Sensor data channel exception.
 * @throws { BusinessException } 14500102 - The sensor is not supported by the device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true,
    workerthread: true
]
public func getSingleSensor(sensorType: SensorId): Sensor