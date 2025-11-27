package ohos.arkui.component.rect

import ohos.arkui.component.common.*
import ohos.arkui.component.shape.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Round rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rect <: CommonShapeMethodComponent<Rect> & RectAttribute {
/**
 * Initializes a Rect component with optional width and height.
 *
 * @param { ?Length } [width] - Width of the rectangle.
 * @param { ?Length } [height] - Height of the rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length = None, height!: ?Length = None)

/**
 * Sets the radius of the corner around the menu. When the radius is more than the menu width, the default border radius is used
 *
 * @param { ?Length } value - Radius width of the rectangle corners.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radiusWidth(value: ?Length): This

/**
 * Sets the fillet height.
 *
 * @param { ?Length } value - Radius height of the rectangle corners.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radiusHeight(value: ?Length): This

/**
 * Sets the radius of the corner around the menu.
 * When the radius is more than the menu width, the default border radius is used.
 *
 * @param { ?Length } value - the border radius.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radius(value: ?Length): This

/**
 * Sets the radius of the corner around the menu.
 * When the radius is more than the menu width, the default border radius is used.
 *
 * @param { ?Array<Length> } value - the border radius.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radius(value: ?Array<Length>): This

/**
 * Sets the radius of the corner around the menu.
 * When the radius is more than the menu width, the default border radius is used.
 *
 * @param { ?Array<(Length, Length)> } value - the border radius.
 * @returns { This } Returns itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radius(value: ?Array<(Length, Length)>): This
}

/**
 * rect attribute declaration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RectAttribute <: CommonShapeMethod<RectAttribute> {
/**
 * Sets the fillet width.
 *
 * @param { ?Length } value - Radius width of the rectangle corners.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radiusWidth(value: ?Length): RectAttribute

/**
 * Sets the fillet height.
 *
 * @param { ?Length } value - Radius height of the rectangle corners.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radiusHeight(value: ?Length): RectAttribute

/**
 * Sets the radius of the corner around the menu.
 * When the radius is more than the menu width, the default border radius is used.
 *
 * @param { ?Length } value - the border radius.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radius(value: ?Length): RectAttribute

/**
 * Sets the radius of the corner around the menu.
 * When the radius is more than the menu width, the default border radius is used.
 *
 * @param { ?Array<Length> } value - the border radius.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radius(value: ?Array<Length>): RectAttribute

/**
 * Sets the radius of the corner around the menu.
 * When the radius is more than the menu width, the default border radius is used.
 *
 * @param { ?Array<(Length, Length)> } value - the border radius.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radius(value: ?Array<(Length, Length)>): RectAttribute
}