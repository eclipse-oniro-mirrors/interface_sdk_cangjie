package ohos.arkui.component.column_split

import ohos.arkui.component.common.*
import ohos.labels.APILevel

/**
 * Defines the ColumnSplit attribute interface.
 * In addition to the universal attributes, the following attributes are supported.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ColumnSplitAttribute <: CommonMethod<ColumnSplitAttribute> {
    /**
     * Sets whether the divider can be dragged.
     *
     * @param { ?Bool } value - Whether the divider can be dragged. true: The divider can be dragged. false: The divider
     *     cannot be dragged. Default value: false. Invalid values are treated as the default value.
     * @returns { ColumnSplitAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func resizeable(value: ?Bool): ColumnSplitAttribute
}

/**
 * Defines the ColumnSplit component.
 * A container that arranges child components vertically and inserts a horizontal divider between every two child
 *     components.
 * This component limits the height of its child components through dividers.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ColumnSplit <: CommonMethodComponent<ColumnSplit> & ColumnSplitAttribute {
    /**
     * ColumnSplit constructor.
     * Creates a vertical split layout container with dividers between child components.
     *
     * @param { () -> Unit } content - The child components of the ColumnSplit.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(content: () -> Unit)

    /**
     * Sets whether the divider can be dragged.
     *
     * @param { ?Bool } value - Whether the divider can be dragged. true: The divider can be dragged. false: The divider
     *     cannot be dragged. Default value: false. Invalid values are treated as the default value.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func resizeable(value: ?Bool): This
}