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

package ohos.app.ability.ability_delegator_registry

import ohos.app.ability.ability_stage.AbilityStage
import ohos.app.ability.ui_ability.{Context, UIAbility}
import ohos.app.ability.want.Want
import ohos.labels.APILevel
import std.collection.HashMap

/**
 * Describes all lifecycle states of an ability.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum AbilityLifecycleState {
    
    /**
     * Ability is in invalid state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Uninitialized
    | 
    
    /**
     * Ability is in the created state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Create
    | 
    
    /**
     * Ability is in the foreground state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Foreground
    | 
    
    /**
     * Ability is in the background state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Background
    | 

    /**
     * Ability is in a destroyed state.
     */
    
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Destroy
    | ...
}


extend AbilityLifecycleState <: ToString {
    
    /**
     * Converts the AbilityLifecycleState to its string representation.
     * @returns { String } A string representation of the AbilityLifecycleState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func toString(): String
}


extend AbilityLifecycleState <: Equatable<AbilityLifecycleState> {
    
    /**
     * Compares this AbilityLifecycleState with another for equality.
     * @param { AbilityLifecycleState } other - The AbilityLifecycleState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public operator func ==(other: AbilityLifecycleState): Bool
    
    /**
     * Compares this AbilityLifecycleState with another for inequality.
     * @param { AbilityLifecycleState } other - The AbilityLifecycleState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public operator func !=(other: AbilityLifecycleState): Bool
}

/**
 * A global register used to store the AbilityDelegator and AbilityDelegatorArgs objects registered
 * during application startup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityDelegatorRegistry {
    /**
     * Get the AbilityDelegator object of the application.
     *
     * @returns { AbilityDelegator } Return the AbilityDelegator object initialized when the application is started.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func getAbilityDelegator(): AbilityDelegator

    /**
     * Get unit test arguments stored in the AbilityDelegatorArgs object.
     *
     * @returns { AbilityDelegatorArgs } Return the previously registered AbilityDelegatorArgs object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func getArguments(): AbilityDelegatorArgs
}

/**
 * A object that records the result of shell command executes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ShellCmdResult {
    /**
     * shell cmd exec result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop exitCode: Int32

    /**
     * the cmd standard result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop stdResult: String
}

/**
 * A global test utility interface used for adding AbilityMonitor objects and control lifecycle states of abilities.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityDelegator {
    /**
     * Start a new ability.
     *
     * @param { Want } want - Indicates the ability to start
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
        throwexception: true,
        workerthread: true
    ]
    public func startAbility(want: Want): Unit

    /**
     * Execute the given command in the aa tools side.
     *
     * @param { String } cmd - Shell command
     * @param { Int64 } [timeoutSecs] - Timeout, in seconds.
     * @returns { ShellCmdResult } Returns the result of the shell command execution.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        workerthread: true
    ]
    public func executeShellCommand(cmd: String, timeoutSecs!: Int64 = 0): ShellCmdResult

    /**
     * Obtain the application context.
     *
     * @returns { Context } Returns the app Context.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func getAppContext(): Context

    /**
     * Finish the test and print log information to the unit testing console.
     * The total length of the log information to be printed cannot exceed 1000 characters.
     *
     * @param { String } msg - Log information.
     * @param { Int64 } code - Result code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        workerthread: true
    ]
    public func finishTest(msg: String, code: Int64): Unit

    /**
     * Add an AbilityMonitor object for monitoring the lifecycle state changes of the specified ability in this process.
     *
     * @param { AbilityMonitor } monitor - AbilityMonitor objects.
     * @throws { BusinessException } 16000100 - Calling AddAbilityMonitor failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func addAbilityMonitor(monitor: AbilityMonitor): Unit

    /**
     * Remove a specified AbilityMonitor object from the application memory.
     *
     * @param { AbilityMonitor } monitor - AbilityMonitor object.
     * @throws { BusinessException } 16000100 - Calling RemoveAbilityMonitor failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func removeAbilityMonitor(monitor: AbilityMonitor): Unit

    /**
     * Wait for and returns the Ability object that matches the conditions set in the given AbilityMonitor.
     *
     * @param { AbilityMonitor } monitor - AbilityMonitor object.
     * @param { Int64 } [timeout] - Maximum wait time, in milliseconds.
     * @returns { UIAbility } Returns the Ability object that matches the conditions.
     * @throws { BusinessException } 16000050 - Internal error.
     * @throws { BusinessException } 16000100 - Calling WaitAbilityMonitor failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func waitAbilityMonitor(monitor: AbilityMonitor, timeout!: Int64 = 5000): UIAbility

    /**
     * Add an AbilityStageMonitor object for monitoring the lifecycle state changes of the specified abilityStage in
     * this process.
     *
     * @param { AbilityStageMonitor } monitor - AbilityStageMonitor object.
     * @throws { BusinessException } 16000100 - Calling AddAbilityStageMonitor failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func addAbilityStageMonitor(monitor: AbilityStageMonitor): Unit

    /**
     * Remove a specified AbilityStageMonitor object from the application memory.
     *
     * @param { AbilityStageMonitor } monitor - AbilityStageMonitor object.
     * @throws { BusinessException } 16000100 - Calling RemoveAbilityStageMonitor failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func removeAbilityStageMonitor(monitor: AbilityStageMonitor): Unit

    /**
     * Wait for and returns the AbilityStage object that matches the conditions set in the given AbilityStageMonitor.
     *
     * @param { AbilityStageMonitor } monitor - AbilityStageMonitor object.
     * @param { Int64 } [timeout] - Maximum wait time, in milliseconds.
     * @returns { AbilityStage } Returns the AbilityStage object that matches the conditions.
     * @throws { BusinessException } 16000050 - Internal error.
     * @throws { BusinessException } 16000100 - Calling WaitAbilityStageMonitor failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func waitAbilityStageMonitor(monitor: AbilityStageMonitor, timeout!: Int64 = 5000): AbilityStage

    /**
     * Prints log information to the unit testing console.
     * The total length of the log information to be printed cannot exceed 1000 characters.
     *
     * @param { String } msg - Log information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        workerthread: true
    ]
    public func print(msg: String): Unit

    /**
     * Obtain the lifecycle state of a specified ability.
     *
     * @param { UIAbility } ability - The Ability object.
     * @returns { AbilityLifecycleState } Returns the state of the Ability object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func getAbilityState(ability: UIAbility): AbilityLifecycleState

    /**
     * Obtain the ability that is currently being displayed in this process.
     *
     * @returns { UIAbility } Returns the UIAbility object that is currently on top.
     * @throws { BusinessException } 16000050 - Internal error.
     * @throws { BusinessException } 16000100 - Calling GetCurrentTopAbility failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getCurrentTopAbility(): UIAbility

    /**
     * Invoke the Ability.onForeground() callback of a specified ability without changing its lifecycle state.
     *
     * @param { UIAbility } ability - The ability object.
     * @throws { BusinessException } 16000100 - Calling DoAbilityForeground failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func doAbilityForeground(ability: UIAbility): Unit

    /**
     * Invoke the Ability.onBackground() callback of a specified ability without changing its lifecycle state.
     *
     * @param { UIAbility } ability - The ability object.
     * @throws { BusinessException } 16000100 - Calling DoAbilityBackground failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public func doAbilityBackground(ability: UIAbility): Unit
}

/**
 * Store unit testing-related parameters, including test case names, and test runner name.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityDelegatorArgs {
    /**
     * the bundle name of the application being tested.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop bundleName: String

    /**
     * the parameters used for unit testing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop parameters: HashMap<String, String>

    /**
     * the class names of all test cases.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop testCaseNames: String

    /**
     * the class name of the test runner used to execute test cases.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop testRunnerClassName: String
}

/**
 * Provide methods for matching monitored Ability objects that meet specified conditions.
 * The most recently matched Ability objects will be saved in the AbilityMonitor object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityMonitor {
    /**
     * The name of the ability to monitor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var abilityName: String

    /**
     * The name of the module to monitor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var moduleName: String

    /**
     * Called back when the ability is created for initialization.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityCreate: ?(UIAbility) -> Unit

    /**
     * Called back when the state of the ability changes to foreground.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityForeground: ?(UIAbility) -> Unit

    /**
     * Called back when the state of the ability changes to background.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityBackground: ?(UIAbility) -> Unit

    /**
     * Called back before the ability is destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityDestroy: ?(UIAbility) -> Unit

    /**
     * Called back when an ability window stage is created.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onWindowStageCreate: ?(UIAbility) -> Unit

    /**
     * Called back when an ability window stage is restored.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onWindowStageRestore: ?(UIAbility) -> Unit

    /**
     * Called back when an ability window stage is destroyed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onWindowStageDestroy: ?(UIAbility) -> Unit

    /**
     * AbilityMonitor constructor.
     *
     * @param { String } abilityName - The name of the ability to monitor.
     * @param { String } [moduleName] - The name of the module to monitor. The default value is "".
     * @param { ?(UIAbility) -> Unit } [onAbilityCreate] - Called back when the ability is created for initialization.
     * The default value is None.
     * @param { ?(UIAbility) -> Unit } [onAbilityForeground] - Called back when the state of the ability changes to
     * foreground. The default value is None.
     * @param { ?(UIAbility) -> Unit } [onAbilityBackground] - Called back when the state of the ability changes to
     * background. The default value is None.
     * @param { ?(UIAbility) -> Unit } [onAbilityDestroy] - Called back before the ability is destroyed. The default
     * value is None.
     * @param { ?(UIAbility) -> Unit } [onWindowStageCreate] - Called back when an ability window stage is created. The
     * default value is None.
     * @param { ?(UIAbility) -> Unit } [onWindowStageRestore] - Called back when an ability window stage is restored. The
     * default value is None.
     * @param { ?(UIAbility) -> Unit } [onWindowStageDestroy] - Called back when an ability window stage is destroyed.
     * The default value is None.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        abilityName: String,
        moduleName!: String = "",
        onAbilityCreate!: ?(UIAbility) -> Unit = None,
        onAbilityForeground!: ?(UIAbility) -> Unit = None,
        onAbilityBackground!: ?(UIAbility) -> Unit = None,
        onAbilityDestroy!: ?(UIAbility) -> Unit = None,
        onWindowStageCreate!: ?(UIAbility) -> Unit = None,
        onWindowStageRestore!: ?(UIAbility) -> Unit = None,
        onWindowStageDestroy!: ?(UIAbility) -> Unit = None
    )
}

/**
 * Provide methods for matching monitored AbilityStage objects that meet specified conditions.
 * The most recently matched AbilityStage objects will be saved in the AbilityStageMonitor object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityStageMonitor {
    /**
     * The module name of the abilityStage to monitor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var moduleName: String

    /**
     * The source path of the abilityStage to monitor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var srcEntrance: String

    /**
     * AbilityStageMonitor constructor.
     *
     * @param { String } moduleName - The module name of the abilityStage to monitor.
     * @param { String } srcEntrance - The source path of the abilityStage to monitor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        moduleName: String,
        srcEntrance: String
    )
}
