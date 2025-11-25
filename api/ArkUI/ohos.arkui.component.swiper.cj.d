package ohos.arkui.component.swiper

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines the indicator class.
 * Base class for navigation indicators in Swiper component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class Indicator {
/**
 * DotIndicator class object.
 *
 * @returns { DotIndicator } Returns a DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func dot(): DotIndicator

/**
 * DigitIndicator class object.
 *
 * @returns { DigitIndicator } Returns a DigitIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func digit(): DigitIndicator

/**
 * Sets the position of the navigation indicator relative to the left edge of the Swiper component.
 *
 * @param { ?Length } value - the indicator to the left.
 * @returns { This } Returns the Indicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func left(value: ?Length): This

/**
 * Sets the position of the navigation indicator relative to the top edge of the Swiper component.
 *
 * @param { ?Length } value - the indicator to the top.
 * @returns { This } Returns the Indicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func top(value: ?Length): This

/**
 * Sets the position of the navigation indicator relative to the right edge of the Swiper component.
 *
 * @param { ?Length } value - Position of the navigation indicator relative to the right edge of
 *     the Swiper component.
 * @returns { This } Returns the Indicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func right(value: ?Length): This

/**
 * Sets the position of the navigation indicator relative to the bottom edge of the Swiper component.
 *
 * @param { ?Length } value - Position of the navigation indicator relative to the bottom edge of
 *     the Swiper component.
 * @returns { This } Returns the Indicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func bottom(value: ?Length): This

/**
 * Sets the distance between the navigation indicator and the right edge (in right-to-left scripts)
 * or the left edge (in left-to-right scripts) of the Swiper component.
 *
 * @param { ?Length } value - the indicator to the right in LTR, indicator to the left in RTL.
 *     Default value: 0.Unit: vp.
 * @returns { This } Returns the Indicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func start(value: ?Length): This

/**
 * Sets the distance between the navigation indicator and the left edge (in right-to-left scripts)
 * or the right edge (in left-to-right scripts) of the Swiper component.
 *
 * @param { ?Length } value - the indicator to the left in RTL, Set the indicator to the right in LTR.
 *     Default value: 0.Unit: vp.
 * @returns { This } Returns the Indicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func end(value: ?Length): This
}

/**
 * Define DotIndicator, the indicator type is dot.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DotIndicator <: Indicator {
/**
 * Creates a new DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Sets the width of the dot-style navigation indicator.
 *
 * @param { ?Length } value - Width of the dot-style navigation indicator. Default value is 6vp.
 *     This parameter cannot be set in percentage.
 * @returns { This } Returns the DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func itemWidth(value: ?Length): This

/**
 * Sets the height of the dot-style navigation indicator.
 *
 * @param { ?Length } value - Height of the dot-style navigation indicator. Default value is 6vp.
 *     This parameter cannot be set in percentage.
 * @returns { This } Returns the DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func itemHeight(value: ?Length): This

/**
 * Sets the width of the selected dot in the dot-style navigation indicator.
 *
 * @param { ?Length } value - Width of the selected dot in the dot-style navigation indicator.
 *     Default value is 6vp. This parameter cannot be set in percentage.
 * @returns { This } Returns the DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedItemWidth(value: ?Length): This

/**
 * Sets the height of the selected dot in the dot-style navigation indicator.
 *
 * @param { ?Length } value - Height of the selected dot in the dot-style navigation indicator.
 *     Default value is 6vp. This parameter cannot be set in percentage.
 * @returns { This } Returns the DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedItemHeight(value: ?Length): This

/**
 * Sets whether to enable the mask for the dot-style navigation indicator.
 *
 * @param { ?Bool } value - Whether to enable the mask for the dot-style navigation indicator.
 *     Default value is false.
 * @returns { This } Returns the DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func mask(value: ?Bool): This

/**
 * Sets the color of the dot-style navigation indicator.
 *
 * @param { ?ResourceColor } value - Color of the dot-style navigation indicator.
 *     Default value is 0x182431(10% opacity).
 * @returns { This } Returns the DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func color(value: ?ResourceColor): This

/**
 * Sets the color of the selected dot in the dot-style navigation indicator.
 *
 * @param { ?ResourceColor } value - Color of the selected dot in the dot-style navigation indicator.
 *     Default value is 0x007DFF.
 * @returns { This } Returns the DotIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedColor(value: ?ResourceColor): This

/**
 * Sets the maximum number of navigation dots in the dot-style navigation indicator.
 *
 * @param { ?UInt32 } value - Maximum number of navigation dots in the dot-style navigation indicator.
 *     Value range: [6, 9].
 * @returns { This } return the DotIndicator.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func maxDisplayCount(value: ?UInt32): This
}

/**
 * Define DigitIndicator, the indicator type is digit.
 * A digit-style indicator for Swiper component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DigitIndicator <: Indicator {
/**
 * DigitIndicator constructor.
 * Creates a new DigitIndicator instance.
 * @returns { DigitIndicator } Returns the DigitIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Sets the font color of the digit-style navigation indicator.
 *
 * @param { ?ResourceColor } value - Font color of the digit-style navigation indicator. Default value is 0xff182431.
 * @returns { This } Returns the DigitIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontColor(value: ?ResourceColor): This

/**
 * Sets the font color of the selected digit in the digit-style navigation indicator.
 *
 * @param { ?ResourceColor } value - Font color of the selected digit in the digit-style navigation indicator.
 *     Default value is 0xff182431.
 * @returns { This } Returns the DigitIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedFontColor(value: ?ResourceColor): This

/**
 * Sets the font style of the digit-style navigation indicator.
 *
 * NOTE:
 * Only the size and weight parameters in Font are adjustable.
 * <brSetting family and style has no effect.
 *
 * @param { ?Font } value - Font style of the digit-style navigation indicator.
 *     Default value is { size: 14, weight: FontWeight.Normal }.
 * @returns { This } Returns the DigitIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func digitFont(value: ?Font): This

/**
 * Sets the font style of the selected digit in the digit-style navigation indicator.
 *
 * @param { ?Font } value - Font style of the selected digit in the digit-style navigation indicator.
 *     Default value is { size: 14, weight: FontWeight.Normal }.
 * @returns { This } Returns the DigitIndicator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedDigitFont(value: ?Font): This
}

/**
 * Provides methods for switching components.
 * Controller for managing Swiper component operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SwiperController <: RemoteDataLite {
/**
 * Creates a new SwiperController instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Called when the next child component is displayed.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func showNext(): Unit

/**
 * Called when the previous subcomponent is displayed.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func showPrevious(): Unit

/**
 * Called when need to stop the swiper animation.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func finishAnimation(): Unit

/**
 * Called when need to stop the swiper animation.
 *
 * @param { ?VoidCallback } callback - Callback function to execute after animation stops.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func finishAnimation(callback: ?VoidCallback): Unit
}

/**
 * Defines Swiper Component.
 * A component that allows navigation between multiple views through swiping gestures.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Swiper <: CommonMethodComponent<Swiper> & SwiperAttribute {
/**
 * Create a Swiper with controller and child component.
 * Initializes a Swiper component with optional controller and child content.
 *
 * @param { ?SwiperController } [controller] - Controller for managing Swiper operations.
 * @param { () -> Unit } child - Builder function for Swiper content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(controller!: ?SwiperController = Option.None, child!: () -> Unit)

/**
 * Sets whether to enable automatic playback for child component switching.
 *
 * NOTE:
 * If loop is set to false, the playback stops when the last page is reached.
 * The playback continues when the page is not the last page after a swipe gesture.
 * If the Swiper component becomes invisible, the playback stops.
 *
 * @param { ?Bool } value - Whether to enable automatic playback for child component switching.
 *     Default value is false.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func autoPlay(value: ?Bool): This

/**
 * Sets the duration of the animation for child component switching.
 *
 * @param { ?UInt32 } value - Duration of the autoplay for child component switching. Default value is 400,
 *     the unit is ms. Minimum value is 0ms. If a value less than 0 is set, the default value is used.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func duration(value: ?UInt32): This

/**
 * Sets the index of the child component currently displayed in the container.
 *
 * @param { ?UInt32 } value - Index of the child component currently displayed in the container. Default value is 0.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func index(value: ?UInt32): This

/**
 * Sets the interval for automatic playback.
 *
 * @param { ?UInt32 } value - Interval for automatic playback. Default value is 3000, the unit is ms.
 *     Minimum value is 0ms. If a value less than 0 is set, the default value is used.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func interval(value: ?UInt32): This

/**
 * Sets whether to enable loop playback.
 *
 * @param { ?Bool } value - Whether to enable loop playback. Default value is true.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func loop(value: ?Bool): This

/**
 * Sets whether vertical swiping is used
 *
 * @param { ?Bool } value - Whether vertical swiping is used. Default value is false.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func vertical(value: ?Bool): This

/**
 * Sets the style of the navigation indicator
 *
 * @param { ?Bool } indicator - Whether to show the navigation indicator. The default value is true.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func indicator(indicator: ?Bool): This

/**
 * Sets the style of the navigation indicator.
 *
 * @param { ?DotIndicator } indicator - Dot-style indicator.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func indicator(indicator: ?DotIndicator): This

/**
 * Sets the style of the navigation indicator.
 *
 * @param { ?DigitIndicator } indicator - Digit-style indicator.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func indicator(indicator: ?DigitIndicator): This

/**
 * Sets the space between child components. NOTE: If the type is number, the default unit is vp. If the type is string, the pixel unit must be explicitly specified, for example, '10px'; if the unit is not specified, for example, '10', the default unit vp is used
 *
 * @param { ?Length } value - Space between child components. Default value is 0,
 *     Minimum value is 0. If a value less than 0 is set, the default value is used.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func itemSpace(value: ?Length): This

/**
 * Sets the mode in which elements are displayed along the main axis.
 * This API takes effect only when displayCount is not set.
 *
 * @param { ?SwiperDisplayMode } value - Mode in which elements are displayed along the main axis.
 *     Default value is SwiperDisplayMode.STRETCH.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func displayMode(value: ?SwiperDisplayMode): This

/**
 * Sets the effect used when the component is at one of the edges.
 *
 * NOTE:
 * This attribute takes effect when loop is set to false.
 *
 * @param { ?EdgeEffect } value - Effect used when the component is at one of the edges. Default value is EdgeEffect.Spring.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func effectMode(value: ?EdgeEffect): This

/**
 * Sets the number of elements to display per page. If swipeByGroup is set to true: 1、All sub-items are grouped from index 0. 2、The number of sub-items in each group is the value of displayCount. 3、If the number of sub-items in the last group is less than displayCount, placeholder items are added to supplement the number of last group. 4、Placeholder items do not display any content and are only used as placeholders. 5、When turning pages, turn pages by group
 *
 * @param { ?Int32 } value - Number of elements to display per page. Default value is 1.
 * @param { ?Bool } [swipeByGroup] - Whether to turn pages by group. Default value is false.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func displayCount(value: ?Int32, swipeByGroup!: ?Bool = None): This

/**
 * Sets the number of child components to be preloaded(cached).
 *
 * NOTE:
 * Which are needed for the specific number of pages immediately before and after the current page.
 * If swipeByGroup in displayCount is set to true, child components are cached by group.
 * Default value is 1.
 *
 * @param { ?Int32 } value - Number of child components to be preloaded (cached). Default value is 1.
 *     Minimum value is 0. If a value less than 0 is set, the default value is used.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func cachedCount(value: ?Int32): This

/**
 * Sets whether to disable the swipe feature.
 *
 * @param { ?Bool } value - Whether to disable the swipe feature. Default value is false.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func disableSwipe(value: ?Bool): This

/**
 * Sets the animation curve.
 * Curve is an enumeration type for common curves
 * ICurve is a curve object
 *
 * @param { ?Curve } value - Animation curve.
 *     Default value is interpolatingSpring(-1, 1, 328, 34).
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func curve(value: ?Curve): This

/**
 * Triggered when the index of the currently displayed child component changes.
 *
 * @param { ?(Int32) -> Unit } event - Callback function triggered when the index changes.
 * The parameter is the index of the currently displayed child component.
 * @returns { This } Returns the Swiper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(event: ?(Int32) -> Unit): This
}

/**
 * Defines the swiper attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface SwiperAttribute <: CommonMethod<SwiperAttribute> {
/**
 * Sets whether to enable automatic playback for child component switching.
 *
 * NOTE:
 * If loop is set to false, the playback stops when the last page is reached.
 * The playback continues when the page is not the last page after a swipe gesture.
 * If the Swiper component becomes invisible, the playback stops.
 *
 * @param { ?Bool } value - Whether to enable automatic playback for child component switching.
 *     Default value is false.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func autoPlay(value: ?Bool): SwiperAttribute

/**
 * Sets the duration of the animation for child component switching.
 *
 * @param { ?UInt32 } value - Duration of the autoplay for child component switching. Default value is 400,
 *     the unit is ms. Minimum value is 0ms. If a value less than 0 is set, the default value is used.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func duration(value: ?UInt32): SwiperAttribute

/**
 * Sets the index of the child component currently displayed in the container.
 *
 * @param { ?UInt32 } value - Index of the child component currently displayed in the container. Default value is 0.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func index(value: ?UInt32): SwiperAttribute

/**
 * Sets the interval for automatic playback.
 *
 * @param { ?UInt32 } value - Interval for automatic playback. Default value is 3000, the unit is ms.
 *     Minimum value is 0ms. If a value less than 0 is set, the default value is used.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func interval(value: ?UInt32): SwiperAttribute

/**
 * Sets whether to enable loop playback.
 *
 * @param { ?Bool } value - Whether to enable loop playback. Default value is true.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func loop(value: ?Bool): SwiperAttribute

/**
 * Sets whether vertical swiping is used.
 *
 * @param { ?Bool } value - Whether vertical swiping is used. Default value is false.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func vertical(value: ?Bool): SwiperAttribute

/**
 * Sets the style of the navigation indicator.
 *
 * @param { ?Bool } indicator - Whether to show the navigation indicator. The default value is true.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func indicator(indicator: ?Bool): SwiperAttribute

/**
 * Sets the style of the navigation indicator.
 *
 * @param { ?DotIndicator } indicator - Dot-style indicator.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func indicator(indicator: ?DotIndicator): SwiperAttribute

/**
 * Sets the style of the navigation indicator.
 *
 * @param { ?DigitIndicator } indicator - Digit-style indicator.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func indicator(indicator: ?DigitIndicator): SwiperAttribute

/**
 * Sets the space between child components.
 * NOTE:
 * If the type is number, the default unit is vp.
 * If the type is string, the pixel unit must be explicitly specified, for example, '10px';
 * if the unit is not specified, for example, '10', the default unit vp is used.
 *
 * @param { ?Length } value - Space between child components. Default value is 0,
 *     Minimum value is 0. If a value less than 0 is set, the default value is used.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func itemSpace(value: ?Length): SwiperAttribute

/**
 * Sets the mode in which elements are displayed along the main axis.
 * This API takes effect only when displayCount is not set.
 *
 * @param { ?SwiperDisplayMode } value - Mode in which elements are displayed along the main axis.
 *     Default value is SwiperDisplayMode.STRETCH.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func displayMode(value: ?SwiperDisplayMode): SwiperAttribute

/**
 * Sets the effect used when the component is at one of the edges.
 *
 * NOTE:
 * This attribute takes effect when loop is set to false.
 *
 * @param { ?EdgeEffect } value - Effect used when the component is at one of the edges. Default value is EdgeEffect.Spring.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func effectMode(value: ?EdgeEffect): SwiperAttribute

/**
 * Sets the number of elements to display per page.
 * If swipeByGroup is set to true:
 * 1、All sub-items are grouped from index 0.
 * 2、The number of sub-items in each group is the value of displayCount.
 * 3、If the number of sub-items in the last group is less than displayCount, placeholder items are added to supplement the number of last group.
 * 4、Placeholder items do not display any content and are only used as placeholders.
 * 5、When turning pages, turn pages by group.
 *
 * @param { ?Int32 } value - Number of elements to display per page. Default value is 1.
 * @param { ?Bool } swipeByGroup - Whether to turn pages by group. Default value is false.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func displayCount(value: ?Int32, swipeByGroup!: ?Bool): SwiperAttribute

/**
 * Sets the number of child components to be preloaded(cached).
 *
 * NOTE:
 * Which are needed for the specific number of pages immediately before and after the current page.
 * If swipeByGroup in displayCount is set to true, child components are cached by group.
 * Default value is 1.
 *
 * @param { ?Int32 } value - Number of child components to be preloaded (cached). Default value is 1.
 *     Minimum value is 0. If a value less than 0 is set, the default value is used.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func cachedCount(value: ?Int32): SwiperAttribute

/**
 * Sets whether to disable the swipe feature.
 *
 * @param { ?Bool } value - Whether to disable the swipe feature. Default value is false.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func disableSwipe(value: ?Bool): SwiperAttribute

/**
 * Sets the animation curve.
 * Curve is an enumeration type for common curves.
 *
 * @param { ?Curve } value - Animation curve.
 *     Default value is interpolatingSpring(-1, 1, 328, 34).
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func curve(value: ?Curve): SwiperAttribute

/**
 * Triggered when the index of the currently displayed child component changes.
 *
 * @param { ?(Int32) -> Unit } callback - Callback function triggered when the index changes.
 * The parameter is the index of the currently displayed child component.
 * @returns { SwiperAttribute } Returns the swiper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(Int32) -> Unit): SwiperAttribute
}