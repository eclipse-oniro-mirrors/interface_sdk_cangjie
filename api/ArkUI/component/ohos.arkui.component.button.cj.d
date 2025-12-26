package ohos.arkui.component.button

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel
import ohos.resource.*
import std.deriving.Derive

/**
 * Provides a button component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ButtonType {
    /**
     * Common button (no rounded corners by default).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal
    | 
    /**
     * Capsule button (rounded corners default to half the height).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Capsule
    | 
    /**
     * Round buttons.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Circle
    | 
    /**
     * Rounded rectangle button.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RoundedRectangle
    | ...
}

extend ButtonType <: Equatable<ButtonType> {
    /**
     * Compares this ButtonType with another for equality.
     *
     * @param { ButtonType } - The ButtonType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: ButtonType): Bool
    /**
     * Compares this ButtonType with another for equality.
     *
     * @param { ButtonType } - The ButtonType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: ButtonType): Bool
}

/**
 * Enum for button role.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ButtonRole {
    /**
     * Normal button.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal
    | 
    /**
     * Error button.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Error
    | ...
}

extend ButtonRole <: Equatable<ButtonRole> {
    /**
     * Compares this ButtonRole with another for equality.
     *
     * @param { ButtonRole } - The ButtonRole to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: ButtonRole): Bool
    /**
     * Compares this ButtonRole with another for equality.
     *
     * @param { ButtonRole } - The ButtonRole to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: ButtonRole): Bool
}

/**
 * Enum for button style type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ButtonStyleMode {
    /**
     * Normal button (with normal background color).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal
    | 
    /**
     * Emphasized button (with emphasized background color).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Emphasized
    | 
    /**
     * Textual button (with none background color).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Textual
    | ...
}

extend ButtonStyleMode <: Equatable<ButtonStyleMode> {
    /**
     * Compares this ButtonStyleMode with another for equality.
     *
     * @param { ButtonStyleMode } - The ButtonStyleMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: ButtonStyleMode): Bool
    /**
     * Compares this ButtonStyleMode with another for equality.
     *
     * @param { ButtonStyleMode } - The ButtonStyleMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: ButtonStyleMode): Bool
}

/**
 * Defines the button options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ButtonOptions {
    /**
     * Describes the button style.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shape: ?ButtonType

    /**
     * Indicates whether to enable the switchover effect when the button is pressed. When the status is set to false, the switchover effect is disabled.
     * @default true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var stateEffect: ?Bool

    /**
     * Describes the button style.
     * @default ButtonStyleMode.Emphasized
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var buttonStyle: ?ButtonStyleMode

    /**
     * Describes the button size.
     * @default ControlSize.Normal
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var controlSize: ?ControlSize

    /**
     * Describes the button role.
     * @default ButtonRole.Normal
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var role: ?ButtonRole

    /**
     * ButtonOptions constructor.
     *
     * @param { ?ButtonType } [shape] - Describes the button style.
     * @param { ?Bool } [stateEffect] - Indicates whether to enable the switchover effect when the button is pressed. When the status is set to false, the switchover effect is disabled.
     * @param { ?ButtonStyleMode } [buttonStyle] - Describes the button style.
     * @param { ?ControlSize } [controlSize] - Describes the button size.
     * @param { ?ButtonRole } [role] - Describes the button role.
     * @returns { ButtonOptions } A new instance of ButtonOptions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        shape!: ?ButtonType = None,
        stateEffect!: ?Bool = None,
        buttonStyle!: ?ButtonStyleMode = None,
        controlSize!: ?ControlSize = None,
        role!: ?ButtonRole = None
    )
}

/**
 * Defines Button Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Button <: CommonMethodComponent<Button> & ButtonAttribute {
    /**
     * Button constructor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Button constructor.
     *
     * @param { () -> Unit } child - The child component of the button.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)

    /**
     * Create Button with inner text label.
     *
     * @param { ResourceStr } label - The button label value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(label: ResourceStr)

    /**
     * Create Button with Text child.
     *
     * @param { ?ButtonOptions } options - The options of button.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(options: ?ButtonOptions)

    /**
     * Create Button with Text child.
     *
     * @param { ?ButtonOptions } options - The options of button.
     * @param { () -> Unit } child - The child component of the button.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(options: ?ButtonOptions, child: () -> Unit)

    /**
     * Create Button with inner text label.
     *
     * @param { ?ResourceStr } label - The button label.
     * @param { ?ButtonOptions } options - The options of button.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(label: ?ResourceStr, options: ?ButtonOptions)

    /**
     * Text size.
     *
     * @param { ?Length } value - The font size of button.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: ?Length): This

    /**
     * Font weight.
     *
     * @param { ?FontWeight } value - The font weight of button.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: ?FontWeight): This

    /**
     * Text color.
     *
     * @param { ?ResourceColor } color - The font color of button.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(color: ?ResourceColor): This

    /**
     * Font style.
     *
     * @param { ?FontStyle } value - The font style of button.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: ?FontStyle): This

    /**
     * Font family.
     *
     * @param { ?ResourceStr } value - The font family of button.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ?ResourceStr): This

    /**
     * setting the shape of checkbox
     *
     * @param { ?ButtonType } value - The configuration of checkbox shape.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func shape(value: ?ButtonType): This

    /**
     * Indicates whether to enable the switchover effect when the button is pressed. When the status is set to false, the switchover effect is disabled.
     *
     * @param { ?Bool } value - Whether to enable button interactive effect. The default value is true.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stateEffect(value: ?Bool): This

    /**
     * Describes the button style.
     *
     * @param { ?ButtonStyleMode } value - button style mode
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func buttonStyle(value: ?ButtonStyleMode): This
}

/**
 * Defines the button attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ButtonAttribute <: CommonMethod<ButtonAttribute> {
    /**
     * Text size.
     *
     * @param { ?Length } value - The font size of button.
     * @returns { ButtonAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontSize(value: ?Length): ButtonAttribute

    /**
     * Font weight.
     *
     * @param { ?FontWeight } value - The font weight of button.
     * @returns { ButtonAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontWeight(value: ?FontWeight): ButtonAttribute

    /**
     * Text color.
     *
     * @param { ?ResourceColor } color - The font color of button.
     * @returns { ButtonAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontColor(color: ?ResourceColor): ButtonAttribute

    /**
     * Font style.
     *
     * @param { ?FontStyle } value - The font style of button.
     * @returns { ButtonAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontStyle(value: ?FontStyle): ButtonAttribute

    /**
     * Font family.
     *
     * @param { ?ResourceStr } value - The font family of button.
     * @returns { ButtonAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontFamily(value: ?ResourceStr): ButtonAttribute

    /**
     * setting the shape of checkbox.
     *
     * @param { ?ButtonType } value - The configuration of checkbox shape.
     * @returns { ButtonAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func shape(value: ?ButtonType): ButtonAttribute

    /**
     * Indicates whether to enable the switchover effect when the button is pressed. When the status is set to false, the switchover effect is disabled.
     *
     * @param { ?Bool } value - Whether to enable button interactive effect. The default value is true.
     * @returns { ButtonAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func stateEffect(value: ?Bool): ButtonAttribute

    /**
     * Describes the button style.
     *
     * @param { ?ButtonStyleMode } value - button style mode
     * @returns { ButtonAttribute } The attribute of the component. The default value is ButtonStyleMode.Emphasized.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func buttonStyle(value: ?ButtonStyleMode): ButtonAttribute
}