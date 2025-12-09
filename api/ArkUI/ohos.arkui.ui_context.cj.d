package ohos.arkui.ui_context

import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.alert_dialog.*
import ohos.arkui.component.common.{AnimateParam, vp2pxInner, px2vpInner, fp2pxInner, lpx2pxInner, px2fpInner,
    px2lpxInner, parseAnimateParam, ExpectedFrameRateRange, FontWeight, TextAlign, FontStyle, TextOverflow, 
    TextCase, WordBreak, Rectangle, DialogAlignment, Offset, TransitionEffect, BorderRadiuses, EdgeWidths, 
    EdgeStyles, ShadowOptions, BlurStyle, Alignment, ShadowType}
import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.business_exception.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines class UIContext.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIContext {
/**
 * Obtains a PromptAction object.
 *
 * @returns { PromptAction } PromptAction object
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getPromptAction(): PromptAction

/**
 * Get MeasureUtils.
 * @returns { MeasureUtils } the MeasureUtils.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getMeasureUtils(): MeasureUtils

/**
 * Create an animator object for custom animation.
 *
 * @param { AnimatorOptions } options - Options.
 * @returns { AnimatorResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func createAnimator(options: AnimatorOptions): AnimatorResult

/**
 * Converts a value in vp units to a value in px.
 *
 * @param { Length } value
 * @returns { Option<Length> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func vp2px(value: Length): Option<Length>

/**
 * Converts a value in px units to a value in vp.
 *
 * @param { Length } value
 * @returns { Option<Length> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func px2vp(value: Length): Option<Length>

/**
 * Converts a value in fp units to a value in px.
 *
 * @param { Length } value
 * @returns { Option<Length> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fp2px(value: Length): Option<Length>

/**
 * Converts a value in px units to a value in fp.
 *
 * @param { Length } value
 * @returns { Option<Length> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func px2fp(value: Length): Option<Length>

/**
 * Converts a value in lpx units to a value in px.
 *
 * @param { Length } value
 * @returns { Option<Length> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lpx2px(value: Length): Option<Length>

/**
 * Converts a value in px units to a value in lpx.
 *
 * @param { Length } value
 * @returns { Option<Length> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func px2lpx(value: Length): Option<Length>

/**
 * get object font.
 *
 * @returns { Font } object Font.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getFont(): Font

/**
 * Obtains a Router object.
 *
 * @returns { Router } Router object
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getRouter(): Router

/**
 * Get object context menu controller.
 *
 * @returns { ContextMenuController } object context menu controller.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getContextMenuController(): ContextMenuController

/**
 * Shows an alert dialog box.
 *
 * @param { AlertDialogParamWithConfirm } options - Shows
 * an AlertDialog component in the given settings.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func showAlertDialog(options: AlertDialogParamWithConfirm): Unit

/**
 * Shows an alert dialog box.
 *
 * @param { AlertDialogParamWithButtons } options - Shows
 * an AlertDialog component in the given settings.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func showAlertDialog(options: AlertDialogParamWithButtons): Unit

/**
 * Shows an alert dialog box.
 *
 * @param { AlertDialogParamWithOptions } options - Shows
 * an AlertDialog component in the given settings.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func showAlertDialog(options: AlertDialogParamWithOptions): Unit

/**
 * Shows an action sheet in the given settings.
 *
 * @param { ActionSheetOptions } value - Parameters of the action sheet.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func showActionSheet(value: ActionSheetOptions): Unit

/**
 * Defining animation function
 *
 * @param { AnimateParam } value - parameters for animation.
 * @param { VoidCallback } event - the closure base on which, the system will create animation automatically.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func animateTo(value: AnimateParam, event: VoidCallback): Unit
}

/**
 * Defines class ContextMenuController.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuController {
/**
 * Close context menu.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func close(): Unit
}

/**
 * Whether to resume to the initial state after the animation is executed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum AnimatorFill {
/**
 * None Type, the layout is not adjusted to avoid the keyboard.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    |
/**
 * The state at the end of the animation (defined in the last key frame) is retained after the animation is executed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Forwards
    |
/**
 * Applies the start attribute value for the period specified by animation-delay before the animation is displayed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Backwards
    |
/**
 * Both forward and backward fill modes are applied.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Both
    | ...
}

extend AnimatorFill <: Equatable<AnimatorFill> {
/**
 * Compares this AnimatorFill with another for equality.
 * @param { AnimatorFill } - The AnimatorFill to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: AnimatorFill): Bool
/**
 * Compares this AnimatorFill with another for equality.
 * @param { AnimatorFill } - The AnimatorFill to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: AnimatorFill): Bool
}

/**
 * The animation playback mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum AnimatorDirection {
/**
 * The animation plays normally.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    |
/**
 * The animation plays backwards.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Reverse
    |
/**
 * The animation plays forward on odd numbers (1, 3, 7...) and backward on even numbers (2, 4, 6...).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Alternate
    |
/**
 * The animation plays backwards on odd numbers (1, 3, 7...) and forwards on even numbers (2, 4, 6...).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    AlternateReverse
    | ...
}

extend AnimatorDirection <: Equatable<AnimatorDirection> {
/**
 * Compares this AnimatorDirection with another for equality.
 * @param { AnimatorDirection } - The AnimatorDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: AnimatorDirection): Bool
/**
 * Compares this AnimatorDirection with another for equality.
 * @param { AnimatorDirection } - The AnimatorDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: AnimatorDirection): Bool
}

/**
 * Defines the animator options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AnimatorOptions {
/**
 * Delay for the animation start. The default value indicates no delay.
 *
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var duration: Int32

/**
 * Time curve of the animation. For details about the supported types.
 * linear The animation speed keeps unchanged.
 * ease The animation starts and ends at a low speed, cubic-bezier(0.25, 0.1, 0.25, 1.0).
 * ease-in The animation starts at a low speed, cubic-bezier(0.42, 0.0, 1.0, 1.0).
 * ease-out The animation ends at a low speed, cubic-bezier(0.0, 0.0, 0.58, 1.0).
 * ease-in-out The animation starts and ends at a low speed, cubic-bezier(0.42, 0.0, 0.58, 1.0).
 * fast-out-slow-in Standard curve, cubic-bezier(0.4, 0.0, 0.2, 1.0).
 * linear-out-slow-in Deceleration curve, cubic-bezier(0.0, 0.0, 0.2, 1.0).
 * fast-out-linear-in Acceleration curve, cubic-bezier(0.4, 0.0, 1.0, 1.0).
 * friction Damping curve, cubic-bezier(0.2, 0.0, 0.2, 1.0).
 * extreme-deceleration Extreme deceleration curve, cubic-bezier(0.0, 0.0, 0.0, 1.0).
 * sharp Sharp curve, cubic-bezier(0.33, 0.0, 0.67, 1.0).
 * rhythm Rhythm curve, cubic-bezier(0.7, 0.0, 0.2, 1.0).
 * smooth Smooth curve, cubic-bezier(0.4, 0.0, 0.4, 1.0).
 * cubic-bezier(x1, y1, x2, y2) You can customize an animation speed curve in the cubic-bezier() function. The x and y values of each input parameter must be between 0 and 1.
 * Step curve. The number must be set and only an integer is supported, step-position is optional. It can be set to start or end. The default value is end.
 * interpolating-spring(velocity, mass, stiffness, damping), interpolating spring curve.
 *
 * @default ease
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var easing: String

/**
 * Delay for the animation start. The default value indicates no delay.
 *
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var delay: Int32

/**
 * Whether to resume to the initial state after the animation is executed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fill: AnimatorFill

/**
 * The animation playback mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var direction: AnimatorDirection

/**
 * Number of times the animation will be played. number indicates a fixed number of playback operations, and -1 an unlimited number of playback operations.
 *
 * @default 1
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var iterations: Int32

/**
 * Starting point of animator interpolation.
 *
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var begin: Float64

/**
 * Ending point of Dynamic Interpolation
 *
 * @default 1
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var end: Float64

/**
 * Create an animator options.
 *
 * @param { Int32 } duration - Duration of the animation, in milliseconds.
 * The default value is 0.
 * @param { String } easing - Time curve of the animation.
 * @param { Int32 } delay - Delay for the animation start. The default value indicates no delay.
 * The default value is 0.
 * @param { AnimatorFill } fill - Whether to resume to the initial state after the animation is executed.
 * @param { AnimatorDirection } direction - The animation playback mode.
 * @param { Int32 } iterations - Number of times the animation will be played. number indicates a fixed number of playback operations, and -1 an unlimited number of playback operations.
 * The default value is 1.
 * @param { Float64 } begin - Starting point of animator interpolation.
 * The default value is 0.
 * @param { Float64 } end - Ending point of Dynamic Interpolation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        duration!: Int32,
        easing!: String,
        delay!: Int32,
        fill!: AnimatorFill,
        direction!: AnimatorDirection,
        iterations!: Int32,
        begin!: Float64,
        end!: Float64
    )
}

/**
 * Defines the Animator result class.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AnimatorResult <: RemoteDataLite {
/**
 * Trigger when vsync callback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop onFrame: (Float64) -> Unit

/**
 * The animation is finished.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop onFinish: () -> Unit

/**
 * The animation is canceled.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop onCancel: () -> Unit

/**
 * The animation is repeated.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public mut prop onRepeat: () -> Unit

/**
 * Reset the options for current animator.
 *
 * @param { AnimatorOptions } options
 * @throws { BusinessException } 100001 - Internal error. Possible causes:
 *  The specified page is not found or the object property list is not obtained.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full",
    throwexception: true
]
    public func reset(options: AnimatorOptions): Unit

/**
 * Start the animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func play(): Unit

/**
 * Ends the animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func finish(): Unit

/**
 * Pauses the animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func pause(): Unit

/**
 * Cancels the animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func cancel(): Unit

/**
 * Plays the animation in reverse direction.
 * Invalid when using interpolating-spring curve.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func reverse(): Unit

/**
 * Sets the FrameRateRange of the DynamicSyncScene.
 *
 * @param { ExpectedFrameRateRange } rateRange - The expected frame rate range.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setExpectedFrameRateRange(rateRange: ExpectedFrameRateRange): Unit
}

/**
 * Provides a font component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FontInfo {
/**
 * The path of the font file.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var path: String

/**
 * The name of postscript.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var postScriptName: String

/**
 * The font name.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fullName: String

/**
 * A set of fonts with a common design.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var family: String

/**
 * A subset of the font family.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var subfamily: String

/**
 * The weight of the font.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var weight: UInt32

/**
 * The width of the font style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: UInt32

/**
 * Whether it is italic.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var italic: Bool

/**
 * Whether it is compact.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var monoSpace: Bool

/**
 * Whether symbol fonts are supported.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var symbolic: Bool
}

/**
 * class Font
 *
 * NOTE:
 * You must first use getFont() in UIContext to obtain a Font instance,
 * and then call the APIs using the obtained instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Font {
/**
 * Register a customized font in the FontManager.
 *
 * @param { ResourceStr } familyName
 * @param { ResourceStr } familySrc
 * @throws { BusinessException } 100001 - Invalid input parameter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func registerFont(familyName!: ResourceStr, familySrc!: ResourceStr): Unit

/**
 * Gets a list of fonts supported by system.
 *
 * @returns { Array<String> } A list of font names.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getSystemFontList(): Array<String>

/**
 * Get font details according to the font name.
 *
 * @param { String } fontName - font name.
 * @returns { ?FontInfo } Returns the font info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getFontByName(fontName: String): ?FontInfo
}

/**
 * Defines the options of MeasureText.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MeasureOptions {
/**
 * Create an object of MeasureOptions.
 *
 * @param { String } textContent
 * @param { FontWeight } [fontWeight]
 * @param { String } [fontFamily]
 * @param { ?Length } [constraintWidth]
 * @param { ?Length } [fontSize]
 * @param { ?Length } [lineHeight]
 * @param { ?Length } [baselineOffset]
 * @param { ?Length } [letterSpacing]
 * @param { ?Length } [textIndent]
 * @param { UInt32 } [maxLines]
 * @param { TextAlign } [textAlign]
 * @param { FontStyle } [fontStyle]
 * @param { TextOverflow } [overflow]
 * @param { TextCase } [textCase]
 * @param { WordBreak } [wordBreak]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        textContent!: String,
        fontWeight!: FontWeight = FontWeight.Normal,
        fontFamily!: String = "HarmonyOS Sans",
        constraintWidth!: ?Length = None,
        fontSize!: ?Length = 16.fp,
        lineHeight!: ?Length = None,
        baselineOffset!: ?Length = 0.0.vp,
        letterSpacing!: ?Length = None,
        textIndent!: ?Length = None,
        maxLines!: UInt32 = 0,
        textAlign!: TextAlign = TextAlign.Start,
        fontStyle!: FontStyle = FontStyle.Normal,
        overflow!: TextOverflow = TextOverflow.Clip,
        textCase!: TextCase = TextCase.Normal,
        wordBreak!: WordBreak = WordBreak.BreakWord
    )
}

/**
 * Defines the size options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SizeOptions {
/**
 * Defines the width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: Length = 0

/**
 * Defines the height.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: Length = 0

/**
 * SizeOptions constructor.
 *
 * @param { Length } [width]
 * @param { Length } [height]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: Length = 0, height!: Length = 0)
}

/**
 * class MeasureUtils
 *
 * NOTE:
 * You must first use getMeasureUtils() in UIContext to obtain a MeasureUtils instance,
 * and then call the APIs using the obtained instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MeasureUtils {
/**
 * Obtains the width of the specified text in a single line layout.
 *
 * @param { MeasureOptions } options - Options.
 * @returns { Float64 }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func measureText(options: MeasureOptions): Float64

/**
 * Obtains the width and height of the specified text in a single line layout.
 *
 * @param { MeasureOptions } options - Options of measure area occupied by text.
 * @returns { SizeOptions } width and height for text to display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func measureTextSize(options: MeasureOptions): SizeOptions
}

/**
 * The callBack of a showDialog.
 */
public type ShowDialogCallBack = AsyncCallback<Int32>

/**
 * The callBack of a showActionMenu.
 */
public type ShowActionMenuCallBack = AsyncCallback<Int32>

/**
 * Provides a ButtonInfo component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ButtonInfo {
/**
 * The text displayed in the button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var text: ResourceStr

/**
 * The foreground color of button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var color: ResourceColor

/**
 * Define whether the button responds to Enter/Space key by default.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var primary: Bool

/**
 * Constructs a menu item button in a menu.
 *
 * @param { ResourceStr } text - Button text content.
 * @param { ResourceColor } color - Button text color.
 * @param { Bool } [primary] - Whether the button responds to the Enter/Space key by default.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(text!: ResourceStr, color!: ResourceColor, primary!: Bool = false)
}

/**
 * Enum for the toast showMode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ToastShowMode {
/**
 * Toast shows in app.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    |
/**
 * Toast shows at the top.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopMost
    | ...
}

extend ToastShowMode <: Equatable<ToastShowMode> {
/**
 * Compares this ToastShowMode with another for equality.
 * @param { ToastShowMode } - The ToastShowMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ToastShowMode): Bool
/**
 * Compares this ToastShowMode with another for equality.
 * @param { ToastShowMode } - The ToastShowMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ToastShowMode): Bool
}

/**
 * Provides a EdgeColor component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EdgeColors {
/**
 * The top of the EdgeColor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var top: ResourceColor

/**
 * The right of the EdgeColor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var right: ResourceColor

/**
 * The bottom of the EdgeColor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bottom: ResourceColor

/**
 * The left of the EdgeColor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var left: ResourceColor

/**
 * EdgeColor constructor
 *
 * @param { ResourceColor } [top]
 * @param { ResourceColor } [right]
 * @param { ResourceColor } [bottom]
 * @param { ResourceColor } [left]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        top!: ResourceColor = Color.Black,
        right!: ResourceColor = Color.Black,
        bottom!: ResourceColor = Color.Black,
        left!: ResourceColor = Color.Black
    )
}

/**
 * Provides a EdgeColor component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum HoverModeAreaType {
/**
 * TopScreen HoverModeAreaType.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopScreen
    |
/**
 * BottomScreen HoverModeAreaType.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomScreen
    | ...
}

extend HoverModeAreaType <: Equatable<HoverModeAreaType> {
/**
 * Compares this HoverModeAreaType with another for equality.
 * @param { HoverModeAreaType } - The HoverModeAreaType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: HoverModeAreaType): Bool
/**
 * Compares this HoverModeAreaType with another for equality.
 * @param { HoverModeAreaType } - The HoverModeAreaType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: HoverModeAreaType): Bool
}

/**
 * Enum of KeyBoardAvoidMethodType.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum KeyboardAvoidMode {
/**
 * Default KeyboardAvoidMode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    |
/**
 * None Type, the layout is not adjusted to avoid the keyboard.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend KeyboardAvoidMode <: Equatable<KeyboardAvoidMode> {
/**
 * Compares this KeyboardAvoidMode with another for equality.
 * @param { KeyboardAvoidMode } - The KeyboardAvoidMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: KeyboardAvoidMode): Bool
/**
 * Compares this KeyboardAvoidMode with another for equality.
 * @param { KeyboardAvoidMode } - The KeyboardAvoidMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: KeyboardAvoidMode): Bool
}

/**
 * Dialog base options
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class BaseDialogOptions {
/**
 * Mask Region of dialog. The size can't exceed the main window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var maskRect: Rectangle

/**
 * Defines the dialog alignment of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var alignment: DialogAlignment

/**
 * Defines the dialog offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: Offset

/**
 * Whether it is a modal dialog
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var isModal: Bool

/**
 * Whether to display in the sub window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var showInSubWindow: Bool

/**
 * Allows users to click the mask layer to exit.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var autoCancel: Bool

/**
 * Defines custom dialog maskColor
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var maskColor: ResourceColor

/**
 * Transition parameters of opening/closing custom dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var transition: TransitionEffect

/**
 * Callback function when the dialog appears.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onDidAppear: () -> Unit

/**
 * Callback function when the dialog disappears.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onDidDisappear: () -> Unit

/**
 * Callback function before the dialog openAnimation starts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onWillAppear: () -> Unit

/**
 * Callback function before the dialog closeAnimation starts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onWillDisappear: () -> Unit

/**
 * Obtains the avoidance mode of the virtual keyboard.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var keyboardAvoidMode: KeyboardAvoidMode

/**
 * Defines whether to respond to the hover mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var enableHoverMode: Bool

/**
 * Defines the dialog's display area in hover mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hoverModeArea: HoverModeAreaType

/**
 * BaseDialogOptions constructor
 *
 * @param { Rectangle } [maskRect]
 * @param { DialogAlignment } [alignment]
 * @param { Offset } [offset]
 * @param { Bool } [isModal]
 * @param { Bool } [showInSubWindow]
 * @param { Bool } [autoCancel]
 * @param { ResourceColor } [maskColor]
 * @param { TransitionEffect } [transition]
 * @param { function } [onDidAppear]
 * @param { function } [onDidDisappear]
 * @param { function } [onWillAppear]
 * @param { function } [onWillDisappear]
 * @param { KeyboardAvoidMode } [keyboardAvoidMode]
 * @param { Bool } [enableHoverMode]
 * @param { HoverModeAreaType } [hoverModeArea]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        maskRect!: Rectangle = Rectangle(x: 0.vp, y: 0.vp, width: 100.percent, height: 100.percent),
        alignment!: DialogAlignment = DialogAlignment.Default,
        offset!: Offset = Offset(0.vp, 0.vp),
        isModal!: Bool = true,
        showInSubWindow!: Bool = false,
        autoCancel!: Bool = true,
        maskColor!: ResourceColor = Color(0x33000000),
        transition!: TransitionEffect = TransitionEffect.OPACITY,
        onDidAppear!: () -> Unit = {=>},
        onDidDisappear!: () -> Unit = {=>},
        onWillAppear!: () -> Unit = {=>},
        onWillDisappear!: () -> Unit = {=>},
        keyboardAvoidMode!: KeyboardAvoidMode = KeyboardAvoidMode.Default,
        enableHoverMode!: Bool = false,
        hoverModeArea!: HoverModeAreaType = HoverModeAreaType.BottomScreen
    )
}

/**
 * Dialog's custom content options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CustomDialogOptions <: BaseDialogOptions {
/**
 * Allow developer custom dialog's content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var builder: () -> Unit

/**
 * Defines the custom dialog's background color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundColor: ResourceColor

/**
 * Defines the custom dialog's corner radius.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var cornerRadius: BorderRadiuses

/**
 * Defines the custom dialog's border width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var borderWidth: EdgeWidths

/**
 * Defines the custom dialog's border color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var borderColor: EdgeColors

/**
 * Defines the custom dialog's border style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var borderStyle: EdgeStyles

/**
 * Defines the dialog's width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: Length

/**
 * Defines the dialog's height.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: Length

/**
 * Defines the dialog's shadow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var shadow: ?ShadowOptions

/**
 * Defines the dialog's background blur Style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundBlurStyle: BlurStyle

/**
 * Dialog constructor.
 *
 * @param { function } builder
 * @param { Rectangle } [maskRect]
 * @param { DialogAlignment } [alignment]
 * @param { Offset } [offset]
 * @param { Bool } [isModal]
 * @param { Bool } [showInSubWindow]
 * @param { Bool } [autoCancel]
 * @param { ResourceColor } [maskColor]
 * @param { TransitionEffect } [transition]
 * @param { function } [onDidAppear]
 * @param { function } [onDidDisappear]
 * @param { function } [onWillAppear]
 * @param { function } [onWillDisappear]
 * @param { KeyboardAvoidMode } [keyboardAvoidMode]
 * @param { Bool } [enableHoverMode]
 * @param { HoverModeAreaType } [hoverModeArea]
 * @param { ResourceColor } [backgroundColor]
 * @param { BorderRadiuses } [cornerRadius]
 * @param { EdgeWidths } [borderWidth]
 * @param { EdgeColors } [borderColor]
 * @param { EdgeStyles } [borderStyle]
 * @param { Length } [width]
 * @param { Length } [height]
 * @param { ShadowOptions } [shadow]
 * @param { BlurStyle } [backgroundBlurStyle]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        builder!: () -> Unit,
        maskRect!: Rectangle = Rectangle(x: 0.vp, y: 0.vp, width: 100.percent, height: 100.percent),
        alignment!: DialogAlignment = DialogAlignment.Default,
        offset!: Offset = Offset(0.vp, 0.vp),
        isModal!: Bool = true,
        showInSubWindow!: Bool = false,
        autoCancel!: Bool = true,
        maskColor!: ResourceColor = Color(0x33000000),
        transition!: TransitionEffect = TransitionEffect.OPACITY,
        onDidAppear!: () -> Unit = {=>},
        onDidDisappear!: () -> Unit = {=>},
        onWillAppear!: () -> Unit = {=>},
        onWillDisappear!: () -> Unit = {=>},
        keyboardAvoidMode!: KeyboardAvoidMode = KeyboardAvoidMode.Default,
        enableHoverMode!: Bool = false,
        hoverModeArea!: HoverModeAreaType = HoverModeAreaType.BottomScreen,
        backgroundColor!: ResourceColor = Color.Transparent,
        cornerRadius!: BorderRadiuses = BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp,
            bottomRight: 32.vp),
        borderWidth!: EdgeWidths = EdgeWidths(top: 0.vp, right: 0.vp, bottom: 0.vp, left: 0.vp),
        borderColor!: EdgeColors = EdgeColors(top: Color.Black, right: Color.Black, bottom: Color.Black,
            left: Color.Black),
        borderStyle!: EdgeStyles = EdgeStyles(),
        width!: Length = 400.vp,
        height!: Length = 100.vp,
        shadow!: ?ShadowOptions = None,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick
    )
}

/**
 * Dialog's show options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class ShowDialogOptions {
/**
 * Title of the text to display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var title: ResourceStr

/**
 * Text body.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var message: ResourceStr

/**
 * Array of buttons in the dialog box.
 * More than one buttons are supported.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var buttons: Array<ButtonInfo>

/**
 * Defines the dialog alignment of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var alignment: DialogAlignment

/**
 * Defines the dialog offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: Offset

/**
 * Mask Region of dialog. The size can't exceed the main window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var maskRect: Rectangle

/**
 * Whether to display in the sub window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var showInSubWindow: Bool

/**
 * Whether it is a modal dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var isModal: Bool

/**
 * Defines the dialog's background color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundColor: ResourceColor

/**
 * Defines the dialog's background blur Style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundBlurStyle: BlurStyle

/**
 * Defines the dialog's shadow option.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var shadow: ?ShadowOptions

/**
 * Defines whether to respond to the hover mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var enableHoverMode: Bool

/**
 * Defines the dialog's display area in hover mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hoverModeArea: HoverModeAreaType

/**
 * Dialog's show options constructor.
 *
 * @param { ResourceStr } [title]
 * @param { ResourceStr } [message]
 * @param { Array<ButtonInfo> } [buttons]
 * @param { DialogAlignment } [alignment]
 * @param { Offset } [offset]
 * @param { Rectangle } [maskRect]
 * @param { Bool } [showInSubWindow]
 * @param { Bool } [isModal]
 * @param { Color } [backgroundColor]
 * @param { BlurStyle } [backgroundBlurStyle]
 * @param { ShadowOptions } [shadow]
 * @param { Bool } [enableHoverMode]
 * @param { HoverModeAreaType } [hoverModeArea]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        title!: ResourceStr = '',
        message!: ResourceStr = '',
        buttons!: Array<ButtonInfo> = [],
        alignment!: DialogAlignment = DialogAlignment.Default,
        offset!: Offset = Offset(0.vp, 0.vp),
        maskRect!: Rectangle = Rectangle(x: 0.vp, y: 0.vp, width: 100.percent, height: 100.percent),
        showInSubWindow!: Bool = false,
        isModal!: Bool = true,
        backgroundColor!: Color = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        shadow!: ?ShadowOptions = None,
        enableHoverMode!: Bool = false,
        hoverModeArea!: HoverModeAreaType = HoverModeAreaType.BottomScreen
    )
}

/**
 * Menu's Action options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class ActionMenuOptions {
/**
 * Title of the text to display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var title: ResourceStr

/**
 * Array of buttons in the dialog box.
 * One to six buttons are supported.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var buttons: Array<ButtonInfo>

/**
 * Whether to display in the sub window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var showInSubWindow: Bool

/**
 * Whether it is a modal dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var isModal: Bool

/**
 * Menu's Action options constructor.
 *
 * @param { ResourceStr } [title]
 * @param { Array<ButtonInfo> } [buttons]
 * @param { Bool } [showInSubWindow]
 * @param { Bool } [isModal]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        title!: ResourceStr = '',
        buttons!: Array<ButtonInfo>,
        showInSubWindow!: Bool = false,
        isModal!: Bool = true
    )
}

/**
 * Toast's show options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ShowToastOptions {
/**
 * Text to display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var message: ResourceStr

/**
 * Duration of toast dialog box.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var duration: UInt32

/**
 * The distance between toast dialog box and the bottom of screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bottom: Length

/**
 * Determine the show mode of the toast.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var showMode: ToastShowMode

/**
 * Defines the toast alignment of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var alignment: Alignment

/**
 * Defines the toast offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: Offset

/**
 * Background color of toast.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundColor: ResourceColor

/**
 * Text color of toast.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var textColor: ResourceColor

/**
 * Background blur Style of toast.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundBlurStyle: BlurStyle

/**
 * Shadow of toast's option.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var shadow: ?ShadowOptions = None

/**
 * Define whether to respond to the hover mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var enableHoverMode: Bool

/**
 * Defines the toast's display area in hover mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hoverModeArea: HoverModeAreaType

/**
 * Toast's show options constructor.
 *
 * @param { ResourceStr } message
 * @param { UInt32 } [duration]
 * @param { Length } [bottom]
 * @param { ToastShowMode } [showMode]
 * @param { Alignment } [alignment]
 * @param { Offset } [offset]
 * @param { Color } [backgroundColor]
 * @param { Color } [textColor]
 * @param { BlurStyle } [backgroundBlurStyle]
 * @param { ShadowOptions } [shadow]
 * @param { Bool } [enableHoverMode]
 * @param { HoverModeAreaType } [hoverModeArea]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        message!: ResourceStr,
        duration!: UInt32 = 1500,
        bottom!: Length = 80.vp,
        showMode!: ToastShowMode = ToastShowMode.Default,
        alignment!: Alignment = Alignment.Bottom,
        offset!: Offset = Offset(0.vp, 0.vp),
        backgroundColor!: Color = Color.Transparent,
        textColor!: Color = Color.Black,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        shadow!: ?ShadowOptions = None,
        enableHoverMode!: Bool = false,
        hoverModeArea!: HoverModeAreaType = HoverModeAreaType.BottomScreen
    )
}

/**
 * class PromptAction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PromptAction {
/**
 * Open the custom dialog.
 *
 * @param { CustomDialogOptions } options - Options.
 * @param { (Int32) -> Unit } callBack
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full",
    workerthread: true
]
    public func openCustomDialog(options: CustomDialogOptions, callBack: (Int32) -> Unit): Unit

/**
 * Close the custom dialog.
 *
 * @param { Int32 } dialogId - the dialog id that returned by openCustomDialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func closeCustomDialog(dialogId: Int32): Unit

/**
 * Shows a toast in the given settings.
 *
 * @param { ShowToastOptions } option - Toast options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func showToast(option: ShowToastOptions): Unit

/**
 * Shows a dialog box in the given settings. This API uses an asynchronous callback to return the result.
 *
 * @param { ShowDialogOptions } option - Dialog box options.
 * @param { ShowDialogCallBack } [callback] - Callback used to return the dialog box response result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full",
    workerthread: true
]
    public func showDialog(option: ShowDialogOptions, callback!: ShowDialogCallBack = defaultCallback)

/**
 * Shows an action menu in the given settings. This API uses an asynchronous callback to return the result.
 *
 * @param { ActionMenuOptions } option - Action menu options.
 * @param { ShowActionMenuCallBack } [callback] - Callback used to return the action menu
 * response result.
 * @throws { BusinessException } - 100001 - Internal error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full",
    throwexception: true,
    workerthread: true
]
    public func showActionMenu(option: ActionMenuOptions, callback!: ShowActionMenuCallBack = defaultCallback)
}

/**
 * Router Mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RouterMode {
/**
 * Default route mode.
 * The page will be added to the top of the page stack.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Standard
    |
/**
 * Single route mode.
 * If the target page already has the same url page in the page stack,
 * the same url page closest to the top of the stack will be moved to the top of the stack.
 * If the target page url does not exist in the page stack, route will use default route mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Single
    | ...
}

extend RouterMode <: Equatable<RouterMode> {
/**
 * Compares this RouterMode with another for equality.
 * @param { RouterMode } - The RouterMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: RouterMode): Bool
/**
 * Compares this RouterMode with another for equality.
 * @param { RouterMode } - The RouterMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: RouterMode): Bool
}

/**
 * Router State.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RouterState {
/**
 * Index of the current page in the stack.
 * NOTE: The index starts from 1 from the bottom to the top of the stack.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var index: Int32

/**
 * Name of the current page, that is, the file name.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var name: String

/**
 * Path of the current page.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var path: String

/**
 * Data that passed to the destination page during navigation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var params: String

/**
 * Router State constructor.
 *
 * @param { Int32 } index
 * @param { String } name
 * @param { String } path
 * @param { String } params
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        index!: Int32,
        name!: String,
        path!: String,
        params!: String
    )
}

/**
 * class Router.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Router {
/**
 * Navigates to a specified page in the application based on the page URL and parameters.
 *
 * @param { String } url
 * @param { String } [params]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full",
    workerthread: true
]
    public func pushUrl(url!: String, params!: String = ""): Unit

/**
 * Returns to the specified page
 *
 * @param { String } url
 * @param { String } [params]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func back(url!: ?String = None, params!: String = ""): Unit

/**
 * Returns to the specified page.
 *
 * @param { Int32 } index
 * @param { String } [params]
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func back(index!: Int32, params!: String = ""): Unit

/**
 * Obtains information about the current page params.
 *
 * @returns { Option<String> } Page params.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getParams(): Option<String>
}
