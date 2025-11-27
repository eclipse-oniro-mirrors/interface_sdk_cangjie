package ohos.arkui.component.row

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Row Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Row <: CommonMethodComponent<Row> & RowAttribute {
/**
 * Defines the constructor of Row.
 * Initializes a Row component with optional spacing and child content.
 *
 * @param { ?Length } [space] - Row spacing between child components.
 * @param { () -> Unit } [child] - Child component builder function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(space!: ?Length = None, child!: () -> Unit = {=>})

/**
 * Called when the vertical alignment is set
 *
 * @param { ?VerticalAlign } value - Vertical alignment of child components.
 * @returns { This } Returns the Row instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func alignItems(value: ?VerticalAlign): This

/**
 * Called when the horizontal alignment is set
 *
 * @param { ?FlexAlign } value - Horizontal alignment of child components.
 * @returns { This } Returns the Row instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func justifyContent(value: ?FlexAlign): This
}

/**
 * Defines the row attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RowAttribute <: CommonMethod<RowAttribute> {
/**
 * Called when the vertical alignment is set.
 *
 * @param { ?VerticalAlign } value - Vertical alignment of child components.
 * @returns { RowAttribute } Returns the row attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func alignItems(value: ?VerticalAlign): RowAttribute

/**
 * Called when the horizontal alignment is set.
 *
 * @param { ?FlexAlign } value - Horizontal alignment of child components.
 * @returns { RowAttribute } Returns the row attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func justifyContent(value: ?FlexAlign): RowAttribute
}