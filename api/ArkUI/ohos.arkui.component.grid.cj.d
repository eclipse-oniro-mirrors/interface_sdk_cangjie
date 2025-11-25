package ohos.arkui.component.grid

import ohos.arkui.component.common.*
import ohos.arkui.component.scroll.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*

/**
 * Defines Grid Component.
 * It is recommended to use LazyForEach or Repeat to generate child components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Grid <: ScrollableCommonMethodComponent<Grid> & GridAttribute {
/**
 * Grid is returned when the parameter is transferred.
 *
 * @param { ?Scroller } [scroller] - Scroller controller bound to the grid for controlling scrolling.
 * @param { ()->Unit } [child] - The child component to be displayed in the grid, typically LazyForEach or Repeat.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(scroller!: ?Scroller = Option.None, child!: () -> Unit = {=>})

/**
 * This parameter specifies the number of columns in the current grid layout.
 *
 * @param { ?String } value - String specifying the number of columns and their proportional distribution,
 * for example "1fr 1fr" means two columns of equal width.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func columnsTemplate(value: ?String): This

/**
 * Lets you set the number of rows in the current grid layout,.
 *
 * @param { ?String } value - String specifying the number of rows and their proportional distribution,
 * for example "1fr 1fr" means two rows of equal height.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rowsTemplate(value: ?String): This

/**
 * Allows you to set the spacing between columns.
 *
 * @param { ?Length } value - Spacing between columns.Default value: 0 Unit: vp
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func columnsGap(value: ?Length): This

/**
 * Lets you set the spacing between rows.
 *
 * @param { ?Length } value - Spacing between rows. Default value: 0 Unit: vp
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rowsGap(value: ?Length): This

/**
 * Set number of rows of GridItems to be preloaded (cached) in LazyForEach / Repeat
 *
 * @param { ?Int32 } value - number of rows of GridItems to be preloaded (cached).
 *     Default value: number of nodes visible on the screen, with the maximum value of 16
 *     Value range: [0, +∞).
 *     Values less than 0 are treated as 1.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func cachedCount(value: ?Int32): This

/**
 * Set number of rows of GridItems to be preloaded (cached) in LazyForEach / Repeat.
 *
 * @param { ?Int32 } count - number of rows of GridItems to be preloaded (cached).
 *     Default value: number of nodes visible on the screen, with the maximum value of 16
 *     Value range: [0, +∞).
 *     Values less than 0 are treated as 1.
 * @param { ?Bool } show -  if true, cached items are displayed when clip is disabled.Default value: false
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func cachedCount(count: ?Int32, show: ?Bool): This
}

/**
 * Defines the grid attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface GridAttribute <: ScrollableCommonMethod<GridAttribute> {
/**
 * This parameter specifies the number of columns in the current grid layout.
 *
 * @param { ?String } value - String specifying the number of columns and their proportional distribution.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func columnsTemplate(value: ?String): GridAttribute

/**
 * Lets you set the number of rows in the current grid layout.
 *
 * @param { ?String } value - String specifying the number of rows and their proportional distribution.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func rowsTemplate(value: ?String): GridAttribute

/**
 * Allows you to set the spacing between columns.
 *
 * @param { ?Length } value - Spacing between columns.Default value: 0 Unit: vp
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func columnsGap(value: ?Length): GridAttribute

/**
 * Lets you set the spacing between rows.
 *
 * @param { ?Length } value - Spacing between rows. Default value: 0 Unit: vp
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func rowsGap(value: ?Length): GridAttribute

/**
 * Set number of rows of GridItems to be preloaded (cached) in LazyForEach / Repeat.
 *
 * @param { ?Int32 } count - number of rows of GridItems to be preloaded (cached).
 *     Default value: number of nodes visible on the screen, with the maximum value of 16
 *     Value range: [0, +∞).
 *     Values less than 0 are treated as 1.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func cachedCount(count: ?Int32): GridAttribute

/**
 * Set number of rows of GridItems to be preloaded (cached) in LazyForEach / Repeat.
 *
 * @param { ?Int32 } count - number of rows of GridItems to be preloaded (cached).
 *     Default value: number of nodes visible on the screen, with the maximum value of 16
 *     Value range: [0, +∞).
 *     Values less than 0 are treated as 1.
 * @param { ?Bool } show -  if true, cached items are displayed when clip is disabled.Default value: false
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func cachedCount(count: ?Int32, show: ?Bool): GridAttribute
}