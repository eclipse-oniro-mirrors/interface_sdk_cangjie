package ohos.arkui.component.menu_item_group

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines MenuItemGroup Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MenuItemGroup <: CommonMethodComponent<MenuItemGroup> & MenuItemGroupAttribute {
/**
 * Creates the MenuItemGroup component.
 *
 * @param { ?ResourceStr } [header] - Defines the header display info.
 * @param { ?ResourceStr } [footer] - Defines the footer display info.
 * @param { () -> Unit } [child] - The child component of menu item group.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(header!: ?ResourceStr = None, footer!: ?ResourceStr = None, child!: () -> Unit = {=>})

/**
 * Creates the MenuItemGroup component.
 *
 * @param { ?CustomBuilder } header - Defines the header display info.
 * @param { ?CustomBuilder } footer - Defines the footer display info.
 * @param { () -> Unit } [child] - The child component of menu item group.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(header!: ?CustomBuilder, footer!: ?CustomBuilder, child!: () -> Unit = {=>})
}

/**
 * Defines the MenuItemGroup component attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface MenuItemGroupAttribute <: CommonMethod<MenuItemGroupAttribute> {}