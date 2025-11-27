package ohos.arkui.component.flex

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Flex Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Flex <: CommonMethodComponent<Flex> & FlexAttribute {
/**
 * Defines the constructor of Flex.
 *
 * @param { ?FlexDirection } [direction] - Direction in which child components are arranged in the Flex component.
 * @param { ?FlexWrap } [wrap] - Whether the Flex component has a single line or multiple lines.
 * @param { ?FlexAlign } [justifyContent] - Alignment mode of the child components in the Flex component along the main axis.
 * @param { ?ItemAlign } [alignItems] - Alignment mode of the child components in the Flex component along the cross axis.
 * @param { ?FlexAlign } [alignContent] - Alignment mode of the child components in a multi-row Flex component along the cross axis.
 * @param { () -> Unit } [child] - The child component to be added to the Flex component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(direction!: ?FlexDirection = None, wrap!: ?FlexWrap = None, justifyContent!: ?FlexAlign = None,
        alignItems!: ?ItemAlign = None, alignContent!: ?FlexAlign = None, child!: () -> Unit = {=>})
}

/**
 * Defines the Flex attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface FlexAttribute <: CommonMethod<FlexAttribute> {}