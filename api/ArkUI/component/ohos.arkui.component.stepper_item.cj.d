package ohos.arkui.component.stepper_item

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines StepperItem Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class StepperItem <: CommonMethodComponent<StepperItem> & StepperItemAttribute {
    /**
     * Initializes a StepperItem component with child content.
     *
     * @param { () -> Unit } child - Builder function for StepperItem content.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)

    /**
     * Called when the value of stepperItem prevLabel is set
     *
     * @param { ?String } value - Text displayed on the previous step button.
     * @returns { This } Returns the StepperItem instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func prevLabel(value: ?String): This

    /**
     * Called when the value of stepperItem nextLabel is set
     *
     * @param { ?String } value - Text displayed on the next step button.
     * @returns { This } Returns the StepperItem instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func nextLabel(value: ?String): This

    /**
     * Called when the value of stepperItem status is set
     *
     * @param { ?ItemState } [status] - Display state of the step item.
     * @returns { This } Returns the StepperItem instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func status(status!: ?ItemState = None): This
}

/**
 * Defines the stepper item attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface StepperItemAttribute <: CommonMethod<StepperItemAttribute> {
    /**
     * Called when the value of stepperItem prevLabel is set
     *
     * @param { ?String } value - Text displayed on the previous step button.
     * @returns { StepperItemAttribute } Returns the stepper item attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func prevLabel(value: ?String): StepperItemAttribute

    /**
     * Called when the value of stepperItem nextLabel is set
     *
     * @param { ?String } value - Text displayed on the next step button.
     * @returns { StepperItemAttribute } Returns the stepper item attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func nextLabel(value: ?String): StepperItemAttribute

    /**
     * Called when the value of stepperItem status is set
     *
     * @param { ?ItemState } status - Display state of the step item.
     * @returns { StepperItemAttribute } Returns the stepper item attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func status(status!: ?ItemState): StepperItemAttribute
}