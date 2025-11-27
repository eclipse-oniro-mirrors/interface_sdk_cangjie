package ohos.arkui.component_utils

import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * The information of a transformation matrix.
 */
public type Matrix4Result = VArray<Float64, $16>

/**
 * Defines the size property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Size {
/**
 * Defines the width property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: Float64

/**
 * Defines the height property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: Float64

/**
 * Create an Object of Size.
 *
 * @param { Float64 } width - The width of the size.
 * @param { Float64 } height - The height of the size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width: Float64, height: Float64)
}

/**
 * Defines the offset property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Offset {
/**
 * Coordinate x of the Position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: Float64

/**
 * Coordinate y of the Position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: Float64

/**
 * Create an Object of Offset.
 *
 * @param { Float64 } x - The x coordinate.
 * @param { Float64 } y - The y coordinate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x: Float64, y: Float64)
}

/**
 * Translation Result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TranslateResult {
/**
 * Indicates the translation distance of the x-axis, in vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: Float64

/**
 * Indicates the translation distance of the y-axis, in vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: Float64

/**
 * Indicates the translation distance of the z-axis, in vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var z: Float64

/**
 * Create an Object of TranslateResult.
 *
 * @param { Float64 } x - The x coordinate.
 * @param { Float64 } y - The y coordinate.
 * @param { Float64 } z - The z coordinate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x: Float64, y: Float64, z: Float64)
}

/**
 * Scale Result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScaleResult {
/**
 * Zoom factor of the x-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: Float64

/**
 * Zoom factor of the y-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: Float64

/**
 * Zoom factor of the z-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var z: Float64

/**
 * Transform the x-axis coordinate of the center point.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerX: Float64

/**
 * Transform the y-axis coordinate of the center point.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerY: Float64

/**
 * Defines ScaleResult Type.
 *
 * @param { Float64 } x - The zoom factor of the x-axis.
 * @param { Float64 } y - The zoom factor of the y-axis.
 * @param { Float64 } z - The zoom factor of the z-axis.
 * @param { Float64 } centerX - The x-axis coordinate of the center point.
 * @param { Float64 } centerY - The y-axis coordinate of the center point.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x: Float64, y: Float64, z: Float64, centerX: Float64, centerY: Float64)
}

/**
 * Rotation Result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RotateResult {
/**
 * Axis of rotation vector x coordinate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: Float64

/**
 * Axis of rotation vector y coordinate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: Float64

/**
 * Axis of rotation vector z coordinate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var z: Float64

/**
 * Transform the x-axis coordinate of the center point.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerX: Float64

/**
 * Transform the y-axis coordinate of the center point.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerY: Float64

/**
 * Rotation angle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var angle: Float64

/**
 * Defines RotateResult Type.
 *
 * @param { Float64 } x - The x coordinate of rotation vector.
 * @param { Float64 } y - The y coordinate of rotation vector.
 * @param { Float64 } z - The z coordinate of rotation vector.
 * @param { Float64 } centerX - The x-axis coordinate of the center point.
 * @param { Float64 } centerY - The y-axis coordinate of the center point.
 * @param { Float64 } angle - The rotation angle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x: Float64, y: Float64, z: Float64, centerX: Float64, centerY: Float64, angle: Float64)
}

/**
 * Component information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ComponentInfo {
/**
 * component size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var size: Size

/**
 * Obtain attribute information relative to the local.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var localOffset: Offset

/**
 * Obtain attribute information relative to the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var windowOffset: Offset

/**
 * Obtain attribute information relative to the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var screenOffset: Offset

/**
 * Obtain attribute information for translation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var translate: TranslateResult

/**
 * Obtain attribute information for scale.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var scale: ScaleResult

/**
 * Obtain attribute information for rotate.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var rotate: RotateResult

/**
 * Obtain attribute information of the transformation matrix.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var transform: Matrix4Result

/**
 * ComponentInfo constructor.
 *
 * @param { Size } size - The size of the component.
 * @param { Offset } localOffset - The local offset of the component.
 * @param { Offset } windowOffset - The window offset of the component.
 * @param { Offset } screenOffset - The screen offset of the component.
 * @param { TranslateResult } translate - The translation result of the component.
 * @param { ScaleResult } scale - The scale result of the component.
 * @param { RotateResult } rotate - The rotation result of the component.
 * @param { Matrix4Result } transform - The transformation matrix of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(size: Size, localOffset: Offset, windowOffset: Offset, screenOffset: Offset, translate: TranslateResult,
        scale: ScaleResult, rotate: RotateResult, transform: Matrix4Result)
}

/**
 * This module provides functionality for component coordinates and sizes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ComponentUtils {
/**
 * Provide the ability to obtain the coordinates and size of component drawing areas.
 *
 * @param { String } id - component id.
 * @returns { ComponentInfo } the object of ComponentInfo.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func getRectangleById(id: String): ComponentInfo
}