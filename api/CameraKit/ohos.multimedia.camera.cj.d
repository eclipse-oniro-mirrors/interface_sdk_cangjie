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

package ohos.multimedia.camera

import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.business_exception.*
import ohos.callback_invoke.*
import ohos.graphics.color_space_manager.ColorSpace
import ohos.labels.*
import ohos.labels.APILevel

/**
 * Creates a CameraManager instance.
 *
 * @param { UIAbilityContext } context - Current application context.
 * @returns { CameraManager } CameraManager instance.
 * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
 * @throws { BusinessException } 7400201 - Camera service fatal error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core",
    throwexception: true
]
public func getCameraManager(context: UIAbilityContext): CameraManager

/**
 * Point coordinates are used for focus and exposure configuration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Point {
    /**
     * x co-ordinate
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var x: Float64

    /**
     * y co-ordinate
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var y: Float64

    /**
     * Point constructor.
     *
     * @param { Float64 } x - x co-ordinate.
     * @param { Float64 } y - y co-ordinate.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(x: Float64, y: Float64)
}

/**
 * Enum for exposure mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ExposureMode {
    
    /**
     * Lock exposure mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ExposureModeLocked
    | 
    
    /**
     * Auto exposure mode. Exposure area center point can be set by AutoExposure.setMeteringPoint interface.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ExposureModeAuto
    | 
    
    /**
     * Continuous automatic exposure.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ExposureModeContinuousAuto
    | ...
}


extend ExposureMode <: ToString {

    /**
     * Converts the ExposureMode to its string representation.
     * @returns { String } A string representation of the ExposureMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend ExposureMode <: Equatable<ExposureMode> {
    
    /**
     * Compares this ExposureMode with another for equality.
     * @param { ExposureMode } other - The ExposureMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: ExposureMode): Bool
    
    /**
     * Compares this ExposureMode with another for inequality.
     * @param { ExposureMode } other - The ExposureMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: ExposureMode): Bool
}

/**
 * AutoExposureQuery object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface AutoExposureQuery {
    /**
     * Checks whether a specified exposure mode is supported.
     *
     * @param { ExposureMode } aeMode - Exposure mode
     * @returns { Bool } Is the exposure mode supported.
     * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func isExposureModeSupported(aeMode: ExposureMode): Bool

    /**
     * Query the exposure compensation range.
     *
     * @returns { Array<Float64> } The array of compensation range.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getExposureBiasRange(): Array<Float64>
}

/**
 * AutoExposure object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface AutoExposure <: AutoExposureQuery {
    /**
     * Gets current exposure mode.
     *
     * @returns { ExposureMode } The current exposure mode.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getExposureMode(): ExposureMode

    /**
     * Sets Exposure mode.
     *
     * @param { ExposureMode } aeMode - Exposure mode
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setExposureMode(aeMode: ExposureMode): Unit

    /**
     * Gets current metering point.
     *
     * @returns { Point } The current metering point.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getMeteringPoint(): Point

    /**
     * Set the center point of the metering area.
     *
     * @param { Point } point - metering point
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setMeteringPoint(point: Point): Unit

    /**
     * Set exposure compensation.
     *
     * @param { Float64 } exposureBias - Exposure compensation
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setExposureBias(exposureBias: Float64): Unit

    /**
     * Query the exposure value.
     *
     * @returns { Float64 } The exposure value.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getExposureValue(): Float64
}

/**
 * Color Management Query object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface ColorManagementQuery {
    /**
     * Gets the supported color space types.
     *
     * @returns { Array<ColorSpace> } The array of the supported color space for the session.
     * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getSupportedColorSpaces(): Array<ColorSpace>
}

/**
 * Color Management object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface ColorManagement <: ColorManagementQuery {
    /**
     * Sets a color space for the session.
     *
     * @param { ColorSpace } colorSpace - The type of color space.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400102 - The colorSpace does not match the format.
     * @throws { BusinessException } 7400103 - Session not config.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setColorSpace(colorSpace: ColorSpace): Unit

    /**
     * Gets the specific color space type.
     *
     * @returns { ColorSpace } Current color space.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getActiveColorSpace(): ColorSpace
}

/**
 * Enum for flash mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FlashMode {
    
    /**
     * Close mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeClose
    | 
    
    /**
     * Open mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeOpen
    | 
    
    /**
     * Auto mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeAuto
    | 
    
    /**
     * Always open mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeAlwaysOpen
    | ...
}


extend FlashMode <: ToString {
    
    /**
     * Converts the FlashMode to its string representation.
     * @returns { String } A string representation of the FlashMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend FlashMode <: Equatable<FlashMode> {
    
    /**
     * Compares this FlashMode with another for equality.
     * @param { FlashMode } other - The FlashMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: FlashMode): Bool
    
    /**
     * Compares this FlashMode with another for inequality.
     * @param { FlashMode } other - The FlashMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: FlashMode): Bool
}

/**
 * Flash Query object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface FlashQuery {
    /**
     * Check if device has flash light.
     *
     * @returns { Bool } The flash light support status.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func hasFlash(): Bool

    /**
     * Checks whether a specified flash mode is supported.
     *
     * @param { FlashMode } flashMode - Flash mode
     * @returns { Bool } Is the flash mode supported.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func isFlashModeSupported(flashMode: FlashMode): Bool
}

/**
 * Flash object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Flash <: FlashQuery {
    /**
     * Sets flash mode.
     *
     * @param { FlashMode } flashMode - Target flash mode.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setFlashMode(flashMode: FlashMode): Unit

    /**
     * Gets current flash mode.
     *
     * @returns { FlashMode } The current flash mode.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getFlashMode(): FlashMode
}

/**
 * Enum for focus state.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FocusState {
    
    /**
     * Scan state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateScan
    | 
    
    /**
     * Focused state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateFocused
    | 
    
    /**
     * Unfocused state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateUnfocused
    | ...
}


extend FocusState <: ToString {
    
    /**
     * Converts the FocusState to its string representation.
     * @returns { String } A string representation of the FocusState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend FocusState <: Equatable<FocusState> {
    
    /**
     * Compares this FocusState with another for equality.
     * @param { FocusState } other - The FocusState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: FocusState): Bool
    
    /**
     * Compares this FocusState with another for inequality.
     * @param { FocusState } other - The FocusState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: FocusState): Bool
}

/**
 * Enum for focus mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FocusMode {
    
    /**
     * Manual mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeManual
    | 
    
    /**
     * Continuous auto mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeContinuousAuto
    | 
    
    /**
     * Auto mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeAuto
    | 
    
    /**
     * Locked mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeLocked
    | ...
}


extend FocusMode <: ToString {
    
    /**
     * Converts the FocusMode to its string representation.
     * @returns { String } A string representation of the FocusMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend FocusMode <: Equatable<FocusMode> {
    
    /**
     * Compares this FocusMode with another for equality.
     * @param { FocusMode } other - The FocusMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: FocusMode): Bool
    
    /**
     * Compares this FocusMode with another for inequality.
     * @param { FocusMode } other - The FocusMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: FocusMode): Bool
}

/**
 * Focus Query object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface FocusQuery {
    /**
     * Checks whether a specified focus mode is supported.
     *
     * @param { FocusMode } afMode - Focus mode.
     * @returns { Bool } Is the focus mode supported.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func isFocusModeSupported(afMode: FocusMode): Bool
}

/**
 * Focus object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Focus <: FocusQuery {
    /**
     * Sets focus mode.
     *
     * @param { FocusMode } afMode - Target focus mode.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setFocusMode(afMode: FocusMode): Unit

    /**
     * Gets current focus mode.
     *
     * @returns { FocusMode } The current focus mode.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getFocusMode(): FocusMode

    /**
     * Sets focus point.
     *
     * @param { Point } point - Target focus point.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setFocusPoint(point: Point): Unit

    /**
     * Gets current focus point.
     *
     * @returns { Point } Used to get the current focus. Failure of the interface call will return the
     * corresponding error code, which is of type CameraErrorCode.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getFocusPoint(): Point

    /**
     * Gets current focal length.
     *
     * @returns { Float64 } The current focal point.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getFocalLength(): Float64
}

/**
 * Enum for video stabilization mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum VideoStabilizationMode {
    
    /**
     * Turn off video stablization.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Off
    | 
    
    /**
     * LOW mode provides basic stabilization effect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Low
    | 
    
    /**
     * MIDDLE mode means algorithms can achieve better effects than LOW mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Middle
    | 
    
    /**
     * HIGH mode means algorithms can achieve better effects than MIDDLE mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    High
    | 
    
    /**
     * The stabilization algorithm is selected automatically. Selection of the stabilization algorithm is performed automatically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Auto
    | ...
}


extend VideoStabilizationMode <: ToString {
    
    /**
     * Converts the VideoStabilizationMode to its string representation.
     * @returns { String } A string representation of the VideoStabilizationMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend VideoStabilizationMode <: Equatable<VideoStabilizationMode> {
    
    /**
     * Compares this VideoStabilizationMode with another for equality.
     * @param { VideoStabilizationMode } other - The VideoStabilizationMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: VideoStabilizationMode): Bool
    
    /**
     * Compares this VideoStabilizationMode with another for inequality.
     * @param { FVideoStabilizationModeocusMode } other - The VideoStabilizationMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: VideoStabilizationMode): Bool
}

/**
 * Stabilization Query object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface StabilizationQuery {
    /**
     * Check whether the specified video stabilization mode is supported.
     *
     * @param { VideoStabilizationMode } vsMode - Video Stabilization mode.
     * @returns { Bool } Is video stabilization mode supported.
     * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func isVideoStabilizationModeSupported(vsMode: VideoStabilizationMode): Bool
}

/**
 * Stabilization object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Stabilization <: StabilizationQuery {
    /**
     * Query the video stabilization mode currently in use.
     *
     * @returns { VideoStabilizationMode } The current video stabilization mode.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getActiveVideoStabilizationMode(): VideoStabilizationMode

    /**
     * Set video stabilization mode.
     *
     * @param { VideoStabilizationMode } mode - video stabilization mode to set.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setVideoStabilizationMode(mode: VideoStabilizationMode): Unit
}

/**
 * SmoothZoomInfo object
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class SmoothZoomInfo {
    /**
     * The duration of smooth zoom.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var duration: Int32
}

/**
 * Enum for smooth zoom mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum SmoothZoomMode {
    /**
     * Normal zoom mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Normal | ...
}


extend SmoothZoomMode <: ToString {
    
    /**
     * Converts the SmoothZoomMode to its string representation.
     * @returns { String } A string representation of the SmoothZoomMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend SmoothZoomMode <: Equatable<SmoothZoomMode> {
    
    /**
     * Compares this SmoothZoomMode with another for equality.
     * @param { SmoothZoomMode } other - The SmoothZoomMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: SmoothZoomMode): Bool
    
    /**
     * Compares this SmoothZoomMode with another for inequality.
     * @param { SmoothZoomMode } other - The SmoothZoomMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: SmoothZoomMode): Bool
}

/**
 * Zoom query object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface ZoomQuery {
    /**
     * Gets all supported zoom ratio range.
     *
     * @returns { Array<Float64> } The zoom ratio range.
     * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getZoomRatioRange(): Array<Float64>
}

/**
 * Zoom object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Zoom <: ZoomQuery {
    /**
     * Sets zoom ratio.
     *
     * @param { Float64 } zoomRatio - Target zoom ratio.
     * @throws { BusinessException } 7400103 - Session not config.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func setZoomRatio(zoomRatio: Float64): Unit

    /**
     * Gets zoom ratio.
     *
     * @returns { Float64 } The zoom ratio value.
     * @throws { BusinessException } 7400103 - Session not config.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func getZoomRatio(): Float64

    /**
     * Sets target zoom ratio by smooth method.
     *
     * @param { Float64 } targetRatio - Target zoom ratio.
     * @param { SmoothZoomMode } mode - Smooth zoom mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setSmoothZoom(targetRatio: Float64, mode: SmoothZoomMode): Unit

    /**
     * Sets target zoom ratio by smooth method.
     *
     * @param { Float64 } targetRatio - Target zoom ratio.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setSmoothZoom(targetRatio: Float64): Unit
}

/**
 * Rectangle definition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Rect {
    /**
     * X coordinator of top left point.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var topLeftX: Float64

    /**
     * Y coordinator of top left point.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var topLeftY: Float64

    /**
     * Width of this rectangle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var width: Float64

    /**
     * Height of this rectangle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var height: Float64
}

/**
 * Enum for torch mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum TorchMode {
    
    /**
     * The device torch is always off.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Off
    | 
    
    /**
     * The device torch is always on.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    On
    | 
    
    /**
     * The device continuously monitors light levels and uses the torch when necessary.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Auto
    | ...
}


extend TorchMode <: ToString {
    
    /**
     * Converts the TorchMode to its string representation.
     * @returns { String } A string representation of the TorchMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend TorchMode <: Equatable<TorchMode> {
    
    /**
     * Compares this TorchMode with another for equality.
     * @param { TorchMode } other - The TorchMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: TorchMode): Bool
    
    /**
     * Compares this TorchMode with another for inequality.
     * @param { TorchMode } other - The TorchMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: TorchMode): Bool
}

/**
 * Enumerates the image rotation angles.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ImageRotation {
    
    /**
     * The capture image rotates 0 degrees.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation0
    | 
    
    /**
     * The capture image rotates 90 degrees.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation90
    | 
    
    /**
     * The capture image rotates 180 degrees.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation180
    | 
    
    /**
     * The capture image rotates 270 degrees.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation270
    | ...
}


extend ImageRotation <: ToString {
    
    /**
     * Converts the ImageRotation to its string representation.
     * @returns { String } A string representation of the ImageRotation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend ImageRotation <: Equatable<ImageRotation> {
    
    /**
     * Compares this ImageRotation with another for equality.
     * @param { ImageRotation } other - The ImageRotation to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: ImageRotation): Bool
    
    /**
     * Compares this ImageRotation with another for inequality.
     * @param { ImageRotation } other - The ImageRotation to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: ImageRotation): Bool
}

/**
 * Enum for camera status.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraStatus {
    
    /**
     * Appear status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusAppear
    | 
    
    /**
     * Disappear status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusDisappear
    | 
    
    /**
     * Available status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusAvailable
    | 
    
    /**
     * Unavailable status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusUnavailable
    | ...
}


extend CameraStatus <: ToString {
    
    /**
     * Converts the CameraStatus to its string representation.
     * @returns { String } A string representation of the CameraStatus.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend CameraStatus <: Equatable<CameraStatus> {
    
    /**
     * Compares this CameraStatus with another for equality.
     * @param { CameraStatus } other - The CameraStatus to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: CameraStatus): Bool
    
    /**
     * Compares this CameraStatus with another for inequality.
     * @param { CameraStatus } other - The CameraStatus to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: CameraStatus): Bool
}

/**
 * Torch status info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class TorchStatusInfo {
    /**
     * is torch available
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let isTorchAvailable: Bool

    /**
     * Whether the flashlight is activated or not. True means the flashlight is activated, false means the flashlight
     * is not activated.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let isTorchActive: Bool

    /**
     * Flashlight brightness level, value range is [0,1], the closer to 1, the brighter it is.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let torchLevel: Float64
}

/**
 * Frame rate range.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FrameRateRange {
    /**
     * Min frame rate.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let min: Int32

    /**
     * Max frame rate.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let max: Int32
}

/**
 * Size parameter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Size {
    /**
     * Width.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var width: UInt32

    /**
     * Height.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var height: UInt32
}

/**
 * Profile for camera streams.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public open class Profile {
    /**
     * Camera format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let format: CameraFormat

    /**
     * Resolution. The settings are the width and height of the camera's resolution, not the width and height of the actual output image.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let size: Size
}

/**
 * Video profile.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoProfile <: Profile {
    /**
     * Frame rate in unit fps (frames per second).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let frameRateRange: FrameRateRange
}

/**
 * Metadata object type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum MetadataObjectType {
    /**
     * Face detection type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FaceDetection | ...
}


extend MetadataObjectType <: ToString {
    
    /**
     * Converts the MetadataObjectType to its string representation.
     * @returns { String } A string representation of the MetadataObjectType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend MetadataObjectType <: Equatable<MetadataObjectType> {
    
    /**
     * Compares this MetadataObjectType with another for equality.
     * @param { MetadataObjectType } other - The MetadataObjectType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: MetadataObjectType): Bool
    
    /**
     * Compares this MetadataObjectType with another for inequality.
     * @param { MetadataObjectType } other - The MetadataObjectType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: MetadataObjectType): Bool
}

/**
 * Camera output capability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraOutputCapability {
    /**
     * Preview profiles.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let previewProfiles: Array<Profile>

    /**
     * Photo profiles.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let photoProfiles: Array<Profile>

    /**
     * Video profiles.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let videoProfiles: Array<VideoProfile>

    /**
     * All the supported metadata Object Types.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let supportedMetadataObjectTypes: Array<MetadataObjectType>
}

/**
 * Enum for fold status.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FoldStatus {
    
    /**
     * Non-foldable status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NonFoldable
    | 
    
    /**
     * Expanded status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Expanded
    | 
    
    /**
     * Folded status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Folded
    | ...
}


extend FoldStatus <: ToString {
    
    /**
     * Converts the FoldStatus to its string representation.
     * @returns { String } A string representation of the FoldStatus.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend FoldStatus <: Equatable<FoldStatus> {
    
    /**
     * Compares this FoldStatus with another for equality.
     * @param { FoldStatus } other - The FoldStatus to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: FoldStatus): Bool
    
    /**
     * Compares this FoldStatus with another for inequality.
     * @param { FoldStatus } other - The FoldStatus to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: FoldStatus): Bool
}

/**
 * Fold status info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FoldStatusInfo {
    /**
     * Gets supported camera devices under the current fold status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let supportedCameras: Array<CameraDevice>

    /**
     * Current fold status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let foldStatus: FoldStatus
}

/**
 * Enum for camera connection type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ConnectionType {
    
    /**
     * Built-in camera.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraConnectionBuiltIn
    | 
    
    /**
     * Camera connected using USB
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraConnectionUsbPlugin
    | 
    
    /**
     * Remote camera
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraConnectionRemote
    | ...
}


extend ConnectionType <: ToString {
    
    /**
     * Converts the ConnectionType to its string representation.
     * @returns { String } A string representation of the ConnectionType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend ConnectionType <: Equatable<ConnectionType> {
    
    /**
     * Compares this ConnectionType with another for equality.
     * @param { ConnectionType } other - The ConnectionType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: ConnectionType): Bool
    
    /**
     * Compares this ConnectionType with another for inequality.
     * @param { ConnectionType } other - The ConnectionType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: ConnectionType): Bool
}

/**
 * Enum for camera format type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraFormat { 
    /**
     * RGBA 8888 Format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatRgba8888
    | 
    
    /**
     * YUV 420 Format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatYuv420Sp
    | 
    
    /**
     * JPEG Format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatJpeg
    |
    
    /**
     * YCBCR P010 Format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatYcbcrP010
    | 
    
    /**
     * YCRCB P010 Format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatYcrcbP010
    | 
    
    /**
     * HEIC Format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatHeic
    | ...
}


extend CameraFormat <: ToString {
    
    /**
     * Converts the CameraFormat to its string representation.
     * @returns { String } A string representation of the CameraFormat.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend CameraFormat <: Equatable<CameraFormat> {
    
    /**
     * Compares this CameraFormat with another for equality.
     * @param { CameraFormat } other - The CameraFormat to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: CameraFormat): Bool
    
    /**
     * Compares this CameraFormat with another for inequality.
     * @param { CameraFormat } other - The CameraFormat to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: CameraFormat): Bool
}

/**
 * Camera device object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraDevice {
    /**
     * Camera ID attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraId: String

    /**
     * Camera position attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraPosition: CameraPosition

    /**
     * Camera type attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraType: CameraType

    /**
     * Camera connection type attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let connectionType: ConnectionType

    /**
     * The camera mounting angle, which does not change with screen rotation, takes values from 0° to 360° in degrees.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraOrientation: UInt32
}

/**
 * An instance of the interface returned by the camera manager's callback that represents camera state information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraStatusInfo {
    /**
     * Camera instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var camera: CameraDevice

    /**
     * Current camera status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var status: CameraStatus
}

/**
 * camera event type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraEvents {
    
    /**
     * CameraError enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraError
    | 
    
    /**
     * CameraStatus enum value
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatus
    | 
    
    /**
     * FoldStatusChange enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FoldStatusChange
    | 
    
    /**
     * TorchStatusChange enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    TorchStatusChange
    | 
    
    /**
     * FrameStart enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameStart
    | 
    
    /**
     * FrameEnd enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameEnd
    | 
    
    /**
     * CaptureStartWithInfo enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureStartWithInfo
    | 
    
    /**
     * FrameShutter enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameShutter
    | 
    
    /**
     * CaptureEnd enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureEnd
    | 
    
    /**
     * FrameShutterEnd enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameShutterEnd
    | 
    
    /**
     * CaptureReady enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureReady
    | 
    
    /**
     * EstimatedCaptureDuration enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    EstimatedCaptureDuration
    | 
    
    /**
     * MetadataObjectsAvailable enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    MetadataObjectsAvailable
    | 
    
    /**
     * FocusStateChange enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateChange
    | 
    
    /**
     * SmoothZoomInfoAvailable enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SmoothZoomInfoAvailable
    | ...
}


extend CameraEvents <: Equatable<CameraEvents> {
    
    /**
     * Compares this CameraEvents with another for equality.
     * @param { CameraEvents } other - The CameraEvents to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: CameraEvents): Bool
    
    /**
     * Compares this CameraEvents with another for inequality.
     * @param { CameraEvents } other - The CameraEvents to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: CameraEvents): Bool
}

/**
 * Enum for camera position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraPosition {
    
    /**
     * Unspecified position.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraPositionUnspecified
    | 
    
    /**
     * Back position.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraPositionBack
    | 

    /**
     * Front position.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraPositionFront
    | ...
}


extend CameraPosition <: ToString {
    
    /**
     * Converts the CameraPosition to its string representation.
     * @returns { String } A string representation of the CameraPosition.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend CameraPosition <: Equatable<CameraPosition> {
    
    /**
     * Compares this CameraPosition with another for equality.
     * @param { CameraPosition } other - The CameraPosition to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: CameraPosition): Bool
    
    /**
     * Compares this CameraPosition with another for inequality.
     * @param { CameraPosition } other - The CameraPosition to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: CameraPosition): Bool
}

/**
 * Enum for camera type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraType {
    
    /**
     * Default camera type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeDefault
    | 
    
    /**
     * Wide camera
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeWideAngle
    | 
    
    /**
     * Ultra wide camera
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeUltraWide
    | 
    
    /**
     * Telephoto camera
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeTelephoto
    | 
    
    /**
     * True depth camera
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeTrueDepth
    | ...
}


extend CameraType <: ToString {
    
    /**
     * Converts the CameraType to its string representation.
     * @returns { String } A string representation of the CameraType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend CameraType <: Equatable<CameraType> {
    
    /**
     * Compares this CameraType with another for equality.
     * @param { CameraType } other - The CameraType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: CameraType): Bool
    
    /**
     * Compares this CameraType with another for inequality.
     * @param { CameraType } other - The CameraType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: CameraType): Bool
}

/**
 * Enumerates the camera scene modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum SceneMode {
    
    /**
     * Normal photo mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NormalPhoto
    | 
    
    /**
     * Normal video mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NormalVideo
    | 
    
    /**
     * Secure camera mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SecurePhoto
    | ...
}


extend SceneMode <: ToString {
    
    /**
     * Converts the SceneMode to its string representation.
     * @returns { String } A string representation of the SceneMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend SceneMode <: Equatable<SceneMode> {
    
    /**
     * Compares this SceneMode with another for equality.
     * @param { SceneMode } other - The SceneMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: SceneMode): Bool
    
    /**
     * Compares this SceneMode with another for inequality.
     * @param { SceneMode } other - The SceneMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: SceneMode): Bool
}

/**
 * Enumerates the image quality levels.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum QualityLevel {
    
    /**
     * High image quality.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QualityLevelHigh
    | 
    
    /**
     * Medium image quality.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QualityLevelMedium
    | 
    
    /**
     * Low image quality.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QualityLevelLow
    | ...
}


extend QualityLevel <: ToString {
    
    /**
     * Converts the QualityLevel to its string representation.
     * @returns { String } A string representation of the QualityLevel.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend QualityLevel <: Equatable<QualityLevel> {
    
    /**
     * Compares this QualityLevel with another for equality.
     * @param { QualityLevel } other - The QualityLevel to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: QualityLevel): Bool
    
    /**
     * Compares this QualityLevel with another for inequality.
     * @param  { QualityLevel } other - The QualityLevel to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: QualityLevel): Bool
}

/**
 * Photo capture location
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Location {
    /**
     * Latitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var latitude: Float64

    /**
     * Longitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var longitude: Float64

    /**
     * Altitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var altitude: Float64

    /**
     * Location constructor.
     *
     * @param { Float64 } latitude - Latitude.
     * @param { Float64 } longitude - Longitude.
     * @param { Float64 } altitude - Altitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(latitude: Float64, longitude: Float64, altitude: Float64)
}

/**
 * Photo capture options to set.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PhotoCaptureSetting {
    /**
     * Photo image quality.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var quality: QualityLevel

    /**
     * Photo rotation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var rotation: ImageRotation

    /**
     * Photo location.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var location: ?Location

    /**
     * Mirror enable switch (default off).
     * It is necessary to utilize the function isMirrorSupported to ascertain whether it is supported
     * prior to its implementation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var mirror: Bool

    /**
     * PhotoCaptureSetting constructor.
     *
     * @param { QualityLevel } quality - Photo image quality.
     * @param { ImageRotation } rotation - Photo rotation.
     * @param { ?Location } location - Photo location.
     * @param { Bool } mirror - Mirror enable switch (default off).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(
        quality!: QualityLevel = QualityLevel.QualityLevelLow,
        rotation!: ImageRotation = ImageRotation.Rotation0,
        location!: ?Location = None,
        mirror!: Bool = false
    )
}

/**
 * Enumerates the camera video codec type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum VideoCodecType {
    
    /**
     * Video encoding type AVC.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Avc
    | 
    
    /**
     * Video encoding type HEVC.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Hevc
    | ...
}


extend VideoCodecType <: ToString {
    
    /**
     * Converts the VideoCodecType to its string representation.
     * @returns { String } A string representation of the VideoCodecType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend VideoCodecType <: Equatable<VideoCodecType> {
    
    /**
     * Compares this VideoCodecType with another for equality.
     * @param { VideoCodecType } other - The VideoCodecType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: VideoCodecType): Bool
    
    /**
     * Compares this VideoCodecType with another for inequality.
     * @param { VideoCodecType } other - The VideoCodecType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: VideoCodecType): Bool
}

/**
 * Capture start info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CaptureStartInfo {
    /**
     * Capture id.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32

    /**
     * Time(in milliseconds) is the shutter time for the photo.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var time: Int64
}

/**
 * Frame shutter callback info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FrameShutterInfo {
    /**
     * Capture id.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32

    /**
     * Timestamp for frame.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var timestamp: Int64
}

/**
 * Capture end info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CaptureEndInfo {
    /**
     * Capture id.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32

    /**
     * Frame count.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var frameCount: Int32
}

/**
 * Frame shutter end callback info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FrameShutterEndInfo {
    /**
     * Capture id.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
}

/**
 * Types of preconfig, which used to configure session conveniently.
 * Preconfig type contains common use cases of camera output.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum PreconfigType {
    
    /**
     * 720P output for preconfig.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Preconfig720p
    | 
    
    /**
     * 1080P output for preconfig.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Preconfig1080p
    | 
    
    /**
     * 4K output for preconfig.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Preconfig4k
    | 
    
    /**
     * high quality output for preconfig.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigHighQuality
    | ...
}


extend PreconfigType <: ToString {
    
    /**
     * Converts the PreconfigType to its string representation.
     * @returns { String } A string representation of the PreconfigType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend PreconfigType <: Equatable<PreconfigType> {
    
    /**
     * Compares this PreconfigType with another for equality.
     * @param { PreconfigType } other - The PreconfigType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: PreconfigType): Bool
    
    /**
     * Compares this PreconfigType with another for inequality.
     * @param { PreconfigType } other - The PreconfigType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: PreconfigType): Bool
}

/**
 * The aspect ratios of preconfig, which used to configure session conveniently.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum PreconfigRatio {
    
    /**
     * Aspect ratio 1:1 for preconfig.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigRatio_1_1
    | 
    
    /**
     * Aspect ratio 4:3 for preconfig.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigRatio_4_3
    | 
    
    /**
     * Aspect ratio 16:9 for preconfig.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigRatio_16_9
    | ...
}


extend PreconfigRatio <: ToString {
    
    /**
     * Converts the PreconfigRatio to its string representation.
     * @returns { String } A string representation of the PreconfigRatio.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}


extend PreconfigRatio <: Equatable<PreconfigRatio> {
    
    /**
     * Compares this PreconfigRatio with another for equality.
     * @param { PreconfigRatio } other - The PreconfigRatio to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: PreconfigRatio): Bool
    
    /**
     * Compares this PreconfigRatio with another for inequality.
     * @param { PreconfigRatio } other - The PreconfigRatio to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: PreconfigRatio): Bool
}

/**
 * Camera input object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraInput {
    /**
     * Open camera.
     *
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400107 - Can not use camera cause of conflict.
     * @throws { BusinessException } 7400108 - Camera disabled cause of security reason.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func open(): Unit

    /**
     * Open camera.
     *
     * @param { Bool } isSecureEnabled - Setting true enables the camera to be opened in a safe way,
     * setting false does the opposite. Failure of an interface call returns an error code of type CameraErrorCode.
     * @returns { UInt64 } Return the result.
     * @throws { BusinessException } 7400107 - Can not use camera cause of conflict.
     * @throws { BusinessException } 7400108 - Camera disabled cause of security reason.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func open(isSecureEnabled: Bool): UInt64

    /**
     * Close camera.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func close(): Unit

    /**
     * Registers a listener for CameraInput error events to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { CameraDevice } camera - Camera device.
     * @param { Callback0Argument } callback - Callback used to get the camera input errors.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, camera: CameraDevice, callback: Callback0Argument): Unit

    /**
     * Unsubscribes from error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { CameraDevice } camera - Camera device.
     * @param { Callback0Argument } callback - Callback used to get the camera input errors.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, camera: CameraDevice, callback: Callback0Argument): Unit

    /**
     * Unsubscribes from error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { CameraDevice } camera - Camera device.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, camera: CameraDevice): Unit
}

/**
 * Camera Manager class, the camera manager instance needs to be get from the getCameraManager interface before using it.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraManager {
    /**
     * Gets the supported camera device objects and return the results synchronously.
     *
     * @returns { Array<CameraDevice> } An array of supported cameras.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedCameras(): Array<CameraDevice>

    /**
     * Gets supported output capability for specific camera.
     *
     * @param { CameraDevice } camera - Camera device, obtained through the getSupportedCameras interface.
     * @param { SceneMode } mode - Scene mode, obtained through the getSupportedSceneModes interface.
     * @returns { CameraOutputCapability } The camera output capability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedOutputCapability(camera: CameraDevice, mode: SceneMode): CameraOutputCapability

    /**
     * Gets supported scene mode for specific camera.
     *
     * @param { CameraDevice } camera - Camera device, obtained through the getSupportedCameras interface.
     * An error code will be returned if there is an exception in parameter passing.
     * @returns { Array<SceneMode> } An array of supported scene mode of camera.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedSceneModes(camera: CameraDevice): Array<SceneMode>

    /**
     * Queries whether the current camera is muted.
     *
     * @returns { Bool } Is camera muted.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isCameraMuted(): Bool

    /**
     * Creates a CameraInput instance by camera.
     *
     * Before using this interface, first through the getSupportedCameras interface to query the current list of camera
     * devices supported by the device, the developer needs to be based on specific scenarios to choose the camera device
     * that meets the needs of the developer, and then use this interface to create a CameraInput instance.
     *
     * @param { CameraDevice } camera - Camera device used to create the instance.
     * @returns { CameraInput } Returns a CameraInput instance. Failure of an interface call returns the corresponding
     * error code, which is of type CameraErrorCode.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.CAMERA",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createCameraInput(camera: CameraDevice): CameraInput

    /**
     * Creates a PreviewOutput instance.
     *
     * @param { Profile } profile - Supported preview configuration information,
     * obtained through the getSupportedOutputCapability API.
     * @param { String } surfaceId - Surface object id used in camera photo output.
     * @returns { PreviewOutput } The PreviewOutput instance.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createPreviewOutput(profile: Profile, surfaceId: String): PreviewOutput

    /**
     * Creates a PreviewOutput instance without profile.
     * You can use this method to create a preview output instance without a profile, This instance can
     * only be used in a preconfiged session.
     *
     * @param { String } surfaceId - Surface object id used in camera preview output.
     * @returns { PreviewOutput } The PreviewOutput instance.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createPreviewOutput(surfaceId: String): PreviewOutput

    /**
     * Creates a PhotoOutput instance without surfaceId.
     * Call PhotoOutput capture interface will give a callback,
     * on(type: 'photoAvailable', callback: AsyncCallback<Photo>)
     * You can use this method to create a photo output instance without a profile, This instance can
     * only be used in a preconfiged session.
     *
     * @param { Profile } [profile] - Supported photo configuration information, obtained through the
     * getSupportedOutputCapability API. This parameter is mandatory for API version 11.
     * Starting from API version 12, if the preconfig API is used for preconfiguration, the
     * profile parameter, if specified, will override the settings configured by the preconfig API.
     * @returns { PhotoOutput } The PhotoOutput instance.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createPhotoOutput(profile!: ?Profile = None): PhotoOutput

    /**
     * Creates a VideoOutput instance.
     *
     * @param { VideoProfile } profile - Supported recording configuration information,
     * obtained through the getSupportedOutputCapability API.
     * @param { String } surfaceId - Surface object id used in camera video output.
     * @returns { VideoOutput } The VideoOutput instance.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createVideoOutput(profile: VideoProfile, surfaceId: String): VideoOutput

    /**
     * Creates a CameraInput instance by camera position and type.
     *
     * @param { CameraPosition } position - Camera position, first get the supported camera device
     * objects through the getSupportedCameras interface, and then get the device position information
     * based on the returned camera device objects.
     * @param { CameraType } cameraType - camera type, first get the supported camera device object through
     * the getSupportedCameras interface, then get the device type information based on the returned
     * camera device object.
     * @returns { CameraInput } Returns a CameraInput instance. Failure of an interface call returns
     * the corresponding error code, which is of type CameraErrorCode.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.CAMERA",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createCameraInput(position: CameraPosition, cameraType: CameraType): CameraInput

    /**
     * Creates a VideoOutput instance without profile.
     * You can use this method to create a video output instance without a profile, This instance can
     * only be used in a preconfiged session.
     *
     * @param { String } surfaceId - Surface object id used in camera video output.
     * @returns { VideoOutput } The VideoOutput instance.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createVideoOutput(surfaceId: String): VideoOutput

    /**
     * Gets a Session instance by specific scene mode.
     *
     * @param { SceneMode } mode - The modes supported by the camera. If the passed parameters are
     * abnormal (e.g. out of range, passed null or undefined, etc.), the actual interface will not take effect.
     * @returns { Session } Session instance. Failure of an interface call returns the appropriate error code,
     * which is of type CameraErrorCode.
     * @throws { BusinessException } 7400101 - Parameter error. Possible causes:
     * 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types;
     * 3. Parameter verification failed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func createSession(mode: SceneMode): Session

    /**
     * Camera state callback to get the state change of the camera by registering a callback
     * function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<CameraStatusInfo> } callback - Callback used to get the camera status change.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<CameraStatusInfo>): Unit

    /**
     * Registers a listener for fold state changes. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FoldStatusInfo> } callback - Callback used to get the fold status change.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FoldStatusInfo>): Unit

    /**
     * Registers a listener for flashlight state changes to get flashlight state change by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type
     * @param { Callback1Argument<TorchStatusInfo> } callback - Callback used to return the torch status change
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<TorchStatusInfo>): Unit

    /**
     * Unsubscribes from camera status change event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<CameraStatusInfo> } callback - Callback used to get the camera status change.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<CameraStatusInfo>): Unit

    /**
     * Unsubscribes from fold status change event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FoldStatusInfo> } callback - Callback used to get the fold status change.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FoldStatusInfo>): Unit

    /**
     * Unsubscribes torch status change event callback.
     *
     * @param { CameraEvents } eventType - Event type
     * @param { Callback1Argument<TorchStatusInfo> } callback - Callback used to return the torch status change
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<TorchStatusInfo>): Unit

    /**
     * Unsubscribes callback.
     *
     * @param { CameraEvents } eventType - Event type
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func off(eventType: CameraEvents): Unit

    /**
     * Check if the device has a torch.
     *
     * @returns { Bool } this value that specifies whether the device has a torch.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isTorchSupported(): Bool

    /**
     * Check if a specifies torch mode is supported.
     * @param { TorchMode } mode - torch mode.
     * @returns { Bool } is torch mode supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isTorchModeSupported(mode: TorchMode): Bool

    /**
     * Get current torch mode.
     *
     * @returns { TorchMode } torch mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getTorchMode(): TorchMode

    /**
     * Set torch mode to the device.
     *
     * @param { TorchMode } mode - torch mode.
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func setTorchMode(mode: TorchMode): Unit
}

/**
 * Camera output object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface CameraOutput {
    /**
     * Release output instance.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    func release(): Unit
}

/**
 * Session object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Session {
    /**
     * Begin capture session config.
     *
     * @throws { BusinessException } 7400105 - Session config locked.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func beginConfig(): Unit

    /**
     * Commit capture session config.
     *
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    func commitConfig(): Unit

    /**
     * Determines whether the camera input can be added into the session.
     * This method is valid between Session.beginConfig() and Session.commitConfig().
     *
     * @param { CameraInput } cameraInput - Target camera input to add.
     * @returns { Bool } You can add the input into the session.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func canAddInput(cameraInput: CameraInput): Bool

    /**
     * Adds a camera input.
     * This method is valid between Session.beginConfig() and Session.commitConfig().
     *
     * @param { CameraInput } cameraInput - Target camera input to add.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func addInput(cameraInput: CameraInput): Unit

    /**
     * Removes a camera input.
     * This method is valid between Session.beginConfig() and Session.commitConfig().
     *
     * @param { CameraInput } cameraInput - Target camera input to remove.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func removeInput(cameraInput: CameraInput): Unit

    /**
     * Determines whether the camera output can be added into the session.
     * This method is valid after Session.addInput(cameraInput) and before Session.commitConfig().
     *
     * @param { CameraOutput } cameraOutput - Target camera output to add.
     * @returns { Bool } You can add the output into the session.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func canAddOutput(cameraOutput: CameraOutput): Bool

    /**
     * Adds a camera output.
     * This method is valid after Session.addInput(cameraInput) and before Session.commitConfig().
     *
     * @param { CameraOutput } cameraOutput - Target camera output to add.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func addOutput(cameraOutput: CameraOutput): Unit

    /**
     * Removes a camera output.
     * This method is valid between Session.beginConfig() and Session.commitConfig().
     *
     * @param { CameraOutput } cameraOutput - Target camera output to remove.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    func removeOutput(cameraOutput: CameraOutput): Unit

    /**
     * Starts capture session.
     *
     * @throws { BusinessException } 7400102 - Operation not allowed.
     * @throws { BusinessException } 7400103 - Session not config.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    func start(): Unit

    /**
     * Stops capture session.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    func stop(): Unit

    /**
     * Release capture session instance.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    func release(): Unit
}

/**
 * Photo session object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PhotoSession <: Session & Flash & AutoExposure & Focus & Zoom & ColorManagement {
    /**
     * Gets whether the choosed preconfig type can be used to configure photo session.
     * Must choose preconfig type from PreconfigType.
     *
     * @param { PreconfigType } preconfigType - preconfig type.
     * @param { PreconfigRatio } [preconfigRatio] - the aspect ratio of surface for preconfig,
     *                                            default value PreconfigRatio#PRECONFIG_RATIO_4_3.
     * @returns { Bool } Whether the choosed preconfig type can be used.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func canPreconfig(preconfigType: PreconfigType, preconfigRatio!: PreconfigRatio = PreconfigRatio_4_3): Bool

    /**
     * Configure photo session with the preconfig type.
     * Must choose preconfig type from PreconfigType.
     *
     * @param { PreconfigType } preconfigType - preconfig type.
     * @param { PreconfigRatio } [preconfigRatio] - the aspect ratio of surface for preconfig,
     *                                            default value PreconfigRatio#PRECONFIG_RATIO_4_3
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func preconfig(
        preconfigType: PreconfigType,
        preconfigRatio!: PreconfigRatio = PreconfigRatio.PreconfigRatio_4_3
    ): Unit

    /**
     * Registers a listener for error events from a normal video session to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to get the capture session errors.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Unsubscribes from error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to get the capture session errors.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Registers a listener for camera focus state changes to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit

    /**
     * Unsubscribes from focus state change events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit

    /**
     * Registers a listener for state changes in the camera's smooth zoom to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit

    /**
     * Unsubscribes from zoom info events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit

    /**
     * Unsubscribes all callbacks from the event specified by the param.
     *
     * @param { CameraEvents } eventType - Event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        workerthread: true
    ]
    public func off(eventType: CameraEvents): Unit
}

/**
 * Video session object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoSession <: Session & Flash & AutoExposure & Focus & Zoom & Stabilization & ColorManagement {
    /**
     * Gets whether the choosed preconfig type can be used to configure video session.
     * Must choose preconfig type from PreconfigType.
     *
     * @param { PreconfigType } preconfigType - preconfig type.
     * @param { PreconfigRatio } [preconfigRatio] - the aspect ratio of surface for preconfig,
     *                                            default value PreconfigRatio#PRECONFIG_RATIO_16_9.
     * @returns { Bool } Whether the choosed preconfig type can be used.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func canPreconfig(preconfigType: PreconfigType, preconfigRatio!: PreconfigRatio = PreconfigRatio_16_9): Bool

    /**
     * Configure video session with the preconfig type.
     * Must choose preconfig type from PreconfigType.
     *
     * @param { PreconfigType } preconfigType - preconfig type.
     * @param { PreconfigRatio } [preconfigRatio] - the aspect ratio of surface for preconfig,
     *                                            default value PreconfigRatio#PRECONFIG_RATIO_16_9.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func preconfig(
        preconfigType: PreconfigType,
        preconfigRatio!: PreconfigRatio = PreconfigRatio.PreconfigRatio_16_9
    ): Unit

    /**
     * Registers a listener for error events in normal photo sessions to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to get the capture session errors.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Unsubscribes from error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to get the capture session errors.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Registers a listener for error events in normal photo sessions to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit

    /**
     * Unsubscribes from focus state change events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit

    /**
     * Registers a listener for state changes in the camera's smooth zoom to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit

    /**
     * Unsubscribes from zoom info events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit

    /**
     * Unsubscribes all callbacks from the event specified by the param.
     *
     * @param { CameraEvents } eventType - Event type.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func off(eventType: CameraEvents): Unit
}

/**
 * Photo output object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PhotoOutput <: CameraOutput {
    /**
     * Start capture output.
     *
     * @throws { BusinessException } 7400104 - Session not running.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func capture(): Unit

    /**
     * Start capture output.
     *
     * @param { PhotoCaptureSetting } setting - Photo capture settings.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400104 - Session not running.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func capture(setting: PhotoCaptureSetting): Unit

    /**
     * Get supported moving photo video codec types.
     *
     * @returns { Array<VideoCodecType> } An array of supported video codec types for moving photo.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedMovingPhotoVideoCodecTypes(): Array<VideoCodecType>

    /**
     * Sets codec type for moving photo, default to AVC.
     *
     * @param { VideoCodecType } codecType - Codec type for moving photo.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func setMovingPhotoVideoCodecType(codecType: VideoCodecType): Unit

    /**
     * Registers a listener for the start of the photo taking to get the CaptureStartInfo by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     * 
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<CaptureStartInfo> } callback - Callback used to get the capture start info.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<CaptureStartInfo>): Unit

    /**
     * Subscribes frame shutter event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FrameShutterInfo> } callback - Callback used to get the frame shutter information.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FrameShutterInfo>): Unit

    /**
     * Registers a listener for the end of the photo shoot to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<CaptureEndInfo> } callback - Callback used to get the capture end information.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<CaptureEndInfo>): Unit

    /**
     * Registers a listener for the end of photo exposure capture to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FrameShutterEndInfo> } callback - Callback used to get the frame shutter end
     * information.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FrameShutterEndInfo>): Unit

    /**
     * Registers a listener for the next available shot or errors in the photo output to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to notice capture ready.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Registers a listener for the estimated time to take a picture to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * Description: Currently, it is not allowed to use off() to unregister the callback
     * within the callback method of on().
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<Float64> } callback - Callback used to notify the estimated capture duration (in
     * milliseconds).
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<Float64>): Unit

    /**
     * Unsubscribes from capture start event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<CaptureStartInfo> } callback - Callback used to get the capture start info.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<CaptureStartInfo>): Unit

    /**
     * Unsubscribes from frame shutter event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FrameShutterInfo> } callback - Callback used to get the frame shutter information.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FrameShutterInfo>): Unit

    /**
     * Unsubscribes from capture end event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<CaptureEndInfo> } callback - Callback used to get the capture end information.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<CaptureEndInfo>): Unit

    /**
     * Unsubscribes from frame shutter end event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<FrameShutterEndInfo> } callback - Callback used to get the frame shutter end
     * information.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FrameShutterEndInfo>): Unit

    /**
     * Unsubscribes from capture ready event callback or from error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to notice capture ready.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Unsubscribes from estimated capture duration event callback.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback1Argument<Float64> } callback - Callback used to notify the estimated capture duration (in
     * milliseconds).
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<Float64>): Unit

    /**
     * Unsubscribes all callbacks from the event specified by the param.
     *
     * @param { CameraEvents } eventType - Event type.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func off(eventType: CameraEvents): Unit

    /**
     * Check whether to support mirror photo.
     *
     * @returns { Bool } Is the mirror supported.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func isMirrorSupported(): Bool

    /**
     * Whether to enable moving photo mirroring.
     *
     * Prior to invoking this interface, it is necessary to determine whether the moving
     * photo function is supported through the isMovingPhotoSupported API and whether the
     * photo mirroring function is supported through the isMirrorSupported API.
     *
     * @param { Bool } enabled - enable moving photo mirror if TRUE.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400103 - Session not config.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func enableMirror(enabled: Bool): Unit

    /**
     * Gets the current preconfig type if you had already call preconfig interface.
     *
     * @returns { Profile } The current preconfig type.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getActiveProfile(): Profile

    /**
     * Confirm if moving photo supported.
     *
     * @returns { Bool } TRUE if the moving photo is supported.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func isMovingPhotoSupported(): Bool

    /**
     * Enable moving photo.
     *
     * @param { Bool } enabled - Target state for moving photo.
     * @throws { BusinessException } 201 - permission denied.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.MICROPHONE",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func enableMovingPhoto(enabled: Bool): Unit

    /**
     * Gets the photo rotation angle.
     *
     * @param { Int32 } deviceDegree - The current device rotation degree.
     * @returns { ImageRotation } The photo rotation angle.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getPhotoRotation(deviceDegree: Int32): ImageRotation

    /**
     * Release output instance.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func release(): Unit
}

/**
 * Preview output object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PreviewOutput <: CameraOutput {
    /**
     * Subscribes frame start event callback.
     * Subscribes frame end event callback.
     * Subscribes to error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to return the result.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Unsubscribes from frame start event callback.
     * Unsubscribes from frame end event callback.
     * Unsubscribes from error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to return the result.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Unsubscribes all callbacks from the event specified by the param.
     *
     * @param { CameraEvents } eventType - Event type.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func off(eventType: CameraEvents): Unit

    /**
     * Get supported frame rates which can be set during session running.
     *
     * @returns { Array<FrameRateRange> } The array of supported frame rate range.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getSupportedFrameRates(): Array<FrameRateRange>

    /**
     * The supported frame rate range can be queried via the getSupportedFrameRates interface before setting.
     *
     * @param { Int32 } minFps - Minimum frame rate per second.
     * @param { Int32 } maxFps - Maximum frame rate per second.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400110 - Unresolved conflicts with current configurations.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func setFrameRate(minFps: Int32, maxFps: Int32): Unit

    /**
     * Queryable after setting the frame rate for the preview stream using the setFrameRate interface.
     *
     * @returns { FrameRateRange } The active frame rate range.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getActiveFrameRate(): FrameRateRange

    /**
     * Gets the current preconfig type if you had already call preconfig interface.
     *
     * @returns { Profile } The current preconfig type.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getActiveProfile(): Profile

    /**
     * Gets the preview rotation angle.
     *
     * @param { Int32 } displayRotation - The current display rotation angle.
     * @returns { ImageRotation } The preview rotation angle.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getPreviewRotation(displayRotation: Int32): ImageRotation

    /**
     * Sets the preview rotation angle.
     *
     * @param { ImageRotation } previewRotation - Preview display rotation angle.
     * @param { Bool } [isDisplayLocked] - TRUE means the display is locked, if not set, the default is FALSE.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func setPreviewRotation(previewRotation: ImageRotation, isDisplayLocked!: Bool = false): Unit

    /**
     * Release output instance.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func release(): Unit
}

/**
 * Video output object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoOutput <: CameraOutput {
    /**
     * Start video output.
     *
     * @throws { BusinessException } 7400103 - Session not config.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func start(): Unit

    /**
     * Stop video output.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func stop(): Unit

    /**
     * Get supported frame rates which can be set during session running.
     *
     * @returns { Array<FrameRateRange> } The array of supported frame rate range.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getSupportedFrameRates(): Array<FrameRateRange>

    /**
     * Set a frame rate range.
     *
     * @param { Int32 } minFps - Minimum frame rate per second.
     * @param { Int32 } maxFps - Maximum frame rate per second.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400110 - Unresolved conflicts with current configurations.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func setFrameRate(minFps: Int32, maxFps: Int32): Unit

    /**
     * Get active frame rate range which has been set before.
     *
     * @returns { FrameRateRange } The active frame rate range.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getActiveFrameRate(): FrameRateRange

    /**
     * Gets the video rotation angle.
     *
     * @param { Int32 } deviceDegree - The current device rotation degree.
     * @returns { ImageRotation } The video rotation angle.
     * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getVideoRotation(deviceDegree: Int32): ImageRotation

    /**
     * Subscribes frame start event callback.
     * Subscribes from frame end event callback.
     * Registers a listener for errors in the metadata stream to get the result by registering
     * a callback function. This API uses an asynchronous callback to return the result.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to return the result.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Unsubscribes from frame start event callback.
     * Unsubscribes from frame end event callback.
     * Unsubscribes from error events.
     *
     * @param { CameraEvents } eventType - Event type.
     * @param { Callback0Argument } callback - Callback used to return the result.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit

    /**
     * Unsubscribes all callbacks from the event specified by the param.
     *
     * @param { CameraEvents } eventType - Event type.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func off(eventType: CameraEvents): Unit

    /**
     * Gets the current preconfig type if you had already call preconfig interface.
     *
     * @returns { VideoProfile } The current preconfig type.
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true
    ]
    public func getActiveProfile(): VideoProfile

    /**
     * Release output instance.
     *
     * @throws { BusinessException } 7400201 - Camera service fatal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Camera.Core",
        throwexception: true,
        workerthread: true
    ]
    public func release(): Unit
}