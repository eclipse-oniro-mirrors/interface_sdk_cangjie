package ohos.arkui.component.row_split

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * A layout container that arranges its child components horizontally with resizable dividers between them.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RowSplit <: CommonMethodComponent<RowSplit> & RowSplitAttribute {
    /**
     * Initializes a RowSplit component with child content.
     *
     * @param { () -> Unit } child - The child component builder function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)

    /**
     * Indicates whether the split line can be dragged. The default value is false
     *
     * @param { ?Bool } value - Whether enable resizeable.
     * @returns { This } Returns the RowSplit instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func resizeable(value: ?Bool): This
}

/**
 * Provides methods for configuring the appearance and behavior of the RowSplit component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RowSplitAttribute <: CommonMethod<RowSplitAttribute> {
    /**
     * Indicates whether the split line can be dragged. The default value is false.
     *
     * @param { ?Bool } value - Whether enable resizeable.
     * @returns { RowSplitAttribute } Returns the row split attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func resizeable(value: ?Bool): RowSplitAttribute
}