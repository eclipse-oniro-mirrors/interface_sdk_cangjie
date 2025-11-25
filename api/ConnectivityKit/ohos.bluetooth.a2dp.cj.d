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

package ohos.bluetooth.a2dp

import ohos.bluetooth.base_profile.{ BaseProfile, StateChangeParam, ProfileCallbackType }
import ohos.callback_invoke.{Callback1Argument, CallbackObject}
import ohos.bluetooth.constant.ProfileConnectionState
import ohos.labels.APILevel

/**
 * create the instance of a2dp profile.
 *
 * @returns { A2dpSourceProfile } Returns the instance of profile.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func createA2dpSrcProfile(): A2dpSourceProfile

/**
 * Manager a2dp source profile.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class A2dpSourceProfile <: BaseProfile {
    /**
     * Obtains the playing state of device.
     *
     * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
     * @returns { PlayingState } Returns the playing state.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900004 - Profile not supported.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func getPlayingState(deviceId: String): PlayingState

    /**
     * Obtains the connected devices list of profile.
     *
     * @returns { Array<String> } Returns the address of connected devices list.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900004 - Profile not supported.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func getConnectedDevices(): Array<String>

    /**
     * Obtains the profile connection state.
     *
     * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
     * @returns { ProfileConnectionState } Returns the profile connection state.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900004 - Profile not supported.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func getConnectionState(deviceId: String): ProfileConnectionState

    /**
     * Subscribe the event reported when the profile connection state changes.
     *
     * @param { ProfileCallbackType } eventType - The type of event to subscribe.
     * @param { Callback1Argument<StateChangeParam> } callback - The callback function to be called when the event occurs.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: ProfileCallbackType, callback: Callback1Argument<StateChangeParam>): Unit

    /**
     * Unsubscribe the event reported when the profile connection state changes.
     *
     * @param { ProfileCallbackType } eventType - The type of event to unsubscribe.
     * @param { CallbackObject } callback - The callback function to be removed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: ProfileCallbackType, callback: CallbackObject): Unit

    /**
     * Unsubscribe the event reported when the profile connection state changes.
     *
     * @param { ProfileCallbackType } eventType - The type of event to unsubscribe.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: ProfileCallbackType): Unit
}

/**
 * The enum of a2dp playing state.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum PlayingState {
    /**
     * Not playing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StateNotPlaying
    | 
    /**
     * Playing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StatePlaying
    | ...
}


extend PlayingState <: ToString {
    
    /**
     * Converts the PlayingState to its string representation.
     * @returns { String } A string representation of the PlayingState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend PlayingState <: Equatable<PlayingState> {
    
    /**
     * Compares this PlayingState with another for equality.
     * @param { PlayingState } other - The PlayingState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: PlayingState): Bool
    
    /**
     * Compares this PlayingState with another for inequality.
     * @param { PlayingState } other - The PlayingState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: PlayingState): Bool
}

/**
 * Describes the codec information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CodecInfo {
    /**
     * codec type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecType: CodecType

    /**
     * codec bits per sample.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecBitsPerSample: CodecBitsPerSample

    /**
     * codec channel mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecChannelMode: CodecChannelMode

    /**
     * codec sample rate.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecSampleRate: CodecSampleRate
}

/**
 * Describes the codec type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecType {
    /**
     * invalid codec type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeInvalid
    | 
    /**
     * SBC - Sub-band coding.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeSbc
    | 
    /**
     * AAC -Advanced Audio Coding.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeAac
    | 
    /**
     * L2HC.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeL2hc
    | ...
}


extend CodecType <: ToString {
    
    /**
     * Converts the CodecType to its string representation.
     * @returns { String } A string representation of the CodecType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend CodecType <: Equatable<CodecType> {
    
    /**
     * Compares this CodecType with another for equality.
     * @param { CodecType } other - The CodecType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: CodecType): Bool
    
    /**
     * Compares this CodecType with another for inequality.
     * @param { CodecType } other - The CodecType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: CodecType): Bool
}

/**
 * Describes the codec channel mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecChannelMode {
    /**
     * Codec channel mode none.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecChannelModeNone
    | 
    /**
     * Codec channel mode MONO.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecChannelModeMono
    | 
    /**
     * Codec channel mode STEREO.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecChannelModeStereo
    | ...
}


extend CodecChannelMode <: ToString {
    
    /**
     * Converts the CodecChannelMode to its string representation.
     * @returns { String } A string representation of the CodecChannelMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend CodecChannelMode <: Equatable<CodecChannelMode> {
    
    /**
     * Compares this CodecChannelMode with another for equality.
     * @param { CodecChannelMode } other - The CodecChannelMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: CodecChannelMode): Bool
    
    /**
     * Compares this CodecChannelMode with another for inequality.
     * @param { CodecChannelMode } other - The CodecChannelMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: CodecChannelMode): Bool
}

/**
 * Describes the codec bits per sample.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecBitsPerSample {
    /**
     * Codec bits per sample none.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSampleNone
    | 
    /**
     * Codec 16 bits per sample.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSample16
    | 
    /**
     * Codec 24 bits per sample.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSample24
    | 
    /**
     * Codec 32 bits per sample.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSample32
    | ...
}


extend CodecBitsPerSample <: ToString {
    
    /**
     * Converts the CodecBitsPerSample to its string representation.
     * @returns { String } A string representation of the CodecBitsPerSample.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend CodecBitsPerSample <: Equatable<CodecBitsPerSample> {
    
    /**
     * Compares this CodecBitsPerSample with another for equality.
     * @param { CodecBitsPerSample } other - The CodecBitsPerSample to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: CodecBitsPerSample): Bool
    
    /**
     * Compares this CodecBitsPerSample with another for inequality.
     * @param { CodecBitsPerSample } other - The CodecBitsPerSample to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: CodecBitsPerSample): Bool
}

/**
 * Describes the codec sample rate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecSampleRate {
    /**
     * Codec sample rate none.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRateNone
    | 
    /**
     * Codec sample rate 44.1kHz.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate44100
    | 
    /**
     * Codec sample rate 48kHz.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate48000
    | 
    /**
     * Codec sample rate 88.2kHz.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate88200
    | 
    /**
     * Codec sample rate 96kHz.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate96000
    | 
    /**
     * Codec sample rate 176.4kHz.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate176400
    | 
    /**
     * Codec sample rate 192kHz.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate192000
    | ...
}


extend CodecSampleRate <: ToString {
    
    /**
     * Converts the CodecSampleRate to its string representation.
     * @returns { String } A string representation of the CodecSampleRate.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend CodecSampleRate <: Equatable<CodecSampleRate> {
    
    /**
     * Compares this CodecSampleRate with another for equality.
     * @param { CodecSampleRate } other -  The CodecSampleRate to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: CodecSampleRate): Bool
    
    /**
     * Compares this CodecSampleRate with another for inequality.
     * @param { CodecSampleRate } other -  The CodecSampleRate to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: CodecSampleRate): Bool
}
