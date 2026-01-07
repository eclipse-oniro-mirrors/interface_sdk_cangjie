package ohos.arkui.component.text_timer

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Provides a way to control the process.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextTimerController <: RemoteDataLite {
    /**
     * constructor. A constructor used to create a TextTimerController object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Starts the timer.
     *
     * @returns { Unit } Returns nothing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func start(): Unit

    /**
     * Pauses the timer.
     *
     * @returns { Unit } Returns nothing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func pause(): Unit

    /**
     * Resets the timer.
     *
     * @returns { Unit } Returns nothing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func reset(): Unit
}

/**
 * Defines TextTimer Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextTimer <: CommonMethodComponent<TextTimer> & TextTimerAttribute {
    /**
     * A constructor used to create a TextTimer object.
     *
     * @param { ?Bool } [isCountDown] - Whether to count down.
     * @param { ?Int64 } [count] - The initial count value.
     * @param { ?TextTimerController } [controller] - The controller for the text timer.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(isCountDown!: ?Bool = None, count!: ?Int64 = None, controller!: ?TextTimerController = None)

    /**
     * Sets the custom format.
     * The value must contain at least one of the following keywords: HH, mm, ss, and SS.
     *
     * NOTE:
     * If the specified date format is yy, MM, or dd, the default value is used instead.
     *
     * @param { ?String } value - Custom format.Default value: 'HH:mm:ss.SS'
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func format(value: ?String): This

    /**
     * Triggered when the time text changes.
     * This event is not triggered when the screen is locked or the application is running in the background.
     * When high-precision formats (such as SSS or SS) are used, the callback interval may vary.
     *
     * @param { ?(Int64, Int64) -> Unit } event - The callback function when the time text changes.
     *                                          The first parameter is the timestamp,
     *                                          and the second parameter is the elapsed time in milliseconds.
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onTimer(event: ?(Int64, Int64) -> Unit): This

    /**
     * Sets the font size.
     *
     * @param { ?Length } value - Font size.The default font size is 16 fp.
     *     If fontSize is of the number type, the unit fp is used.
     *     The value cannot be a percentage.
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: ?Length): This

    /**
     * Sets the font color.
     *
     * @param { ?ResourceColor } value - The font color.
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ?ResourceColor): This

    /**
     * Sets the font style.
     *
     * @param { ?FontStyle } value - Font style.Default value: FontStyle.Normal
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: ?FontStyle): This

    /**
     * Sets the font weight.
     *
     * NOTE:
     * If the value is too large, the text may be clipped depending on the font.
     *
     * @param { ?FontWeight } value - Font weight.
     *     For the number type, Value range: [100, 900], at an interval of 100.The default value is 400.
     *     A larger value indicates a heavier font weight.
     *     For the string type, only strings that represent a number.
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: ?FontWeight): This

    /**
     * Sets the font family.
     *
     * @param { ?ResourceStr } value - Font family. Default font: 'HarmonyOS Sans'
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ?ResourceStr): This

    /**
     * Sets the text shadow.
     * It supports input parameters in an array to implement multiple text shadows.
     * This API does not work with the fill attribute or coloring strategy.
     *
     * @param { ?Array<ShadowOptions> } value - The shadow options.
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textShadow(value: ?Array<ShadowOptions>): This

    /**
     * Sets the text shadow.
     * This API does not work with the fill attribute or coloring strategy.
     *
     * @param { ?ShadowOptions } value - The shadow options.
     * @returns { This } Returns itself to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textShadow(value: ?ShadowOptions): This
}

/**
 * Defines the TextTimer attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextTimerAttribute <: CommonMethod<TextTimerAttribute> {
    /**
     * Sets the custom format.
     * The value must contain at least one of the following keywords: HH, mm, ss, and SS.
     *
     * NOTE:
     * If the specified date format is yy, MM, or dd, the default value is used instead.
     *
     * @param { ?String } value - Custom format.Default value: 'HH:mm:ss.SS'
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func format(value: ?String): TextTimerAttribute

    /**
     * Triggered when the time text changes.
     * This event is not triggered when the screen is locked or the application is running in the background.
     * When high-precision formats (such as SSS or SS) are used, the callback interval may vary.
     *
     * @param { ?(Int64, Int64) -> Unit } event - The callback function when the time text changes.
     *                                          The first parameter is the timestamp,
     *                                          and the second parameter is the elapsed time in milliseconds.
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func onTimer(event: ?(Int64, Int64) -> Unit): TextTimerAttribute

    /**
     * Sets the font size.
     *
     * @param { ?Length } value - Font size.The default font size is 16 fp.
     *     If fontSize is of the number type, the unit fp is used.
     *     The value cannot be a percentage.
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontSize(value: ?Length): TextTimerAttribute

    /**
     * Sets the font color.
     *
     * @param { ?ResourceColor } value - The font color.
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontColor(value: ?ResourceColor): TextTimerAttribute

    /**
     * Sets the font style.
     *
     * @param { ?FontStyle } value - Font style.Default value: FontStyle.Normal
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontStyle(value: ?FontStyle): TextTimerAttribute

    /**
     * Sets the font weight.
     *
     * NOTE:
     * If the value is too large, the text may be clipped depending on the font.
     *
     * @param { ?FontWeight } value - Font weight.
     *     For the number type, Value range: [100, 900], at an interval of 100.The default value is 400.
     *     A larger value indicates a heavier font weight.
     *     For the string type, only strings that represent a number.
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontWeight(value: ?FontWeight): TextTimerAttribute

    /**
     * Sets the font family.
     *
     * @param { ?ResourceStr } value - Font family. Default font: 'HarmonyOS Sans'
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func fontFamily(value: ?ResourceStr): TextTimerAttribute

    /**
     * Sets the text shadow.
     * It supports input parameters in an array to implement multiple text shadows.
     * This API does not work with the fill attribute or coloring strategy.
     *
     * @param { ?Array<ShadowOptions> } value - The shadow options.
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func textShadow(value: ?Array<ShadowOptions>): TextTimerAttribute

    /**
     * Sets the text shadow.
     * This API does not work with the fill attribute or coloring strategy.
     *
     * @param { ?ShadowOptions } value - The shadow options.
     * @returns { TextTimerAttribute } Returns the text timer attribute to allow method chaining.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func textShadow(value: ?ShadowOptions): TextTimerAttribute
}