package ohos.arkui.component.toggle

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines Toggle Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Toggle <: CommonMethodComponent<Toggle> & ToggleAttribute {
/**
 * Set parameters to obtain the toggle.
 *
 * @param { ?ToggleType } toggleType - Type of the toggle button.
 * @param { ?Bool } [isOn] - Initial selected state of the toggle button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(toggleType: ?ToggleType, isOn!: ?Bool = None)

/**
 * Set parameters to obtain the toggle.
 *
 * @param { ?ToggleType } toggleType - Type of the toggle button.
 * @param { ?Bool } isOn - Initial selected state of the toggle button.
 * @param { () -> Unit } subcomponent - Subcomponent builder function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(toggleType: ?ToggleType, isOn: ?Bool, subcomponent: () -> Unit)

/**
 * Called when the color of the selected button is set
 *
 * @param { ?ResourceColor } value - Color of the selected button.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedColor(value: ?ResourceColor): This

/**
 * Called when the color of the selected button is set
 *
 * @param { ?ResourceColor } color - Color of the switch point.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func switchPointColor(color: ?ResourceColor): This

/**
 * Called when the selected state of the component changes.
 *
 * @param { ?(Bool) -> Unit } callback - Callback function triggered when the selected state changes.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(Bool) -> Unit): This
}

/**
 * Defines the toggle attribute functions
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ToggleAttribute <: CommonMethod<ToggleAttribute> {
/**
 * Called when the color of the selected button is set.
 *
 * @param { ?ResourceColor } value - Color of the selected button.
 * @returns { ToggleAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectedColor(value: ?ResourceColor): ToggleAttribute

/**
 * Called when the color of the selected button is set.
 *
 * @param { ?ResourceColor } color - Color of the switch point.
 * @returns { ToggleAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func switchPointColor(color: ?ResourceColor): ToggleAttribute

/**
 * Called when the selected state of the component changes.
 *
 * @param { ?(Bool) -> Unit } callback - Callback function triggered when the selected state changes.
 * @returns { ToggleAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(Bool) -> Unit): ToggleAttribute
}