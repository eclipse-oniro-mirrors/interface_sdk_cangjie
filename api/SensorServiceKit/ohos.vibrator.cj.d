package ohos.vibrator

import ohos.business_exception.AsyncCallback
import ohos.labels.APILevel

/**
 * Starts vibration based on a specified effect and attribute. This API uses an asynchronous callback to return the
 * result.
 *
 * @param { VibrateEffect } effect - Vibration effect. The following options are supported:<br>1. **VibratePreset**:
 *     triggers vibration according to preset vibration effects. This mode is suitable for short vibration scenarios in
 *     interactive feedback (such as tapping, long-pressing, sliding, dragging, etc.). This API is recommended to
 *     maintain consistency with the system's overall vibration feedback experience.<br>2. **VibrateFromFile**: triggers
 *     vibration according to custom vibration configuration file. This mode is suitable for interactive feedback in
 *     complex scenarios requiring precise vibration patterns (such as realistic effects triggered by emoji packs, or
 *     feedback for in-game actions/mechanics).<br>3. **VibrateTime**: triggers vibration of the specified duration,
 *     providing basic control over the start and stop of vibration. This mode does not support customization of
 *     vibration intensity, frequency, or other parameters. As a result, the vibration adjustment is relatively coarse
 *     and not suitable for delivering a refined experience.<br>4. **VibrateFromPattern**: starts vibration according to
 *     a custom vibration pattern. The usage scenario is the same as **VibrateFromFile**. **VibrateFromFile** utilizes
 *     predefined effects in a custom configuration file, passing specific vibration events to the API via file
 *     descriptors. By contrast, **VibrateFromPattern** enables more flexible vibration event combinations, delivering
 *     them to the API as a vibration event array.<br>
 * @param { VibrateAttribute } attribute - Vibration attribute.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the operation result. If the operation is
 *     successful, **err** is **undefined**; otherwise, **err** is an error object, which contains the error code and
 *     error information.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 14600101 - Device operation failed.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.VIBRATE",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func startVibration(effect: VibrateEffect, attribute: VibrateAttribute, callback: AsyncCallback<Unit>): Unit

/**
 * Stops vibration in the specified mode. This API uses an asynchronous callback to return the result.
 *
 * @param { VibratorStopMode } stopMode - Mode to stop the vibration. The options are as follows:<br>-
 *     **VibratorStopModeTime**: used to stop vibration of the specified duration.<br>- **VibratorStopModePreset**:
 *     used to stop vibration of the preset effect.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the vibration stops, **err**
 *     is **undefined**; otherwise, **err** is an error object.
 * @throws { BusinessException } 201 - Permission denied.
 */
@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.VIBRATE",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func stopVibration(stopMode: VibratorStopMode, callback: AsyncCallback<Unit>): Unit

/**
 * Checks whether an effect ID is supported. This API uses an asynchronous callback to return the result.
 *
 * @param { String } effectId - Effect ID. The value is a string of a maximum of 64 characters. If the length exceeds 64
 *     characters, the first 64 characters are used.
 * @param { AsyncCallback<Bool> } callback - Callback used to return the result. The value **true** means that the
 *     effect ID is supported, and the value **false** means the opposite.
 * @throws { BusinessException } 201 - Permission denied.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func isSupportEffect(effectId: String, callback: AsyncCallback<Bool>): Unit

/**
 * Checks whether HD vibration is supported.
 *
 * @returns { Bool } Boolean value indicating whether HD vibration is supported. The value **true** indicates that HD
 *     vibration is supported, and the value **false** indicates the opposite.
 * @throws { BusinessException } 14600101 - Device operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func isHdHapticSupported(): Bool

/**
 * Enumerates the preset vibration effect IDs. This parameter is needed when you call **startVibration** or
 * **stopVibration** to deliver the vibration effect specified by **VibratePreset**. This parameter supports a variety
 * of values, such as **haptic.clock.timer**.
 *
 * **NOTE**
 *
 * Preset effects vary according to devices. You are advised to call **isSupportEffect** to check whether the device
 * supports the preset effect before use.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public enum EffectId {
    /**
     * Vibration effect when a user adjusts the timer.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    EffectClockTimer
    | ...
}

extend EffectId <: ToString {
    /**
     * Converts the EffectId to its string representation.
     * @returns { String } A string representation of the EffectId.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public func toString(): String
}

extend EffectId <: Equatable<EffectId> {
    /**
     * Compares this EffectId with another for equality.
     * @param { EffectId } other - The EffectId to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func ==(other: EffectId): Bool

    /**
     * Compares this EffectId with another for inequality.
     * @param { EffectId } other - The EffectId to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func !=(other: EffectId): Bool
}

/**
 * Enumerates vibration stop modes. This parameter is required for **stopVibration**. The stop mode must match that
 * delivered in **VibrateEffect**.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public enum VibratorStopMode {
    /**
     * The vibration to stop is in **duration** mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibratorStopModeTime
    |
    /**
     * The vibration to stop is in **EffectId** mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibratorStopModePreset
    | ...
}

extend VibratorStopMode <: ToString {
    /**
     * Converts the VibratorStopMode to its string representation.
     * @returns { String } A string representation of the VibratorStopMode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public func toString(): String
}

extend VibratorStopMode <: Equatable<VibratorStopMode> {
    /**
     * Compares this VibratorStopMode with another for equality.
     * @param { VibratorStopMode } other - The VibratorStopMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func ==(other: VibratorStopMode): Bool

    /**
     * Compares this VibratorStopMode with another for inequality.
     * @param { VibratorStopMode } other - The VibratorStopMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func !=(other: VibratorStopMode): Bool
}

/**
 * Enumerates the vibration scenarios. The options include **unknown**, **alarm**, **ring**, **notification**,
 * **communication**, **touch**, **media**, **physicalFeedback**, and **simulateReality**.
 */
