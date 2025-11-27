package ohos.curves

import ohos.arkui.component.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Contains interpolator functions such as initialization, third-order Bezier curves, and spring curves.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Curves {
/**
 * Creates a step curve.
 *
 * @param { Int32 } count - Number of steps. The value must be a positive integer.Value range: [1, +∞).
 *     NOTE:
 *     A value less than 1 evaluates to the value **1**.
 *     
 * @param { Bool } end - Whether jumping occurs when the interpolation ends.
 *      true: Jumping occurs when the interpolation ends.
 *      false: Jumping occurs when the interpolation starts.
 * @returns { ICurve } Interpolation curve.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func stepsCurve(count: Int32, end: Bool): ICurve

/**
 * Creates a cubic Bezier curve. The curve values must be between 0 and 1.
 *
 * @param { Float32 } x1 - X coordinate of the first point on the Bezier curve.Value range: [0, 1].
 *     NOTE:
 *     A value less than 0 is handed as **0**. A value greater than 1 is handed as **1**.    
 * @param { Float32 } y1 - Y coordinate of the first point on the Bezier curve.Value range: (-∞, +∞).
 * @param { Float32 } x2 - X coordinate of the second point on the Bezier curve.Value range: [0, 1].
 *     NOTE:
 *     A value less than 0 is handed as **0**. A value greater than 1 is handed as **1**.    
 * @param { Float32 } y2 - Y coordinate of the second point on the Bezier curve.Value range: (-∞, +∞).
 * @returns { ICurve } Interpolation curve.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func cubicBezierCurve(x1: Float32, y1: Float32, x2: Float32, y2: Float32): ICurve

/**
 * Creates a spring curve. The curve shape is subject to the spring parameters, and the animation duration
 * is subject to the **duration** parameter in **animation** and **animateTo**.
 *
 * @param { Float32 } velocity - Initial velocity. It is applied by external factors to the spring animation, designed to help ensure the smooth transition from the previous motion state.
 *      The velocity is the normalized velocity, and its value is equal to the actual velocity at the beginning of the animation divided by the animation attribute change value.
 *      Value range: (-∞, +∞).
 * @param { Float32 } mass - Mass, which influences the inertia in the spring system.
 *      The greater the mass, the greater the amplitude of the oscillation, and the slower the speed of restoring to the equilibrium position.
 *      Value range: (0, +∞). NOTE : If this parameter is set to a value less than or equal to 0, the value 1 is used.
 * @param { Float32 } stiffness - Stiffness.It is the degree to which an object deforms by resisting the force applied.
 *      In an elastic system, the greater the stiffness, the stronger the ability to resist deformation, and the faster the speed of restoring to the equilibrium position.
 *      Value range: (0, +∞). NOTE : If this parameter is set to a value less than or equal to 0, the value 1 is used.
 * @param { Float32 } damping - Damping. It is used to describe the oscillation and attenuation of the system
 *     after being disturbed. The larger the damping, the smaller the number of oscillations of elastic motion,
 *     and the smaller the oscillation amplitude.Value range: (0, +∞).
 *     NOTE:
 *     If this parameter is set to a value less than or equal to 0, the value 1 is used.
 * @returns { ICurve } Interpolation curve.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func springCurve(velocity: Float32, mass: Float32, stiffness: Float32, damping: Float32): ICurve

/**
 * Creates a spring animation curve.
 * If multiple spring animations are applied to the same attribute of an object,
 * each animation replaces their predecessor and inherits the velocity.
 *
 * @param { number } [response] - Duration of one complete oscillation.
 *      Default value: 0.55. Unit: secondValue range: (0, +∞).
 *      NOTE: If this parameter is set to a value less than or equal to 0, the default value 0.55 is used.
 * @param { Float32 } [dampingFraction] - Damping coefficient.
 *      0: undamped. In this case, the spring oscillates forever. > 0 and < 1: underdamped.
 *      In this case, the spring overshoots the equilibrium position. 1: critically damped.
 *      1: overdamped. In this case, the spring approaches equilibrium gradually.Default value: 0.825.
 *      Unit: second. Value range: [0, +∞).
 *      NOTE:
 *      A value less than 0 evaluates to the default value 0.825.
 * @param { Float32 } [overlapDuration] - Duration for animations to overlap, in seconds.
 *      When animations overlap, the response values of these animations will transit smoothly over this duratio
 *      if they are different. Default value: 0. Unit: secondValue range: [0, +∞).
 *      NOTE:
 *      A value less than 0 evaluates to the default value 0.
 *      The spring animation curve is physics-based. Its duration depends on the springMotion parameters and
 *      the previous velocity, rather than the duration parameter in animation, animateTo, or pageTransition.
 *      The time cannot be normalized. Therefore, the interpolation cannot be obtained using the interpolate function of the curve.
 * @returns { ICurve }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func springMotion(response!: Float32 = 0.55, dampingFraction!: Float32 = 0.825,
        overlapDuration!: Float32 = 0.0): ICurve

/**
 * Creates a responsive spring animation curve. It is a special case of springMotion,
 * with the only difference in the default values. It can be used together with **springMotion**.
 *
 * @param { Float32 } [response] - See response in springMotion. The default value is 0.15. 
 *      Unit: secondValue range: (0, +∞).
 *      NOTE : If this parameter is set to a value less than or equal to 0, the default value 0.15 is used.
 * @param { Float32 } [dampingFraction] - See dampingFraction in springMotion.
 *      Default value: 0.86. Unit: secondValue range: [0, +∞).
 *      NOTE: A value less than 0 evaluates to the default value 0.86.
 * @param { Float32 } [overlapDuration] - See overlapDuration in springMotion.
 *      Default value: 0.25. Unit: secondValue range: [0, +∞).
 *      NOTE : A value less than 0 evaluates to the default value 0.25 .
 *      To apply custom settings for a spring animation, you are advised to use springMotion.
 *      When using responsiveSpringMotion, you are advised to retain the default settings.
 *      The duration of the responsive spring animation depends on the responsiveSpringMotion parameters and the previous velocity,
 *      rather than the duration parameter in animation, animateTo, or pageTransition.
 *      In addition, the interpolation cannot be obtained using the interpolate function of the curve.
 * @returns { ICurve }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func responsiveSpringMotion(response!: Float32 = 0.15, dampingFraction!: Float32 = 0.86,
        overlapDuration!: Float32 = 0.25): ICurve

/**
 * Creates an interpolating spring curve animated from 0 to 1. The actual animation value is calculated based
 * on the curve. The animation duration is subject to the curve parameters, rather than the **duration** parameter
 * in **animation** or **animateTo**.
 *
 * @param { Float32 } velocity - Initial velocity. It is applied by external factors to the spring animation,
 *     designed to help ensure the smooth transition from the previous motion state.
 *     The velocity is the normalized velocity, and its value is equal to the actual velocity at the beginning of
 *     the animation divided by the animation attribute change value.Value range: (-∞, +∞).
 * @param { Float32 } mass - Mass, which influences the inertia in the spring system. The greater the mass,
 *     the greater the amplitude of the oscillation, and the slower the speed of restoring to the equilibrium position.
 *     Value range: (0, +∞).
 *     NOTE:
 *     If this parameter is set to a value less than or equal to 0, the value **1** is used.
 * @param { Float32 } stiffness - Stiffness. It is the degree to which an object deforms by resisting the force applied.
 *      In an elastic system, the greater the stiffness, the stronger the ability to resist deformation,
 *      and the faster the speed of restoring to the equilibrium position.Value range: (0, +∞).
 *      NOTE : If this parameter is set to a value less than or equal to 0, the value 1 is used.
 * @param { Float32 } damping - Damping. It is used to describe the oscillation and attenuation of the system
 *     after being disturbed. The larger the damping, the smaller the number of oscillations of elastic motion,
 *     and the smaller the oscillation amplitude.Value range: (0, +∞)
 *     NOTE:
 *     If this parameter is set to a value less than or equal to 0, the value **1** is used.
 * @returns { ICurve }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func interpolatingSpring(velocity: Float32, mass: Float32, stiffness: Float32, damping: Float32): ICurve

/**
 * Implements initialization for the interpolation curve,
 * which is used to create an interpolation curve based on the input parameter.
 *
 * @param { ?Curve } [curve] - Curve type. Default value: Curve.Linear.
 * @returns { ICurve }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func initCurve(curve!: ?Curve = Curve.Linear): ICurve

/**
 * Creates a custom curve.
 *
 * @param { (Float32) -> Float32 } interpolate - Custom interpolation callback.fraction: input x value for interpolation.
 *     when the animation starts. Value range: [0, 1]The return value is the y value of the curve. Value range: [0, 1].
 *     NOTE:
 *     If fraction is 0, the return value 0 corresponds to the animation start point; any other return value means
 *     that the animation jumps at the start point.If fraction is 1, the return value 1 corresponds to the animation
 *     end point; any other return value means that the end value of the animation is not the value of the state
 *     variable, which will result in an effect of transition from that end value to the value of the state variable.
 * @returns { ICurve } Interpolation curve.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func customCurve(interpolate: (Float32) -> Float32): ICurve
}

/**
 * Interface for curve object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ICurve <: RemoteDataLite {
/**
 * Implements calculation.
 *
 * @param { Float32 } fraction - Current normalized time.Value range: [0, 1].
 *     NOTE:
 *     A value less than 0 is handed as **0**. A value greater than 1 is handed as **1**.
 * @returns { Float32 }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func interpolate(fraction: Float32): Float32
}