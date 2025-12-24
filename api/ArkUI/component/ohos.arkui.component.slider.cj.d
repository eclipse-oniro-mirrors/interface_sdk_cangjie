package ohos.arkui.component.slider

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines Slider Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Slider <: CommonMethodComponent<Slider> & SliderAttribute {
    /**
     * Defines Slider Component instance.
     *
     * @param { ?Float64 } [min] - Minimum value.
     * @param { ?Float64 } [max] - Maximum value.
     * @param { ?Float64 } [step] - Step of the slider.
     * @param { ?Float64 } [value] - Current value of Slider.
     * @param { ?SliderStyle } [style] - Style of the slider thumb and track.
     * @param { ?Axis } [direction] - Whether the slider moves horizontally or vertically.
     * @param { ?Bool } [reverse] - Whether the slider values are revers. By default, the values increase from left to right for a horizontal
     *      slider and from top to bottom for a vertical slider.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        min!: ?Float64 = None,
        max!: ?Float64 = None,
        step!: ?Float64 = None,
        value!: ?Float64 = None,
        style!: ?SliderStyle = None,
        direction!: ?Axis = None,
        reverse!: ?Bool = None
    )

    /**
     * Called when the slider color of the slider bar is set.
     *
     * @param { ?ResourceColor } value
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func blockColor(value: ?ResourceColor): This

    /**
     * Called when the track color of the slider is set.
     *
     * @param { ?ResourceColor } value
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackColor(value: ?ResourceColor): This

    /**
     * Called when the slider of the slider bar is set to slide over the area color.
     *
     * @param { ?ResourceColor } value
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ?ResourceColor): This

    /**
     * Called when setting whether to display step size.
     *
     * @param { ?Bool } value - Called when setting whether to display step size.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showSteps(value: ?Bool): This

    /**
     * Called when the percentage of bubble prompt is set when sliding.
     *
     * @param { ?Bool } value - Whether to display the bubble.
     * @param { ?ResourceStr } [content] - Text content in the bubble.
     *      If the content is not specified, the current percentage is displayed by default.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showTips(value: ?Bool, content!: ?ResourceStr = None): This

    /**
     * Called when the thickness of track is set.
     *
     * @param { ?Length } value
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackThickness(value: ?Length): This

    /**
     * Triggered when the slider is dragged or clicked.
     * NOTE: The Begin and End states are triggered when the slider is clicked with a gesture.
     * The Moving and Click states are triggered when the value of value changes.
     * If the coherent action is a drag action, the Click state will not be triggered.
     *
     * @param { ?(Float64, SliderChangeMode) -> Unit } callback
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: ?(Float64, SliderChangeMode) -> Unit): This

    /**
     * Called when the border color of block is set.
     *
     * @param { ?ResourceColor } value - the border color of block.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func blockBorderColor(value: ?ResourceColor): This
}

/**
 * Defines the attribute functions of Slider.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface SliderAttribute <: CommonMethod<SliderAttribute> {
    /**
     * Called when the slider color of the slider bar is set.
     *
     * @param { ?ResourceColor } value
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func blockColor(value: ?ResourceColor): SliderAttribute

    /**
     * Called when the track color of the slider is set.
     *
     * @param { ?ResourceColor } value
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func trackColor(value: ?ResourceColor): SliderAttribute

    /**
     * Called when the slider of the slider bar is set to slide over the area color.
     *
     * @param { ?ResourceColor } value
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func selectedColor(value: ?ResourceColor): SliderAttribute

    /**
     * Setting whether to display step size.
     *
     * @param { ?Bool } value - Called when setting whether to display step size.
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func showSteps(value: ?Bool): SliderAttribute

    /**
     * Called when the percentage of bubble prompt is set when sliding.
     *
     * @param { ?Bool } value - Whether to display the bubble.
     * @param { ?ResourceStr } content - Text content in the bubble. If the content is not specified,
     *     the current percentage is displayed by default.
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func showTips(value: ?Bool, content!: ?ResourceStr): SliderAttribute

    /**
     * Called when the thickness of track is set.
     *
     * @param { ?Length } value
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func trackThickness(value: ?Length): SliderAttribute

    /**
     * Triggered when the slider is dragged or clicked.
     * NOTE: The Begin and End states are triggered when the slider is clicked with a gesture.
     * The Moving and Click states are triggered when the value of value changes.
     * If the coherent action is a drag action, the Click state will not be triggered.
     *
     * @param { ?(Float64, SliderChangeMode) -> Unit } callback
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onChange(callback: ?(Float64, SliderChangeMode) -> Unit): SliderAttribute

    /**
     * Called when the border color of block is set.
     *
     * @param { ?ResourceColor } value - the border color of block.
     * @returns { SliderAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func blockBorderColor(value: ?ResourceColor): SliderAttribute
}