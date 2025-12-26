package ohos.arkui.component.gauge

import ohos.arkui.component.common.*
import ohos.arkui.component.data_panel.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines Gauge Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Gauge <: CommonMethodComponent<Gauge> & GaugeAttribute {
    /**
     * The constructor of Gauge.
     *
     * @param { ?Float32 } value - Set current data value.
     * @param { ?Float32 } [min] - Set current segment minimum value.
     * @param { ?Float32 } [max] - Set current segment maximum value.
     * @param { () -> Unit } [child] - Set child component of Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ?Float32, min!: ?Float32 = None, max!: ?Float32 = None, child!: () -> Unit = {=>})

    /**
     * Sets the value for the current profile.
     *
     * @param { ?Float32 } value - Set current data value.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func value(value: ?Float32): This

    /**
     * Set the start angle. Clock 0 is 0 degrees and clockwise is positive.
     *
     * @param { ?Float32 } angle - The start angle value, measured in degrees.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func startAngle(angle: ?Float32): This

    /**
     * Sets the end angle position. Clock 0 is 0 degrees and clockwise is positive.
     *
     * @param { ?Float32 } angle - The end angle value, measured in degrees.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func endAngle(angle: ?Float32): This

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?Array<(ResourceColor, Int32)> } value - section colors of gauge drawing.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: ?Array<(ResourceColor, Int32)>): This

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?Array<(LinearGradient, Int32)> } value - section colors of gauge drawing.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: ?Array<(LinearGradient, Int32)>): This

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?ResourceColor } value - section colors of gauge drawing.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: ?ResourceColor): This

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?LinearGradient } value - section colors of gauge drawing.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: ?LinearGradient): This

    /**
     * Sets the thickness of the ring chart.
     *
     * @param { ?Length } length - The stroke width value.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(length: ?Length): This

    /**
     * Sets track shadow of the ring chart.
     *
     * @param { ?Float32 } [radius] - The shadow radius.
     * @param { ?Float32 } [offsetX] - The shadow horizontal offset.
     * @param { ?Float32 } [offsetY] - The shadow vertical offset.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackShadow(radius!: ?Float32 = None, offsetX!: ?Float32 = None, offsetY!: ?Float32 = None): This

    /**
     * Sets indicator options of the ring chart.
     *
     * @param { ?ResourceStr } [icon] - The indicator icon.
     * @param { ?Length } [space] - The space between indicator and chart.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func indicator(icon!: ?ResourceStr = None, space!: ?Length = None): This

    /**
     * Sets description content of the ring chart.
     *
     * @param { ?CustomBuilder } builder - description content builder of the gauge drawing.
     * @returns { This } returns the instance of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func description(builder: ?CustomBuilder): This
}

/**
 * Defines the Gauge component attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface GaugeAttribute <: CommonMethod<GaugeAttribute> {
    /**
     * Sets the value for the current profile.
     *
     * @param { ?Float32 } value - Set current data value.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func value(value: ?Float32): GaugeAttribute

    /**
     * Set the start angle. Clock 0 is 0 degrees and clockwise is positive.
     *
     * @param { ?Float32 } angle - The start angle value.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func startAngle(angle: ?Float32): GaugeAttribute

    /**
     * Sets the end angle position. Clock 0 is 0 degrees and clockwise is positive.
     *
     * @param { ?Float32 } angle - The end angle value.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func endAngle(angle: ?Float32): GaugeAttribute

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?Array<(ResourceColor, Int32)> } colors - section colors of gauge drawing.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func colors(value: ?Array<(ResourceColor, Int32)>): GaugeAttribute

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?Array<(LinearGradient, Int32)> } colors - section colors of gauge drawing.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func colors(value: ?Array<(LinearGradient, Int32)>): GaugeAttribute

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?ResourceColor } value - section colors of gauge drawing.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func colors(value: ?ResourceColor): GaugeAttribute

    /**
     * Set the color of the chart. You can set the solid color and segmented gradient color.
     *
     * @param { ?LinearGradient } value - section colors of gauge drawing.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func colors(value: ?LinearGradient): GaugeAttribute

    /**
     * Sets the thickness of the ring chart.
     *
     * @param { ?Length } length - The stroke width value.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeWidth(length: ?Length): GaugeAttribute

    /**
     * Sets track shadow of the ring chart.
     *
     * @param { ?Float32 } radius - The shadow radius.
     * @param { ?Float32 } offsetX - The shadow horizontal offset.
     * @param { ?Float32 } offsetY - The shadow vertical offset.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func trackShadow(radius!: ?Float32, offsetX!: ?Float32, offsetY!: ?Float32): GaugeAttribute

    /**
     * Sets indicator options of the ring chart.
     *
     * @param { ?ResourceStr } icon - The indicator icon.
     * @param { ?Length } space - The space between indicator and chart.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func indicator(icon!: ?ResourceStr, space!: ?Length): GaugeAttribute

    /**
     * Sets description content of the ring chart.
     *
     * @param { ?CustomBuilder } builder - The custom description builder function.
     * @returns { GaugeAttribute } The attribute of the Gauge.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func description(builder: ?CustomBuilder): GaugeAttribute
}