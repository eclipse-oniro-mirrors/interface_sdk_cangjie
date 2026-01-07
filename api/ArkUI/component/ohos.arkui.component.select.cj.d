package ohos.arkui.component.select

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Callback of selecting an item from the select event.
 *
 * @param { Int32 } The index of the selected item.
 * @param { String } The value of the selected item.
 */
public type OnSelectCallback = (Int32, String) -> Unit

/**
 * The declare of selectOption.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SelectOption {
    /**
     * Option string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var value: ?ResourceStr

    /**
     * Option icon.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var icon: ?ResourceStr

    /**
     * Constructor selectOption.
     *
     * @param { ?ResourceStr } value - The label of Select component.
     * @param { ?ResourceStr } [icon] - The icon of Select component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ?ResourceStr, icon!: ?ResourceStr = None)
}

/**
 * Defines Select Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Select <: CommonMethodComponent<Select> & SelectAttribute {
    /**
     * Called when the select is set.
     *
     * @param { ?Array<SelectOption> } options - The Select component options.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(options: ?Array<SelectOption>)

    /**
     * Sets the serial number of the select item, starting from 0.
     *
     * @param { ?Int32 } value - the serial number of the select item.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selected(value: ?Int32): This

    /**
     * Sets the text display of the select button itself.
     *
     * @param { ?ResourceStr } value - the text display of the select button itself.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func value(value: ?ResourceStr): This

    /**
     * Sets the text properties of the select button itself.
     *
     * @param { ?FontStyle } [style] - The font style of current Select component.
     * @param { ?FontWeight } [weight] - The font weight of current Select component.
     * @param { ?Length } [size] - The font size of current Select component.
     * @param { ?ResourceStr } [family] - The font family of current Select component.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func font(
        style!: ?FontStyle = None,
        weight!: ?FontWeight = None,
        size!: ?Length = None,
        family!: ?ResourceStr = None
    ): This

    /**
     * Sets the text color of the select button itself.
     *
     * @param { ?ResourceColor } value - The font color of current Select component.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ?ResourceColor): This

    /**
     * Sets the background color of the selected items in the select.
     *
     * @param { ?ResourceColor } value - The selected item background color.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedOptionBgColor(value: ?ResourceColor): This

    /**
     * Sets the text style of the selected items in the select.
     *
     * @param { ?FontStyle } [style] - The selected item font style.
     * @param { ?FontWeight } [weight] - The selected item font weight.
     * @param { ?Length } [size] - The selected item font size.
     * @param { ?String } [family] - The selected item font family.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedOptionFont(
        style!: ?FontStyle = None,
        weight!: ?FontWeight = None,
        size!: ?Length = None,
        family!: ?String = None
    ): This

    /**
     * Sets the text color of the selected item in the select.
     *
     * @param { ?ResourceColor } value - The selected item font color.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedOptionFontColor(value: ?ResourceColor): This

    /**
     * Sets the background color of the select item.
     *
     * @param { ?ResourceColor } value - The background color.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionBgColor(value: ?ResourceColor): This

    /**
     * Sets the text style for select items.
     *
     * @param { ?FontStyle } [style] - The selected item font style.
     * @param { ?FontWeight } [weight] - The selected item font weight.
     * @param { ?Length } [size] - The selected item font size.
     * @param { ?ResourceStr } [family] - The selected item font family.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionFont(
        style!: ?FontStyle = None,
        weight!: ?FontWeight = None,
        size!: ?Length = None,
        family!: ?ResourceStr = None
    ): This

    /**
     * Sets the text color for select items.
     *
     * @param { ?ResourceColor } value - The font color.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionFontColor(value: ?ResourceColor): This

    /**
     * Set the space for text and icon in select
     *
     * @param { ?Length } value - indicates the length of the space
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func space(value: ?Length): This

    /**
     * Set the layout direction for text and arrow in select
     *
     * @param { ?ArrowPosition } value - indicates the arrow position in the select
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func arrowPosition(value: ?ArrowPosition): This

    /**
     * Set the alignment between select and menu.
     *
     * @param { ?MenuAlignType } alignType - The type of alignment between select and menu.
     * @param { ?Offset } offset - The offset between select and menu.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func menuAlign(alignType!: ?MenuAlignType, offset!: ?Offset): This

    /**
     * Set the width of each option and set whether the option width fit the trigger.
     *
     * @param { ?OptionWidthMode } value - The length of option width and decide option width to fit trigger or content.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionWidth(value: ?OptionWidthMode): This

    /**
     * Set the width of each option and set whether the option width fit the trigger.
     *
     * @param { ?Length } value - The length of option width and decide option width to fit trigger or content.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionWidth(value: ?Length): This

    /**
     * Set the height of each option.
     *
     * @param { ?Length } value - The length of option height.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionHeight(value: ?Length): This

    /**
     * Set the menu's background color
     *
     * @param { ?ResourceColor } value - The backgroundColor of menu.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func menuBackgroundColor(value: ?ResourceColor): This

    /**
     * Set menu background blur Style
     *
     * @param { ?BlurStyle } value - The BackgroundBlurStyle of menu.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func menuBackgroundBlurStyle(value: ?BlurStyle): This

    /**
     * Callback for selecting an item from the select.
     *
     * @param { ?OnSelectCallback } callback - The callback on select.
     * @returns { This } The instance of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSelect(callback: ?OnSelectCallback): This
}

/**
 * The commonMethod of select.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface SelectAttribute <: CommonMethod<SelectAttribute> {
    /**
     * Sets the serial number of the select item, starting from 0.
     *
     * @param { ?Int32 } value - the serial number of the select item.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func selected(value: ?Int32): SelectAttribute

    /**
     * Sets the text display of the select button itself.
     *
     * @param { ?ResourceStr } value - the text display of the select button itself.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func value(value: ?ResourceStr): SelectAttribute

    /**
     * Sets the text properties of the select button itself.
     *
     * @param { ?FontStyle } style - The font style.
     * @param { ?FontWeight } weight - The font weight.
     * @param { ?Length } size - The font size.
     * @param { ?ResourceStr } family - The font family.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func font(
        style!: ?FontStyle,
        weight!: ?FontWeight,
        size!: ?Length,
        family!: ?ResourceStr
    ): SelectAttribute

    /**
     * Sets the text color of the select button itself.
     *
     * @param { ?ResourceColor } value - The font color.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontColor(value: ?ResourceColor): SelectAttribute

    /**
     * Sets the background color of the selected items in the select.
     *
     * @param { ?ResourceColor } value - The selected item background color.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func selectedOptionBgColor(value: ?ResourceColor): SelectAttribute

    /**
     * Sets the text style of the selected items in the select.
     *
     * @param { ?FontStyle } style - The selected item font style.
     * @param { ?FontWeight } weight - The selected item font weight.
     * @param { ?Length } size - The selected item font size.
     * @param { ?String } family - The selected item font family.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func selectedOptionFont(
        style!: ?FontStyle,
        weight!: ?FontWeight,
        size!: ?Length,
        family!: ?String
    ): SelectAttribute

    /**
     * Sets the text color of the selected item in the select.
     *
     * @param { ?ResourceColor } value - The selected item font color.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func selectedOptionFontColor(value: ?ResourceColor): SelectAttribute

    /**
     * Sets the background color of the select item.
     *
     * @param { ?ResourceColor } value - The selected item background color.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func optionBgColor(value: ?ResourceColor): SelectAttribute

    /**
     * Sets the text style for select items.
     *
     * @param { ?FontStyle } style - The selected item font style.
     * @param { ?FontWeight } weight - The selected item font weight.
     * @param { ?Length } size - The selected item font size.
     * @param { ?ResourceStr } family - The selected item font family.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func optionFont(
        style!: ?FontStyle,
        weight!: ?FontWeight,
        size!: ?Length,
        family!: ?ResourceStr
    ): SelectAttribute

    /**
     * Sets the text color for select items.
     *
     * @param { ?ResourceColor } value - The selected item color.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func optionFontColor(value: ?ResourceColor): SelectAttribute

    /**
     * Set the space for text and icon in select
     *
     * @param { ?Length } value - indicates the length of the space
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func space(value: ?Length): SelectAttribute

    /**
     * Set the layout direction for text and arrow in select
     *
     * @param { ?ArrowPosition } value - indicates the arrow position in the select
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func arrowPosition(value: ?ArrowPosition): SelectAttribute

    /**
     * Set the alignment between select and menu.
     *
     * @param { ?MenuAlignType } alignType - The type of alignment between select and menu.
     * @param { ?Offset } offset - The offset between select and menu.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func menuAlign(alignType!: ?MenuAlignType, offset!: ?Offset): SelectAttribute

    /**
     * Set the width of each option and set whether the option width fit the trigger.
     *
     * @param { ?OptionWidthMode } value - The length of option width and decide option width to fit trigger or content.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func optionWidth(value: ?OptionWidthMode): SelectAttribute

    /**
     * Set the width of each option and set whether the option width fit the trigger.
     *
     * @param { ?Length } value - The length of option width and decide option width to fit trigger or content.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func optionWidth(value: ?Length): SelectAttribute

    /**
     * Set the height of each option.
     *
     * @param { ?Length } value - The length of option height.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func optionHeight(value: ?Length): SelectAttribute

    /**
     * Set the menu's background color
     *
     * @param { ?ResourceColor } value - The backgroundColor of menu.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func menuBackgroundColor(value: ?ResourceColor): SelectAttribute

    /**
     * Set menu background blur Style
     *
     * @param { ?BlurStyle } value - The BackgroundBlurStyle of menu.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func menuBackgroundBlurStyle(value: ?BlurStyle): SelectAttribute

    /**
     * Callback for selecting an item from the select.
     *
     * @param { ?OnSelectCallback } callback - The callback on select.
     * @returns { SelectAttribute } the attribute of the select.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onSelect(callback: ?OnSelectCallback): SelectAttribute
}