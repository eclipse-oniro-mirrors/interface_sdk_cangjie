package ohos.arkui.component.path_2d

import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * 2D path object for path drawing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Path2D <: RemoteDataLite {
/**
 * Create an empty path object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Create a new path according to the description.
 *
 * @param { ?String } d - Indicates the path string that compiles with the SVG path description specifications.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(d: ?String)

/**
 * Adds a path according to the specified path variable.
 *
 * @param { ?Path2D } path2D - Indicates the path object to be added.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func addPath(path2D: ?Path2D): Unit

/**
 * Adds 2D transformation effects, including rotation, translation, and scaling.
 * The current transformation matrix will not be overwritten. Multiple transformations will be superimposed.
 *
 * @param { ?Float64 } scaleX - The scale value in the x-axis direction.
 * @param { ?Float64 } skewX - The skew value in the x-axis direction.
 * @param { ?Float64 } skewY - The skew value in the y-axis direction.
 * @param { ?Float64 } scaleY - The scale value in the y-axis direction.
 * @param { ?Float64 } translateX - The translate value in the x-axis direction.
 * @param { ?Float64 } translateY - The translate value in the y-axis direction.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setTransform(
        scaleX: ?Float64,
        skewX: ?Float64,
        skewY: ?Float64,
        scaleY: ?Float64,
        translateX: ?Float64,
        translateY: ?Float64
    ): Unit

/**
 * Moves the start point of a new sub-path to the (x, y) coordinate.
 *
 * @param { Float64 } x - The x-axis coordinate of the point.
 * @param { Float64 } y - The y-axis coordinate of the point.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func moveTo(x: Float64, y: Float64): Unit

/**
 * Connect sub-path using straight lines.
 *
 * @param { Float64 } x - The x-axis coordinate of the end point of the line.
 * @param { Float64 } y - The y-axis coordinate of the end point of the line.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lineTo(x: Float64, y: Float64): Unit

/**
 * Draw an arc path.
 *
 * @param { Float64 } x - The x-axis coordinate of the center (center of the circle) of the arc.
 * @param { Float64 } y - The y-axis coordinate of the center (center of the circle) of the arc.
 * @param { Float64 } radius - Radius of the arc.
 * @param { Float64 } startAngle - Start point of an arc, which starts to be calculated in the x-axis direction. The unit is radian.
 * @param { Float64 } endAngle - The end point of the arc, in radians.
 * @param { ?Bool } [counterclockwise] - If the value is true, the arc is drawn counterclockwise. Otherwise, the arc is drawn clockwise.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func arc(
        x: Float64,
        y: Float64,
        radius: Float64,
        startAngle: Float64,
        endAngle: Float64,
        counterclockwise!: ?Bool = None
    ): Unit

/**
 * Draw arc paths based on control points and radius.
 *
 * @param { Float64 } x1 - The x-axis coordinate of the first control point.
 * @param { Float64 } y1 - The y-axis coordinate of the first control point.
 * @param { Float64 } x2 - The x-axis coordinate of the second control point.
 * @param { Float64 } y2 - The y-axis coordinate of the second control point.
 * @param { Float64 } radius - Radius of the arc.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func arcTo(
        x1: Float64,
        y1: Float64,
        x2: Float64,
        y2: Float64,
        radius: Float64
    ): Unit

/**
 * Draw quadratic Bezier curve paths.
 *
 * @param { Float64 } cpx - The x-axis coordinate of the control point.
 * @param { Float64 } cpy - The y-axis coordinate of the control point.
 * @param { Float64 } x - x-axis coordinate of the end point.
 * @param { Float64 } y - y-axis coordinate of the end point.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func quadraticCurveTo(
        cpx: Float64,
        cpy: Float64,
        x: Float64,
        y: Float64
    ): Unit

/**
 * Drawing Cubic Bessel Curve Paths.
 *
 * @param { Float64 } cp1x - The x-axis coordinate of the first control point.
 * @param { Float64 } cp1y - The y-axis coordinate of the first control point.
 * @param { Float64 } cp2x - The x-axis coordinate of the second control point.
 * @param { Float64 } cp2y - The y-axis coordinate of the second control point.
 * @param { Float64 } x - x-axis coordinate of the end point.
 * @param { Float64 } y - y-axis coordinate of the end point.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func bezierCurveTo(
        cp1x: Float64,
        cp1y: Float64,
        cp2x: Float64,
        cp2y: Float64,
        x: Float64,
        y: Float64
    ): Unit

/**
 * Draw an Elliptic Path.
 *
 * @param { Float64 } x - x-axis coordinate of the center of the ellipse.
 * @param { Float64 } y - y-axis coordinate of the center of the ellipse.
 * @param { Float64 } radiusX - Radius of the major axis of the ellipse.
 * @param { Float64 } radiusY - Radius of the minor axis of the ellipse.
 * @param { Float64 } rotation - The rotation angle of the ellipse, in radians (not angular degrees).
 * @param { Float64 } startAngle - The angle of the starting point to be drawn, measured from the x-axis in radians (not angular degrees).
 * @param { Float64 } endAngle - The angle, in radians, at which the ellipse is to be drawn (not angular degrees).
 * @param { ?Bool } [counterclockwise] - If the value is true, the ellipse is drawn counterclockwise. Otherwise, the ellipse is drawn clockwise.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func ellipse(
        x: Float64,
        y: Float64,
        radiusX: Float64,
        radiusY: Float64,
        rotation: Float64,
        startAngle: Float64,
        endAngle: Float64,
        counterclockwise!: ?Bool = None
    ): Unit

/**
 * Draw Rectangular Paths.
 *
 * @param { Float64 } x - The x-axis coordinate of the start point of the rectangle.
 * @param { Float64 } y - The y-axis coordinate of the start point of the rectangle.
 * @param { Float64 } width - Width of the rectangle.
 * @param { Float64 } height - Height of the rectangle.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rect(x: Float64, y: Float64, width: Float64, height: Float64): Unit

/**
 * Returns the pen point to the start point of the current sub-path.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func closePath(): Unit
}