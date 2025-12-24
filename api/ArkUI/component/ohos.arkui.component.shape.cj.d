package ohos.arkui.component.shape

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap
import ohos.resource.*

/**
 * Defines CommonShapeMethodComponent.
 * This abstract class provides common shape method implementations for shape components.
 * It extends CommonMethodComponent and implements CommonShapeMethod interface.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class CommonShapeMethodComponent<T> <: CommonMethodComponent<T> & CommonShapeMethod<T> {
    /**
     * Called when the fill color is set.
     *
     * @param { ?ResourceColor } value - The shape fill color.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fill(value: ?ResourceColor): T

    /**
     * Sets the opacity of the fill area.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?Float64 } value - Opacity of the fill area. Default value: 1.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillOpacity(value: ?Float64): T

    /**
     * Sets the opacity of the fill area.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?AppResource } value - Opacity of the fill area. Default value: 1
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillOpacity(value: ?AppResource): T

    /**
     * Sets the stroke color.
     * If this attribute is not set, the component does not have any stroke.
     * If the value is invalid, no stroke will be drawn.
     *
     * @param { ?ResourceColor } value - Stroke color.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stroke(value: ?ResourceColor): T

    /**
     * Sets stroke dashes.
     * The value must be greater than or equal to 0. Invalid values are treated as the default value.
     *
     * @param { ?Array<Length> } value - Stroke dashes.
     *     Default value: []
     *     Default unit: vp
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeDashArray(value: ?Array<Length>): T

    /**
     * Sets the offset of the start point for drawing the stroke.
     * An invalid value is handled as the default value.
     *
     * @param { ?Length } value - Offset of the start point for drawing the stroke.
     *     Default value: 0
     *     Default unit: vp
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeDashOffset(value: ?Length): T

    /**
     * Called when the path endpoint drawing style is set.
     *
     * @param { ?LineCapStyle } value - Cap style of the stroke.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeLineCap(value: ?LineCapStyle): T

    /**
     * Sets the join style of the stroke.
     * This attribute does not work for the Circle component, which does not have corners.
     *
     * @param { ?LineJoinStyle } value - Join style of the stroke. Default value: LineJoinStyle.Miter
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeLineJoin(value: ?LineJoinStyle): T

    /**
     * Limits for drawing acute angles as bevels
     *
     * @param { ?Float64 } miterLimit - The stroke miter limit.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeMiterLimit(miterLimit: ?Float64): T

    /**
     * Sets the stroke opacity.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?Float64 } value - Stroke opacity. Default value: 1.0.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeOpacity(value: ?Float64): T

    /**
     * Sets the stroke opacity.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?AppResource } value - Stroke opacity. Default value: 1.0
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeOpacity(value: ?AppResource): T

    /**
     * Sets the stroke width.
     * If this attribute is of the string type, percentage values are not supported and will be treated as 1.px.
     *
     * @param { ?Length } value - Stroke width.
     *     The value must be greater than or equal to 0.
     *     Default value: 1.
     *     Default unit: vp.
     *     An invalid value is handled as the default value.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(value: ?Length): T

    /**
     * Specifies whether anti-aliasing is enabled.
     *
     * @param { ?Bool } value - Whether anti-aliasing is enabled.
     *     true: Anti-aliasing is enabled.
     *     false: Anti-aliasing is disabled.
     *     Default value: true
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func antiAlias(value: ?Bool): T
}

/**
 * Defines CommonShapeMethod.
 * This interface provides common shape methods for shape components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface CommonShapeMethod<T> <: CommonMethod<T> {
    /**
     * Called when the fill color is set.
     *
     * @param { ?ResourceColor } value - The shape fill color.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fill(value: ?ResourceColor): T

    /**
     * Sets the opacity of the fill area.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?Float64 } value - Opacity of the fill area. Default value: 1.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fillOpacity(value: ?Float64): T

    /**
     * Sets the opacity of the fill area.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?Float64 } value - Opacity of the fill area. Default value: 1.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fillOpacity(value: ?AppResource): T

    /**
     * Sets the stroke color.
     * If this attribute is not set, the component does not have any stroke.
     * If the value is invalid, no stroke will be drawn.
     *
     * @param { ?ResourceColor } value - Stroke color.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func stroke(value: ?ResourceColor): T

    /**
     * Sets stroke dashes.
     * The value must be greater than or equal to 0. Invalid values are treated as the default value.
     *
     * @param { ?Array<Length> } value - Stroke dashes.
     *     Default value: []
     *     Default unit: vp
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeDashArray(value: ?Array<Length>): T

    /**
     * Called when the offset of the starting point of border drawing is set.
     *
     * @param { ?Length } value - The stroke dash offset.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeDashOffset(value: ?Length): T

    /**
     * Called when the path endpoint drawing style is set.
     *
     * @param { ?LineCapStyle } value - The stroke line cap style.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeLineCap(value: ?LineCapStyle): T

    /**
     * Sets the join style of the stroke.
     * This attribute does not work for the Circle component, which does not have corners.
     *
     * @param { ?LineJoinStyle } value - Join style of the stroke. Default value: LineJoinStyle.Miter
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeLineJoin(value: ?LineJoinStyle): T

    /**
     * Limits for drawing acute angles as bevels
     *
     * @param { ?Float64 } miterLimit - The stroke miter limit.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeMiterLimit(miterLimit: ?Float64): T

    /**
     * Set the opacity of the border.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?Float64 } value - Stroke opacity. Default value: 1.0.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeOpacity(value: ?Float64): T

    /**
     * Set the opacity of the border.
     * The value range is [0.0, 1.0].
     * A value less than 0.0 evaluates to the value 0.0. A value greater than 1.0 evaluates to the value 1.0.
     * Any other value evaluates to the value 1.0.
     *
     * @param { ?AppResource } value - Stroke opacity. Default value: 1.0
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeOpacity(value: ?AppResource): T

    /**
     * Set the width of the border.
     * If this attribute is of the string type, percentage values are not supported and will be treated as 1.px.
     *
     * @param { ?Length } value - The stroke width. The value must be greater than or equal to 0.
     *      Default value: 1.
     *      Default unit: vp.
     *      invalid value is handled as the default value.
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeWidth(value: ?Length): T

    /**
     * Called when setting whether anti aliasing is on.
     *
     * @param { ?Bool } value - Whether anti-aliasing is enabled.
     *      true: Anti-aliasing is enabled.
     *      false: Anti-aliasing is disabled.
     *      Default value: true
     * @returns { T } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func antiAlias(value: ?Bool): T
}

/**
 * Defines Shape Component.
 * The Shape component is used to draw custom shapes using path drawing commands.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Shape <: CommonShapeMethodComponent<Shape> & ShapeAttribute {
    /**
     * Defines Shape Component instance.
     *
     * @param { () -> Unit } [child] - Child component of shape.
     * @returns { This } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child!: () -> Unit = {=>})

    /**
     * Defines Shape Component instance.
     *
     * @param { ?PixelMap } value - The shape background image.
     * @returns { This } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ?PixelMap)

    /**
     * Viewport of shape.
     *
     * @param { ?Length } [x] - X coordinate of the viewport.
     * @param { ?Length } [y] - Y coordinate of the viewport.
     * @param { ?Length } [width] - Width of the viewport.
     * @param { ?Length } [height] - Height of the viewport.
     * @returns { This } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func viewPort(
        x!: ?Length = None,
        y!: ?Length = None,
        width!: ?Length = None,
        height!: ?Length = None
    ): This

    /**
     * Called when shape mesh.
     *
     * @param { ?Array<Float64> } value - The mesh points array[x1, y1, x2, y2, ...].
     * @param { ?UInt32 } column - The column count of mesh.
     * @param { ?UInt32 } row - The row count of mesh.
     * @returns { This } Returns the component instance itself for method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func mesh(value: ?Array<Float64>, column: ?UInt32, row: ?UInt32): This
}

/**
 * Provides attribute for Shape.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ShapeAttribute <: CommonShapeMethod<ShapeAttribute> {
    /**
     * Viewport of shape
     *
     * @param { ?Length } x - X coordinate of the viewport.
     * @param { ?Length } y - Y coordinate of the viewport.
     * @param { ?Length } width - Width of the viewport.
     * @param { ?Length } height - Height of the viewport.
     * @returns { ShapeAttribute } Returns the attribute of Shape.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func viewPort(
        x!: ?Length,
        y!: ?Length,
        width!: ?Length,
        height!: ?Length
    ): ShapeAttribute

    /**
     * Called when shape mesh.
     *
     * @param { ?Array<Float64> } array - The mesh vertex point array.
     * @param { ?UInt32 } column - The column count of mesh.
     * @param { ?UInt32 } row - The row count of mesh.
     * @returns { ShapeAttribute } Returns the attribute of Shape.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func mesh(array: ?Array<Float64>, column: ?UInt32, row: ?UInt32): ShapeAttribute
}