package ohos.arkui.shape

import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines a circle drawing class.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CircleShape <: BaseShape {
/**
 * Initializes a circular shape with optional width and height parameters.
 *
 * @param { ?Length } [width] - Width of the circle.
 * @param { ?Length } [height] - Height of the circle.
 * @returns { CircleShape } Returns the CircleShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length = None, height!: ?Length = None)
}

/**
 * Defines an ellipse drawing class.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EllipseShape <: BaseShape {
/**
 * Initializes an elliptical shape with optional width and height parameters.
 *
 * @param { ?Length } [width] - Width of the ellipse.
 * @param { ?Length } [height] - Height of the ellipse.
 * @returns { EllipseShape } Returns the EllipseShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length = None, height!: ?Length = None)
}

/**
 * Defines a path drawing class.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PathShape <: BaseShape {
/**
 * Initializes a path shape with optional path commands.
 *
 * @param { ?ResourceStr } [commands] - Path drawing commands in SVG path format.
 * @returns { PathShape } Returns the PathShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(commands!: ?ResourceStr = None)

/**
 * Initializes a path shape with specified dimensions and optional path commands.
 *
 * @param { ?Length } width - Width of the path shape.
 * @param { ?Length } height - Height of the path shape.
 * @param { ?ResourceStr } [commands] - Path drawing commands in SVG path format.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length, height!: ?Length, commands!: ?ResourceStr = None)
}

/**
 * Defines a rect drawing class.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RectShape <: BaseShape {
/**
 * Initializes a rectangular shape with optional width and height parameters.
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
 * Sets the width of the corner radius for RectShape.
 * Configures the horizontal radius of the rectangle's rounded corners.
 *
 * @param { ?Length } value - Width of the corner radius.
 * @returns { This } Returns the RectShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radiusWidth(value: ?Length): This

/**
 * Sets the height of the corner radius for RectShape.
 * Configures the vertical radius of the rectangle's rounded corners.
 *
 * @param { ?Length } value - Height of the corner radius.
 * @returns { This } Returns the RectShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radiusHeight(value: ?Length): This

/**
 * Sets the corner radius for RectShape.
 * Configures both the horizontal and vertical radius of the rectangle's rounded corners.
 *
 * @param { ?Length } value - Corner radius value applied to both width and height.
 * @returns { This } Returns the RectShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radius(value: ?Length): This
}

/**
 * Base shape class.
 * Abstract base class for all shape components, providing common properties and methods for shape rendering.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class BaseShape <: RemoteDataLite {
/**
 * Sets the fill color of the shape.
 *
 * @param { ?ResourceColor } color - Color of the filled area.
 * @returns { This } Returns the BaseShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fill(color: ?ResourceColor): This

/**
 * Sets the width of the shape.
 *
 * @param { ?Length } width - Shape width.
 * @returns { This } Returns the BaseShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func width(width: ?Length): This

/**
 * Sets the height of the shape.
 *
 * @param { ?Length } height - Shape height.
 * @returns { This } Returns the BaseShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func height(height: ?Length): This

/**
 * Sets the size of the shape.
 *
 * @param { ?Length } width - Shape width.
 * @param { ?Length } height - Shape height.
 * @returns { This } Returns the BaseShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func size(width!: ?Length, height!: ?Length): This

/**
 * Sets coordinate offset relative to the layout completion position.
 *
 * @param { ?Length } x - x Offset from the left.
 * @param { ?Length } y - y Offset from the top.
 * @returns { This } Returns the BaseShape instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func offset(x!: ?Length, y!: ?Length): This
}