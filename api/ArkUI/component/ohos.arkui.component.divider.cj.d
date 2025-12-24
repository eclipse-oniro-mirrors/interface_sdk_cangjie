package ohos.arkui.component.divider

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Divider Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Divider <: CommonMethodComponent<Divider> & DividerAttribute {
    /**
     * Divider constructor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Indicates whether to use a horizontal splitter or a vertical splitter.
     * The options are as follows: false: horizontal splitter; true: vertical splitter.
     *
     * @param { ?Bool } value - Whether to use a vertical divider.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func vertical(value: ?Bool): This

    /**
     * Sets the color of the dividing line
     *
     * @param { ?ResourceColor } value - The color of the divider line.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func color(value: ?ResourceColor): This

    /**
     * Sets the width of the dividing line.
     *
     * @param { ?Length } value - The width of the dividing line.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(value: ?Length): This

    /**
     * Sets the end style of the dividing line. The default value is Butt
     *
     * @param { ?LineCapStyle } value - The end style of the split line.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lineCap(value: ?LineCapStyle): This
}

/**
 * Defines the Divider attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface DividerAttribute <: CommonMethod<DividerAttribute> {
    /**
     * Indicates whether to use a horizontal splitter or a vertical splitter.
     * The options are as follows: false: horizontal splitter; true: vertical splitter.
     *
     * @param { ?Bool } value - Whether to use a vertical divider.
     * @returns { DividerAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func vertical(value: ?Bool): DividerAttribute

    /**
     * Sets the color of the dividing line.
     *
     * @param { ?ResourceColor } value - The color of the divider line.
     * @returns { DividerAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func color(value: ?ResourceColor): DividerAttribute

    /**
     * Sets the width of the dividing line.
     *
     * @param { ?Length } value - The width of the dividing line.
     * @returns { DividerAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeWidth(value: ?Length): DividerAttribute

    /**
     * Sets the end style of the dividing line. The default value is Butt.
     *
     * @param { ?LineCapStyle } value - The end style of the split line.
     * @returns { DividerAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func lineCap(value: ?LineCapStyle): DividerAttribute
}