package ohos.arkui.component.custom_dialog

import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.common.*
import ohos.arkui.component.custom_component.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines the options of CustomDialogController.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CustomDialogControllerOptions {
    /**
     * Callback invoked when the dialog box is closed after the overlay is clicked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cancel: ?VoidCallback

    /**
     * Defines if use auto cancel when click on the outside of the dialog.
     * @default true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: ?Bool

    /**
     * Defines the dialog alignment of the screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var alignment: ?DialogAlignment

    /**
     * Defines the dialog offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: ?Offset

    /**
     * Defines if use custom style.
     *
     * @default false
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var customStyle: ?Bool

    /**
     * Grid count of dialog.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var gridCount: ?UInt32

    /**
     * Mask color of dialog.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var maskColor: ?ResourceColor

    /**
     * Mask Region of dialog. The size cannot exceed the main window.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var maskRect: ?Rectangle

    /**
     * Animation parameters of dialog opening.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var openAnimation: ?AnimateParam

    /**
     * Animation parameters of dialog closing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var closeAnimation: ?AnimateParam

    /**
     * Whether to display in the sub window.
     * @default false
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var showInSubWindow: ?Bool

    /**
     * Background color of dialog.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundColor: ?ResourceColor

    /**
     * Corner radius of dialog.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cornerRadius: ?Length

    /**
     * Whether it is a modal dialog.
     * @default true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var isModal: ?Bool

    /**
     * Callback function when the CustomDialog interactive dismiss.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onWillDismiss: ?Callback<DismissDialogAction, Unit>

    /**
     * Defines the custom dialog's width.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: ?Length

    /**
     * Defines the custom dialog's height.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: ?Length

    /**
     * Defines the custom dialog's border width.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderWidth: ?Length

    /**
     * Defines the custom dialog's border color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderColor: ?ResourceColor

    /**
     * Defines the custom dialog's border style.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderStyle: ?EdgeStyles

    /**
     * Defines the custom dialog's shadow.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: ?ShadowOptions

    /**
     * Defines the customDialog's background blur Style.
     * @default BlurStyle.ComponentUltraThick
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: ?BlurStyle

    /**
     * Defines the options of CustomDialogController.
     *
     * @param { CustomView } builder - customDialog content constructor.
     * @param { ?VoidCallback } [cancel] - Defines the cancel function.
     * @param { ?Bool } [autoCancel] - Defines if use auto cancel when click on the outside of the dialog.
     * @param { ?Offset } [offset] - Defines the dialog offset.
     * @param { ?Bool } [customStyle] - Defines if use custom style.
     * @param { ?UInt32 } [gridCount] - Grid count of dialog.
     * @param { ?ResourceColor } [maskColor] - Mask color of dialog.
     * @param { ?Rectangle } [maskRect] - Mask Region of dialog. The size cannot exceed the main window.
     * @param { ?AnimateParam } [openAnimation] - Animation parameters of dialog opening.
     * @param { ?AnimateParam } [closeAnimation] - Animation parameters of dialog closing.
     * @param { ?Bool } [showInSubWindow] - Whether to display in the sub window.
     * @param { ?ResourceColor } [backgroundColor] - Background color of dialog.
     * @param { ?Length } [cornerRadius]- Corner radius of dialog.
     * @param { ?Bool } [isModal] - Whether it is a modal dialog.
     * @param { ?Callback<DismissDialogAction, Unit> } [onWillDismiss] - Callback function when the CustomDialog interactive dismiss.
     * @param { ?Length } [width] - Defines the custom dialog's width.
     * @param { ?Length } [height] - Defines the custom dialog's height.
     * @param { ?Length } [borderWidth] - Defines the custom dialog's border width.
     * @param { ?ResourceColor } [borderColor] - Defines the custom dialog's border color.
     * @param { ?EdgeStyles } [borderStyle] - Defines the custom dialog's border style.
     * @param { ?ShadowOptions } [shadow] - Defines the custom dialog's shadow.
     * @param { ?BlurStyle } [backgroundBlurStyle] - Defines the customDialog's background blur Style.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        builder!: CustomView,
        cancel!: ?VoidCallback = None,
        autoCancel!: ?Bool = None,
        alignment!: ?DialogAlignment = None,
        offset!: ?Offset = None,
        customStyle!: ?Bool = None,
        gridCount!: ?UInt32 = None,
        maskColor!: ?ResourceColor = None,
        maskRect!: ?Rectangle = None,
        openAnimation!: ?AnimateParam = None,
        closeAnimation!: ?AnimateParam = None,
        showInSubWindow!: ?Bool = None,
        backgroundColor!: ?ResourceColor = None,
        cornerRadius!: ?Length = None,
        isModal!: ?Bool = None,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: ?Length = None,
        borderColor!: ?ResourceColor = None,
        borderStyle!: ?EdgeStyles = None,
        shadow!: ?ShadowOptions = None,
        backgroundBlurStyle!: ?BlurStyle = None
    )
}

/**
* Use the CustomDialogController class to display the custom pop-up window.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CustomDialogController <: RemoteDataLite {
    /**
     * The constructor transfers parameter settings.
     *
     * @param { CustomDialogControllerOptions } value - The configuration options for the dialog controller.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: CustomDialogControllerOptions)

    /**
     * Display the content of the customized pop-up window. If the content has been displayed, it does not take effect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func openDialog(): Unit

    /**
     * Closes the custom pop-up window. If the window is closed, the window does not take effect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closeDialog(): Unit

    /**
     * Manually releases the resources used by the dialog controller when it is no longer needed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func releaseSelf(): Unit
}