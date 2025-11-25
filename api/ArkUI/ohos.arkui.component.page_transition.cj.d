package ohos.arkui.component.page_transition

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive

/**
* Callback used to report page transition events.
* 
* @param { RouteType } type - transition route type
* @param { Float64 } progress - transition progress. The value ranges from 0 to 1.
*/
public type PageTransitionCallback = (RouteType, Float64) -> Unit

/**
* Declare the jump method.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RouteType {
/**
 * There is no thumb.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Go to the next page.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Push
    | 
/**
 * Redirect to a specified page.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Pop
    | ...
}

extend RouteType <: Equatable<RouteType> {
/**
 * Compares this RouteType with another for equality.
 * @param { RouteType } other - The RouteType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: RouteType): Bool
/**
 * Compares this RouteType with another for equality.
 * @param { RouteType } other - The RouteType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: RouteType): Bool
}

/**
* Declare the sliding effect of transition.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SlideEffect {
/**
 * Swipe left.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * Swipe right.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | 
/**
 * Swipe top.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Swipe bottom.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | ...
}

extend SlideEffect <: Equatable<SlideEffect> {
/**
 * Compares this SlideEffect with another for equality.
 * @param { SlideEffect } other - The SlideEffect to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SlideEffect): Bool
/**
 * Compares this SlideEffect with another for equality.
 * @param { SlideEffect } other - The SlideEffect to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SlideEffect): Bool
}

/**
* Provides interfaces for common transitions.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
abstract sealed class CommonTransition {
/**
 * Called when the slide in effect of the transition is set.
 *
 * @param { SlideEffect } value - Page transition slide effect.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func slide(value: SlideEffect): This

/**
 * Called when the translation effect of page transition is set.
 *
 * @param { ?Length } [x] - X coordinate to translate to.
 * @param { ?Length } [y] - Y coordinate to translate to.
 * @param { ?Length } [z] - Z coordinate to translate to.
 * @returns { This } 
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func translate(x!: ?Length = None, y!: ?Length = None, z!: ?Length = None): This

/**
 * Called when setting the zoom effect of page transition.
 *
 * @param { ?Float32 } x - The degree of scaling along the X-axis, 1 is original scale.
 * @param { ?Float32 } y - The degree of scaling along the Y-axis, 1 is original scale.
 * @param { ?Float32 } z - The degree of scaling along the Z-axis, 1 is original scale.
 * @param { ?Length } centerX - X coordinate of the scale center.
 * @param { ?Length } centerY - Y coordinate of the scale center.
 * @returns { This } 
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scale(
        x!: ?Float32 = None,
        y!: ?Float32 = None,
        z!: ?Float32 = None,
        centerX!: ?Length = None,
        centerY!: ?Length = None
    ): This

/**
 * Called when the transparency value of the starting point of entry or the ending point of exit is set.
 *
 * @param { Float64 } value - The opacity to transition to. The value ranges from 0 to 1.
 * @returns { This } 
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func opacity(value: Float64): This
}

/**
 * Provides a class to set transition style when a page enters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PageTransitionEnter <: CommonTransition {
/**
 * Called when page Jump animation is used.
 *
 * @param { ?RouteType } routeType - The transition route type. The default value is RouteType.None.
 * @param { ?Int32 } duration - The transition duration, in milliseconds. The default value is 1000.
 * @param { ?Curve } curve - The transition curve. The default value is Curve.Linear.
 * @param { ?Int32 } delay - The transition delay, in milliseconds. The default value is 0.
 * @returns { PageTransitionEnter }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        routeType!: ?RouteType = Option.None,
        duration!: ?Int32 = None,
        curve!: ?Curve = None,
        delay!: ?Int32 = None
    )

/**
 * Called frame by frame to customize pageTransition animation when the page enters.
 * The incoming parameter is the normalized progress of the current incoming animation.
 *
 * @param { ?PageTransitionCallback } event - animation callback frame by frame
 * @returns { This } 
 * @throws { BusinessException } 190002 - The callback function is invalid.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full",
    throwexception: true
]
    public func onEnter(event: ?PageTransitionCallback)
}

/**
 * Defines PageTransitionExit Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PageTransitionExit <: CommonTransition {
/**
 * Called when page Jump animation is used.
 *
 * @param { ?RouteType } [routeType] - The transition route type. The default value is RouteType.None.
 * @param { ?Int32 } [duration] - The transition duration, in milliseconds. The default value is 1000.
 * @param { ?Curve } [curve] - The transition curve. The default value is Curve.Linear.
 * @param { ?Int32 } [delay] - The transition delay, in milliseconds. The default value is 0.
 * @returns { PageTransitionExit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        routeType!: ?RouteType = Option.None,
        duration!: ?Int32 = None,
        curve!: ?Curve = None,
        delay!: ?Int32 = None
    )

/**
 * Called frame by frame to customize pageTransition animation when the page exits.
 * The input parameter is the normalized progress of the current exit animation.
 *
 * @param { ?PageTransitionCallback } event - The callback on transition exit.
 * @returns { This } 
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onExit(event: ?PageTransitionCallback)
}