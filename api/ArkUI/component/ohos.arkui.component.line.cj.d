package ohos.arkui.component.line

import ohos.arkui.component.shape.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Line Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Line <: CommonShapeMethodComponent<Line> & LineAttribute {
/**
 * Uses new to create the line.
 *
 * @param { ?Length } [width] - Width of the rectangle where the line resides.
 * @param { ?Length } [height] - Height of the rectangle where the line resides.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length = None, height!: ?Length = None)

/**
 * Coordinate of the start point of the line (relative coordinate).
 *
 * @param { ?(Float64, Float64) } value - The start point coordinate.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func startPoint(value: ?(Float64, Float64)): This

/**
 * Line end coordinates (relative coordinates).
 *
 * @param { ?(Float64, Float64) } value - The end point coordinate.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func endPoint(value: ?(Float64, Float64)): This
}

/**
 * Provides attribute for Line.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface LineAttribute <: CommonShapeMethod<LineAttribute> {
/**
 * Coordinate of the start point of the line (relative coordinate).
 *
 * @param { ?(Float64, Float64) } value - The start point coordinate.
 * @returns { LineAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func startPoint(value: ?(Float64, Float64)): LineAttribute

/**
 * Line end coordinates (relative coordinates).
 *
 * @param { ?(Float64, Float64) } value - The end point coordinate.
 * @returns { LineAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func endPoint(value: ?(Float64, Float64)): LineAttribute
}