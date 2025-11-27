package ohos.arkui.component.pattern_lock

import ohos.arkui.component.common.*
import ohos.arkui.component.custom_component.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Provides methods for control pattern lock component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PatternLockController <: RemoteDataLite {
/**
 * A constructor used to create a PatternLockController instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Resets the component status.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func reset(): Unit
}

/**
 * Defines PatternLock Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PatternLock <: CommonMethodComponent<PatternLock> & PatternLockAttribute {
/**
 * Constructor.
 *
 * @param { ?PatternLockController } [controller] - Sets PatternLock component controller, which can be used to control component status reset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(controller!: ?PatternLockController = None)

/**
 * Sets the fill color of the grid dot in the selected state.
 *
 * @param { ?ResourceColor } value - Fill color of the grid dot in the selected state, Default value is 0xff182431.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedColor(value: ?ResourceColor): This

/**
 * Sets the path color.
 *
 * @param { ?ResourceColor } value - Path color, Default value is 0x33182431.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func pathColor(value: ?ResourceColor): This

/**
 * Sets the fill color of the grid dot in the activated state, which is when the dot is highlighted but not selected.
 *
 * @param { ?ResourceColor } value - Fill color of the grid dot in the activated state, Default value is 0xff182431.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func activeColor(value: ?ResourceColor): This

/**
 * Sets the fill color of the grid dot in the unselected state.
 *
 * @param { ?ResourceColor } value - Fill color of the grid dot in the unselected state, Default value is 0xff182431.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func regularColor(value: ?ResourceColor): This

/**
 * Sets whether to allow the user to reset the component status (that is, clear the input) by touching the component
 * again after the input is complete.
 *
 * @param { ?Bool } value - Whether to allow the user to reset the component status (that is, clear the input) by
 *     touching the component again after the input is complete, Default value is true.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func autoReset(value: ?Bool): This

/**
 * Sets the radius of the dots in a grid.
 *
 * NOTE:
 * If this attribute is set to 0 or a negative value, the default value is used.
 *
 * @param { ?Length } value - Radius of the dots in a grid, Default value is 6vp.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func circleRadius(value: ?Length): This

/**
 * Sets the width and height (same value) of the component.
 *
 * NOTE:
 * If this attribute is set to 0 or a negative number, the component is not displayed.
 *
 * @param { ?Length } value - Width and height of the component, Default value is 288vp.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func sideLength(value: ?Length): This

/**
 * Sets the width of the path stroke.
 *
 * NOTE:
 * If this attribute is set to **0** or a negative value, the path stroke is not displayed.
 *
 * @param { ?Length } value - Width of the path stroke, Default value is 12vp.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func pathStrokeWidth(value: ?Length): This

/**
 * Invoked when the pattern password input is complete.
 *
 * @param { ?(Array<Int32>) -> Unit } callback - Callback function triggered when pattern password input is complete.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPatternComplete(callback: ?(Array<Int32>) -> Unit): This
}

/**
 * Provides methods for attribute pattern lock component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface PatternLockAttribute <: CommonMethod<PatternLockAttribute> {
/**
 * Sets the fill color of the grid dot in the selected state.
 *
 * @param { ?ResourceColor } value - Fill color of the grid dot in the selected state, Default value is 0xff182431.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectedColor(value: ?ResourceColor): PatternLockAttribute

/**
 * Sets the path color.
 *
 * @param { ?ResourceColor } value - Path color, Default value is 0x33182431.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func pathColor(value: ?ResourceColor): PatternLockAttribute

/**
 * Sets the fill color of the grid dot in the activated state, which is when the dot is highlighted but not selected.
 *
 * @param { ?ResourceColor } value - Fill color of the grid dot in the activated state, Default value is 0xff182431.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func activeColor(value: ?ResourceColor): PatternLockAttribute

/**
 * Sets the fill color of the grid dot in the unselected state.
 *
 * @param { ?ResourceColor } value - Fill color of the grid dot in the unselected state, Default value is 0xff182431.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func regularColor(value: ?ResourceColor): PatternLockAttribute

/**
 * Sets whether to allow the user to reset the component status (that is, clear the input) by touching the component
 * again after the input is complete.
 *
 * @param { ?Bool } value - Whether to allow the user to reset the component status (that is, clear the input) by
 *     touching the component again after the input is complete, Default value is true.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func autoReset(value: ?Bool): PatternLockAttribute

/**
 * Sets the radius of the dots in a grid.
 *
 * NOTE:
 * If this attribute is set to 0 or a negative value, the default value is used.
 *
 * @param { ?Length } value - Radius of the dots in a grid, Default value is 6vp.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func circleRadius(value: ?Length): PatternLockAttribute

/**
 * Sets the width and height (same value) of the component.
 *
 * NOTE:
 * If this attribute is set to 0 or a negative number, the component is not displayed.
 *
 * @param { ?Length } value - Width and height of the component, Default value is 288vp.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func sideLength(value: ?Length): PatternLockAttribute

/**
 * Sets the width of the path stroke.
 *
 * NOTE:
 * If this attribute is set to **0** or a negative value, the path stroke is not displayed.
 *
 * @param { ?Length } value - Width of the path stroke, Default value is 12vp.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func pathStrokeWidth(value: ?Length): PatternLockAttribute

/**
 * Invoked when the pattern password input is complete.
 *
 * @param { ?(Array<Int32>) -> Unit } callback - Callback function triggered when pattern password input is complete.
 * @returns { PatternLockAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPatternComplete(callback: ?(Array<Int32>) -> Unit): PatternLockAttribute
}