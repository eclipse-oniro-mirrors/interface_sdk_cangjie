package ohos.arkui.component.data_panel

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * ColorStop type
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ColorStop {
    /**
     * Color property.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ResourceColor

    /**
     * Offset property.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Length

    /**
     * ColorStop constructor
     *
     * @param { ResourceColor } color - The color value.
     * @param { Length } offset - The color offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color: ResourceColor, offset: Length)
}

/**
 * LinearGradient class
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LinearGradient {
    /**
     * LinearGradient Constructor.
     *
     * @param { Array<ColorStop> } colorStops - the LinearGradient constructor parameter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(colorStops: Array<ColorStop>)

    /**
     * LinearGradient Constructor.
     *
     * @param { ResourceColor } color - the LinearGradient constructor parameter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color: ResourceColor)
}

/**
 * Defines the options of Shadow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DataPanelShadowOptions <: MultiShadowOptions {
    /**
     * Current shadow colors.
     *
     * @default Consistent with valueColors
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var colors: ?Array<LinearGradient>

    /**
     * DataPanelShadowOptions Constructor.
     *
     * @param { ?Length } [radius] - The radius of the shadow blur effect.
     * @param { ?Array<LinearGradient> } [colors] - The colors to use for the shadow.
     * @param { ?Length } [offsetX] - The horizontal offset of the shadow from the component.
     * @param { ?Length } [offsetY] - The vertical offset of the shadow from the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(radius!: ?Length = None, colors!: ?Array<LinearGradient> = None, offsetX!: ?Length = None,
        offsetY!: ?Length = None)
}

/**
 * Defines DataPanel Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DataPanel <: CommonMethodComponent<DataPanel> & DataPanelAttribute {
    /**
     * DataPanel Constructor.
     *
     * @param { Array<Float64> } values - The data values to display.
     * @param { ?Float64 } [max] - The maximum value for scaling the data.
     * @param { ?DataPanelType } [panelType] - The type of data panel to display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(values!: Array<Float64>, max!: ?Float64 = None, panelType!: ?DataPanelType = None)

    /**
     * Disable the special effect of the data ratio chart.
     *
     * @param { ?Bool } value - Whether to disable the special effect.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closeEffect(value: ?Bool): This

    /**
     * Set the value colors of the data ratio chart.
     *
     * @param { ?Array<LinearGradient> } value - the value colors of the data ratio chart.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func valueColors(value: ?Array<LinearGradient>): This

    /**
     * Set track background color of the data ratio chart.
     *
     * @param { ?ResourceColor } value - track background color of the data ratio chart.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackBackgroundColor(value: ?ResourceColor): This

    /**
     * Set the stroke width of the data ratio chart.
     *
     * @param { ?Length } value - the stroke width of the data ratio chart.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(value: ?Length): This

    /**
     * Set the shadow width of the data ratio chart.
     *
     * @param { ?DataPanelShadowOptions } value - the track shadow width of the data ratio chart.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackShadow(value: ?DataPanelShadowOptions): This
}

/**
 * Defines the DataPanel attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface DataPanelAttribute <: CommonMethod<DataPanelAttribute> {
    /**
     * Disable the special effect of the data ratio chart.
     *
     * @param { ?Bool } value - Whether to disable the special effect.
     * @returns { DataPanelAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func closeEffect(value: ?Bool): DataPanelAttribute

    /**
     * Set the value colors of the data ratio chart.
     *
     * @param { ?Array<LinearGradient> } value - the value colors of the data ratio chart.
     * @returns { DataPanelAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func valueColors(value: ?Array<LinearGradient>): DataPanelAttribute

    /**
     * Set track background color of the data ratio chart.
     *
     * @param { ?ResourceColor } value - track background color of the data ratio chart.
     * @returns { DataPanelAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func trackBackgroundColor(value: ?ResourceColor): DataPanelAttribute

    /**
     * Set the stroke width of the data ratio chart.
     *
     * @param { ?Length } value - the stroke width of the data ratio chart.
     * @returns { DataPanelAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func strokeWidth(value: ?Length): DataPanelAttribute

    /**
     * Set the shadow width of the data ratio chart.
     *
     * @param { ?DataPanelShadowOptions } value - the track shadow width of the data ratio chart.
     * @returns { DataPanelAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func trackShadow(value: ?DataPanelShadowOptions): DataPanelAttribute
}