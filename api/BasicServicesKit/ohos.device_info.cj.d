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

package ohos.device_info

import ohos.labels.APILevel

/**
 *  A static class pertaining to the product information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Startup.SystemInfo"
]
public class DeviceInfo {
    /**
      * Obtains the hardware profile represented by a string.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop hardwareProfile: String

    /**
      * Obtains the device type represented by a string, which can be phone (or default for phones), wearable,
      * liteWearable, tablet, tv, car, or smartVision.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop deviceType: String

    /**
      * Obtains the OS version represented by a string.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osFullName: String

    /**
      * Obtains the product model represented by a string.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productModel: String

    /**
      * Obtains the device brand represented by a string.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop brand: String

    /**
      * Obtains the device udid.
      */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.sec.ACCESS_UDID",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop udid: String

    /**
     * Obtains the version hash.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildRootHash: String

    /**
     * Obtains the build time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildTime: String

    /**
     * Obtains the different build host of the same baseline code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildHost: String

    /**
     * Obtains the different build user of the same baseline code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildUser: String

    /**
     * Obtains the build types of the same baseline code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildType: String

    /**
     * Obtains the version ID by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop versionId: String

    /**
     * Obtains the first API version number.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop firstApiVersion: Int32

    /**
     * Obtains the SDK API version number.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop sdkApiVersion: Int32

    /**
     * Obtains the build (B) version number, which increases with each new development build.
     * The B version number monotonically increases from 0 or 1 to 999.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildVersion: Int32

    /**
     * Obtains the feature (F) version number, which increases with any planned new features.
     * The F version number monotonically increases from 0 or 1 to 99.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop featureVersion: Int32

    /**
     * Obtains the senior (S) version number, which increases with any updates to the partial
     * architecture or major features.
     * The S version number monotonically increases from 0 to 99.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop seniorVersion: Int32

    /**
     * Obtains the major (M) version number, which increases with any updates to the overall architecture.
     * The M version number monotonically increases from 1 to 99.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop majorVersion: Int32

    /**
     * Obtains the product version represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop displayVersion: String

    /**
     * Obtains the device serial number represented by a string.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.sec.ACCESS_UDID",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop serial: String

    /**
     * Obtains the OS release type represented by a string.
     * The OS release category can be Release, Beta, or Canary.
     * The specific release type may be Release, Beta1, or others alike.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osReleaseType: String

    /**
     * Obtains the incremental version represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop incrementalVersion: String

    /**
     * Obtains the security patch level represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop securityPatchTag: String

    /**
     * Obtains the application binary interface (Abi) list represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop abiList: String

    /**
     * Obtains the bootloader version number represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop bootloaderVersion: String

    /**
     * Obtains the hardware model represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop hardwareModel: String

    /**
     * Obtains the software model represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop softwareModel: String

    /**
     * Obtains the product series represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productSeries: String

    /**
     * Obtains the external product series represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop marketName: String

    /**
     * Obtains the device manufacturer represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop manufacture: String

    /**
     * Obtains the Distribution OS name.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS name.
     * distributionOsName will return the ISV OS name
     * If ISV not specified, it will return an empty string
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSName: String

    /**
     * Obtains the Distribution OS version.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS version.
     * distributionOSVersion will return the ISV OS version
     * If ISV not specified, it will return the same value as osFullName
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSVersion: String

    /**
     * Obtains the Distribution OS version.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS api version.
     * distributionOSVersion will return the ISV OS api version
     * If ISV not specified, it will return the same value as sdkApiVersion
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiVersion: Int32

    /**
     * Obtains the Distribution OS release type.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS release type.
     * distributionOSVersion will return the ISV OS release type
     * If ISV not specified, it will return the same value as osReleaseType
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSReleaseType: String

    /**
      * Open Device Identifier (ODID): a developer-level non-permanent device identifier.
      * A developer can be an enterprise or individual developer.
      * Example: dff3cdfd-7beb-1e7d-fdf7-1dbfddd7d30c
      *
      * An ODID will be regenerate in the following scenarios:
      * Restore a phone to its factory settings.
      * Uninstall and reinstall all apps of one developer on one device.
      *
      * An ODID is generated based on the following rules:
      * For apps from the same developer, which are running on the same device, they have the same ODID.
      * For apps from different developers, which are running on the same device, each of them has its own ODID.
      * For apps from the same developer, which are running on different devices, each of them has its own ODID.
      * For apps from different developers, which are running on different devices, each of them has its own ODID.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop ODID: String

    /**
      * Obtains the Distribution OS api name.
      * Independent Software Vendor (ISV) may distribute OHOS with their own OS api name.
      * distributionOSApiName will return the ISV OS api name
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiName: String
}
