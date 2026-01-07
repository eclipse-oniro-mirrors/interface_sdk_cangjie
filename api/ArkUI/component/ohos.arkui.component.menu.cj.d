package ohos.arkui.component.menu

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * A popup component that displays a list of options or actions for user selection.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Menu <: CommonMethodComponent<Menu> & MenuAttribute {
    /**
     * Initializes a Menu component with child content.
     *
     * @param { () -> Unit } [child] - The child component builder function for menu items. The default value is an empty function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child!: () -> Unit = {=>})

    /**
     * Sets the font style.
     * Family and style are not supported currently and will be fixed in future.
     *
     * @param { ?Length } [size] - Indicates the font size of menu item.
     * @param { ?FontWeight } [weight] - Indicates the font weight of menu item.
     * @param { ?ResourceStr } [family] - Indicates the font family of menu item.
     * @param { ?FontStyle } [style] - Indicates the font style of menu item.
     * @returns { This } Returns the Menu instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func font(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        family!: ?ResourceStr = None,
        style!: ?FontStyle = None
    ): This

    /**
     * Sets the Menu font color
     *
     * @param { ?ResourceColor } value - Indicates the font color of menu item.
     * @returns { This } Returns the Menu instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ?ResourceColor): This

    /**
     * Sets the radius of the corner around the menu. When the radius is more than the menu width, the default border radius is used
     *
     * @param { ?Length } value - the border radius.
     * @returns { This } Returns the Menu instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func radius(value: ?Length): This

    /**
     * Sets the radius of the corner around the menu.
     * When the radius is more than the menu width, the default border radius is used.
     *
     * @param { ?BorderRadiuses } value - the border radius.
     * @returns { This } Returns the Menu instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func radius(value: ?BorderRadiuses): This
}

/**
 * Defines the Menu component attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface MenuAttribute <: CommonMethod<MenuAttribute> {
    /**
     * Sets the font style.
     * Family and style are not supported currently and will be fixed in future.
     *
     * @param { ?Length } size - Indicates the font size of menu item.
     * @param { ?FontWeight } weight - Indicates the font weight of menu item.
     * @param { ?ResourceStr } family - Indicates the font family of menu item.
     * @param { ?FontStyle } style - Indicates the font style of menu item.
     * @returns { MenuAttribute } Returns the menu attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func font(
        size!: ?Length,
        weight!: ?FontWeight,
        family!: ?ResourceStr,
        style!: ?FontStyle
    ): MenuAttribute

    /**
     * Sets the Menu font color.
     *
     * @param { ?ResourceColor } value - Indicates the font color of menu item.
     * @returns { MenuAttribute } Returns the menu attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontColor(value: ?ResourceColor): MenuAttribute

    /**
     * Sets the radius of the corner around the menu.
     * When the radius is more than the menu width, the default border radius is used.
     *
     * @param { ?Length } value -  the border radius.
     * @returns { MenuAttribute } Returns the menu attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func radius(value: ?Length): MenuAttribute

    /**
     * Sets the radius of the corner around the menu.
     * When the radius is more than the menu width, the default border radius is used.
     *
     * @param { ?BorderRadiuses } value -  the border radius.
     * @returns { MenuAttribute } Returns the menu attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func radius(value: ?BorderRadiuses): MenuAttribute
}