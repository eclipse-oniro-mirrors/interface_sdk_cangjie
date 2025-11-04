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

package ohos.bundle.bundle_manager

public import ohos.skill.*
public import ohos.metadata.*
public import ohos.element_name.*
import ohos.labels.*
import ohos.metadata.*
import ohos.resource.*
import ohos.skill.*
import std.collection.*

/**
 * Obtains configuration information about an ability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class AbilityInfo {
    /**
     * Indicates the name of the bundle containing the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleName: String

    /**
     * Indicates the module name of the package to which the capability belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String

    /**
     * Ability simplified class name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String

    /**
     * Indicates the label of the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let label: String

    /**
     * Indicates the label id of the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32

    /**
     * Indicates the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let description: String

    /**
     * Indicates the description id of the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32

    /**
     * Indicates the icon of the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let icon: String

    /**
     * Indicates the icon id of the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32

    /**
     * Process of ability, if user do not set it, the value equal application process.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let process: String

    /**
     * Indicates whether this ability can be called by other abilities.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let exported: Bool

    /**
     * Enumerates ability display orientations.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let orientation: DisplayOrientation

    /**
     * Enumerates ability launch type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let launchType: LaunchType

    /**
     * The permissions that others need to launch this ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissions: Array<String>

    /**
     * The device types that this ability can run on.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let deviceTypes: Array<String>

    /**
     * Obtains configuration information about an application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let applicationInfo: ApplicationInfo

    /**
     * Indicates the metadata of ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>

    /**
     * Indicates whether the ability is enabled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let enabled: Bool

    /**
     * Indicates which window mode is supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let public let supportedWindowModes: Array<SupportedWindowMode>

    /**
     * Indicates window size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let windowSize: WindowSize

    /**
     * Indicates whether to hide the application icon from the dock area.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let excludeFromDock: Bool

    /**
     * Indicates skills of the ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let skills: Array<Skill>

    /**
     * Indicates the appIndex of application, only work in clone app mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32
}

/**
 * Indicates the window size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class WindowSize {
    /**
     * Indicates maximum ratio of width over height of window under free window status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxWindowRatio: Float64

    /**
     * Indicates minimum ratio of width over height of window under free window status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minWindowRatio: Float64

    /**
     * Indicates maximum width of window under free window status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxWindowWidth: UInt32

    /**
     * Indicates minimum width of window under free window status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minWindowWidth: UInt32

    /**
     * Indicates maximum height of window under free window status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxWindowHeight: UInt32

    /**
     * Indicates minimum height of window under free window status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minWindowHeight: UInt32
}

/**
 * Obtains configuration information about an application.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ApplicationInfo {
    /**
     * Indicates the application name, which is the same as bundleName.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String

    /**
     * Description of application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let description: String

    /**
     * Indicates the description id of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32

    /**
     * Indicates whether or not this application may be instantiated.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let enabled: Bool

    /**
     * Indicates the label of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let label: String

    /**
     * Indicates the label id of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32

    /**
     * Indicates the icon of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let icon: String

    /**
     * Indicates the icon id of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32

    /**
     * Process of application, if user do not set it, the value equal bundleName.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let process: String

    /**
     * Indicates the permissions required for accessing the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissions: Array<String>

    /**
     * Indicates the application source code path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let codePath: String

    /**
     * Indicates the metadata of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadataArray: Array<ModuleMetadata>

    /**
     * Indicates whether or not this application may be removable.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let removable: Bool

    /**
     * Indicates the access token of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let accessTokenId: UInt32

    /**
     * Indicates the uid of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let uid: Int32

    /**
     * Indicates icon resource of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconResource: AppResource

    /**
     * Indicates label resource of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelResource: AppResource

    /**
     * Indicates description resource of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionResource: AppResource

    /**
     * Indicates the appDistributionType of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appDistributionType: String

    /**
     * Indicates the appProvisionType of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appProvisionType: String

    /**
     * Indicates whether the application is a system application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let systemApp: Bool

    /**
     * Indicates the type of application is APP.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleType: BundleType

    /**
     * Indicates whether the application is in debug mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let debug: Bool

    /**
     * Indicates whether the application data is unclearable, that is, whether the application data cannot be cleared.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let dataUnclearable: Bool

    /**
     * Indicates whether the application enables cloud file sync.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let cloudFileSyncEnabled: Bool

    /**
     * Indicates native library path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let nativeLibraryPath: String

    /**
     * Indicates the MultiAppMode object of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let multiAppMode: MultiAppMode

    /**
     * Indicates the index of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32

    /**
     * Indicates sources to install the app.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let installSource: String

    /**
     * Indicates the release type of the app.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let releaseType: String
}

/**
 * Indicates the ModuleMetadata.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ModuleMetadata {
    /**
     * Indicates the name of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String

    /**
     * Indicates the metadata of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>
}

/**
 * Indicates MultiAppMode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class MultiAppMode {
    /**
     * Indicates the multiAppModeType of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let multiAppModeType: MultiAppModeType

    /**
     * Indicates the max count of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxCount: Int32
}

/**
 * Used to query the enumeration value of bundleInfo. Multiple values can be passed in the form.
 * Multiple value input, such as GET_BUNDLE_INFO_DEFAULT | GET_BUNDLE_INFO_WITH_APPLICATION.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class BundleFlag {
    /**
     * Used to obtain the default bundleInfo. The obtained bundleInfo does not contain information of
     * signatureInfo, applicationInfo, hapModuleInfo, ability, extensionAbility and permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_DEFAULT: Int32 = 0x00000000

    /**
     * Used to obtain the bundleInfo containing applicationInfo. The obtained bundleInfo does not
     * contain the information of signatureInfo, hapModuleInfo, ability, extensionAbility and permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_APPLICATION: Int32 = 0x00000001

    /**
     * Used to obtain the bundleInfo containing hapModuleInfo. The obtained bundleInfo does not
     * contain the information of signatureInfo, applicationInfo, ability, extensionAbility and permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_HAP_MODULE: Int32 = 0x00000002

    /**
     * Used to obtain the bundleInfo containing ability. The obtained bundleInfo does not
     * contain the information of signatureInfo, applicationInfo, extensionAbility and permission.
     * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE.
     * such as GET_BUNDLE_INFO_WITH_ABILITY | GET_BUNDLE_INFO_WITH_HAP_MODULE.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_ABILITY: Int32 = 0x00000004

    /**
     * Used to obtain the bundleInfo containing extensionAbility. The obtained bundleInfo does not
     * contain the information of signatureInfo, applicationInfo, ability and permission.
     * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
     * such as GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | GET_BUNDLE_INFO_WITH_HAP_MODULE.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY: Int32 = 0x00000008

    /**
     * Used to obtain the bundleInfo containing permission. The obtained bundleInfo does not
     * contain the information of signatureInfo, applicationInfo, hapModuleInfo, extensionAbility and ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION: Int32 = 0x00000010

    /**
     * Used to obtain the metadata contained in applicationInfo, moduleInfo and abilityInfo.
     * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_APPLICATION,
     * GET_BUNDLE_INFO_WITH_HAP_MODULE, GET_BUNDLE_INFO_WITH_ABILITY, GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY,
     * such as GET_BUNDLE_INFO_WITH_APPLICATION | GET_BUNDLE_INFO_WITH_METADATA
     * or GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_ABILITY | GET_BUNDLE_INFO_WITH_METADATA
     * or GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | GET_BUNDLE_INFO_WITH_METADATA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_METADATA: Int32 = 0x00000020

    /**
     * Used to obtain the default bundleInfo containing disabled application and ability.
     * The obtained bundleInfo does not contain information of signatureInfo, applicationInfo,
     * hapModuleInfo, ability, extensionAbility and permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_DISABLE: Int32 = 0x00000040

    /**
     * Used to obtain the bundleInfo containing signatureInfo. The obtained bundleInfo does not
     * contain the information of applicationInfo, hapModuleInfo, extensionAbility, ability and permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_SIGNATURE_INFO: Int32 = 0x00000080

    /**
     * Used to obtain the bundleInfo containing menu configuration in hapModuleInfo.
     * The obtained bundleInfo does not contain the information of applicationInfo, extensionAbility, ability and permission.
     * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
     * such as GET_BUNDLE_INFO_WITH_MENU | GET_BUNDLE_INFO_WITH_HAP_MODULE
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_MENU: Int32 = 0x00000100

    /**
     * Used to obtain the bundleInfo containing router map configuration in hapModuleInfo.
     * The obtained bundleInfo does not contain the information of applicationInfo, extensionAbility, ability and permission.
     * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
     * such as GET_BUNDLE_INFO_WITH_ROUTER_MAP | GET_BUNDLE_INFO_WITH_HAP_MODULE
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_ROUTER_MAP: Int32 = 0x00000200

    /**
     * Used to obtain the skillInfo contained in abilityInfo and extensionInfo.
     * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
     * GET_BUNDLE_INFO_WITH_ABILITY, GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY,
     * such as GET_BUNDLE_INFO_WITH_SKILL | GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_ABILITY
     * or GET_BUNDLE_INFO_WITH_SKILL | GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_SKILL: Int32 = 0x00000800
}

/**
 * Obtains configuration information about a bundle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class BundleInfo {
    /**
     * Indicates the name of this bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String

    /**
     * Indicates the bundle vendor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let vendor: String

    /**
     * Indicates the version code of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let versionCode: UInt32

    /**
     * Indicates the version name of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let versionName: String

    /**
     * Indicates the **minimum ** version compatible with the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minCompatibleVersionCode: UInt32

    /**
     * Indicates the target version number of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let targetVersion: UInt32

    /**
     * Obtains configuration information about an application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appInfo: ApplicationInfo

    /**
     * Obtains configuration information about a module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let hapModulesInfo: Array<HapModuleInfo>

    /**
     * Indicates the required permissions details defined in the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let reqPermissionDetails: Array<ReqPermissionDetail>

    /**
     * Indicates the grant state of required permissions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissionGrantStates: Array<PermissionGrantState>

    /**
     * Indicates the SignatureInfo of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let signatureInfo: SignatureInfo

    /**
     * Indicates the hap install time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let installTime: Int64

    /**
     * Indicates the hap update time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let updateTime: Int64

    /**
     * Indicates the router information of the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let routerMap: Array<RouterItem>

    /**
     * Indicates the appIndex of application, only work in appClone mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32
}

/**
 * Indicates the required permissions details defined in configuration file.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ReqPermissionDetail {
    /**
     * Indicates the name of this required permissions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var name: String

    /**
     * Indicates the module name which the request permission belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var moduleName: String

    /**
     * Indicates the reason of this required permissions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var reason: String

    /**
     * Indicates the reason id of this required permissions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var reasonId: Int32

    /**
     * Indicates the used scene of this required permissions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var usedScene: UsedScene
}

/**
 * The scene which is used.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class UsedScene {
    /**
     * Indicates the abilities that need the permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var abilities: Array<String>

    /**
     * Indicates the time when the permission is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var when: String
}

/**
 * Indicates SignatureInfo.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class SignatureInfo {
    /**
     * Indicates the ID of the application to which this bundle belongs
     * The application ID uniquely identifies an application. It is determined by the bundle name and signature.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appId: String

    /**
     * Indicates the fingerprint of the certificate.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let fingerprint: String

    /**
     * Globally unique identifier of an application, which is allocated by the cloud.
     * AppIdentifier does not change along the application lifecycle, including version updates, certificate changes,
     * public and private key changes, and application transfer.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIdentifier: String
}

/**
 * This module is used to obtain package information of various applications installed on the current device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class BundleManager {
    /**
     * Obtains own bundleInfo.
     *
     * @param { Int32 } bundleFlags - Indicates the flag used to specify information contained in the BundleInfo
     * objects that will be returned.
     * @returns { BundleInfo } The result of getting the bundle info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core",
        workerthread: true
    ]
    public static func getBundleInfoForSelf(bundleFlags: Int32): BundleInfo

    /**
     * Obtains the profile designated by metadata name, abilityName and moduleName from the current application.
     *
     * @param { String } moduleName - Indicates the moduleName of the application.
     * @param { String } abilityName - Indicates the abilityName of the application.
     * @param { String } [metadataName] - Indicates the name of metadata in ability.
     * @returns { Array<String> } Returns string in json-format of the corresponding config file.
     * @throws { BusinessException } 17700002 - The specified moduleName is not existed.
     * @throws { BusinessException } 17700003 - The specified abilityName is not existed.
     * @throws { BusinessException } 17700024 - Failed to get the profile because there is no profile in the HAP.
     * @throws { BusinessException } 17700029 - The specified ability is disabled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func getProfileByAbility(moduleName: String, abilityName: String, metadataName!: String = ""): Array<String>

    /**
     * Check whether the link can be opened.
     *
     * @param { String } link - Indicates the link to be opened.
     * @returns { Bool } Returns true if the link can be opened; returns false otherwise.
     * @throws { BusinessException } 17700055 - The specified link is invalid.
     * @throws { BusinessException } 17700056 - The scheme of the specified link is not in the querySchemes.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core",
        throwexception: true
    ]
    public static func canOpenLink(link: String): Bool
}

/**
 * Indicates bundle type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum BundleType {
    /**
     * Indicates app.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    App
    | ...
}

/**
 * PermissionGrantState
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum PermissionGrantState {
    /**
     * PERMISSION_DENIED
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    PermissionDenied
    | 
    /**
     * PERMISSION_GRANTED
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    PermissionGranted
    | ...
}

/**
 * Display orientation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum DisplayOrientation {
    /**
     * Indicates that the system automatically determines the display orientation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Unspecified
    | 
    /**
     * Indicates the landscape orientation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Landscape
    | 
    /**
     * Indicates the portrait orientation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Portrait
    | 
    /**
     * Indicates the page ability orientation is the same as that of the nearest ability in the stack.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FollowRecent
    | 
    /**
     * Indicates the inverted landscape orientation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    LandscapeInverted
    | 
    /**
     * Indicates the inverted portrait orientation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    PortraitInverted
    | 
    /**
     * Indicates the orientation can be auto-rotated.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotation
    | 
    /**
     * Indicates the landscape orientation rotated with sensor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationLandscape
    | 
    /**
     * Indicates the portrait orientation rotated with sensor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationPortrait
    | 
    /**
     * Indicates the sensor restricted mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationRestricted
    | 
    /**
     * Indicates the sensor landscape restricted mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationLandscapeRestricted
    | 
    /**
     * Indicates the sensor portrait restricted mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationPortraitRestricted
    | 
    /**
     * Indicates the locked orientation mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Locked
    | 
    /**
     * Indicates the system automatically determines the sensor restricted mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationUnspecified
    | 
    /**
     * Indicates the orientation follow the desktop rotate mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FollowDesktop
    | ...
}

/**
 * Support window mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum SupportWindowMode {
    /**
     * Indicates supported window mode of full screen mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FullScreen
    | 
    /**
     * Indicates supported window mode of split mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Split
    | 
    /**
     * Indicates supported window mode of floating mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Floating
    | ...
}

/**
 * Launch type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum LaunchType {
    /**
     * Indicates that the ability has only one instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Singleton
    | 
    /**
     * Indicates that the ability can have multiple instances.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Multiton
    | 
    /**
     * Indicates that the ability can have specified instances.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Specified
    | ...
}

/**
 * This enumeration value is used to identify various types of extension ability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum ExtensionAbilityType {
    /**
     * Indicates extension info with type of form.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Form
    | 
    /**
     * Indicates extension info with type of work schedule.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    WorkScheduler
    | 
    /**
     * Indicates extension info with type of input method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    InputMethod
    | 
    /**
     * Indicates extension info with type of service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Service
    | 
    /**
     * Indicates extension info with type of accessibility.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Accessibility
    | 
    /**
     * Indicates extension info with type of dataShare.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    DataShare
    | 
    /**
     * Indicates extension info with type of filesShare.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FileShare
    | 
    /**
     * Indicates extension info with type of staticSubscriber.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    StaticSubscriber
    | 
    /**
     * Indicates extension info with type of wallpaper.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Wallpaper
    | 
    /**
     * Indicates extension info with type of backup.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Backup
    | 
    /**
     * Indicates extension info with type of window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Window
    | 
    /**
     * Indicates extension info with type of enterprise admin.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    EnterpriseAdmin
    | 
    /**
     * Indicates extension info with type of thumbnail.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Thumbnail
    | 
    /**
     * Indicates extension info with type of preview.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Preview
    | 
    /**
     * Indicates extension info with type of print.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Print
    | 
    /**
     * Indicates extension info with type of share.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Share
    | 
    /**
     * Indicates extension info with type of push.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Push
    | 
    /**
     * Indicates extension info with type of driver.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Driver
    | 
    /**
     * Indicates extension info with type of action.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Action
    | 
    /**
     * Indicates extension info with type of ads service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AdsService
    | 
    /**
     * Indicates extension info with type of embedded UI.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    EmbeddedUI
    | 
    /**
     * Indicates extension info with type of insight intent UI.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    InsightIntentUI
    | 
    /**
     * Indicates extension info with type of unspecified.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Unspecified
    | ...
}

/**
 * Indicates module type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum ModuleType {
    /**
     * Indicates entry type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Entry
    | 
    /**
     * Indicates feature type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Feature
    | 
    /**
     * Indicates shared type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Shared
    | ...
}

/**
 * This enumeration value is used to identify various types of extension ability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum MultiAppModeType {
    /**
     * Indicates multi app mode with type of unspecified.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Unspecified
    | 
    /**
     * Indicates multi app mode with type of multiInstance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    MultiInstance
    | 
    /**
     * Indicates multi app mode with type of appClone.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AppClone
    | ...
}

/**
 * The constant for application type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
]
public enum ApplicationType {
    /**
     * Default browser identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Browser
    | 
    /**
     * Default image identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Image
    | 
    /**
     * Default audio identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Audio
    | 
    /**
     * Default video identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Video
    | 
    /**
     * Default PDF identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Pdf
    | 
    /**
     * Default Default word identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Word
    | 
    /**
     * Default excel identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Excel
    | 
    /**
     * Default PPT identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Ppt
    | 
    /**
     * Default email identifier.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Email
    | ...
}

/**
 * Default application manager.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
]
public class DefaultAppManager {
    /**
     * Query whether the caller is default application based on type.
     *
     * @param { ApplicationType } appType - Application type or a file type that conforms to media type format.
     * @returns { Bool } Return true if caller is default application; return false otherwise.
     * @throws { BusinessException } 801 - Capability not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp",
        throwexception: true,
        workerthread: true
    ]
    public static func isDefaultApplication(appType: ApplicationType): Bool
}

/**
* Extension information about a bundle.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ExtensionAbilityInfo {
    /**
     * Indicates the name of the bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleName: String

    /**
     * Indicates the name of the module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String

    /**
     * Indicates the name of the extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String

    /**
     * Indicates the label id of the extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32

    /**
     * Indicates the description id of the extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32

    /**
     * Indicates the icon id of the extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32

    /**
     * Indicates whether this ability can be called by other abilities.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let exported: Bool

    /**
     * Enumerates types of the extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let extensionAbilityType: ExtensionAbilityType

    /**
     * The permissions that others need to use this extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissions: Array<String>

    /**
     * Obtains configuration information about an application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let applicationInfo: ApplicationInfo

    /**
     * Indicates the metadata of bundle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>

    /**
     * Indicates the src language to express extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let enabled: Bool

    /**
     * Indicates the read permission extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let readPermission: String

    /**
     * Indicates the write permission of extension ability info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let writePermission: String

    /**
     * Indicates type name of the extension ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let extensionAbilityTypeName: String

    /**
     * Indicates skills of the extension ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let skills: Array<Skill>

    /**
     * Indicates the appIndex of extension ability, only work in clone app mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32
}

/**
 * Obtains configuration information about a hap module.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class HapModuleInfo {
    /**
     * Indicates the name of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String

    /**
     * Indicates the icon of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let icon: String

    /**
     * Indicates the icon id of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32

    /**
     * Indicates the label of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let label: String

    /**
     * Indicates the label id of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32

    /**
     * Describes the hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let description: String

    /**
     * Indicates the description of this hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32

    /**
     * Indicates main elementName of the hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let mainElementName: String

    /**
     * Obtains configuration information about abilities.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let abilitiesInfo: Array<AbilityInfo>

    /**
     * Obtains configuration information about extension abilities.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let extensionAbilitiesInfo: Array<ExtensionAbilityInfo>

    /**
     * Indicates the metadata of ability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>

    /**
     * The device types that this hap module can run on.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let deviceTypes: Array<String>

    /**
     * Indicates whether free installation of the hap module is supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let installationFree: Bool

    /**
     * Indicates the hash value of the hap module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let hashValue: String

    /**
     * Indicates the type of the module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleType: ModuleType

    /**
     * Indicates the preload module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let preloads: Array<PreloadItem>

    /**
     * Indicates the dependency module that this module depends on.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let dependencies: Array<Dependency>

    /**
     * Indicates the menu configuration.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let fileContextMenuConfig: String

    /**
     * Indicates the router information of the module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let routerMap: Array<RouterItem>

    /**
     * Indicates the code path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let codePath: String

    /**
     * Indicates native library path.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let nativeLibraryPath: String
}

/**
 * Indicates the data item defined in router item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class DataItem {
    /**
     * Indicates the key of the custom data item.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let key: String

    /**
     * Indicates the value of the custom data item.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let value: String
}

/**
 * Indicates the dependency.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class Dependency {
    /**
     * Indicates the bundle name of the dependency.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleName: String

    /**
     * Indicates the module name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String

    /**
     * Indicates the version code of the dependency.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let versionCode: UInt32
}

/**
 * Indicates the preloadItem.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class PreloadItem {
    /**
     * Indicates the module name need preload.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String
}

/**
 * Indicates the router item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class RouterItem {
    /**
     * Indicates the name of the module to which the current page belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String

    /**
     * Indicates the file path of the current page within the module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let pageSourceFile: String

    /**
     * Indicates the name of the function @Builder decorated
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let buildFunction: String

    /**
     * Indicates the data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let data: Array<DataItem>

    /**
     * Indicates the json string of custom data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let customData: String
}
