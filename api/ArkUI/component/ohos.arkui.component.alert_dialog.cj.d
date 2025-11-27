package ohos.arkui.component.alert_dialog

import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive

/**
* The arrangement of buttons in dialog.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DialogButtonDirection {
/**
 * Two or fewer buttons are arranged horizontally,
 * and two or more buttons are arranged vertically.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | 
/**
 * Buttons are arranged horizontally.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Horizontal
    | 
/**
 * Buttons are arranged vertically.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Vertical
    | ...
}

extend DialogButtonDirection <: Equatable<DialogButtonDirection> {
/**
 * Compares this DialogButtonDirection with another for equality.
 * @param { DialogButtonDirection } - The DialogButtonDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: DialogButtonDirection): Bool
/**
 * Compares this DialogButtonDirection with another for equality.
 * @param { DialogButtonDirection } - The DialogButtonDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: DialogButtonDirection): Bool
}

/**
 * Base button param.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class AlertDialogButtonBaseOptions {
/**
 * Enable switch of button
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var enabled: ?Bool

/**
 * Default focus switch of button
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var defaultFocus: ?Bool

/**
 * Style of button.
 * @default DialogButtonStyle.Default
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var style: ?DialogButtonStyle

/**
 * Text content of button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var value: ?ResourceStr

/**
 * Describes the button text color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontColor: ?ResourceColor

/**
 * Background color of button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundColor: ?ResourceColor

/**
 * Method executed by the callback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var action: ?VoidCallback

/**
 * Constructor of AlertDialogButtonBaseOptions.
 *
 * @param { ?Bool } enabled - Enable switch of button.
 * @param { ?Bool } defaultFocus - Default focus switch of button.
 * @param { ?DialogButtonStyle } style - Style of button.
 * @param { ?ResourceStr } value - Text content of button.
 * @param { ?ResourceColor } fontColor - Text color of button.
 * @param { ?ResourceColor } backgroundColor - Background color of button.
 * @param { ?VoidCallback } action - Method executed by the callback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        enabled!: ?Bool = None,
        defaultFocus!: ?Bool = None,
        style!: ?DialogButtonStyle = None,
        value!: ?ResourceStr,
        fontColor!: ?ResourceColor = None,
        backgroundColor!: ?ResourceColor = None,
        action!: ?VoidCallback
    )
}

/**
 * Button param used for AlertDialogParamWithOptions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogButtonOptions <: AlertDialogButtonBaseOptions {
/**
 * Define whether the button default to responding to the Enter key
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var primary: ?Bool

/**
 * Constructor of AlertDialogButtonOptions.
 *
 * @param { Bool } enabled - Enable switch of button.
 * @param { Bool } defaultFocus - Default focus switch of button.
 * @param { DialogButtonStyle } style - Style of button.
 * @param { ResourceStr } value - Text content of button.
 * @param { ?ResourceColor } fontColor - Font color of button.
 * @param { ?ResourceColor } backgroundColor - Background color of button.
 * @param { VoidCallback } action - Action of button.
 * @param { Bool } primary - Define whether the button responds to Enter/Space key by default.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        enabled!: ?Bool = None,
        defaultFocus!: ?Bool = None,
        style!: ?DialogButtonStyle = None,
        value!: ?ResourceStr,
        fontColor!: ?ResourceColor = None,
        backgroundColor!: ?ResourceColor = None,
        action!: ?VoidCallback,
        primary!: ?Bool = None
    )
}

/**
 * Base param used for AlertDialog.show method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class AlertDialogParam {
/**
 * Title Properties.
 * The main title text displayed at the top of the alert dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var title: ?ResourceStr

/**
 * Subtitle Properties.
 * Additional descriptive text displayed below the title in the alert dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var subtitle: ?ResourceStr

/**
 * The message of alert dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var message: ?ResourceStr

/**
 * Allows users to click the mask layer to exit.
 * When enabled, users can dismiss the dialog by clicking on the semi-transparent overlay outside the dialog.
 * @default true - The value true means to close the dialog box when the overlay is clicked, and false means
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var autoCancel: ?Bool

/**
 * Execute Cancel Function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var cancel: ?VoidCallback

/**
 * Defines the dialog alignment of the screen.
 *
 * @default DialogAlignment.Bottom
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var alignment: ?DialogAlignment

/**
 * Offset of the pop-up window relative to the alignment position.
 * Fine-tunes the dialog position by applying additional x/y offsets to the alignment setting.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: ?Offset

/**
 * Grid count of dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var gridCount: ?UInt32

/**
 * Mask Region of dialog. The size cannot exceed the main window.
 * Defines the rectangular area where the dialog mask (overlay) is displayed.
 * @default Rectangle(x: 0, y: 0, width: 100.percent, height: 100.percent)
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var maskRect: ?Rectangle

/**
 * Whether to show the dialog box in a subwindow when the dialog box needs to be displayed outside the main window.
 * NOTE:
 * A dialog box whose showInSubWindow attribute is true cannot trigger the display of another dialog box whose
 * showInSubWindow attribute is also true.
 *
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var showInSubWindow: ?Bool

/**
 * Whether it is a modal dialog.
 * Determines if the dialog blocks interaction with the underlying content when displayed.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var isModal: ?Bool

/**
 * Defines the alertDialog's background color.
 * Sets the background color of the dialog, supporting both solid colors and transparent backgrounds.
 * @default Transparent
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundColor: ?ResourceColor

/**
 * Defines the alertDialog's background blur Style.
 * Applies a blur effect to the dialog background for a frosted glass appearance.
 * @default BlurStyle.ComponentUltraThick
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundBlurStyle: ?BlurStyle

/**
 * Callback function when the dialog interactive dismiss.
 * Function called when the dialog is about to be dismissed through user interaction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onWillDismiss: ?Callback<DismissDialogAction, Unit>

/**
 * Transition parameters of opening/closing AlertDialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var transition: ?TransitionEffect

/**
 * Defines the alertDialog's corner radius.
 *
 * @default BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp, bottomRight: 32.vp)
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var cornerRadius: ?BorderRadiuses

/**
 * Defines the alertDialog's width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: ?Length

/**
 * Defines the alertDialog's height.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: ?Length

/**
 * Defines the alertDialog's border width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var borderWidth: ?Length

/**
 * Defines the alertDialog's border color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var borderColor: ?BorderColor

/**
 * Defines the alertDialog's border style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var borderStyle: ?EdgeStyles

/**
 * Defines the alertDialog's shadow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var shadow: ?ShadowOptions

/**
 * Set the alertDialog's textStyle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var textStyle: ?WordBreak

/**
 * Constructor of AlertDialogParam.
 *
 * @param { ?ResourceStr } title - Title Properties.
 * @param { ?ResourceStr } subtitle - Subtitle Properties.
 * @param { ?ResourceStr } message - message Properties.
 * @param { ?Bool } autoCancel - Allows users to click the mask layer to exit.
 * @param { ?VoidCallback } cancel - Execute Cancel Function.
 * @param { ?DialogAlignment } alignment - Alignment in the vertical direction.
 * @param { ?Offset } offset - Offset of the pop-up window relative to the alignment position.
 * @param { ?UInt32 } gridCount - Grid count of dialog.
 * @param { ?Rectangle } maskRect - Mask Region of dialog. The size cannot exceed the main window.
 * @param { ?Bool } showInSubWindow - Whether to display in the sub window.
 * @param { ?Bool } isModal - Whether it is a modal dialog.
 * @param { ?ResourceColor } backgroundColor - Defines the alertDialog's background color.
 * @param { ?BlurStyle } backgroundBlurStyle - Defines the alertDialog's background blur Style.
 * @param { ?Callback<(DismissDialogAction, Unit)> } onWillDismiss - Callback function when the dialog interactive dismiss.
 * @param { ?TransitionEffect } transition - Transition parameters of opening/closing AlertDialog.
 * @param { ?BorderRadiuses } cornerRadius - Defines the alertDialog's corner radius.
 * @param { ?Length } width - Defines the alertDialog's width.
 * @param { ?Length } height - Defines the alertDialog's height.
 * @param { ?Length } borderWidth - Defines the alertDialog's border width.
 * @param { ?BorderColor } borderColor - Defines the alertDialog's border color.
 * @param { ?EdgeStyles } borderStyle - Defines the alertDialog's border style.
 * @param { ?ShadowOptions } shadow - Defines the alertDialog's shadow.
 * @param { ?WordBreak } textStyle - Set the alertDialog's textStyle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        title!: ?ResourceStr = None,
        subtitle!: ?ResourceStr = None,
        message!: ?ResourceStr,
        autoCancel!: ?Bool = None,
        cancel!: ?VoidCallback = None,
        alignment!: ?DialogAlignment = None,
        offset!: ?Offset = None,
        gridCount!: ?UInt32 = None,
        maskRect!: ?Rectangle = None,
        showInSubWindow!: ?Bool = None,
        isModal!: ?Bool = None,
        backgroundColor!: ?ResourceColor = None,
        backgroundBlurStyle!: ?BlurStyle = None,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        transition!: ?TransitionEffect = None,
        cornerRadius!: ?BorderRadiuses = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: ?Length = None,
        borderColor!: ?BorderColor = None,
        borderStyle!: ?EdgeStyles = None,
        shadow!: ?ShadowOptions = None,
        textStyle!: ?WordBreak = None
    )
}

/**
 * Defines the AlertDialog with confirm button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogParamWithConfirm <: AlertDialogParam {
/**
 * Invoke the commit function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var confirm: ?AlertDialogButtonBaseOptions

/**
 * Constructor of AlertDialogParamWithConfirm.
 *
 * @param { ?ResourceStr } [title] - Title Properties.
 * @param { ?ResourceStr } [subtitle] - Subtitle Properties.
 * @param { ?ResourceStr } [message] - message Properties.
 * @param { ?Bool } [autoCancel] - Allows users to click the mask layer to exit.
 * @param { ?VoidCallback } [cancel] - Execute Cancel Function.
 * @param { ?DialogAlignment } [alignment] - Alignment in the vertical direction.
 * @param { ?Offset } [offset] - Offset of the pop-up window relative to the alignment position.
 * @param { ?UInt32 } [gridCount] - Grid count of dialog.
 * @param { ?Rectangle } [maskRect] - Mask Region of dialog. The size cannot exceed the main window.
 * @param { ?Bool } [showInSubWindow] - Whether to display in the sub window.
 * @param { ?Bool } [isModal] - Whether it is a modal dialog.
 * @param { ?ResourceColor } [backgroundColor] - Defines the alertDialog's background color.
 * @param { ?BlurStyle } [backgroundBlurStyle] - Defines the alertDialog's background blur Style
 * @param { ?Callback<(DismissDialogAction, Unit)> } [onWillDismiss] - Callback function when the dialog interactive dismiss.
 * @param { ?BorderRadiuses } [cornerRadius] - Defines the alertDialog's corner radius.
 * @param { ?TransitionEffect } [transition] - Transition parameters of opening/closing AlertDialog.
 * @param { ?Length } [width] - Defines the alertDialog's width.
 * @param { ?Length } [height] - Defines the alertDialog's height.
 * @param { ?Length } [borderWidth] - Defines the alertDialog's border width.
 * @param { ?BorderColor } [borderColor] - Defines the alertDialog's border color.
 * @param { ?EdgeStyles } [borderStyle] - Defines the alertDialog's border style.
 * @param { ?ShadowOptions } [shadow] - Defines the alertDialog's shadow.
 * @param { ?WordBreak } [textStyle] - Set the alertDialog's textStyle.
 * @param { ?AlertDialogButtonBaseOptions } [confirm] - Invoke the commit function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        title!: ?ResourceStr = None,
        subtitle!: ?ResourceStr = None,
        message!: ?ResourceStr,
        autoCancel!: ?Bool = None,
        cancel!: ?VoidCallback = None,
        alignment!: ?DialogAlignment = None,
        offset!: ?Offset = None,
        gridCount!: ?UInt32 = None,
        maskRect!: ?Rectangle = None,
        showInSubWindow!: ?Bool = None,
        isModal!: ?Bool = None,
        backgroundColor!: ?ResourceColor = None,
        backgroundBlurStyle!: ?BlurStyle = None,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: ?BorderRadiuses = None,
        transition!: ?TransitionEffect = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: ?Length = None,
        borderColor!: ?BorderColor = None,
        borderStyle!: ?EdgeStyles = None,
        shadow!: ?ShadowOptions = None,
        textStyle!: ?WordBreak = None,
        confirm!: ?AlertDialogButtonBaseOptions = None
    )
}

/**
 * Defines the dialog param with buttons.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogParamWithButtons <: AlertDialogParam {
/**
 * First button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var primaryButton: ?AlertDialogButtonBaseOptions

/**
 * Second button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var secondaryButton: ?AlertDialogButtonBaseOptions

/**
 * Constructor of AlertDialogParamWithButtons.
 *
 * @param { ?ResourceStr } [title] - Title Properties.
 * @param { ?ResourceStr } [subtitle] - Subtitle Properties.
 * @param { ?ResourceStr } [message] - message Properties.
 * @param { ?Bool } [autoCancel] - Allows users to click the mask layer to exit.
 * @param { ?VoidCallback } [cancel] - Execute Cancel Function.
 * @param { ?DialogAlignment } [alignment] - Alignment in the vertical direction.
 * @param { ?Offset } [offset] - Offset of the pop-up window relative to the alignment position.
 * @param { ?UInt32 } [gridCount] - Grid count of dialog.
 * @param { ?Rectangle } [maskRect] - Mask Region of dialog. The size cannot exceed the main window.
 * @param { ?Bool } [showInSubWindow] - Whether to display in the sub window.
 * @param { ?Bool } [isModal] - Whether it is a modal dialog.
 * @param { ?ResourceColor } [backgroundColor] - Defines the alertDialog's background color.
 * @param { ?BlurStyle } [backgroundBlurStyle] - Defines the alertDialog's background blur Style
 * @param { ?Callback<(DismissDialogAction, Unit)> } [onWillDismiss] - Callback function when the dialog interactive dismiss.
 * @param { ?BorderRadiuses } [cornerRadius] - Defines the alertDialog's corner radius.
 * @param { ?TransitionEffect } [transition] - Transition parameters of opening/closing AlertDialog.
 * @param { ?Length } [width] - Defines the alertDialog's width.
 * @param { ?Length } [height] - Defines the alertDialog's height.
 * @param { ?Length } [borderWidth] - Defines the alertDialog's border width.
 * @param { ?BorderColor } [borderColor] - Defines the alertDialog's border color.
 * @param { ?EdgeStyles } [borderStyle] - Defines the alertDialog's border style.
 * @param { ?ShadowOptions } [shadow] - Defines the alertDialog's shadow.
 * @param { ?WordBreak } [textStyle] - Set the alertDialog's textStyle.
 * @param { AlertDialogButtonBaseOptions } primaryButton - First button.
 * @param { AlertDialogButtonBaseOptions } secondaryButton - Second button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        title!: ?ResourceStr = None,
        subtitle!: ?ResourceStr = None,
        message!: ?ResourceStr,
        autoCancel!: ?Bool = None,
        cancel!: ?VoidCallback = None,
        alignment!: ?DialogAlignment = None,
        offset!: ?Offset = None,
        gridCount!: ?UInt32 = None,
        maskRect!: ?Rectangle = None,
        showInSubWindow!: ?Bool = None,
        isModal!: ?Bool = None,
        backgroundColor!: ?ResourceColor = None,
        backgroundBlurStyle!: ?BlurStyle = None,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: ?BorderRadiuses = None,
        transition!: ?TransitionEffect = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: ?Length = None,
        borderColor!: ?BorderColor = None,
        borderStyle!: ?EdgeStyles = None,
        shadow!: ?ShadowOptions = None,
        textStyle!: ?WordBreak = None,
        primaryButton!: ?AlertDialogButtonBaseOptions,
        secondaryButton!: ?AlertDialogButtonBaseOptions
    )
}

/**
 * Defines the dialog param with options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogParamWithOptions <: AlertDialogParam {
/**
 * The array of buttons.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var buttons: ?Array<AlertDialogButtonOptions>

/**
 * The arrangement of buttons
 * @default DialogButtonDirection.Auto
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var buttonDirection: ?DialogButtonDirection

/**
 * Constructor of AlertDialogParamWithOptions.
 *
 * @param { ?ResourceStr } [title] - Title Properties.
 * @param { ?ResourceStr } [subtitle] - Subtitle Properties.
 * @param { ?ResourceStr } message - message Properties.
 * @param { ?Bool } [autoCancel] - Allows users to click the mask layer to exit.
 * @param { ?VoidCallback } [cancel] - Execute Cancel Function.
 * @param { ?DialogAlignment } [alignment] - Alignment in the vertical direction.
 * @param { ?Offset } [offset] - Offset of the pop-up window relative to the alignment position.
 * @param { ?UInt32 } [gridCount] - Grid count of dialog.
 * @param { ?Rectangle } [maskRect] - Mask Region of dialog. The size cannot exceed the main window.
 * @param { ?Bool } [showInSubWindow] - Whether to display in the sub window.
 * @param { ?Bool } [isModal] - Whether it is a modal dialog.
 * @param { ?ResourceColor } [backgroundColor] - Defines the alertDialog's background color.
 * @param { ?BlurStyle } [backgroundBlurStyle] - Defines the alertDialog's background blur Style
 * @param { ?Callback<(DismissDialogAction, Unit)> } [onWillDismiss] - Callback function when the dialog interactive dismiss.
 * @param { ?BorderRadiuses } [cornerRadius] - Defines the alertDialog's corner radius.
 * @param { ?TransitionEffect } [transition] - Transition parameters of opening/closing AlertDialog.
 * @param { ?Length } [width] - Defines the alertDialog's width.
 * @param { ?Length } [height] - Defines the alertDialog's height.
 * @param { ?Length } [borderWidth] - Defines the alertDialog's border width.
 * @param { ?BorderColor } [borderColor] - Defines the alertDialog's border color.
 * @param { ?EdgeStyles } [borderStyle] - Defines the alertDialog's border style.
 * @param { ?ShadowOptions } [shadow] - Defines the alertDialog's shadow.
 * @param { ?WordBreak } [textStyle] - Set the alertDialog's textStyle.
 * @param { Array<AlertDialogButtonOptions> } buttons - The array of buttons.
 * @param { DialogButtonDirection } [buttonDirection] - The arrangement of buttons.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        title!: ?ResourceStr = None,
        subtitle!: ?ResourceStr = None,
        message!: ?ResourceStr,
        autoCancel!: ?Bool = None,
        cancel!: ?VoidCallback = None,
        alignment!: ?DialogAlignment = None,
        offset!: ?Offset = None,
        gridCount!: ?UInt32 = None,
        maskRect!: ?Rectangle = None,
        showInSubWindow!: ?Bool = None,
        isModal!: ?Bool = None,
        backgroundColor!: ?ResourceColor = None,
        backgroundBlurStyle!: ?BlurStyle = None,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: ?BorderRadiuses = None,
        transition!: ?TransitionEffect = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: ?Length = None,
        borderColor!: ?BorderColor = None,
        borderStyle!: ?EdgeStyles = None,
        shadow!: ?ShadowOptions = None,
        textStyle!: ?WordBreak = None,
        buttons!: ?Array<AlertDialogButtonOptions>,
        buttonDirection!: ?DialogButtonDirection = None
    )
}

/**
 * Defines the custom dialog's border color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BorderColor {
/**
 * Defines the color which can use resource.
 */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var resourceColor: ResourceColor
    
/**
 * BorderColor constructor.
 * Creates a new BorderColor instance with the specified color or defaults to black.
 *
 * @param { ?ResourceColor } [color] - The color to use for the border. The default is black.
 */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color!: ?ResourceColor = Color.Black) {
        this.resourceColor = color
    }
}