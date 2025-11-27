package ohos.arkui.component.canvas

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.path_2d.*
import ohos.arkui.component.util.*
import ohos.arkui.ui_context.font.Font as FontApi
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.multimedia.image.*
import ohos.multimedia.image.PixelMap
import std.deriving.Derive

/**
 * This object allows you to set properties when creating a rendering context.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RenderingContextSettings {
/**
 * Indicates whether anti-aliasing is enabled for canvas.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var antialias: ?Bool

/**
 * Create a RenderingContextSettings object based on the antialias and alpha.
 *
 * @param { ?Bool } [antialias] - Indicates whether anti-aliasing is enabled for canvas.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(antialias!: ?Bool = None)
}

/**
 * Size information of the text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextMetrics {
/**
 * Indicates the width of a character string. The value is of the double type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public let width: Float64

/**
 * Indicates the height of a character string. The value is of the double type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public let height: Float64
}

/**
 * Defines Canvas Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Canvas <: CommonMethodComponent<Canvas> & CanvasAttribute {
/**
 * Construct a canvas component.
 *
 * @param { ?CanvasRenderingContext2D } context - Canvas context object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(context: ?CanvasRenderingContext2D)

/**
 * Event notification after the canvas component is constructed. You can draw the canvas at this time.
 *
 * @param { ?() -> Unit } callback - The callback on canvas ready to draw.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onReady(callback: ?() -> Unit): This
}

/**
 * Opaque objects that describe gradients, created by createLinearGradient() or createRadialGradient().
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CanvasGradient <: RemoteDataLite {
/**
 * Add a breakpoint defined by offset and color to the gradient.
 *
 * @param { Float64 } offset - Value between 0 and 1.
 * @param { ?ResourceColor } color - Set the gradient color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func addColorStop(offset: Float64, color: ?ResourceColor): Unit
}

/**
 * Provides attribute for Canvas.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface CanvasAttribute <: CommonMethod<CanvasAttribute> {
/**
 * Event notification after the canvas component is constructed. You can draw the canvas at this time.
 *
 * @param { ?() -> Unit } callback - The callback on canvas ready to draw.
 * @returns { CanvasAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onReady(callback: ?() -> Unit): CanvasAttribute
}

/**
 * Describes an opaque object of a template, which is created using the createPattern() method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CanvasPattern <: RemoteDataLite {
/**
 * The 2D transformation effect is added. The current transformation matrix is not overwritten and
 * the transformations are superimposed for multiple times.
 *
 * @param { ?Matrix2D } transform - 2D transformation matrix. For details, see Matrix2D.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setTransform(transform: ?Matrix2D): Unit
}

/**
 * FillStyle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface FillStyle {}

extend Int64 <: FillStyle {}

extend UInt32 <: FillStyle {}

extend Color <: FillStyle {}

extend CanvasGradient <: FillStyle {}

extend CanvasPattern <: FillStyle {}

/**
 * StrokeStyle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface StrokeStyle {}

extend Int64 <: StrokeStyle {}

extend UInt32 <: StrokeStyle {}

extend Color <: StrokeStyle {}

extend CanvasGradient <: StrokeStyle {}

extend CanvasPattern <: StrokeStyle {}

/**
 * Draw context object for the Canvas component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CanvasRenderingContext2D <: RemoteDataLite {
/**
 * Constructor of the canvas drawing context object, which is used to create a drawing context object.
 *
 * @param { ?RenderingContextSettings } settings - The canvas render context setting.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(settings: ?RenderingContextSettings)

/**
 * Attributes that describe the fill color and style. The options are as follows:
 *
 * string: Color String.
 * number: Indicates the color with number.
 * CanvasGradient: Color gradient object.
 * CanvasPattern: Template object.
 * @default 0x000000 (black)
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop fillStyle: Option<FillStyle>

/**
 * Line thickness attribute. The value cannot be 0 or a negative number.
 * @default 1.px
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop lineWidth: Option<Float64>

/**
 * Attributes of the stroke color and style. The options are as follows:
 *
 * string: Color String.
 * number: Indicates the color with number.
 * CanvasGradient: Color gradient object.
 * CanvasPattern: Template object.
 * @default 0x000000 (black)
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop strokeStyle: Option<StrokeStyle>

/**
 * Line segment endpoint attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop lineCap: Option<String>

/**
 * Line segment connection point attribute
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop lineJoin: Option<String>

/**
 * The value of this parameter cannot be 0 or a negative number.
 * @default 10.px
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop miterLimit: Option<Float64>

/**
 * Set the text style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop font: Option<String>

/**
 * Text alignment mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop textAlign: Option<String>

/**
 * Text baseline.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop textBaseline: Option<String>

/**
 * Transparency. The value ranges from 0.0 (completely transparent) to 1.0 (completely opaque).
 * If the value is out of range, the assignment is invalid.
 * @default 1.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop globalAlpha: Option<Float64>

/**
 * Sets the dashed line mode for line drawing.
 *
 * @param { ?Array<Float64> } segments - A set of numbers that describe the length of alternating drawn lines
 *   segments and spacing (coordinate space units).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setLineDash(segments: ?Array<Float64>): Unit

/**
 * Dotted line offset attribute.
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop lineDashOffset: Option<Float64>

/**
 * Type of composition operation applied when drawing a new shape. The following types are supported:
 * source-over: (Default) Draws a new drawing on top of an existing canvas context.
 * source-in: The new drawing is drawn only where the new drawing overlaps the target canvas.
 * Everything else is transparent.
 * source-out: Draws a new drawing where it does not overlap with the existing canvas content.
 * source-atop: The new drawing is drawn only where it overlaps the content of the existing canvas.
 * destination-over: Draws a new graphic behind the existing canvas content.
 * destination-in: Existing canvas content remains where the new drawing overlaps the existing canvas content.
 * Everything else is transparent.
 * destination-out: Existing content remains where the new drawing does not overlap.
 * destination-atop: The existing canvas retains only the part that overlaps with the new drawing,
 * which is drawn behind the canvas content.
 * lighter: The color of two overlapping shapes is determined by adding the color values.
 * copy: Only new graphics are displayed.
 * xor: In the image, those overlaps and other places outside of the normal drawing are transparent.
 * @default source-over
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop globalCompositeOperation: Option<String>

/**
 * Shadow blur radius. The value cannot be a negative number.
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop shadowBlur: Option<Float64>

/**
 * Shadow color.
 * @default transparent black
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop shadowColor: Option<ResourceColor>

/**
 * Horizontal offset distance of the shadow.
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop shadowOffsetX: Option<Float64>

/**
 * Vertical offset distance of the shadow.
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop shadowOffsetY: Option<Float64>

/**
 * Specifies whether to smooth the image. The value true indicates that the image is smooth.
 *    The value false indicates that the image is not smooth.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop imageSmoothingEnabled: Option<Bool>

/**
 * Smoothness level of the current image.
 * @default low
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop imageSmoothingQuality: Option<String>

/**
 * Text drawing direction.
 * @default inherit
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop direction: Option<String>

/**
 * Provides filter effects such as blur and grayscale. You can set the following filter effects:
 * blur(): Adds a Gaussian blur effect to the drawing
 * brightness(): Provides a linear multiplication for the drawing and adjusts the brightness level.
 * contrast(): Adjusts the contrast of the image. When the value is 0%, the image is completely black.
 * When the value is 100%, there is no change in the image.
 * grayscale(): Converts the image to a gray image. When the value is 100%, the image is completely gray.
 * When the value is 0%, there is no change in the image.
 * hue-rotate(): Perform color rotation on an image. When the value is 0 degrees, there is no change in the image.
 * invert(): Inverted image (representing the effect of a photographic negative). When the value is 100%,
 * the image is completely inverted. When the value is 0%, there is no change in the image.
 * opacity(): Transparency of the image. At 0%, the image is completely transparent.
 * When the value is 100%, there is no change in the image.
 * saturate(): Perform saturation processing on the image. At 0%, the image is completely un-saturated.
 * When the value is 100%, there is no change in the image.
 * sepia(): The image is sepia (nostalgic style). At 100%, the image turns completely sepia.
 * When the value is 0%, there is no change in the image.
 * none: Turn off filter effects
 *
 * @default none
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop filter: Option<String>

/**
 * Fills a specified rectangular area.
 *
 * @param { Float64 } x - The x-axis coordinate of the start point of the rectangle.
 * @param { Float64 } y - The y-axis coordinate of the start point of the rectangle.
 * @param { Float64 } w - Width of the rectangle.
 * @param { Float64 } h - Height of the rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fillRect(x: Float64, y: Float64, w: Float64, h: Float64): Unit

/**
 * Stroke Specify Rectangular Area.
 *
 * @param { Float64 } x - The x-axis coordinate of the start point of the rectangle.
 * @param { Float64 } y - The y-axis coordinate of the start point of the rectangle.
 * @param { Float64 } w - Width of the rectangle.
 * @param { Float64 } h - Height of the rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func strokeRect(x: Float64, y: Float64, w: Float64, h: Float64): Unit

/**
 * Clears the drawing content of a rectangular area.
 *
 * @param { Float64 } x - The x-axis coordinate of the start point of the rectangle.
 * @param { Float64 } y - The y-axis coordinate of the start point of the rectangle.
 * @param { Float64 } w - Width of the rectangle.
 * @param { Float64 } h - Height of the rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clearRect(x: Float64, y: Float64, w: Float64, h: Float64): Unit

/**
 * Fills the specified text at the specified location.
 *
 * @param { String } text - Text string to be drawn.
 * @param { Float64 } x - The x-axis coordinate of the start point of the text.
 * @param { Float64 } y - The y-axis coordinate of the start point of the text.
 * @param { Option<Float64> } [maxWidth] - Maximum width of the drawing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fillText(text: String, x: Float64, y: Float64, maxWidth!: Option<Float64> = Option.None): Unit

/**
 * Stroke specified text at specified position.
 *
 * @param { String } text - Text string to be stroked.
 * @param { Float64 } x - The x-axis coordinate of the start point of the text.
 * @param { Float64 } y - The y-axis-axis coordinate of the start point of the text.
 * @param { Option<Float64> } [maxWidth] - Maximum width of the stroke.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func strokeText(text: String, x: Float64, y: Float64, maxWidth!: Option<Float64> = None): Unit

/**
 * Measure the size of a specified text.
 *
 * @param { ?String } text - Text string to be measured.
 * @returns { TextMetrics } The metrics of the text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func measureText(text: ?String): TextMetrics

/**
 * Draws an existing path according to the current stroke style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stroke(): Unit

/**
 * Draws the specified path according to the current stroke style.
 *
 * @param { Path2D } path - Specified stroke path object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stroke(path: Path2D): Unit

/**
 * Clear the sub-path list and start a new path.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func beginPath(): Unit

/**
 * Moves the start point of a new sub-path to the (x, y) coordinate.
 *
 * @param { Float64 } x - The x-axis coordinate of the point.
 * @param { Float64 } y - The y-axis coordinate of the point.
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
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lineTo(x: Float64, y: Float64): Unit

/**
 * Returns the pen point to the start point of the current sub-path.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func closePath(): Unit

/**
 * Creates a template object using the specified image.
 *
 * @param { ?ImageBitmap } image - Objects as duplicate image sources
 * @param { ?Repetition } repetition - Specifies how to repeat images. The following four modes are supported:
 *     Repeat: Repeated images in both X and Y directions	
 *     RepeatX: Repeated images in the X-axis direction but not in the Y-axis direction	
 *     RepeatY: The image is repeated in the Y axis direction, and the image is not repeated in the X axis direction.	
 *     NoRepeat: Non-repeating images in both X and Y directions	
 *     Clamp: Replicate the edge color if the shader draws outside of its original bounds.	
 *     Mirror: Repeat the shader's image horizontally and vertically, alternating mirror images so that adjacent images always seam.
 * @returns { Option<CanvasPattern> } The created canvas pattern.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func createPattern(image: ?ImageBitmap, repetition: Option<Repetition>): Option<CanvasPattern>

/**
 * Drawing Cubic Bessel Curve Paths.
 *
 * @param { Float64 } cp1x - The x-axis coordinate of the first control point.
 * @param { Float64 } cp1y - The y-axis coordinate of the first control point.
 * @param { Float64 } cp2x - The x-axis coordinate of the second control point.
 * @param { Float64 } cp2y - The y-axis coordinate of the second control point.
 * @param { Float64 } x - x-axis coordinate of the end point.
 * @param { Float64 } y - y-axis coordinate of the end point.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func bezierCurveTo(cp1x: Float64, cp1y: Float64, cp2x: Float64, cp2y: Float64, x: Float64, y: Float64): Unit

/**
 * Draw quadratic Bezier curve paths.
 *
 * @param { Float64 } cpx - The x-axis coordinate of the control point.
 * @param { Float64 } cpy - The y-axis coordinate of the control point.
 * @param { Float64 } x - x-axis coordinate of the end point.
 * @param { Float64 } y - y-axis coordinate of the end point.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func quadraticCurveTo(cpx: Float64, cpy: Float64, x: Float64, y: Float64): Unit

/**
 * Draw an arc path.
 *
 * @param { Float64 } x - The x-axis coordinate of the center (center of the circle) of the arc.
 * @param { Float64 } y - The y-axis coordinate of the center (center of the circle) of the arc.
 * @param { Float64 } radius - Radius of the arc.
 * @param { Float64 } startAngle - Start point of an arc, which starts to be calculated in the x-axis direction. The unit is radian.
 * @param { Float64 } endAngle - The end point of the arc, in radians.
 * @param { ?Bool } [counterclockwise] - If the value is true, the arc is drawn counterclockwise. Otherwise,
 * the arc is drawn clockwise. The default value is false.
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
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func arcTo(x1: Float64, y1: Float64, x2: Float64, y2: Float64, radius: Float64): Unit

/**
 * Draw an Elliptic Path.
 *
 * @param { Float64 } x - x-axis coordinate of the center of the ellipse.
 * @param { Float64 } y - y-axis coordinate of the center of the ellipse.
 * @param { Float64 } radiusX - Radius of the major axis of the ellipse.
 * @param { Float64 } radiusY - Radius of the minor axis of the ellipse.
 * @param { Float64 } rotation - The rotation angle of the ellipse, in radians (not angular degrees).
 * @param { Float64 } startAngle - The angle of the starting point to be drawn, measured from the x-axis in radians
 * (not angular degrees).
 * @param { Float64 } endAngle - The angle, in radians, at which the ellipse is to be drawn (not angular degrees).
 * @param { Bool } counterclockwise - If the value is true, the ellipse is drawn counterclockwise. Otherwise,
 * the ellipse is drawn clockwise. The default value is false.
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
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rect(x: Float64, y: Float64, width: Float64, height: Float64): Unit

/**
 * Fills existing paths according to the current fill style.
 *
 * @param { ?CanvasFillRule } [fillRule] - Algorithm rule. For details, see CanvasFillRule.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fill(fillRule!: ?CanvasFillRule = None): Unit

/**
 * Fills the specified path according to the current fill style.
 *
 * @param { ?Path2D } path - Path to be filled.
 * @param { ?CanvasFillRule } [fillRule] - Algorithm rule. For details, see CanvasFillRule.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fill(path: ?Path2D, fillRule!: ?CanvasFillRule = None): Unit

/**
 * Sets the currently created path as the current clipping path.
 *
 * @param { ?CanvasFillRule } [fillRule] - Algorithm rule. For details, see CanvasFillRule
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clip(fillRule!: ?CanvasFillRule = None): Unit

/**
 * Tailoring according to the specified path.
 *
 * @param { ?Path2D } path - Path to be cut.
 * @param { ?CanvasFillRule } [fillRule] - Algorithm rule. For details, see CanvasFillRule.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clip(path: ?Path2D, fillRule!: ?CanvasFillRule = None): Unit

/**
 * Adds the effect of a rotation.
 *
 * @param { Float64 } angle - The radian of clockwise rotation, which can be converted to an angle value using the formula:
 * degree * Math.PI / 180
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rotate(angle: Float64): Unit

/**
 * Increases the scaling effect of the X and Y axes.
 *
 * @param { Float64 } x - Horizontal scaling factor.
 * @param { Float64 } y - Vertical scaling factor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scale(x: Float64, y: Float64): Unit

/**
 * Adds the 2D transformation effect, including rotation, translation, and scaling,
 *    and overwrites the current transformation matrix.
 *
 * @param { Float64 } a - Horizontal Zoom.
 * @param { Float64 } b - Vertical Tilt.
 * @param { Float64 } c - Horizontal Tilt.
 * @param { Float64 } d - Vertical Zoom.
 * @param { Float64 } e - Horizontal movement.
 * @param { Float64 } f - Vertical movement.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func transform(
        a: Float64,
        b: Float64,
        c: Float64,
        d: Float64,
        e: Float64,
        f: Float64
    ): Unit

/**
 * Adds 2D transformation effects, including rotation, translation, and scaling.
 * The current transformation matrix will not be overwritten. Multiple transformations will be superimposed.
 *
 * @param { Float64 } a - Horizontal Zoom.
 * @param { Float64 } b - Vertical Tilt.
 * @param { Float64 } c - Horizontal Tilt.
 * @param { Float64 } d - Vertical Zoom.
 * @param { Float64 } e - Horizontal movement.
 * @param { Float64 } f - Vertical movement.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setTransform(
        a: Float64,
        b: Float64,
        c: Float64,
        d: Float64,
        e: Float64,
        f: Float64
    ): Unit

/**
 * The 2D transformation effect is added. The current transformation matrix is not overwritten and
 *    the transformations are superimposed for multiple times.
 *
 * @param { Option<Matrix2D> } matrix - 2D transformation matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setTransform(matrix: Option<Matrix2D>): Unit

/**
 * Increases the translation effect of the X and Y axes.
 *
 * @param { Float64 } x - Horizontal movement distance.
 * @param { Float64 } y - Vertical travel distance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func translate(x: Float64, y: Float64): Unit

/**
 * Top of the stack pop-up state in the drawing state stack.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func restore(): Unit

/**
 * Saves the current drawing state to the drawing state stack.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func save(): Unit

/**
 * Creates a linear gradient object that is specified along the parameter coordinates.
 *
 * @param { Float64 } x0 - The x-axis coordinate of the start point.
 * @param { Float64 } y0 - The y-axis coordinate of the start point.
 * @param { Float64 } x1 - x-axis coordinate of the end point.
 * @param { Float64 } y1 - y-axis coordinate of the end point.
 * @returns { CanvasGradient } The created linear gradient.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func createLinearGradient(x0: Float64, y0: Float64, x1: Float64, y1: Float64): CanvasGradient

/**
 * Creates a radioactive gradient object based on parameters that determine the coordinates of two circles.
 *
 * @param { Float64 } x0 - The x-axis coordinate of the start circle.
 * @param { Float64 } y0 - The y-axis coordinate of the start circle.
 * @param { Float64 } r0 - Radius of the starting circle.
 * @param { Float64 } x1 - The x-axis coordinate of the end circle.
 * @param { Float64 } y1 - The y-axis coordinate of the end circle.
 * @param { Float64 } r1 - Radius of the end circle.
 * @returns { CanvasGradient } The created radial gradient.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func createRadialGradient(x0: Float64, y0: Float64, r0: Float64, x1: Float64, y1: Float64, r1: Float64): CanvasGradient

/**
 * Creates a gradient around a point with given coordinates.
 *
 * @param { ?Float64 } startAngle - The angle at which to begin the gradient, in radians.
 *   Angle measurements start horizontally the right of the center and move around clockwise.
 * @param { ?Float64 } x - The x-axis coordinate of the center of the gradient.
 * @param { ?Float64 } y - The y-axis coordinate of the center of the gradient.
 * @returns { CanvasGradient } A CanvasGradient object that draws a conic gradient around the given coordinates.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func createConicGradient(startAngle: ?Float64, x: ?Float64, y: ?Float64): CanvasGradient

/**
 * Draw an image on a canvas.
 *
 * @param { ImageBitmap } image - Picture objects drawn to the canvas.
 * @param { ?Float64 } dx - x-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dy - y-axis coordinate of the upper left corner of the image on the target canvas.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func drawImage(image: ImageBitmap, dx: ?Float64, dy: ?Float64): Unit

/**
 * Draw an image on a canvas.
 *
 * @param { ImageBitmap } image - Picture objects drawn to the canvas.
 * @param { ?Float64 } dx - x-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dy - y-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dw - Specifies the drawing width of the image on the target canvas. The width of the drawn image will be scaled.
 * @param { ?Float64 } dh - Specifies the drawing height of the image on the target canvas. The height of the drawn image will be scaled.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func drawImage(image: ImageBitmap, dx: ?Float64, dy: ?Float64, dw: ?Float64, dh: ?Float64): Unit

/**
 * Draw an image on a canvas.
 *
 * @param { ImageBitmap } image - Picture objects drawn to the canvas.
 * @param { ?Float64 } sx - x coordinate of the upper left corner of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } sy - y coordinate of the upper left corner of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } sw - Width of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } sh - Height of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } dx - x-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dy - y-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dw - Specifies the drawing width of the image on the target canvas. The width of the drawn image will be scaled.
 * @param { ?Float64 } dh - Specifies the drawing height of the image on the target canvas. The height of the drawn image will be scaled.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func drawImage(
        image: ImageBitmap,
        sx: ?Float64,
        sy: ?Float64,
        sw: ?Float64,
        sh: ?Float64,
        dx: ?Float64,
        dy: ?Float64,
        dw: ?Float64,
        dh: ?Float64
    ): Unit

/**
 * Draw an image on a canvas.
 *
 * @param { PixelMap } image - Picture objects drawn to the canvas.
 * @param { ?Float64 } dx - x-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dy - y-axis coordinate of the upper left corner of the image on the target canvas.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func drawImage(image: PixelMap, dx: ?Float64, dy: ?Float64): Unit

/**
 * Draw an image on a canvas.
 *
 * @param { PixelMap } image - Picture objects drawn to the canvas.
 * @param { ?Float64 } dx - x-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dy - y-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dw - Specifies the drawing width of the image on the target canvas. The width of the drawn image will be scaled.
 * @param { ?Float64 } dh - Specifies the drawing height of the image on the target canvas. The height of the drawn image will be scaled.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func drawImage(image: PixelMap, dx: ?Float64, dy: ?Float64, dw: ?Float64, dh: ?Float64): Unit

/**
 * Draw an image on a canvas.
 *
 * @param { PixelMap } image - Picture objects drawn to the canvas.
 * @param { ?Float64 } sx - x coordinate of the upper left corner of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } sy - y coordinate of the upper left corner of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } sw - Width of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } sh - Height of the rectangle (cropping) selection box of the image.
 * @param { ?Float64 } dx - x-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dy - y-axis coordinate of the upper left corner of the image on the target canvas.
 * @param { ?Float64 } dw - Specifies the drawing width of the image on the target canvas. The width of the drawn image will be scaled.
 * @param { ?Float64 } dh - Specifies the drawing height of the image on the target canvas. The height of the drawn image will be scaled.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func drawImage(
        image: PixelMap,
        sx: ?Float64,
        sy: ?Float64,
        sw: ?Float64,
        sh: ?Float64,
        dx: ?Float64,
        dy: ?Float64,
        dw: ?Float64,
        dh: ?Float64
    ): Unit

/**
 * Obtains the PixelMap of a specified area on the current canvas.
 *
 * @param { ?Float64 } sx - x coordinate of the upper left corner of the rectangular area of the PixelMap to be extracted.
 * @param { ?Float64 } sy - y coordinate of the upper left corner of the rectangular area of the PixelMap to be extracted.
 * @param { ?Float64 } sw - The width of the rectangular area of the PixelMap to be extracted.
 * @param { ?Float64 } sh - The height of the rectangular area of the PixelMap to be extracted.
 * @returns { PixelMap } The pixel map of the specified area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getPixelMap(sx: ?Float64, sy: ?Float64, sw: ?Float64, sh: ?Float64): PixelMap

/**
 * Clear the backing buffer, drawing state stack, any defined paths, and styles.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func reset(): Unit

/**
 * Allocate a layer for subsequent drawing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func saveLayer(): Unit

/**
 * Remove changes to transform and clip since saveLayer was last called and draw the layer on canvas.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func restoreLayer(): Unit

/**
 * Resets the current transformation matrix using the identity matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func resetTransform(): Unit

/**
 * Obtains the currently applied transformation matrix.
 *
 * @returns { Matrix2D } The current transformation matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getTransform(): Matrix2D

/**
 * transfer ImageBitmap to content.
 *
 * @param { ?ImageBitmap } bitmap - The image to transfer from.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func transferFromImageBitmap(bitmap: ?ImageBitmap): Unit

/**
 * The default value is 0, which is bound to the height of the specified canvas. The value is read-only.
 *
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop height: Float64

/**
 * The default value is 0, which is bound to the width of the specified canvas. The value is read-only.
 *
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop width: Float64

/**
 * Set a PixelMap to the current context. The drawing content is synchronized to the PixelMap.
 *
 * @param { ?PixelMap } value - PixelMap object
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setPixelMap(value: ?PixelMap): Unit

/**
 * Gets the current segment style.
 *
 * @returns { Array<Float64> } The current line dash pattern array.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getLineDash(): Array<Float64>

/**
 * Generate a character string in the data url format.
 *
 * @param { ?String } [imageType] - Image format. The default value is image/png.
 * @param { ?Float64 } [quality] - If the image format is image/jpeg or image/webp, you can select the image quality from 0 to 1.
 * If the value is out of the range, the default value 0.92 is used.
 * @returns { String } The data URL string of the canvas.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func toDataUrl(imageType!: ?String = None, quality!: ?Float64 = None): String

/**
 * Creates a new, empty ImageData object of the specified size.
 *
 * @param { ?Float64 } sw - Width of the ImageData object.
 * @param { ?Float64 } sh - Height of the ImageData object.
 * @returns { ImageData } The created empty ImageData object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func createImageData(sw: ?Float64, sh: ?Float64): ImageData

/**
 * From an existing ImageData object, copy an object with the same width and height as the image.
 *    The image content is not copied.
 *
 * @param { ?ImageData } imageData - ImageData object to be copied.
 * @returns { ImageData } The created ImageData object with the same dimensions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func createImageData(imageData: ?ImageData): ImageData

/**
 * Obtains the pixel data of a specified area on the current canvas.
 *
 * @param { ?Float64 } sx - x coordinate of the upper left corner of the rectangular area of the image data to be extracted.
 * @param { ?Float64 } sy - y coordinate of the upper left corner of the rectangular area of the image data to be extracted.
 * @param { ?Float64 } sw - The width of the rectangular area of the image data to be extracted.
 * @param { ?Float64 } sh - The height of the rectangular area of the image data to be extracted.
 * @returns { ImageData } The pixel data of the specified area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getImageData(sx: ?Float64, sy: ?Float64, sw: ?Float64, sh: ?Float64): ImageData

/**
 * Draws the specified ImageData object onto the canvas.
 *
 * @param { ImageData } imageData - ImageData object to be drawn.
 * @param { Length } dx - Position offset of the source image data in the target canvas (the offset in the x-axis direction).
 * @param { Length } dy - Position offset of the source image data in the target canvas (the offset in the y-axis direction).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func putImageData(imageData: ImageData, dx: Length, dy: Length): Unit

/**
 * Draws the specified ImageData object onto the canvas.
 *
 * @param { ImageData } imagedata - ImageData object to be drawn.
 * @param { ?Length } dx - Position offset of the source image data in the target canvas (the offset in the x-axis direction).
 * @param { ?Length } dy - Position offset of the source image data in the target canvas (the offset in the y-axis direction).
 * @param { ?Length } dirtyX - Position of the upper left corner of the rectangular area in the source image data.
 * The default is the upper left corner (x coordinate) of the entire image data.
 * @param { ?Length } dirtyY - Position of the upper left corner of the rectangular area in the source image data.
 * The default is the upper left corner (y coordinate) of the entire image data.
 * @param { ?Length } dirtyWidth - Width of the rectangular area in the source image data.
 * The default is the width of the image data.
 * @param { ?Length } dirtyHeight - Height of the rectangular area in the source image data.
 * The default is the height of the image data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func putImageData(
        imageData: ImageData,
        dx: ?Length,
        dy: ?Length,
        dirtyX: ?Length,
        dirtyY: ?Length,
        dirtyWidth: ?Length,
        dirtyHeight: ?Length
    ): Unit
}

/**
 * Bitmap image object that can be drawn onto the current Canvas.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageBitmap <: RemoteData {
/**
 * Indicates the width of the CSS pixel unit of ImageData.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop width: Float64

/**
 * Indicates the height of the CSS pixel unit of ImageData.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop height: Float64

/**
 * Create an ImageBitmap object based on the transferred image path.
 *
 * @param { ?String } src - Path of the image object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(src: ?String)
}

/**
 * Image data object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageData <: RemoteDataLite {
/**
 * The width of the image source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop width: Int32

/**
 * The height of the image source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop height: Int32

/**
 * Array containing image pixel data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop data: Array<UInt8>

/**
 * Create an ImageData object based on the input parameters.
 *
 * @param { ?Float64 } width - Width of the image.
 * @param { ?Float64 } height - Height of the image.
 * @param { ?Array<UInt8> } data - Data of the image. If this parameter is not specified, the default value is a black rectangular image.
 * @param { ?LengthMetricsUnit } [unit] - the unit mode
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width: ?Float64, height: ?Float64, data!: ?Array<UInt8>, unit!: ?LengthMetricsUnit = None)

/**
 * Create an ImageData object based on the input parameters.
 *
 * @param { ?Float64 } width - Width of the image.
 * @param { ?Float64 } height - Height of the image.
 * @param { ?LengthMetricsUnit } [unit] - the unit mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width: ?Float64, height: ?Float64, unit!: ?LengthMetricsUnit = None)
}

/**
 * 2D transformation matrix, supporting rotation, translation, and scaling of the X-axis and Y-axis
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Matrix2D <: RemoteDataLite {
/**
 * Constructs a 2D change matrix object. The default value is the unit matrix.
 *
 * @param { ?LengthMetricsUnit } [unit] - the unit mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(unit!: ?LengthMetricsUnit = None)

/**
 * Horizontal Zoom.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop scaleX: ?Float64

/**
 * Vertical Zoom.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop scaleY: ?Float64

/**
 * Horizontal Tilt.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop rotateX: ?Float64

/**
 * Vertical Tilt.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop rotateY: ?Float64

/**
 * Horizontal movement.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop translateX: ?Float64

/**
 * Vertical movement.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop translateY: ?Float64

/**
 * Transforms the current 2D matrix back to the identity matrix (i.e., without any rotational
 * translation scaling effect).
 *
 * @returns { This } The instance of the matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func identity(): This

/**
 * Transform the current 2D matrix into an inverse matrix (that is, the transformation effect
 * is the opposite effect of the original).
 *
 * @returns { This } The instance of the matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func invert(): This

/**
 * Adds the rotation effect of the X and Y axes to the current matrix.
 *
 * @param { ?Float64 } degree - The rotation angle, clockwise in radians.
 * @param { ?Float64 } [rx] - Rotation effect of the X-axis.
 * @param { ?Float64 } [ry] - Rotation effect of the Y-axis.
 * @returns { This } The instance of the matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rotate(degree: ?Float64, rx!: ?Float64 = None, ry!: ?Float64 = None): This

/**
 * Adds the translation effect of the X and Y axes to the current matrix.
 *
 * @param { ?Float64 } [tx] - X-axis translation effect.
 * @param { ?Float64 } [ty] - Y-axis translation effect.
 * @returns { This } The instance of the matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func translate(tx!: ?Float64 = None, ty!: ?Float64 = None): This

/**
 * Adds the scaling effect of the X and Y axes to the current matrix.
 *
 * @param { ?Float64 } [sx] - X-axis scaling effect.
 * @param { ?Float64 } [sy] - Y-axis scaling effect.
 * @returns { This } The instance of the matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scale(sx!: ?Float64 = None, sy!: ?Float64 = None): This
}