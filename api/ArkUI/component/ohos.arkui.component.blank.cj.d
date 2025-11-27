package ohos.arkui.component.blank

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Blank Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Blank <: CommonMethodComponent<Blank> & BlankAttribute {
/**
 * Minimum size of the Blank component in the container along the main axis.
 *
 * @param { ?Length } [min] - Blank options.
 * @default 0.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(min!: ?Length = None)

/**
 * Sets the color to fill the blank.
 *
 * @param { ?ResourceColor } value - Fill color for the blank. Default value: Color.Transparent.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func color(value: ?ResourceColor): This
}

/**
 * Defines the Blank attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface BlankAttribute <: CommonMethod<BlankAttribute> {
/**
 * Sets the color to fill the blank
 *
 * @param { ?ResourceColor } value - Fill color for the blank. Default value: Color.Transparent.
 * @returns { BlankAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func color(value: ?ResourceColor): BlankAttribute
}