package ohos.arkui.component.stepper

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * A component that provides step-by-step navigation for multi-step processes or wizards.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Stepper <: CommonMethodComponent<Stepper> & StepperAttribute {
/**
 * Initializes a Stepper component with optional initial index and child content.
 *
 * @param { ?UInt32 } [index] - Initial step index.
 * @param { () -> Unit } [child] - Builder function for Stepper content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(index!: ?UInt32 = None, child!: () -> Unit = {=>})

/**
 * Callback when the finish label is clicked
 *
 * @param { ?() -> Unit } callback - Callback function triggered when finish is clicked.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onFinish(callback: ?() -> Unit): This

/**
 * Callback when the skip label is clicked
 *
 * @param { ?() -> Unit } callback - Callback function triggered when skip is clicked.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSkip(callback: ?() -> Unit): This

/**
 * Triggered when the slider is dragged or clicked. NOTE: The Begin and End states are triggered when the slider is clicked with a gesture. The Moving and Click states are triggered when the value of value changes. If the coherent action is a drag action, the Click state will not be triggered
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when step changes.
 * The first parameter is the index of previous step, and the second parameter is the index of current step.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(UInt32, UInt32) -> Unit): This

/**
 * Callback when the next label is clicked
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when next is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of next step.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onNext(callback: ?(UInt32, UInt32) -> Unit): This

/**
 * Callback when the previous label is clicked
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when previous is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of previous step.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPrevious(callback: ?(UInt32, UInt32) -> Unit): This
}

/**
 * Defines the stepper attribute functions
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface StepperAttribute <: CommonMethod<StepperAttribute> {
/**
 * Callback when the finish label is clicked.
 *
 * @param { ?() -> Unit } callback - Callback function triggered when finish is clicked.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onFinish(callback: ?() -> Unit): StepperAttribute

/**
 * Callback when the skip label is clicked.
 *
 * @param { ?() -> Unit } callback - Callback function triggered when skip is clicked.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSkip(callback: ?() -> Unit): StepperAttribute

/**
 * Triggered when the slider is dragged or clicked.
 * NOTE:
 * The Begin and End states are triggered when the slider is clicked with a gesture. The Moving and Click states
 * are triggered when the value of value changes. If the coherent action is a drag action, the Click state will
 * not be triggered.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when step changes.
 * The first parameter is the index of previous step, and the second parameter is the index of current step.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(UInt32, UInt32) -> Unit): StepperAttribute

/**
 * Callback when the next label is clicked.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when next is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of next step.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onNext(callback: ?(UInt32, UInt32) -> Unit): StepperAttribute

/**
 * Callback when the previous label is clicked.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when previous is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of previous step.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPrevious(callback: ?(UInt32, UInt32) -> Unit): StepperAttribute
}