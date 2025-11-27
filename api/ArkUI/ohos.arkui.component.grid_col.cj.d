package ohos.arkui.component.grid_col

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines the options of grid-container child component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridColOptions {
/**
 * Grid Col Column Option xs
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xs: ?Int32

/**
 * Grid Col Column Option sm
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var sm: ?Int32

/**
 * Grid Col Column Option md
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var md: ?Int32

/**
 * Grid Col Column Option lg
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var lg: ?Int32

/**
 * Grid Col Column Option xl
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xl: ?Int32

/**
 * Grid Col Column Option xxl
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xxl: ?Int32

/**
 * Defines the constructor of GridColOptions.
 * Creates a GridColOptions instance with specific values for different screen sizes.
 *
 * @param { ?Int32 } [xs] - Grid Col Column Option xs. Defines how many columns the grid item should span on extra small screens.
 * @param { ?Int32 } [sm] - Grid Col Column Option sm. Defines how many columns the grid item should span on small screens.
 * @param { ?Int32 } [md] - Grid Col Column Option md. Defines how many columns the grid item should span on medium screens.
 * @param { ?Int32 } [lg] - Grid Col Column Option lg. Defines how many columns the grid item should span on large screens.
 * @param { ?Int32 } [xl] - Grid Col Column Option xl. Defines how many columns the grid item should span on extra large screens.
 * @param { ?Int32 } [xxl] - Grid Col Column Option xxl. Defines how many columns the grid item should span on double extra large screens.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        xs!: ?Int32 = None,
        sm!: ?Int32 = None,
        md!: ?Int32 = None,
        lg!: ?Int32 = None,
        xl!: ?Int32 = None,
        xxl!: ?Int32 = None
    )

/**
 * Defines the option in number unit of grid-container child component.
 * Creates a GridColOptions instance with the same value for all screen sizes.
 *
 * @param { ?Int32 } value - The value to set for all grid column options. This value will be applied to xs, sm, md, lg, xl, and xxl.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: ?Int32)
}

/**
 * Defines GridCol Component.
 * GridCol is a component used within a GridContainer to define how many columns
 * a grid item should span, its offset, and order in the grid layout.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridCol <: CommonMethodComponent<GridCol> & GridColAttribute {
/**
 * GridCol constructor.
 * Creates a GridCol component with integer values for span, offset, and order.
 *
 * @param { ?Int32 } [span] - Sets the span of current grid-container item. Defines how many columns the item should span.
 * @param { ?Int32 } [offset] - Sets the offset of current grid-container item. Defines how many columns to offset the item from its normal position.
 * @param { ?Int32 } [order] - Sets the order of current grid-container item. Defines the display order of the item in the grid.
 * @param { () -> Unit } [child] - The child component of GridCol. This is the content to be displayed within the grid item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(span!: ?Int32 = None, offset!: ?Int32 = None, order!: ?Int32 = None, child!: () -> Unit = {=>})

/**
 * GridCol constructor.
 * Creates a GridCol component with responsive GridColOptions for span, offset, and order.
 *
 * @param { ?GridColOptions } span - Sets the span of current grid-container item. Defines how many columns the item should span on different screen sizes.
 * @param { ?GridColOptions } offset - Sets the offset of current grid-container item. Defines how many columns to offset the item from its normal position on different screen sizes.
 * @param { ?GridColOptions } order - Sets the order of current grid-container item. Defines the display order of the item in the grid on different screen sizes.
 * @param { () -> Unit } [child] - The child component of GridCol. This is the content to be displayed within the grid item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        span!: ?GridColOptions,
        offset!: ?GridColOptions,
        order!: ?GridColOptions,
        child!: () -> Unit = {=>}
    )

/**
 * Sets the span of current gird-container item
 *
 * @param { ?Int32 } value - The span value to set. This determines how many columns the grid item will occupy.
 * @returns { This } Returns the component itself for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func span(value: ?Int32): This

/**
 * Sets the span of current gird-container item.
 *
 * @param { ?GridColOptions } value - The GridColOptions to set as span. This defines how many columns the grid item will occupy on different screen sizes.
 * @returns { This } Returns the component itself for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func span(value: ?GridColOptions): This

/**
 * Sets the offset of current gird-container item
 *
 * @param { ?Int32 } value - The offset value to set. This determines how many columns the grid item will be offset from its normal position.
 * @returns { This } Returns the component itself for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func gridColOffset(value: ?Int32): This

/**
 * Sets the offset of current gird-container item.
 *
 * @param { ?GridColOptions } value - The GridColOptions to set as offset. This defines how many columns the grid item will be offset from its normal position on different screen sizes.
 * @returns { This } Returns the component itself for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func gridColOffset(value: ?GridColOptions): This

/**
 * Sets the order of current gird-container item
 *
 * @param { ?Int32 } value - The order value to set. Items with a lower order value are displayed before items with a higher order value.
 * @returns { This } Returns the component itself for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func order(value: ?Int32): This

/**
 * Sets the order of current gird-container item.
 *
 * @param { ?GridColOptions } value - The GridColOptions to set as order. This defines the display order of the grid item on different screen sizes.
 * @returns { This } Returns the component itself for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func order(value: ?GridColOptions): This
}

/**
 * Defines the GridContainer attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface GridColAttribute <: CommonMethod<GridColAttribute> {
/**
 * Sets the span of current gird-container item.
 *
 * @param { ?Int32 } value - The span value to set. This determines how many columns the grid item will occupy.
 * @returns { GridColAttribute } Returns the attribute of GridCol.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func span(value: ?Int32): GridColAttribute

/**
 * Sets the span of current gird-container item.
 *
 * @param { ?GridColOptions } value - The GridColOptions to set as span. This defines how many columns the grid item will occupy on different screen sizes.
 * @returns { GridColAttribute } Returns the attribute of GridCol.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func span(value: ?GridColOptions): GridColAttribute

/**
 * Sets the offset of current gird-container item.
 *
 * @param { ?Int32 } value - The offset value to set. This determines how many columns the grid item will be offset from its normal position.
 * @returns { GridColAttribute } Returns the attribute of GridCol.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func gridColOffset(value: ?Int32): GridColAttribute

/**
 * Sets the offset of current gird-container item.
 *
 * @param { ?GridColOptions } value - The GridColOptions to set as offset. This defines how many columns the grid item will be offset from its normal position on different screen sizes.
 * @returns { GridColAttribute } Returns the attribute of GridCol.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func gridColOffset(value: ?GridColOptions): GridColAttribute

/**
 * Sets the order of current gird-container item.
 *
 * @param { ?Int32 } value - The order value to set. Items with a lower order value are displayed before items with a higher order value.
 * @returns { GridColAttribute } Returns the attribute of GridCol.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func order(value: ?Int32): GridColAttribute

/**
 * Sets the order of current gird-container item.
 *
 * @param { ?GridColOptions } value - The GridColOptions to set as order. This defines the display order of the grid item on different screen sizes.
 * @returns { GridColAttribute } Returns the attribute of GridCol.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func order(value: ?GridColOptions): GridColAttribute
}