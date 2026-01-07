package ohos.arkui.component.grid_item

import ohos.arkui.component.common.*
import ohos.labels.APILevel

/**
 * Defines GridItem Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridItem <: CommonMethodComponent<GridItem> & GridItemAttribute {
    /**
     * GridItem constructor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * GridItem constructor.
     *
     * @param { () -> Unit } child - The child component of GridItem.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)

    /**
     * This parameter specifies the start column number of the current element.
     *
     * @param { ?Int32 } value - The start column index, must be a non-negative integer.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func columnStart(value: ?Int32): This

    /**
     * This parameter specifies the end column number of the current element.
     *
     * @param { ?Int32 } value - The end column index, must be a non-negative integer greater than or equal to columnStart.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func columnEnd(value: ?Int32): This

    /**
     * This parameter specifies the start line number of the current element.
     *
     * @param { ?Int32 } value - Start line number of the element.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rowStart(value: ?Int32): This

    /**
     * Specifies the end line number of the current element.
     *
     * @param { ?Int32 } value - End line number of the element.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rowEnd(value: ?Int32): This
}

/**
 * Defines the GridItem attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface GridItemAttribute <: CommonMethod<GridItemAttribute> {
    /**
     * This parameter specifies the start column number of the current element.
     *
     * @param { ?Int32 } columnStart - The start column index, must be a non-negative integer.
     * @returns { GridItemAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func columnStart(columnStart: ?Int32): GridItemAttribute

    /**
     * This parameter specifies the end column number of the current element.
     *
     * @param { ?Int32 } columnEnd - The end column index, must be a non-negative integer greater than or equal to columnStart.
     * @returns { GridItemAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func columnEnd(columnEnd: ?Int32): GridItemAttribute

    /**
     * This parameter specifies the start line number of the current element.
     *
     * @param { ?Int32 } rowStart - Start line number of the element.
     * @returns { GridItemAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func rowStart(rowStart: ?Int32): GridItemAttribute

    /**
     * Specifies the end line number of the current element.
     *
     * @param { ?Int32 } rowEnd - End line number of the element.
     * @returns { GridItemAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func rowEnd(rowEnd: ?Int32): GridItemAttribute
}