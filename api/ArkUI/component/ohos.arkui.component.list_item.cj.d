package ohos.arkui.component.list_item

import ohos.arkui.component.common.*
import ohos.arkui.state_management.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines ListItem Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ListItem <: CommonMethodComponent<ListItem> & ListItemAttribute {
/**
 * ListItem constructor.
 *
 * @param { () -> Unit } child - The child component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(child: () -> Unit)

/**
 * Called when judging whether it is selectable.
 *
 * @param { ?Bool } value - Whether enable selection for the item.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectable(value: ?Bool): This

/**
 * Sets the action item that appears when the list item slides in the cross axis direction of the list.
 *
 * @param { ?CustomBuilder } [start] - The action when swipe start.
 * @param { ?CustomBuilder } [end] - The action when swipe end.
 * @param { ?SwipeEdgeEffect } [edgeEffect] - The swipe edge effect.
 * @param { ?(Float64) -> Unit } [onOffsetChange] - The callback on offset change.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func swipeAction(
        start!: ?CustomBuilder = None,
        end!: ?CustomBuilder = None,
        edgeEffect!: ?SwipeEdgeEffect = Option.None,
        onOffsetChange!: ?(Float64) -> Unit = None
    ): This

/**
 * Called when the listItem is selected.
 *
 * @param { ?(Bool) -> Unit } event - The callback on selection.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSelect(event: ?(Bool) -> Unit): This
}

/**
 * Defines the ListItem attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ListItemAttribute <: CommonMethod<ListItemAttribute> {
/**
 * Called when judging whether it is selectable.
 *
 * @param { ?Bool } value - Whether enable selection for the item.
 * @returns { ListItemAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectable(value: ?Bool): ListItemAttribute

/**
 * Sets the action item that appears when the list item slides in the cross axis direction of the list.
 *
 * @param { ?CustomBuilder } start - The action when swipe start.
 * @param { ?CustomBuilder } end - The action when swipe end.
 * @param { ?SwipeEdgeEffect } edgeEffect - The swipe edge effect.
 * @param { ?(Float64) -> Unit } onOffsetChange - The callback on offset change.
 * @returns { ListItemAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func swipeAction(
        start!: ?CustomBuilder,
        end!: ?CustomBuilder,
        edgeEffect!: ?SwipeEdgeEffect,
        onOffsetChange!: ?(Float64) -> Unit
    ): ListItemAttribute

/**
 * Called when the listItem is selected.
 *
 * @param { ?(Bool) -> Unit } event - The callback on selection.
 * @returns { ListItemAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSelect(event: ?(Bool) -> Unit): ListItemAttribute
}