public type Usage = String

/**
 * Describes the vibration attribute.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibrateAttribute {
    /**
     * Vibrator ID. The default value is **0**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop id: ?Int32

    /**
     * Vibration scenario. The default value is **unknown**. The value must be an enum defined in **Usage**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop usage: Usage

    /**
     * A constructor used to create a VibrateAttribute.
     *
     * @param { Usage } usage - Vibration scenario. The default value is **unknown**. The value must be an enum defined
     *     in **Usage**.
     * @param { ?Int32 } [id] - Vibrator ID. The default value is **0**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public init(
        usage: Usage,
        id!: ?Int32 = None
    )
}

/**
 * Enumerates vibration effects of the vibrator. You can specify the vibration effect when calling **startVibration**.
 * The value can be **VibrateTimeType(VibrateTime)**, **VibratePresetType(VibratePreset)**,
 * **VibrateFromFileType(VibrateFromFile)**, or **VibrateFromPatternType(VibrateFromPattern)**.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public enum VibrateEffect {
    /**
     * Vibration of the specified duration.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibrateTimeType(VibrateTime)
    |
    /**
     * Preset vibration effect.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibratePresetType(VibratePreset)
    |
    /**
     * Custom vibration pattern triggered based on a vibration configuration file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibrateFromFileType(VibrateFromFile)
    | ...
}

/**
 * Represents vibration of the specified duration.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibrateTime {
    /**
     * The value is **time**, indicating vibration of the specified duration.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectType: String

    /**
     * Vibration duration, in ms. The value range is (0,1800000]. The maximum vibration duration varies with devices
     * due to different component protection design specifications of drivers provided by different vendors. It is
     * recommended that a single vibration duration be less than or equal to 10s to maximize user experience.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop duration: Int32

    /**
     * A constructor used to create a VibrateTime.
     *
     * @param { String } effectType - The value is **time**, indicating vibration of the specified duration.
     * @param { Int32 } duration - Vibration duration, in ms. The value range is (0,1800000].
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public init(
        effectType: String,
        duration: Int32
    )
}

/**
 * Represents the preset vibration effect. You can pass **VibratePreset** to **VibrateEffect** to specify a preset
 * vibration effect when calling **startVibration**.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibratePreset {
    /**
     * The value **preset** means that vibration is triggered based on the specified effect.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectType: String

    /**
     * Effect ID. The value is a string of a maximum of 64 characters. If the length exceeds 64 characters, the first 64
     * characters are used.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectId: String

    /**
     * Number of repeated vibrations. This parameter is optional. The default value is **1**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop count: ?Int32

    /**
     * Vibration intensity. This parameter is optional. The value range is [0, 100]. The default value is **100**. If
     * vibration intensity adjustment is not supported, the default vibration intensity will be used.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop intensity: ?Int32

    /**
     * A constructor used to create a VibratePreset.
     *
     * @param { String } effectType - The value **preset** means that vibration is triggered based on the specified effect.
     * @param { String } effectId - Effect ID. The value is a string of a maximum of 64 characters.
     * @param { ?Int32 } [count] - Number of repeated vibrations. This parameter is optional. The default value is **1**.
     * @param { ?Int32 } [intensity] - Vibration intensity. This parameter is optional. The value range is [0, 100]. The
     *     default value is **100**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public init(
        effectType: String,
        effectId: String,
        count!: ?Int32 = None,
        intensity!: ?Int32 = None
    )
}

/**
 * Represents a custom vibration pattern. It is supported only by certain devices. An error code will be returned if a
 * device does not support this vibration mode. You can pass **VibrateFromFile** to **VibrateEffect** to specify a
 * custom vibration pattern when calling **startVibration**.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibrateFromFile {
    /**
     * The value **file** means vibration according to a vibration configuration file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectType: String

    /**
     * File descriptor (FD) of the vibration configuration file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop hapticFd: HapticFileDescriptor

    /**
     * A constructor used to create a VibrateFromFile.
     *
     * @param { String } effectType - The value **file** means vibration according to a vibration configuration file.
     * @param { HapticFileDescriptor } hapticFd - File descriptor (FD) of the vibration configuration file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public init(
        effectType: String,
        hapticFd: HapticFileDescriptor
    )
}

/**
 * Describes the FD of a custom vibration configuration file. Ensure that the file is available, and the parameters in
 * it can be obtained from the sandbox path through the **fileIo.open** API or from the HAP resource through the
 * **getRawFd** API. The application scenario is as follows: The vibration sequence is stored in a file and vibration
 * needs to be triggered based on the offset and length.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class HapticFileDescriptor {
    /**
     * FD of the custom vibration configuration file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop fd: Int32

    /**
     * Offset from the start position of the file, in bytes. The default value is the start position of the file, and
     * the value cannot exceed the valid range of the file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop offSet: ?Int64

    /**
     * Resource length, in bytes. The default value is the length from the offset position to the end of the file, and
     * the value cannot exceed the valid range of the file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop length: ?Int64

    /**
     * A constructor used to create a HapticFileDescriptor.
     *
     * @param { Int32 } fd - FD of the custom vibration configuration file.
     * @param { ?Int64 } offSet - Offset from the start position of the file, in bytes. The default value is the start
     *     position of the file.
     * @param { ?Int64 } length - Resource length, in bytes. The default value is the length from the offset position
     *     to the end of the file.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public init(
        fd: Int32,
        offSet!: ?Int64 = None,
        length!: ?Int64 = None
    )
}
