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

    /**
     * Create a radio box with the specified indicator type and optional custom indicator builder.
     *
     * @param { ?String } value - Current value of the radio box.
     * @param { ?String } group - Group name of the radio box.
     * @param { RadioIndicatorType } indicatorType - Indicator type of the radio button.
     * @param { ?() -> Unit } [indicatorBuilder] - Custom component to indicate that the radio button is selected.
     *     This custom component is center aligned with the radio button.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ?String, group!: ?String, indicatorType!: RadioIndicatorType,
        indicatorBuilder!: ?() -> Unit = Option<() -> Unit>.None)

    /**
     * Sets the style of the radio button in selected or deselected state.
     *
     * @param { ?ResourceColor } [checkedBackgroundColor] - Color of the background when the radio button is selected.
     * @param { ?ResourceColor } [uncheckedBorderColor] - Color of the border when the radio button is deselected.
     * @param { ?ResourceColor } [indicatorColor] - Color of the indicator when the radio button is selected.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func radioStyle(
        checkedBackgroundColor!: ?ResourceColor = None,
        uncheckedBorderColor!: ?ResourceColor = None,
        indicatorColor!: ?ResourceColor = None
    ): This
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

    /**
     * Sets the style of the radio button in selected or deselected state.
     *
     * @param { ?ResourceColor } checkedBackgroundColor - Color of the background when the radio button is selected.
     * @param { ?ResourceColor } uncheckedBorderColor - Color of the border when the radio button is deselected.
     * @param { ?ResourceColor } indicatorColor - Color of the indicator when the radio button is selected.
     * @returns { RadioAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func radioStyle(
        checkedBackgroundColor!: ?ResourceColor,
        uncheckedBorderColor!: ?ResourceColor,
        indicatorColor!: ?ResourceColor
    ): RadioAttribute
}

/**
 * Enumerates the radio indicator types.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RadioIndicatorType {
    /**
     * Default tick icon.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Tick
    |
    /**
     * Default dot icon.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Dot
    |
    /**
     * Custom component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Custom
    | ...
}

extend RadioIndicatorType <: Equatable<RadioIndicatorType> {
    /**
     * Compares this RadioIndicatorType with another for equality.
     *
     * @param { RadioIndicatorType } other - The RadioIndicatorType to compare with.
     * @returns { Bool } True if both types are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: RadioIndicatorType): Bool

    /**
     * Compares this RadioIndicatorType with another for inequality.
     *
     * @param { RadioIndicatorType } other - The RadioIndicatorType to compare with.
     * @returns { Bool } True if both types are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: RadioIndicatorType): Bool
}
