package ohos.arkui.component.column

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Column Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Column <: CommonMethodComponent<Column> & ColumnAttribute {
/**
 * Column constructor.
 *
 * @param { ?Length } [space] - The spacing between child elements in the vertical layout.
 * @param { () -> Unit } [child] - The child component of the column.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(space!: ?Length = None, child!: () -> Unit = {=>})

/**
 * Sets the alignment format of the subassembly in the horizontal direction.
 *
 * @param { ?HorizontalAlign } value - The horizontal alignment mode for child elements.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func alignItems(value: ?HorizontalAlign): This

/**
 * Sets the alignment format of the subassembly in the vertical direction.
 *
 * @param { ?FlexAlign } value - The vertical alignment mode for child elements.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func justifyContent(value: ?FlexAlign): This
}

/**
 * Defines the Column component attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ColumnAttribute <: CommonMethod<ColumnAttribute> {
/**
 * Sets the alignment format of the subassembly in the horizontal direction.
 *
 * @param { ?HorizontalAlign } value - The horizontal alignment mode for child elements.
 * @returns { ColumnAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func alignItems(value: ?HorizontalAlign): ColumnAttribute

/**
 * Sets the alignment format of the subassembly in the vertical direction.
 *
 * @param { ?FlexAlign } value - The vertical alignment mode for child elements.
 * @returns { ColumnAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func justifyContent(value: ?FlexAlign): ColumnAttribute
}