package ohos.arkui.component.action_sheet

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * The information of sheet.
 * Each sheet represents an option in the ActionSheet dialog with text, optional icon, and action callback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SheetInfo {
    /**
     * Sheet text.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var title: ?ResourceStr

    /**
     * Sheet icon. By default, no icon is displayed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var icon: ?ResourceStr

    /**
     * Callback when the sheet is selected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var action: ?VoidCallback

    /**
     * Constructor of SheetInfo.
     *
     * @param { ?ResourceStr } title - Sheet text.
     * @param { ?ResourceStr } [icon] - Sheet icon. By default, no icon is displayed.
     * @param { ?VoidCallback } action - Callback when the sheet is selected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        title!: ?ResourceStr,
        icon!: ?ResourceStr = None,
        action!: ?VoidCallback
    )
}

/**
 * Base button params used for ActionSheet.
 * Defines the properties of buttons used in the ActionSheet dialog, including text, action callback,
 * enabled state, focus behavior, and styling.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ActionSheetButtonOptions {
    /**
     * Whether to respond when the button is clicked. The value true means to respond when the button is clicked,
     * and false means the opposite.
     * @default true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enabled: ?Bool

    /**
     * Whether the button is the default focus. The value true means that the button is the default focus,
     * and false means the opposite.
     * @default false
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var defaultFocus: ?Bool

    /**
     * Button style.
     * @default DialogButtonStyle.Default
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var style: ?DialogButtonStyle
      
    /**
     * Button text.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var value: ?ResourceStr

    /**
     * Callback invoked when the button is selected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var action: ?VoidCallback

    /**
     * Constructor of ActionSheetButtonOptions.
     *
     * @param { ?Bool } [enabled] - Whether to respond when the button is clicked. The value true means to respond when the button is clicked, and false means the opposite.
     * @param { ?Bool } [defaultFocus] - Whether the button is the default focus. The value true means that the button is the default focus, and false means the opposite.
     * @param { ?DialogButtonStyle } [style] - Button style.
     * @param { ?ResourceStr } value - Button text.
     * @param { ?VoidCallback } action - Callback invoked when the button is selected.
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
        action!: ?VoidCallback
    )
}

/**
 * Provides information about the action to dismiss the dialog box.
 * Used in the onWillDismiss callback to control whether the dialog should be dismissed based on the reason.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissDialogAction {
    /**
     * Reason why the dialog box cannot be dismissed. You must specify whether to close the dialog box for each of the
     * listed actions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var reason: DismissReason

    /**
     * Constructor of DismissDialogAction
     *
     * @param { DismissReason } reason - Reason why the dialog box cannot be dismissed. You must specify whether to close the dialog box for each of the listed actions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(reason: DismissReason)

    /**
     * Defines dialog dismiss function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}

/**
 * The options of ActionSheet.
 * Contains all configurable properties for the ActionSheet dialog, including title, message, sheet options,
 * styling, positioning, and callbacks.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ActionSheetOptions {
    /**
     * Title of the dialog box.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var title: ?ResourceStr


    /**
     * Subtitle of the dialog box.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var subtitle: ?ResourceStr

    /**
     * Content of the dialog box.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var message: ?ResourceStr

    /**
     * Information about the confirm button. When the dialog box has focus and focus has not been shifted using the Tab
     * key, the button responds to the Enter key by default, and multiple dialog boxes can gain focus consecutively
     * to respond automatically. The default response to the Enter key does not work when defaultFocus is set to true.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var confirm: ?ActionSheetButtonOptions

    /**
     * Callback invoked when the dialog box is closed after the overlay is clicked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cancel: ?VoidCallback

    /**
     * Options in the dialog box. Each option supports the image, text, and callback.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var sheets: ?Array<SheetInfo>

    /**
     * Whether to close the dialog box when the overlay is clicked.
     * @default true - The value true means to close the dialog box when the overlay is clicked, and false means
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: ?Bool


    /**
     * Alignment mode of the dialog box in the vertical direction.
     * NOTE: If showInSubWindow is set to true in UIExtension, the dialog box is aligned with the host window based on UIExtension.
     *
     * @default DialogAlignment.Bottom
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var alignment: ?DialogAlignment

    /**
     * Offset of the dialog box relative to the alignment position.
     * When alignment is set to Top, TopStart, or TopEnd: {dx: 0,dy: "40vp"}
     * When alignment is set to any other value: {dx: 0,dy: "-40vp"}
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: ?ActionSheetOffset

    /**
     * Mask area of the dialog box. Events outside the mask area are transparently transmitted, and events within the mask area are not.
     * NOTE: maskRect does not take effect when showInSubWindow is set to true.
     *
     * @default - Rectangle(x:0, y:0, width:100.percent, height:100.percent)
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var maskRect: ?Rectangle

    /**
     * Whether to show the dialog box in a subwindow when the dialog box needs to be displayed outside the main window.
     * NOTE: A dialog box whose showInSubWindow attribute is true cannot trigger the display of another dialog box whose showInSubWindow attribute is also true.
     * @default false
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var showInSubWindow: ?Bool

    /**
     * Whether the dialog box is a modal. A modal dialog box has a mask applied, while a non-modal dialog box does not.
     * @default true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var isModal: ?Bool

    /**
     * Background color of the dialog box.
     * NOTE:
     * When backgroundColor is set to a non-transparent color, backgroundBlurStyle must be set to BlurStyle.NONE;
     * otherwise, the color display may not meet the expected effect.
     *
     * @default Color.Transparent
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundColor: ?ResourceColor

    /**
     * Background blur style of the dialog box.
     * NOTE:
     * Setting this parameter to BlurStyle.NONE disables the background blur. When backgroundBlurStyle is set to a
     * value other than NONE, do not set backgroundColor. If you do, the color display may not produce the expected
     * visual effect.
     *
     * @default BlurStyle.ComponentUltraThick
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: ?BlurStyle

    /**
     * Callback for interactive closure of the dialog box.
     * NOTE:
     * 1. If this callback is registered, the dialog box will not be closed immediately after the user touches the
     * mask or the Back button, presses the Esc key, or swipes left or right on the screen. The reason parameter in
     * the callback is used to determine whether the dialog box can be closed. The reason returned by the component
     * does not support the value CLOSE_BUTTON.
     * 2. In the onWillDismiss callback, another onWillDismiss callback is not allowed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onWillDismiss: ?Callback<DismissDialogAction, Unit>

    /**
     * Transition effect for the entrance and exit of the dialog box.
     *
     * NOTE:
     * 1. If this parameter is not set, the default effect is used.
     * 2. Touching the Back button during the entrance animation pauses the entrance animation and starts the exit
     * animation. The final effect is one obtained after the curves of the entrance and exit animations are combined.
     * 3. Touching the Back button during the exit animation does not affect the animation playback. Touching the
     * Back button again closes the application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: ?TransitionEffect

    /**
     * Corner radius of the background. You can set the radius for each of the four corners individually.
     * @default - topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp, bottomRight: 32.vp.
     * The corner radius is subject to the component size, with the maximum value being half of the component width or height.
     * If the value is negative, the default value is used. When set to a percentage,
     * the value defines the radius as a percentage of the parent component's width or height.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cornerRadius: ?BorderRadiuses

    /**
     * Width of the dialog box.
     *
     * @default - Default maximum width of the dialog box: 400.vp,
     * When this parameter is set to a percentage, the reference width of the dialog box is the width of the window
     * where the dialog box is located. You can decrease or increase the width as needed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: ?Length

    /**
     * Height of the dialog box.
     *
     * @default - Default maximum height of the dialog box: 0.9 x (Window height – Safe area)
     * When this parameter is set to a percentage, the reference height of the dialog box is the height of the
     * window where the dialog box is located minus the safe area. You can decrease or increase the height as needed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: ?Length

    /**
     * Border width of the dialog box. You can set the width for all four sides or set separate widths for individual sides.
     * @default 0 - When set to a percentage, the value defines the border width as a percentage of the parent dialog box's width.
     * If the left and right borders are greater than its width, or the top and bottom borders are greater
     * than its height, the dialog box may not display as expected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderWidth: ?Length

    /**
     * Defines the custom dialog's border color.
     *
     * @default Color.Black, borderColor must be used with borderWidth in pairs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderColor: ?ResourceColor

    /**
     * Border style of the dialog box.
     * @default BorderStyle.Solid, borderStyle must be used with borderWidth in pairs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderStyle: ?EdgeStyles

    /**
     * Shadow of the dialog box.
     * @default Default value on 2-in-1 devices: ShadowStyle.OuterFloatingSM when the dialog box is focused and ShadowStyle.OuterFloatingSM otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: ?ShadowOptions

    /**
     * Constructor of ActionSheetOptions.
     *
     * @param { ?ResourceStr } title - Title of the dialog box.
     * @param { ?ResourceStr } subtitle - Subtitle of the dialog box.
     * @param { ?ResourceStr } message - Content of the dialog box.
     * @param { ?ActionSheetButtonOptions } confirm - Information about the confirm button.
     * @param { ?VoidCallback } cancel - Callback invoked when the dialog box is closed after the overlay is clicked.
     * @param { ?Array<SheetInfo> } sheets - Options in the dialog box.
     * @param { ?Bool } autoCancel - Whether to close the dialog box when the overlay is clicked.
     * @param { ?DialogAlignment } alignment - Alignment mode of the dialog box in the vertical direction.
     * @param { ?ActionSheetOffset } offset - Offset of the dialog box relative to the alignment position.
     * @param { ?Rectangle } maskRect - Mask area of the dialog box.
     * @param { ?Bool } showInSubWindow - Whether to show the dialog box in a subwindow when the dialog box needs to be displayed outside the main window.
     * @param { ?Bool } isModal - Whether to display the dialog box in a modal mode.
     * @param { ?ResourceColor } backgroundColor - Background color of the dialog box.
     * @param { ?BlurStyle } backgroundBlurStyle - Background blur style of the dialog box.
     * @param { ?Callback<DismissDialogAction, Unit> } onWillDismiss - Callback for interactive closure of the dialog box.
     * @param { ?TransitionEffect } transition - Transition effect for the entrance and exit of the dialog box.
     * @param { ?BorderRadiuses } cornerRadius - Corner radius of the background.
     * @param { ?Length } width - Width of the dialog box.
     * @param { ?Length } height - Height of the dialog box.
     * @param { ?Length } borderWidth - Border width of the dialog box.
     * @param { ?ResourceColor } borderColor - Border color of the dialog box.
     * @param { ?EdgeStyles } borderStyle - Border style of the dialog box.
     * @param { ?ShadowOptions } shadow - Shadow of the dialog box.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        title!: ?ResourceStr,
        subtitle!: ?ResourceStr = None,
        message!: ?ResourceStr,
        confirm!: ?ActionSheetButtonOptions = None,
        cancel!: ?VoidCallback = None,
        sheets!: ?Array<SheetInfo>,
        autoCancel!: ?Bool = None,
        alignment!: ?DialogAlignment = None,
        offset!: ?ActionSheetOffset = None,
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
        borderColor!: ?ResourceColor = None,
        borderStyle!: ?EdgeStyles = None,
        shadow!: ?ShadowOptions = None
    )
}

/**
 * ActionSheet offset.
 * Defines the offset of the action sheet relative to its alignment position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ActionSheetOffset {
    /**
     * Offset of the action sheet along the x-axis relative to the alignment position.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var dx: ?Length

    /**
     * Offset of the action sheet along the y-axis relative to the alignment position.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var dy: ?Length

    /**
     * Constructor of ActionSheetOffset.
     *
     * @param { ?Length } dx - Offset of the action sheet along the x-axis relative to the alignment position.
     * @param { ?Length } dy - Offset of the action sheet along the y-axis relative to the alignment position.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        dx!: ?Length,
        dy!: ?Length
    )
}