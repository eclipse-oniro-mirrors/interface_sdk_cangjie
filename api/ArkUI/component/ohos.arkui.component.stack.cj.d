package ohos.arkui.component.stack

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Stack Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Stack <: CommonMethodComponent<Stack> & StackAttribute {
    /**
     * Defines the constructor of Stack.
     * Initializes a Stack component with optional alignment and child content.
     *
     * @param { ?Alignment } [alignContent] - Alignment of child components within the stack.
     * @param { ?() -> Unit } [child] - Builder function for Stack content.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(alignContent!: ?Alignment = None, child!: () -> Unit = {=>})

    /**
     * Called when the alignment of items in the container is set.
     * Configures how child components are aligned within the stack container.
     *
     * @param { ?Alignment } value - Alignment of child components within the stack.
     * @returns { This } Returns the Stack instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignContent(value: ?Alignment): This
}

/**
 * Defines the Stack attribute functions.
 * Provides methods for configuring the appearance and behavior of the Stack component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface StackAttribute <: CommonMethod<StackAttribute> {
    /**
     * Called when the alignment of items in the container is set.
     * Configures how child components are aligned within the stack container.
     *
     * @param { ?Alignment } value - Alignment of child components within the stack.
     * @returns { StackAttribute } Returns the stack attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func alignContent(value: ?Alignment): StackAttribute
}