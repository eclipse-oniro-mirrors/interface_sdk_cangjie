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

package ohos.resource_manager

import ohos.labels.APILevel
public import ohos.raw_file_descriptor.RawFileDescriptor
public import ohos.resource.AppResource

/**
 * Provides the capability of accessing application resources.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public class ResourceManager {
    /**
     * Obtains the content of the specified screen density media file corresponding to a specified resource object.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @param { ?ScreenDensity } [density] - The optional parameter ScreenDensity ScreenDensity, A value of None means
     *                to use the density of current system dpi.
     * @returns { Array<UInt8> } The content of the specified screen density media file corresponding to the specified resource object.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getMediaContent(resource: AppResource, density!: ?ScreenDensity = None): Array<UInt8>

    /**
     * Obtains the device configuration.
     *
     * @returns { Configuration } the device configuration.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getConfiguration(): Configuration

    /**
     * Obtains the singular-plural character string represented by the resource object string corresponding to the
     * specified number.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @param { Int64 } num - Indicates the number.
     * @returns { String } The singular-plural character string represented by the ID string
     *         corresponding to the specified number.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getPluralStringValue(resource: AppResource, num: Int64): String

    /**
     * Obtains the array of character strings corresponding to a specified resource name.
     *
     * @param { String } resName - Indicates the resource name.
     * @returns { Array<String> } the array of character strings corresponding to the specified resource name.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getStringArrayByName(resName: String): Array<String>

    /**
     * Obtains the singular-plural character string represented by the name string corresponding to
     * the specified number.
     *
     * @param { String } resName - Indicates the resource name.
     * @param { Int64 } num - Indicates the number.
     * @returns { String } The singular-plural character string represented by the name string
     *         corresponding to the specified number.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getPluralStringByName(resName: String, num: Int64): String

    /**
     * Obtains string resources associated with a specified resource ID.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @param { Array<ArgsValueType> } args - Indicates the formatting string resource parameters.
     * @returns { String } The character string corresponding to the resource ID.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     * @throws { BusinessException } 9001007 - Failed to format the resource obtained based on the resource ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getString(resId: UInt32, args: Array<ArgsValueType>): String

    /**
     * Obtains string resources associated with a specified resource object.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @param { Array<ArgsValueType> } args - Indicates the formatting string resource parameters.
     * @returns { String } The character string corresponding to the resource object.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     * @throws { BusinessException } 9001007 - Failed to format the resource obtained based on the resource ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getString(resource: AppResource, args: Array<ArgsValueType>): String

    /**
     * Obtains string resources associated with a specified resource name.
     *
     * @param { String } resName - Indicates the resource name.
     * @param { Array<ArgsValueType> } args - Indicates the formatting string resource parameters.
     * @returns { String } The character string corresponding to the resource name.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     * @throws { BusinessException } 9001008 - Failed to format the resource obtained based on the resource Name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getStringByName(resName: String, args: Array<ArgsValueType>): String

    /**
     * Obtains the boolean result with a specified resource ID.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @returns { Bool } The boolean resource corresponding to the resource ID.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getBoolean(resId: UInt32): Bool

    /**
     * Obtains the boolean result with a specified resource object.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @returns { Bool } The boolean resource corresponding to the resource object.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getBoolean(resource: AppResource): Bool

    /**
     * Obtains the boolean result with a specified resource name.
     *
     * @param { String } resName - Indicates the resource name.
     * @returns { Bool } The boolean resource corresponding to the resource name.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getBooleanByName(resName: String): Bool

    /**
     * Obtains the number result with a specified resource ID.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @returns { NumberValueType } The number resource corresponding to the resource ID.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getNumber(resId: UInt32): NumberValueType

    /**
     * Obtains the number result with a specified resource object.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @returns { NumberValueType } The number resource corresponding to the resource object.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getNumber(resource: AppResource): NumberValueType

    /**
     * Obtains the number result with a specified resource name.
     *
     * @param { String } resName - Indicates the resource name.
     * @returns { NumberValueType } The number resource corresponding to the resource name.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getNumberByName(resName: String): NumberValueType

    /**
     * Obtains the singular-plural character string represented by the ID string corresponding to
     * the specified number.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @param { Int64 } num - Indicates the number.
     * @returns { String } The singular-plural character string represented by the ID string
     *         corresponding to the specified number.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getPluralStringValue(resId: UInt32, num: Int64): String

    /**
     * Obtains the content of the specified screen density media file corresponding to a specified resource ID.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @param { ?ScreenDensity } [density] - The optional parameter ScreenDensity, A value of None means
     *                to use the density of current system dpi.
     * @returns { Array<UInt8> } The content of the specified screen density media file corresponding to the specified resource ID.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getMediaContent(resId: UInt32, density!: ?ScreenDensity = None): Array<UInt8>

    /**
     * Obtains the raw file resource corresponding to the specified resource path.
     *
     * @param { String } path - Indicates the resource relative path.
     * @returns { Array<UInt8> } the raw file resource corresponding to the specified resource path.
     * @throws { BusinessException } 9001005 - Invalid relative path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getRawFileContent(path: String): Array<UInt8>

    /**
     * Obtains the raw file resource descriptor corresponding to the specified resource path.
     *
     * @param { String } path - Indicates the resource relative path.
     * @returns { RawFileDescriptor } The raw file resource descriptor.
     * @throws { BusinessException } 9001005 - Invalid relative path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getRawFd(path: String): RawFileDescriptor

    /**
     * Close the raw file resource descriptor corresponding to the specified resource path.
     *
     * @param { String } path - Indicates the resource relative path.
     * @throws { BusinessException } 9001005 - Invalid relative path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func closeRawFd(path: String): Unit

    /**
     * Obtains the rawfile resource list corresponding to the specified resource path.
     *
     * @param { String } path - Indicates the resource relative path.
     * @returns { Array<String> } The rawfile resource list.
     * @throws { BusinessException } 9001005 - Invalid relative path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getRawFileList(path: String): Array<String>

    /**
     * Obtains the color resource corresponding to the specified resource ID.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @returns { UInt32 } Indicates the integer reference value representing the color data.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getColor(resId: UInt32): UInt32

    /**
     * Obtains the color resource corresponding to the specified resource object.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @returns { UInt32 } Indicates the integer reference value representing the color data.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getColor(resource: AppResource): UInt32

    /**
     * Obtains the color resource corresponding to the specified resource name.
     *
     * @param { String } resName - Indicates the resource name.
     * @returns { UInt32 } Indicates the integer reference value representing the color data.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getColorByName(resName: String): UInt32

    /**
     * Add overlay resources during application runtime.
     *
     * @param { String } path - Indicates the application overlay path.
     * @throws { BusinessException } 9001010 - Invalid overlay path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func addResource(path: String): Unit

    /**
     * Remove overlay resources during application runtime.
     *
     * @param { String } path - Indicates the application overlay path.
     * @throws { BusinessException } 9001010 - Invalid overlay path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func removeResource(path: String): Unit

    /**
     * Obtains the Base64 code of the specified screen density media file corresponding to the specified resource ID.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @param { ?ScreenDensity } [density] - The optional parameter ScreenDensity, A value of None means
     *                to use the density of current system dpi.
     * @returns { String } Indicates the obtained Base64 code of the media file.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getMediaContentBase64(resId: UInt32, density!: ?ScreenDensity = None): String

    /**
     * Obtains the content of the specified screen density media file corresponding to the specified resource object.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @param { ?ScreenDensity } [density] - The optional parameter ScreenDensity, A value of None means
     *                to use the density of current system dpi.
     * @returns { String } Indicates the obtained Base64 code of the media file.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getMediaContentBase64(resource: AppResource, density!: ?ScreenDensity = None): String

    /**
     * Obtains the array of character strings corresponding to a specified resource ID.
     *
     * @param { UInt32 } resId - Indicates the resource ID.
     * @returns { Array<String> } The array of character strings corresponding to the specified resource ID.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getStringArrayValue(resId: UInt32): Array<String>

    /**
     * Obtains the array of character strings corresponding to a specified resource object.
     *
     * @param { AppResource } resource - Indicates the resource object.
     * @returns { Array<String> } The array of character strings corresponding to the specified resource object.
     * @throws { BusinessException } 9001001 - Invalid resource ID.
     * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
     * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getStringArrayValue(resource: AppResource): Array<String>

    /**
     * Obtains the content of the specified screen density media file corresponding to a specified resource name.
     *
     * @param { String } resName - Indicates the resource name.
     * @param { ?ScreenDensity } [density] - The parameter ScreenDensity, A value of None means
     *                 to use the density of current system dpi.
     * @returns { Array<UInt8> } The content of the specified screen density media file corresponding to the specified resource name.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true,
        workerthread: true
    ]
    public func getMediaByName(resName: String, density!: ?ScreenDensity = None): Array<UInt8>

    /**
     * Obtains the Base64 code of the specified screen density media file corresponding to the specified resource name.
     *
     * @param { String } resName - Indicates the resource name.
     * @param { ?ScreenDensity } [density] - The parameter ScreenDensity, A value of None means
     *                 to use the density of current system dpi.
     * @returns { String } The obtained Base64 code of the specified screen density media file.
     * @throws { BusinessException } 9001003 - Invalid resource name.
     * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager",
        throwexception: true
    ]
    public func getMediaBase64ByName(resName: String, density!: ?ScreenDensity = None): String

    /**
     * Obtains the device capability.
     *
     * @returns { DeviceCapability } the device capability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getDeviceCapability(): DeviceCapability

    /**
     * Obtains locales list.
     *
     * @param { Bool } [includeSystem] - the parameter controls whether to include system resources,
     *     the default value is false, it has no effect when only system resources query the locales list.
     * @returns { Array<String> } the list of strings for the locales.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getLocales(includeSystem!: Bool = false): Array<String>
}

/**
 * Provides the device configuration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public class Configuration {
    /**
     * Indicates the screen direction of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var direction: Direction

    /**
     * Indicates the current system language, for example, zh-Hans-CN.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var locale: String

    /**
     * Indicates the device type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var deviceType: DeviceType

    /**
     * Indicates the screen density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var screenDensity: ScreenDensity

    /**
     * Indicates the color mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var colorMode: ColorMode

    /**
     * Indicates the mcc.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var mcc: UInt32

    /**
     * Indicates the mnc.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var mnc: UInt32
}

/**
 * Provides the device capability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public class DeviceCapability {
    /**
     * Indicates the screen density of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var screenDensity: ScreenDensity

    /**
     * Indicates the type of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var deviceType: DeviceType
}

/**
 * Enumerates color mode types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum ColorMode {
    /**
     * Indicates dark mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Dark
    | 
    /**
     * Indicates light mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Light
    | ...
}

/**
 * Enumerates screen density types.
 *
 * export enum ScreenDensity
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum ScreenDensity {
    /**
     * Indicates small screen density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenSdpi
    | 
    /**
     * Indicates medium screen density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenMdpi
    | 
    /**
     * Indicates large screen density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenLdpi
    | 
    /**
     * Indicates extra-large screen density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenXldpi
    | 
    /**
     * Indicates extra-extra-large screen density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenXxldpi
    | 
    /**
     * Indicates extra-extra-extra-large screen density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenXxxldpi
    | ...
}

/**
 * Enumerates device types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum DeviceType {
    /**
     * Indicates a phone.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypePhone
    | 
    /**
     * Indicates a tablet.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeTablet
    | 
    /**
     * Indicates a car.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeCar
    | 
    /**
     * Indicates a PC.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypePc
    | 
    /**
     * Indicates a smart TV.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeTv
    | 
    /**
     * Indicates a wearable device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeWearable
    | 
    /**
     * Indicates a 2in1 device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceType2In1
    | ...
}

/**
 * Enumerates screen directions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum Direction {
    /**
     * Indicates the vertical direction.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DirectionVertical
    | 
    /**
     * Indicates the horizontal direction.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DirectionHorizontal
    | ...
}

/**
 * for some API returns two type : Int32 Float32
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum NumberValueType {
    /**
     * Represents Int32.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ] 
    Int32Value(Int32)
    | 
    /**
     * Represents Float32.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ] 
    Float32Value(Float32)
    | ...
}

/**
 * For the formatting parameter using.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum ArgsValueType {
    /**
     * Formats %d.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ] 
    Int32Value(Int32)
    | 
    /**
     * Formats %f.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ] 
    Float32Value(Float32)
    | 
    /**
     * Formats %s.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Global.ResourceManager"
    ] 
    StringValue(String)
    | ...
}

extend<T> Array<T> where T <: Comparable<T> {}
