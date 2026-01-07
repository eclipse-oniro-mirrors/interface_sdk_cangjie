package ohos.arkui.component.radio

import ohos.arkui.component.common.*
import ohos.arkui.component.custom_component
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines Radio Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Radio <: CommonMethodComponent<Radio> & RadioAttribute {
    /**
     * Create a radio box.
     *
     * @param { ?String } value - Current value of the radio box.
     * @param { ?String } group - Group name of the radio box.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ?String, group!: ?String)

    /**
     * Called when the radio box is selected.
     *
     * @param { ?Bool } value - Whether the radio box is selected.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func checked(value: ?Bool): This

    /**
     * Called when the radio box selection status changes.
     *
     * @param { ?(Bool) -> Unit } callback - Callback function when the selection status changes.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: ?(Bool) -> Unit): This
}

/**
 * Provides methods for radio method component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RadioAttribute <: CommonMethod<RadioAttribute> {
    /**
     * Called when the radio box is selected.
     *
     * @param { ?Bool } value - Whether the radio box is selected.
     * @returns { RadioAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func checked(value: ?Bool): RadioAttribute

    /**
     * Called when the radio box selection status changes.
     *
     * @param { ?(Bool) -> Unit } callback - Callback function when the selection status changes.
     * @returns { RadioAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onChange(callback: ?(Bool) -> Unit): RadioAttribute
}