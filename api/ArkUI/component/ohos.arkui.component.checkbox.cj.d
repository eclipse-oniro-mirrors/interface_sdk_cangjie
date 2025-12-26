package ohos.arkui.component.checkbox

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines a Checkbox callback when onChange.
 *
 * @param { Bool } value - selected status.
 */
public type OnCheckboxChangeCallback = (Bool) -> Unit

/**
 * Defines Checkbox Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Checkbox <: CommonMethodComponent<Checkbox> & CheckboxAttribute {
    /**
     * Construct the Checkbox component.
     * Called when the Checkbox component is used.
     *
     * @param { ?String } [name] - The initial name of current checkbox.
     * @param { ?String } [group] - The initial group name of current checkbox.
     * @param { ?CustomBuilder } [indicatorBuilder] - The builder of current checkbox.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(name!: ?String = None, group!: ?String = None, indicatorBuilder!: ?CustomBuilder = None)

    /**
     * setting whether checkbox is selected
     *
     * @param { ?Bool } value - Whether the checkbox is selected.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func select(value: ?Bool): This

    /**
     * setting the display color of checkbox
     *
     * @param { ?ResourceColor } value - The color to display.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ?ResourceColor): This

    /**
     * Called when the selection status changes.
     *
     * @param { ?OnCheckboxChangeCallback } callback - The callback on selected status change.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: ?OnCheckboxChangeCallback): This

    /**
     * setting the shape of checkbox
     *
     * @param { ?CheckBoxShape } value - The configuration of checkbox shape.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func shape(value: ?CheckBoxShape): This
}

/**
 * Defines the attribute functions of Checkbox.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface CheckboxAttribute <: CommonMethod<CheckboxAttribute> {
    /**
     * setting whether checkbox is selected.
     *
     * @param { ?Bool } value - Whether the checkbox is selected.
     * @returns { CheckboxAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func select(value: ?Bool): CheckboxAttribute

    /**
     * setting the display color of checkbox.
     *
     * @param { ?ResourceColor } value - The display color of checkbox.
     * @returns { CheckboxAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func selectedColor(value: ?ResourceColor): CheckboxAttribute

    /**
     * Called when the selection status changes.
     *
     * @param { ?OnCheckboxChangeCallback } callback - The callback function triggered when the selected status changes, with the new selected status as parameter.
     * @returns { CheckboxAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onChange(callback: ?OnCheckboxChangeCallback): CheckboxAttribute

    /**
     * setting the shape of checkbox.
     *
     * @param { ?CheckBoxShape } value - The configuration of checkbox shape.
     * @returns { CheckboxAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func shape(value: ?CheckBoxShape): CheckboxAttribute
}