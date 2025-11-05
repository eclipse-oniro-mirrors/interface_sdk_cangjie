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

package ohos.app.ability.ui_ability

import ohos.ability.ability_result.*
import ohos.app.ability.BaseContext
import ohos.app.ability.ability_constant.*
import ohos.app.ability.configuration.*
import ohos.app.ability.context_constant.*
import ohos.app.ability.dialog_request.*
import ohos.app.ability.start_options.*
import ohos.app.ability.want.*
import ohos.ark_interop.*
import ohos.bundle.bundle_manager.*
import ohos.business_exception.AsyncCallback
import ohos.labels.*
import ohos.resource_manager.*
import ohos.window.*
import std.collection.*

/**
 * The class of an ability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
]
abstract sealed class Ability {}

/**
 * The context of an abilityStage. It allows access to abilityStage-specific resources.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityStageContext <: Context {
    /**
     * Indicates configuration information about an module.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var currentHapModuleInfo: HapModuleInfo
}

/**
 * The ApplicationContext module, inherited from Context, provides application-level context capabilities, including
 * APIs for registering and unregistering the lifecycle of application components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ApplicationContext <: Context {}

/**
 * The Context module, inherited frome BaseContext, provides context for abilities or applications, including
 * access to application-specific resources.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class Context <: BaseContext {
    /**
     * Object for resource management.
     *
     * @returns { ResourceManager } Returns the Object for resource management.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop resourceManager: ResourceManager

    /**
     * Application information.
     *
     * @returns { ApplicationInfo } Returns the Application information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop applicationInfo: ApplicationInfo

    /**
     * File directory.
     *
     * @returns { String } Returns the file directory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop filesDir: String

    /**
     * Encryption level of the directory.
     *
     * @returns { AreaMode } Returns the encryption level of the directory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop area: AreaMode
}

/**
 * Extend Context for Cangjie object to ArkTs object.
 */
