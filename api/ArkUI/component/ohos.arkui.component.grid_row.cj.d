package ohos.arkui.component.grid_row

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive

/**
 * Defines the direction of grid-container component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GridRowDirection {
/**
 * The elements in the grid component are arranged in rows
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Row
    | 
/**
 * The elements in the grid component are arranged in reverse order of rows
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RowReverse
    | ...
}

extend GridRowDirection <: Equatable<GridRowDirection> {
/**
 * Compares this GridRowDirection with another for equality.
 *
 * @param { GridRowDirection } other - The GridRowDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: GridRowDirection): Bool

/**
 * Compares this GridRowDirection with another for inequality.
 *
 * @param { GridRowDirection } other - The GridRowDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: GridRowDirection): Bool
}

/**
 * Defines the breakpoint reference of grid-container component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BreakpointsReference {
/**
 * Respond to breakpoint changes according to window width
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    WindowSize
    | 
/**
 * Respond to breakpoint changes according to component width
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ComponentSize
    | ...
}

extend BreakpointsReference <: Equatable<BreakpointsReference> {
/**
 * Compares this BreakpointsReference with another for equality.
 *
 * @param { BreakpointsReference } other - The BreakpointsReference to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: BreakpointsReference): Bool

/**
 * Compares this BreakpointsReference with another for inequality.
 *
 * @param { BreakpointsReference } other - The BreakpointsReference to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: BreakpointsReference): Bool
}

/**
 * Defines the option in length unit of grid-row component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridRowSizeOption {
/**
 * Grid Row Size Option xs, select xs gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xs: ?Length

/**
 * Grid Row Size Option sm, select sm gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var sm: ?Length

/**
 * Grid Row Size Option md, select md gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var md: ?Length

/**
 * Grid Row Size Option lg, select lg gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var lg: ?Length

/**
 * Grid Row Size Option xl, select xl gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xl: ?Length

/**
 * Grid Row Size Option xxl, select xxl gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xxl: ?Length

/**
 * Defines the constructor of GridRowSizeOption.
 *
 * @param { ?Length } [xs] - Grid Row Size Option xs, select xs gutter size based on gridRow current breakpoint.
 * @param { ?Length } [sm] - Grid Row Size Option sm, select sm gutter size based on gridRow current breakpoint.
 * @param { ?Length } [md] - Grid Row Size Option md, select md gutter size based on gridRow current breakpoint.
 * @param { ?Length } [lg] - Grid Row Size Option lg, select lg gutter size based on gridRow current breakpoint.
 * @param { ?Length } [xl] - Grid Row Size Option xl, select xl gutter size based on gridRow current breakpoint.
 * @param { ?Length } [xxl] - Grid Row Size Option xxl, select xxl gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        xs!: ?Length = None,
        sm!: ?Length = None,
        md!: ?Length = None,
        lg!: ?Length = None,
        xl!: ?Length = None,
        xxl!: ?Length = None
    )

/**
 * Defines the constructor of GridRowSizeOption.
 *
 * @param { ?Length } value - The value to set for all breakpoints.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: ?Length)
}

/**
 * Defines the options of grid-row component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridRowOptions {
/**
 * Grid Row Column Option xs, select xs column num based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xs: ?Int32

/**
 * Grid Row Column Option sm, select sm column num based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var sm: ?Int32

/**
 * Grid Row Size Option md, select md gutter size based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var md: ?Int32

/**
 * Grid Row Column Option lg, select lg column num based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var lg: ?Int32

/**
 * Grid Row Column Option xl, select xl column num based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xl: ?Int32

/**
 * Grid Row Column Option xxl, select xxl column num based on gridRow current breakpoint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xxl: ?Int32

/**
 * Defines the constructor of GridRowOptions.
 *
 * @param { ?Int32 } [xs] - Grid Row Column Option xs, select xs column num based on gridRow current breakpoint.
 * @param { ?Int32 } [sm] - Grid Row Column Option sm, select sm column num based on gridRow current breakpoint.
 * @param { ?Int32 } [md] - Grid Row Column Option md, select md column num based on gridRow current breakpoint.
 * @param { ?Int32 } [lg] - Grid Row Column Option lg, select lg column num based on gridRow current breakpoint.
 * @param { ?Int32 } [xl] - Grid Row Column Option xl, select xl column num based on gridRow current breakpoint.
 * @param { ?Int32 } [xxl] - Grid Row Column Option xxl, select xxl column num based on gridRow current breakpoint.
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
 * Defines the constructor of GridRowOptions.
 *
 * @param { ?Int32 } value - The value to set for all breakpoints.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: ?Int32)
}

/**
 * Defines the gutter of grid-row component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GutterOption {
/**
 * Defines the constructor of GutterOption.
 *
 * @param { ?Length } [x] - Horizontal spacing between grid items.
 * @param { ?Length } [y] - Vertical spacing between grid items.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?Length = None, y!: ?Length = None)

/**
 * Defines the constructor of GutterOption.
 *
 * @param { ?GridRowSizeOption } x - Horizontal spacing options between grid items.
 * @param { ?GridRowSizeOption } y - Vertical spacing options between grid items.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?GridRowSizeOption, y!: ?GridRowSizeOption)
}

/**
 * Defines the breakpoints of grid-row component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BreakPoints {
/**
 * Breakpoint array.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var value: ?Array<Length>

/**
 * Set breakpoint reference.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var reference: ?BreakpointsReference

/**
 * BreakPoints constructor.
 *
 * @param { ?Array<Length> } [value] - Breakpoint array.
 * @param { ?BreakpointsReference } [reference] - Set breakpoint reference.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value!: ?Array<Length> = None, reference!: ?BreakpointsReference = None)
}

/**
 * Defines GridRow Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridRow <: CommonMethodComponent<GridRow> & GridRowAttribute {
/**
 * Defines the constructor of GridRow.
 *
 * @param { ?Int32 } columns - Sets the total number of columns in the current layout.
 * @param { ?Length } [gutter] - Layout spacing between sub-components.
 * @param { ?BreakPoints } [breakpoints] - Grid-row layout breakpoints.
 * @param { ?GridRowDirection } [direction] - Grid-row layout direction.
 * @param { () -> Unit } [child] - The child component of GridRow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        columns!: ?Int32,
        gutter!: ?Length = None,
        breakpoints!: ?BreakPoints = Option.None,
        direction!: ?GridRowDirection = Option.None,
        child!: () -> Unit = {=>}
    )

/**
 * Defines the constructor of GridRow.
 *
 * @param { ?GridRowOptions } [columns] - Sets the total number of columns in the current layout.
 * @param { ?Length } [gutter] - Layout spacing between sub-components.
 * @param { ?BreakPoints } [breakpoints] - Grid-row layout breakpoints.
 * @param { ?GridRowDirection } [direction] - Grid-row layout direction.
 * @param { () -> Unit } [child] - The child component of GridRow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        columns!: ?GridRowOptions = None,
        gutter!: ?Length = None,
        breakpoints!: ?BreakPoints = Option.None,
        direction!: ?GridRowDirection = Option.None,
        child!: () -> Unit = {=>}
    )

/**
 * Defines the constructor of GridRow.
 *
 * @param { ?Int32 } columns - Sets the total number of columns in the current layout.
 * @param { ?GutterOption } gutter - layout spacing between sub-components.
 * @param { ?BreakPoints } [breakpoints] - grid-row layout breakpoints.
 * @param { ?GridRowDirection } [direction] - grid-row layout direction.
 * @param { () -> Unit } [child] - The child component of GridRow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        columns!: ?Int32,
        gutter!: ?GutterOption,
        breakpoints!: ?BreakPoints = Option.None,
        direction!: ?GridRowDirection = Option.None,
        child!: () -> Unit = {=>}
    )

/**
 * Defines the constructor of GridRow.
 *
 * @param { ?GridRowOptions } [columns] - Sets the total number of columns in the current layout.
 * @param { ?GutterOption } gutter - layout spacing between sub-components.
 * @param { ?BreakPoints } [breakpoints] - grid-row layout breakpoints.
 * @param { ?GridRowDirection } [direction] - grid-row layout direction.
 * @param { () -> Unit } [child] - The child component of GridRow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        columns!: ?GridRowOptions = None,
        gutter!: ?GutterOption,
        breakpoints!: ?BreakPoints = Option.None,
        direction!: ?GridRowDirection = Option.None,
        child!: () -> Unit = {=>}
    )

/**
 * Cross axis alignment of each line in GridRow.
 *
 * @param { ?ItemAlign } value - element alignment
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func alignItems(value: ?ItemAlign): This

/**
 * Callback triggered when the breakpoint changes, breakpoints value can be xs, sm, md, lg, xl, xxl.
 *
 * @param { ?(String) -> Unit } callback - Callback function triggered when breakpoint changes.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onBreakpointChange(callback: ?(String) -> Unit): This
}

/**
 * Defines the GridRow attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface GridRowAttribute <: CommonMethod<GridRowAttribute> {
/**
 * Cross axis alignment of each line in GridRow.
 *
 * @param { ?ItemAlign } value - element alignment
 * @returns { GridRowAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func alignItems(value: ?ItemAlign): GridRowAttribute

/**
 * Callback triggered when the breakpoint changes, breakpoints value can be xs, sm, md, lg, xl, xxl.
 *
 * @param { ?(String) -> Unit } callback - Callback function triggered when breakpoint changes.
 * @returns { GridRowAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onBreakpointChange(callback: ?(String) -> Unit): GridRowAttribute
}