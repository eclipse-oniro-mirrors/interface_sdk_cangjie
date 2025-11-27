package ohos.arkui.component.menu_item

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines MenuItem Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MenuItem <: CommonMethodComponent<MenuItem> & MenuItemAttribute {
/**
 * Initializes a MenuItem component with optional child content.
 *
 * @param { () -> Unit } [child] - The child component builder function for the menu item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(child!: () -> Unit = {=>})

/**
 * Initializes a MenuItem component with icon, content, and label information.
 *
 * @param { ?ResourceStr } startIcon - Defines the start display image info.
 * @param { ?ResourceStr } content - Defines the content string display info.
 * @param { ?ResourceStr } endIcon - Defines the end display image info.
 * @param { ?ResourceStr } labelInfo - Defines the end label info like shortcut.
 * @param { Option<() -> Unit> } [builder] - Create the submenu.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(startIcon!: ?ResourceStr, content!: ?ResourceStr, endIcon!: ?ResourceStr, labelInfo!: ?ResourceStr,
        builder!: Option<() -> Unit> = None)

/**
 * Setting whether menuItem is selected.
 * Configures the selection state of the menu item.
 *
 * @param { ?Bool } value - menuItem is selected.
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selected(value: ?Bool): This

/**
 * Whether the relevant check icon is displayed when a menu item is selected.
 * Use type ResourceStr or SymbolGlyphModifier to specify icon instead of the default check mark.
 *
 * @param { ?Bool } value - Indicates whether to display icon when selected.
 *     true: displays the default check mark when selected.
 *     false: does not displays icon when selected.
 *     ResourceStr or SymbolGlyphModifier: displays the specified icon when selected.
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectIcon(value: ?Bool): This

/**
 * Whether the relevant check icon is displayed when a menu item is selected.
 * Sets a custom icon to display when the menu item is selected.
 *
 * @param { ?ResourceStr } value - Indicates whether to display icon when selected.
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectIcon(value: ?ResourceStr): This

/**
 * Sets the content font style.
 * Family and style are not supported currently and will be fixed in future.
 *
 * @param { ?Length } [size] - Indicates the font size of content text.
 * @param { ?FontWeight } [weight] - Indicates the font weight of content text.
 * @param { ?ResourceStr } [family] - Indicates the font family of content text.
 * @param { ?FontStyle } [style] - Indicates the font style of content text.
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func contentFont(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        family!: ?ResourceStr = None,
        style!: ?FontStyle = None
    ): This

/**
 * Sets the font color of content text
 *
 * @param { ?ResourceColor } value - Indicates the font color of content text.
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func contentFontColor(value: ?ResourceColor): This

/**
 * Sets the label info font style.
 * Family and style are not supported currently and will be fixed in future.
 *
 * @param { ?Length } [size] - Indicates the font size of label info text.
 * @param { ?FontWeight } [weight] - Indicates the font weight of label info text.
 * @param { ?ResourceStr } [family] - Indicates the font family of label info text.
 * @param { ?FontStyle } [style] - Indicates the font style of label info text.
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func labelFont(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        family!: ?ResourceStr = None,
        style!: ?FontStyle = None
    ): This

/**
 * Sets the font color of label info text
 *
 * @param { ?ResourceColor } value - Indicates the font color of label info text.
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func labelFontColor(value: ?ResourceColor): This

/**
 * Triggers a callback when a menu item is selected or unchecked.
 * Called when the selection state of the menu item changes.
 *
 * @param { ?(Bool) -> Unit } callback - Callback when a menu item is selected or unchecked.
 * The parameter indicates whether the menu item is currently selected (true) or not (false).
 * @returns { This } Returns the MenuItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(Bool) -> Unit): This
}

/**
 * Defines the MenuItem component attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface MenuItemAttribute <: CommonMethod<MenuItemAttribute> {
/**
 * Setting whether menuItem is selected.
 * Configures the selection state of the menu item.
 *
 * @param { ?Bool } value - menuItem is selected.
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selected(value: ?Bool): MenuItemAttribute

/**
 * Whether the relevant check icon is displayed when a menu item is selected.
 *
 * @param { ?Bool } value - Indicates whether to display icon when selected.
 *     true: displays the default check mark when selected.
 *     false: does not displays icon when selected.
 *     ResourceStr or SymbolGlyphModifier: displays the specified icon when selected.
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectIcon(value: ?Bool): MenuItemAttribute

/**
 * Whether the relevant check icon is displayed when a menu item is selected.
 *
 * @param { ?ResourceStr } value - Indicates whether to display icon when selected.
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectIcon(value: ?ResourceStr): MenuItemAttribute

/**
 * Configures the font properties of the menu item content text.
 *
 * @param { ?Length } size - Indicates the font size of content text.
 * @param { ?FontWeight } weight - Indicates the font weight of content text.
 * @param { ?ResourceStr } family - Indicates the font family of content text.
 * @param { ?FontStyle } style - Indicates the font style of content text.
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func contentFont(
        size!: ?Length,
        weight!: ?FontWeight,
        family!: ?ResourceStr,
        style!: ?FontStyle
    ): MenuItemAttribute

/**
 * Sets the font color of content text.
 *
 * @param { ?ResourceColor } value - Indicates the font color of content text.
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func contentFontColor(value: ?ResourceColor): MenuItemAttribute

/**
 * Sets the label info font style.
 * Family and style are not supported currently and will be fixed in future.
 *
 * @param { ?Length } size - Indicates the font size of label info text.
 * @param { ?FontWeight } weight - Indicates the font weight of label info text.
 * @param { ?ResourceStr } family - Indicates the font family of label info text.
 * @param { ?FontStyle } style - Indicates the font style of label info text.
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func labelFont(
        size!: ?Length,
        weight!: ?FontWeight,
        family!: ?ResourceStr,
        style!: ?FontStyle
    ): MenuItemAttribute

/**
 * Sets the font color of label info text.
 *
 * @param { ?ResourceColor } value - Indicates the font color of label info text.
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func labelFontColor(value: ?ResourceColor): MenuItemAttribute

/**
 * Triggers a callback when a menu item is selected or unchecked.
 *
 * @param { ?(Bool) -> Unit } callback - Callback when a menu item is selected or unchecked.
 * The parameter indicates whether the menu item is currently selected (true) or not (false).
 * @returns { MenuItemAttribute } Returns the menu item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(Bool) -> Unit): MenuItemAttribute
}