extend Context <: SystemObjectInteropTypeToJS {
    /**
     * Convert Cangjie object to ArkTs object.
     *
     * @param { JSContext } context - The JSRuntime context.
     * @returns { JSValue } Returns the JSValue converted from the Cangjie object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func toJSValue(context: JSContext): JSValue
}

/**
 * Create Cangjie object from ArkTs object.
 *
 * @param { JSContext } context - The JSRuntime context.
 * @param { JSValue } input - The JSValue to be converted.
 * @returns { UIAbilityContext } Returns the UIAbilityContext converted from the JSValue.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createUIAbilityContextFromJSValue(context: JSContext, input: JSValue): UIAbilityContext

/**
 * Create Cangjie object from ArkTs object.
 *
 * @param { JSContext } context - The JSRuntime context.
 * @param { JSValue } input - The JSValue to be converted.
 * @returns { AbilityStageContext } Returns the AbilityStageContext converted from the JSValue.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createAbilityStageContextFromJSValue(context: JSContext, input: JSValue): AbilityStageContext

/**
 * Create Cangjie object from ArkTs object.
 *
 * @param { JSContext } context - The JSRuntime context.
 * @param { JSValue } input - The JSValue to be converted.
 * @returns { ApplicationContext } Returns the ApplicationContext converted from the JSValue.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createApplicationContextFromJSValue(context: JSContext, input: JSValue): ApplicationContext

/**
 * Create Cangjie object from ArkTs object.
 *
 * @param { JSContext } context - The JSRuntime context.
 * @param { JSValue } input - The JSValue to be converted.
 * @returns { Context } Returns the Context converted from the JSValue.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createContextFromJSValue(context: JSContext, input: JSValue): Context

/**
 * Interface for Cangjie object to ArkTs object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public interface SystemObjectInteropTypeToJS {
    /**
     * Convert Cangjie object to ArkTs object.
     *
     * @param { JSContext } context - The JSRuntime context.
     * @returns { JSValue } Returns the JSValue converted from the Cangjie object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    func toJSValue(context: JSContext): JSValue
}

/**
 * UIAbility is an application component that has the UI.
 * The UIAbility module, inherited from Ability, provides lifecycle callbacks such as component creation, destruction,
 * and foreground/background switching.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
]
public open class UIAbility <: Ability {
    /**
     * Context of the UIAbility.
     *
     * @returns { UIAbilityContext } Returns the context of the UIAbility.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public mut prop context: UIAbilityContext

    /**
     * Parameters for starting the UIAbility.
     *
     * @returns { Want } Returns the parameters for starting the UIAbility.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public mut prop launchWant: Want

    /**
     * Latest Want received through onCreate or onNewWant when the UIAbility is started for multiple times.
     *
     * @returns { Want } Returns the latest Want received through onCreate or onNewWant when the UIAbility is started
     * for multiple times.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public mut prop lastRequestWant: Want

    /**
     * Called to initialize the service logic when a UIAbility instance in the completely closed state is created.
     * In other words, a UIAbility instance enters this lifecycle callback from a cold start. This API returns the
     * result synchronously and does not support asynchronous callback.
     *
     * @param { Want } want - Want information, including the ability name and bundle name.
     * @param { LaunchParam } launchParam - Parameters for starting the UIAbility, and the reason for
     * the last abnormal exit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onCreate(want: Want, launchParam: LaunchParam): Unit

    /**
     * Called when a WindowStage is created for this UIAbility.
     *
     * @param { WindowStage } windowStage - WindowStage information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onWindowStageCreate(windowStage: WindowStage): Unit

    /**
     * Called when the WindowStage is destroyed for this UIAbility.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onWindowStageDestroy(): Unit

    /**
     * Called to clear resources when this UIAbility is destroyed.
     * This API returns the result synchronously or uses a promise to return the result.
     * After the onDestroy() lifecycle callback is executed, the application may exit. Consequently,
     * the asynchronous function (for example, asynchronously writing data to the database) in onDestroy() may fail to
     * be executed. You can use the asynchronous lifecycle to ensure that the subsequent lifecycle continues only after
     * the asynchronous function in onDestroy() finishes the execution.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onDestroy(): Unit

    /**
     * Triggered when the application transitions from the background to the foreground.
     * It is called between onWillForeground and onDidForeground.
     * It can be used to request system resources required, for example, requesting location services when the
     * application transitions to the foreground.
     * 
     * NOTE:
     * This API returns the result synchronously and does not support asynchronous callback.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onForeground(): Unit

    /**
     * Triggered when the application transitions from the background to the foreground.
     * It is called between onWillForeground and onDidForeground.
     * It can be used to request system resources required, for example, requesting location services when the
     * application transitions to the foreground.
     * 
     * NOTE:
     * This API returns the result synchronously and does not support asynchronous callback.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onBackground(): Unit

    /**
     * Called when a UIAbility instance that has undergone the following states is started again:
     * started in the foreground, running in the foreground, and switched to the background.
     *
     * The triggering of the onNewWant lifecycle of a UIAbility instance indicates that this launch is a hot launch.
     * Note that a hot launch does not necessarily trigger the onNewWant lifecycle.
     *
     * @param { Want } want - Want information, such as the ability name and bundle name.
     * @param { LaunchParam } launchParam - Reason for the UIAbility startup and the last abnormal exit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onNewWant(want: Want, launchParam: LaunchParam): Unit
}

/**
 * The context of an ability. It allows access to ability-specific resources.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class UIAbilityContext <: Context {
    /**
     * Starts a new ability. If the caller application is in foreground, you can use this method to start ability;
     * If the caller application is in the background, you need to apply for
     * permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
     * If the target ability is visible, you can start the target ability; If the target ability is invisible,
     * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible ability.
     * If the target ability is in cross-device, you need to apply for permission:ohos.permission.DISTRIBUTED_DATASYNC.
     *
     * @param { Want } want - Indicates the ability to start.
     * @param { ?StartOptions } [options] - Indicates the start options. The default value is None.
     * @throws { BusinessException } 201 - The application does not have permission to call the interface.
     * @throws { BusinessException } 801 - Capability not support.
     * @throws { BusinessException } 16000001 - The specified ability does not exist.
     * @throws { BusinessException } 16000002 - Incorrect ability type.
     * @throws { BusinessException } 16000004 - Cannot start an invisible component.
     * @throws { BusinessException } 16000005 - The specified process does not have the permission.
     * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
     * @throws { BusinessException } 16000008 - The crowdtesting application expires.
     * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
     * @throws { BusinessException } 16000010 - The call with the continuation and prepare continuation flag is
     * forbidden.
     * @throws { BusinessException } 16000011 - The context does not exist.
     * @throws { BusinessException } 16000012 - The application is controlled.
     * @throws { BusinessException } 16000013 - The application is controlled by EDM.
     * @throws { BusinessException } 16000018 - Redirection to a third-party application is not allowed in API version
     * greater than 11.
     * @throws { BusinessException } 16000019 - No matching ability is found.
     * @throws { BusinessException } 16000050 - Internal error.
     * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
     * @throws { BusinessException } 16000055 - Installation-free timed out.
     * @throws { BusinessException } 16000067 - The StartOptions check failed.
     * @throws { BusinessException } 16000068 - The ability is already running.
     * @throws { BusinessException } 16000071 - App clone is not supported.
     * @throws { BusinessException } 16000072 - App clone or multi-instance is not supported.
     * @throws { BusinessException } 16000073 - The app clone index is invalid.
     * @throws { BusinessException } 16000076 - The app instance key is invalid.
     * @throws { BusinessException } 16000077 - The number of app instances reaches the limit.
     * @throws { BusinessException } 16000078 - The multi-instance is not supported.
     * @throws { BusinessException } 16000079 - The APP_INSTANCE_KEY cannot be specified.
     * @throws { BusinessException } 16000080 - Creating a new instance is not supported.
     * @throws { BusinessException } 16200001 - The caller has been released.
     * @throws { BusinessException } 16300003 - The target application is not the current application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func startAbility(want: Want, options!: ?StartOptions = None): Unit

    /**
     * Destroys this Page ability.
     *
     * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
     * @throws { BusinessException } 16000011 - The context does not exist.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func terminateSelf(): Unit

    /**
     * Destroys the Page ability while returning the specified result code and data to the caller.
     *
     * @param { AbilityResult } parameter - Indicates the result to return.
     * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
     * @throws { BusinessException } 16000011 - The context does not exist.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func terminateSelfWithResult(parameter: AbilityResult): Unit

    /**
     * Check to see ability is in terminating state.
     *
     * @returns { Bool } Returns true when ability is in terminating state, else returns false.
     * @throws { BusinessException } 16000011 - The context does not exist.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true
    ]
    public func isTerminating(): Bool

    /**
     * Starts an ability and returns the execution result when the ability is destroyed. If the caller application is
     * in foreground,
     * you can use this method to start ability; If the caller application is in the background,
     * you need to apply for permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
     * If the target ability is visible, you can start the target ability; If the target ability is invisible,
     * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible ability.
     * If the target ability is in cross-device, you need to apply for permission:ohos.permission.DISTRIBUTED_DATASYNC.
     *
     * @param { Want } want - Indicates the ability to start.
     * @param { AsyncCallback<AbilityResult> } callback - The callback is used to return the result of startAbility.
     * @throws { BusinessException } 201 - The application does not have permission to call the interface.
     * @throws { BusinessException } 16000001 - The specified ability does not exist.
     * @throws { BusinessException } 16000002 - Incorrect ability type.
     * @throws { BusinessException } 16000004 - Cannot start an invisible component.
     * @throws { BusinessException } 16000005 - The specified process does not have the permission.
     * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
     * @throws { BusinessException } 16000008 - The crowdtesting application expires.
     * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
     * @throws { BusinessException } 16000010 - The call with the continuation and prepare continuation flag is
     * forbidden.
     * @throws { BusinessException } 16000011 - The context does not exist.
     * @throws { BusinessException } 16000012 - The application is controlled.
     * @throws { BusinessException } 16000013 - The application is controlled by EDM.
     * @throws { BusinessException } 16000018 - Redirection to a third-party application is not allowed in API version
     * greater than 11.
     * @throws { BusinessException } 16000019 - No matching ability is found.
     * @throws { BusinessException } 16000050 - Internal error.
     * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
     * @throws { BusinessException } 16000055 - Installation-free timed out.
     * @throws { BusinessException } 16000071 - App clone is not supported.
     * @throws { BusinessException } 16000072 - App clone or multi-instance is not supported.
     * @throws { BusinessException } 16000073 - The app clone index is invalid.
     * @throws { BusinessException } 16000076 - The app instance key is invalid.
     * @throws { BusinessException } 16000077 - The number of app instances reaches the limit.
     * @throws { BusinessException } 16000078 - The multi-instance is not supported.
     * @throws { BusinessException } 16000079 - The APP_INSTANCE_KEY cannot be specified.
     * @throws { BusinessException } 16000080 - Creating a new instance is not supported.
     * @throws { BusinessException } 16200001 - The caller has been released.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true
    ]
    public func startAbilityForResult(want: Want, callback: AsyncCallback<AbilityResult>): Unit

    /**
     * Starts an ability and returns the execution result when the ability is destroyed. If the caller application is
     * in foreground,
     * you can use this method to start ability; If the caller application is in the background,
     * you need to apply for permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
     * If the target ability is visible, you can start the target ability; If the target ability is invisible,
     * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible ability.
     * If the target ability is in cross-device, you need to apply for permission:ohos.permission.DISTRIBUTED_DATASYNC.
     *
     * @param { Want } want - Indicates the ability to start.
     * @param { StartOptions } options - Indicates the start options.
     * @param { AsyncCallback<AbilityResult> } callback - The callback is used to return the result of startAbility.
     * @throws { BusinessException } 201 - The application does not have permission to call the interface.
     * @throws { BusinessException } 16000001 - The specified ability does not exist.
     * @throws { BusinessException } 16000004 - Cannot start an invisible component.
     * @throws { BusinessException } 16000005 - The specified process does not have the permission.
     * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
     * @throws { BusinessException } 16000008 - The crowdtesting application expires.
     * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
     * @throws { BusinessException } 16000011 - The context does not exist.
     * @throws { BusinessException } 16000012 - The application is controlled.
     * @throws { BusinessException } 16000013 - The application is controlled by EDM.
     * @throws { BusinessException } 16000018 - Redirection to a third-party application is not allowed in API version
     * greater than 11.
     * @throws { BusinessException } 16000019 - No matching ability is found.
     * @throws { BusinessException } 16000050 - Internal error.
     * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
     * @throws { BusinessException } 16000055 - Installation-free timed out.
     * @throws { BusinessException } 16000071 - App clone is not supported.
     * @throws { BusinessException } 16000072 - App clone or multi-instance is not supported.
     * @throws { BusinessException } 16000073 - The app clone index is invalid.
     * @throws { BusinessException } 16000076 - The app instance key is invalid.
     * @throws { BusinessException } 16000077 - The number of app instances reaches the limit.
     * @throws { BusinessException } 16000078 - The multi-instance is not supported.
     * @throws { BusinessException } 16000079 - The APP_INSTANCE_KEY cannot be specified.
     * @throws { BusinessException } 16000080 - Creating a new instance is not supported.
     * @throws { BusinessException } 16200001 - The caller has been released.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true
    ]
    public func startAbilityForResult(want: Want, options: StartOptions, callback: AsyncCallback<AbilityResult>): Unit

    /**
     * Starts a service extension ability that supports modal dialog. If the caller application is in foreground,
     * you can use this method to start service extension ability; If the caller application is in the background,
     * you need to apply for permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
     * If the target service extension ability is visible, you can start the target service extension ability;
     * If the target service extension ability is invisible,
     * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible service
     * extension ability.
     *
     * @param { Want } want - Indicates the dialog service to start.
     * @param { AsyncCallback<RequestResult> } result - The callback is used to return the request result.
     * @throws { BusinessException } 201 - The application does not have permission to call the interface.
     * @throws { BusinessException } 16000001 - The specified ability does not exist.
     * @throws { BusinessException } 16000002 - Incorrect ability type.
     * @throws { BusinessException } 16000004 - Cannot start an invisible component.
     * @throws { BusinessException } 16000005 - The specified process does not have the permission.
     * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
     * @throws { BusinessException } 16000008 - The crowdtesting application expires.
     * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
     * @throws { BusinessException } 16000010 - The call with the continuation and prepare continuation flag is
     * forbidden.
     * @throws { BusinessException } 16000011 - The context does not exist.
     * @throws { BusinessException } 16000012 - The application is controlled.
     * @throws { BusinessException } 16000013 - The application is controlled by EDM.
     * @throws { BusinessException } 16000050 - Internal error.
     * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
     * @throws { BusinessException } 16000055 - Installation-free timed out.
     * @throws { BusinessException } 16200001 - The caller has been released.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true
    ]
    public func requestDialogService(want: Want, result: AsyncCallback<RequestResult>): Unit
}
