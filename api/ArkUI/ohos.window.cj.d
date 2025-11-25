package ohos.window

import ohos.app.ability.BaseContext
internal import ohos.base.*
internal import ohos.business_exception.*
internal import ohos.callback_invoke.*
internal import ohos.ffi.*
internal import ohos.hilog.*
internal import ohos.labels.*
internal import ohos.multimedia.image.*
internal import std.collection.*
internal import std.collection.HashMap
import std.deriving.Derive
internal import std.sync.*

/**
 * Window size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Size {
/**
 * The width of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var width: UInt32

/**
 * The height of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var height: UInt32

/**
 * Size constructor.
 *
 * @param { UInt32 } width - The width of the window.
 * @param { UInt32 } height - The height of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public init(
        width!: UInt32,
        height!: UInt32
    )
}

/**
 * Rectangular area of the title buttons relative to the upper right corner of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public class TitleButtonRect {
/**
 * The right of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public var right: Int32

/**
 * The top of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public var top: Int32

/**
 * The width of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public var width: UInt32

/**
 * The height of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public var height: UInt32

/**
 * TitleButtonRect constructor.
 *
 * @param { Int32 } right - The right of the Rect.
 * @param { Int32 } top - The top of the Rect.
 * @param { UInt32 } width - The width of the Rect.
 * @param { UInt32 } height - The height of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public init(
        right!: Int32,
        top!: Int32,
        width!: UInt32,
        height!: UInt32
    )
}

/**
 * Configuration parameters for window creation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Configuration {
/**
 * Indicates window id.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var name: String

/**
 * Indicates window type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var windowType: WindowType

/**
 * Indicates window context.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var ctx: BaseContext

/**
 * Indicates display ID.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var displayID: Int64 = -1

/**
 * Indicates Parent window id.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var parentID: Int64 = -1

/**
 * Configuration constructor.
 *
 * @param { String } name - Indicates window id.
 * @param { WindowType } windowType - Indicates window type.
 * @param { BaseContext } ctx - Indicates window context.
 * @param { Int64 } [displayId] - Indicates display ID.
 * @param { Int64 } [parentId] - Indicates Parent window id.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public init(
        name!: String,
        windowType!: WindowType,
        ctx!: BaseContext,
        displayId!: Int64 = -1,
        parentId!: Int64 = -1
    )
}

/**
 * Rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Rect {
/**
 * The left of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var left: Int32

/**
 * The top of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var top: Int32

/**
 * The width of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var width: UInt32

/**
 * The height of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var height: UInt32

/**
 * The constructor of Rect.
 *
 * @param { Int32 } left - The left of the Rect.
 * @param { Int32 } top - The top of the Rect.
 * @param { UInt32 } width -  The width of the Rect.
 * @param { UInt32 } height -  The height of the Rect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public init(
        left!: Int32,
        top!: Int32,
        width!: UInt32,
        height!: UInt32
    )
}

/**
 * Properties of window, it couldn't update automatically.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WindowProperties {
/**
 * The position and size of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var windowRect: Rect

/**
 * The position relative to the window and size of drawable area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var drawableRect: Rect

/**
 * Window type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var windowType: WindowType

/**
 * Whether the window is displayed in full screen mode.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var isFullScreen: Bool

/**
 * Whether the window layout is in full screen mode(whether the window is immersive).
 *
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var isLayoutFullScreen: Bool

/**
 * Whether the window can gain focus.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var focusable: Bool

/**
 * Whether the window is touchable.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var touchable: Bool

/**
 * Brightness value of window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var brightness: Float64

/**
 * Whether keep screen on.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var isKeepScreenOn: Bool

/**
 * Whether make window in privacy mode or not.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var isPrivacyMode: Bool

/**
 * Whether is transparent or not.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var isTransparent: Bool

/**
 * Window id.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var id: UInt32

/**
 * WindowProperties constructor.
 *
 * @param { Rect } windowRect - The position and size of the window.
 * @param { Rect } drawableRect - The position relative to the window and size of drawable area.
 * @param { WindowType } winType - Window type.
 * @param { Bool } isFullScreen - Whether the window is displayed in full screen mode. The default value is false.
 * @param { Bool } isLayoutFullScreen - Whether the window layout is in full screen mode(whether the window is immersive). The default value is false.
 * @param { Bool } focusable - Whether the window can gain focus. The default value is true.
 * @param { Bool } touchable - Whether the window is touchable. The default value is false.
 * @param { Float64 } brightness - Brightness value of window.
 * @param { Bool } isKeepScreenOn - Whether keep screen on.
 * @param { Bool } isPrivacyMode - Whether make window in privacy mode or not.
 * @param { Bool } isTransparent - Whether is transparent or not.
 * @param { UInt32 } id - Window id.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public init(
        windowRect!: Rect,
        drawableRect!: Rect,
        winType!: WindowType,
        isFullScreen!: Bool,
        isLayoutFullScreen!: Bool,
        focusable!: Bool,
        touchable!: Bool,
        brightness!: Float64,
        isKeepScreenOn!: Bool,
        isPrivacyMode!: Bool,
        isTransparent!: Bool,
        id!: UInt32
    )
}

/**
 * Avoid area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class AvoidArea {
/**
 * Whether avoidArea is visible on screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var visible: Bool

/**
 * Rectangle on the left of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var leftRect: Rect

/**
 * Rectangle on the top of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var topRect: Rect

/**
 * Rectangle on the right of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var rightRect: Rect

/**
 * Rectangle on the bottom of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var bottomRect: Rect

/**
 * AvoidArea constructor.
 *
 * @param { Bool } visible - Whether avoidArea is visible on screen.
 * @param { Rect } leftRect - Rectangle on the left of the screen.
 * @param { Rect } topRect - Rectangle on the top of the screen.
 * @param { Rect } rightRect - Rectangle on the right of the screen.
 * @param { Rect } bottomRect - Rectangle on the bottom of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public init(
        visible!: Bool,
        leftRect!: Rect,
        topRect!: Rect,
        rightRect!: Rect,
        bottomRect!: Rect
    )
}

/**
 * Properties of status bar and navigation bar, it couldn't update automatically.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class SystemBarProperties {
/**
 * The color of the status bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var statusBarColor: String = "#66000000"

/**
 * The light icon of the status bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var isStatusBarLightIcon: Bool = false

/**
 * The content color of the status bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var statusBarContentColor: String = "#E5FFFFFF"

/**
 * The color of the navigation bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var navigationBarColor: String = "#66000000"

/**
 * The light icon of the navigation bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var isNavigationBarLightIcon: Bool = false

/**
 * The content color of the navigation bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public var navigationBarContentColor: String = "#E5FFFFFF"

/**
 * Enable the animation of the status bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public var enableStatusBarAnimation: Bool = false

/**
 * Enable the animation of the navigation bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public var enableNavigationBarAnimation: Bool = false

/**
 * SystemBarProperties constructor.
 *
 * @param { String } [statusBarColor] - The color of the status bar.
 * @param { Bool } [isStatusBarLightIcon] - Weather the status bar icon is light.
 * @param { String } [statusBarContentColor] - The content color of the status bar.
 * @param { String } [navigationBarColor] - The content color of the status bar.
 * @param { Bool } [isNavigationBarLightIcon] - Weather the navigation bar icon is light.
 * @param { String } [navigationBarContentColor] - The content color of the navigation bar.
 * @param { Bool } [enableStatusBarAnimation] - Enable the animation of the status bar.
 * @param { Bool } [enableNavigationBarAnimation] - Enable the animation of the navigation bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public init(
        statusBarColor!: String = "#66000000",
        isStatusBarLightIcon!: Bool = false,
        statusBarContentColor!: String = "#E5FFFFFF",
        navigationBarColor!: String = "#66000000",
        isNavigationBarLightIcon!: Bool = false,
        navigationBarContentColor!: String = "#E5FFFFFF",
        enableStatusBarAnimation!: Bool = false,
        enableNavigationBarAnimation!: Bool = false
    )
}

/**
 * The type of a window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowType {
/**
 * App.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeApp
    | 
/**
 * System alert.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeSystemAlert
    | 
/**
 * Float.
 * Require "ohos.permission.SYSTEM_FLOAT_WINDOW" permission
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeFloat
    | 
/**
 * Dialog.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeDialog
    | ...
}

extend WindowType <: Equatable<WindowType> {
/**
 * Compares this WindowType with another for equality.
 *
 * @param { WindowType } other - The WindowType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: WindowType): Bool
/**
 * Compares this WindowType with another for equality.
 *
 * @param { WindowType } other - The WindowType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: WindowType): Bool
}

/**
 * Display orientation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum Orientation {
/**
 * Default value. The direction mode is not clearly defined. It is determined by the system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Unspecified
    | 
/**
 * Display in portrait orientation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Portrait
    | 
/**
 * Display in landscape orientation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Landscape
    | 
/**
 * Display in inverted portrait orientation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    PortraitInverted
    | 
/**
 * Display in inverted landscape orientation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    LandscapeInverted
    | 
/**
 * Follow the rotation of the sensor, ignore auto rotation lock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    AutoRotation
    | 
/**
 * Follow the rotation of the sensor, only work in the vertical direction, ignore auto rotation lock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    AutoRotationPortrait
    | 
/**
 * Follow the rotation of the sensor, only work in the horizontal direction, ignore auto rotation lock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    AutoRotationLandscape
    | 
/**
 * Follow the rotation of the sensor, controlled by auto rotation lock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    AutoRotationRestricted
    | 
/**
 * Follow the rotation of the sensor, only work in the vertical direction, controlled by auto rotation lock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    AutoRotationPortraitRestricted
    | 
/**
 * Follow the rotation of the sensor, only work in the horizontal direction, controlled by auto rotation lock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    AutoRotationLandscapeRestricted
    | 
/**
 * Locked mode, keep the same direction as previous one.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Locked
    | ...
}

extend Orientation <: Equatable<Orientation> {
/**
 * Compares this Orientation with another for equality.
 *
 * @param { Orientation } other - The Orientation to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: Orientation): Bool
/**
 * Compares this Orientation with another for equality.
 *
 * @param { Orientation } other - The Orientation to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: Orientation): Bool
}

/**
 * Describes the type of avoid area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum AvoidAreaType {
/**
 * Default area of the system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeSystem
    | 
/**
 * Notch.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeCutout
    | 
/**
 * Area for system gesture.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeSystemGesture
    | 
/**
 * Area for keyboard.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeKeyboard
    | 
/**
 * Area for navigation indicator.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TypeNavigationIndicator
    | ...
}

extend AvoidAreaType <: Equatable<AvoidAreaType> {
/**
 * Compares this AvoidAreaType with another for equality.
 *
 * @param { AvoidAreaType } other - The AvoidAreaType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: AvoidAreaType): Bool
/**
 * Compares this AvoidAreaType with another for equality.
 *
 * @param { AvoidAreaType } other - The AvoidAreaType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: AvoidAreaType): Bool
}

/**
 * Enum for window callback event type
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowEventType {
/**
 * The value of window event is window show.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowShown
    | 
/**
 * The value of window event is window active.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowActive
    | 
/**
 * The value of window event is window inactive.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowInactive
    | 
/**
 * The value of window event is window hide.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowHidden
    | 
/**
 * The value of window event is window destroy.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    WindowDestroyed
    | ...
}

extend WindowEventType <: Equatable<WindowEventType> {
/**
 * Compares this WindowEventType with another for equality.
 *
 * @param { WindowEventType } other - The WindowEventType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: WindowEventType): Bool
/**
 * Compares this WindowEventType with another for equality.
 *
 * @param { WindowEventType } other - The WindowEventType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: WindowEventType): Bool
}

/**
 * Window stage callback event type
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowStageEventType {
/**
 * The window stage is running in the foreground.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Shown
    | 
/**
 * The window stage gains focus.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Active
    | 
/**
 * The window stage loses focus.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Inactive
    | 
/**
 * The window stage is running in the background.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Hidden
    | 
/**
 * The window stage is interactive in the foreground.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Resumed
    | 
/**
 * The window stage is not interactive in the foreground.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Paused
    | ...
}

extend WindowStageEventType <: Equatable<WindowStageEventType> {
/**
 * Compares this WindowStageEventType with another for equality.
 *
 * @param { WindowStageEventType } other - The WindowStageEventType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: WindowStageEventType): Bool
/**
 * Compares this WindowStageEventType with another for equality.
 *
 * @param { WindowStageEventType } other - The WindowStageEventType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: WindowStageEventType): Bool
}

/**
 * Describes the window status of an application.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public enum WindowStatusType {
/**
 * Undefined status of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    Undefined
    | 
/**
 * Full screen status of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    FullScreen
    | 
/**
 * Maximize status of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    Maximize
    | 
/**
 * Minimize status of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    Minimize
    | 
/**
 * Floating status of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    Floating
    | 
/**
 * Split screen status of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    SplitScreen
    | ...
}

extend WindowStatusType <: Equatable<WindowStatusType> {
/**
 * Compares this WindowStatusType with another for equality.
 *
 * @param { WindowStatusType } other - The WindowStatusType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public operator func ==(other: WindowStatusType): Bool
/**
 * Compares this WindowStatusType with another for equality.
 *
 * @param { WindowStatusType } other - The WindowStatusType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
    public operator func !=(other: WindowStatusType): Bool
}

/**
* Type of allowing the specified of color space.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum ColorSpace {
/**
 * Default color space.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Default
    | 
/**
 * Wide gamut color space. The specific wide color gamut depends on thr screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WideGamut
    | ...
}

extend ColorSpace <: Equatable<ColorSpace> {
/**
 * Compares this ColorSpace with another for equality.
 *
 * @param { ColorSpace } other - The ColorSpace to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: ColorSpace): Bool
/**
 * Compares this ColorSpace with another for equality.
 *
 * @param { ColorSpace } other - The ColorSpace to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: ColorSpace): Bool
}

/**
 * Enumerates of listening event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowCallbackType {
/**
 * The value is fixed at 'windowStageEvent', indicating the window stage lifecycle change event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowStageEvent
    | 
/**
 * The value is fixed at 'windowSizeChange', indicating the window size change event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowSizeChange
    | 
/**
 * The value is fixed at 'avoidAreaChange', indicating the event of changes to the avoid area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowAvoidAreaChange
    | 
/**
 * The value is fixed at 'keyboardHeightChange', indicating the keyboard height change event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    KeyboardHeightChange
    | 
/**
 * The value is fixed at 'touchOutside', indicating the click event outside this window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    TouchOutside
    | 
/**
 * The value is fixed at 'windowVisibilityChange', indicating the visibility status change event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowVisibilityChange
    | 
/**
 * The value is fixed at 'noInteractionDetected', indicating the window has no interaction for a long time.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    NoInteractionDetected
    | 
/**
 * The value is fixed at 'screenshot', indicating the screenshot event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Screenshot
    | 
/**
 * The value is fixed at 'dialogTargetTouch', indicating the click event of the target window in the modal window mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    DialogTargetTouch
    | 
/**
 * The value is fixed at 'windowEvent', indicating the window lifecycle change event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowEvent
    | 
/**
 * The value is fixed at 'windowStatusChange', indicating the window status change event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowStatusChange
    | 
/**
 * The value is fixed at 'subWindowClose', indicating the child window close event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    SubWindowClose
    | 
/**
 * The value is fixed at 'windowTitleButtonRectChange', indicating that the change event of the rectangle that holds the minimize, maximize, and close buttons.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowTitleButtonRectChange
    | 
/**
 * The value is fixed at 'windowRectChange', indicating the window rect change event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    WindowRectChange
    | ...
}

extend WindowCallbackType <: Equatable<WindowCallbackType> {
/**
 * Compares this WindowCallbackType with another for equality.
 *
 * @param { WindowCallbackType } other - The WindowCallbackType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: WindowCallbackType): Bool
/**
 * Compares this WindowCallbackType with another for equality.
 *
 * @param { WindowCallbackType } other - The WindowCallbackType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: WindowCallbackType): Bool
}

/**
* Enumerates of system bar type.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum SystemBarType {
/**
 * Status bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Status
    | 
/**
 * Navigation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    Navigation
    | ...
}

extend SystemBarType <: Equatable<SystemBarType> {
/**
 * Compares this SystemBarType with another for equality.
 *
 * @param { SystemBarType } other - The SystemBarType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func ==(other: SystemBarType): Bool
/**
 * Compares this SystemBarType with another for equality.
 *
 * @param { SystemBarType } other - The SystemBarType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
    public operator func !=(other: SystemBarType): Bool
}

/**
 * Finds a window based on the name.
 *
 * @param { String } name - Window name, that is, the value of name in Configuration.
 * @returns { Window } Window found.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
public func findWindow(name: String): Window

/**
 * Create a window with a specific configuration
 * When config.windowType == TYPE_FLOAT, the "ohos.permission.SYSTEM_FLOAT_WINDOW" permission is required.
 *
 * @param { Configuration } config - Parameters for window creation.
 * @returns { Window } the window created.
 * @throws { BusinessException } 201 - Permission verification failed. The application does not have the permission required to call the API.
 * @throws { BusinessException } 1300003 - This window manager service works abnormally.
 * @throws { BusinessException } 1300006 - This window context is abnormal.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.SYSTEM_FLOAT_WINDOW",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
public func createWindow(config: Configuration): Window

/**
 * Obtains the top window of the current application.
 * If no child window is available, the main window of the application is returned.
 *
 * @param { BaseContext } ctx - Current application context.
 * @returns { Window } the top window obtained.
 * @throws { BusinessException } 1300006 - This window context is abnormal.
 * @throws { BusinessException } 1300002 - This window state is abnormal. Top window or main window is null or destroyed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
public func getLastWindow(ctx: BaseContext): Window

/**
 * Shifts the window focus from the source window to the target window in the same application.
 * The window focus can be shifted between the main window and a child window.
 *
 * @param { Int32 } sourceWindowId - Window id which the focus shift from.
 * @param { Int32 } targetWindowId - Window id which the focus shift to.
 * @throws { BusinessException } 801 - Capability not supported. Failed to call the API due to limited device capabilities.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 * @throws { BusinessException } 1300003 - This window manager service works abnormally.
 * @throws { BusinessException } 1300004 - Unauthorized operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true,
    workerthread: true
]
public func shiftAppWindowFocus(sourceWindowId: Int32, targetWindowId: Int32): Unit

/**
 * Window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Window <: RemoteDataLite {
/**
 * Shows this window.
 * This API takes effect only for a system window or an application child window.
 * For the main window of an application, this API moves it at the top when the main window is already displayed.
 *
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func showWindow(): Unit

/**
 * Set the position of a window.
 *
 * @param { Int32 } x - Indicate the X-coordinate of the window.
 * @param { Int32 } y - Indicate the Y-coordinate of the window.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func moveWindowTo(x: Int32, y: Int32): Unit

/**
 * Set the size of a window.
 *
 * @param { UInt32 } width - Indicates the width of the window. The width should be greater than 0.
 * @param { UInt32 } height - Indicates the height of the window. The height should be greater than 0.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true,
    workerthread: true
]
    public func resize(width: UInt32, height: UInt32): Unit

/**
 * Get the properties of current window.
 *
 * @returns { WindowProperties } Return the window properties.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func getWindowProperties(): WindowProperties

/**
 * Destroys this window.
 * This API takes effect only for a system window or an application child window.
 *
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func destroyWindow(): Unit

/**
 * Sets whether the main window layout or the child window layout is immersive.
 *
 * @param { Bool } isLayoutFullScreen - Whether the window layout is immersive
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowLayoutFullScreen(isLayoutFullScreen: Bool): Unit

/**
 * Whether the window supports thr wide gamut setting.
 *
 * @returns { Bool } The value true means that the wide-gamut color space is supported, and false means the opposite.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func isWideGamutSupported(): Bool

/**
 * Checks whether the window is displayed
 *
 * @returns { Bool }  Whether the window is displayed. The value true means that the window is displayed, and false means the opposite.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func isWindowShowing(): Bool

/**
 * Sets the background color of window.
 *
 * @param { String } color - the specified color.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func setWindowBackgroundColor(color: String): Unit

/**
 * Sets the brightness of window.
 *
 * @param { Float32 } brightness - the specified brightness value.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowBrightness(brightness: Float32): Unit

/**
 * Sets whether focusable or not.
 *
 * @param { Bool } isFocusable - can be focus if true, or can not be focus if false.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowFocusable(isFocusable: Bool): Unit

/**
 * Sets whether keep screen on or not.
 *
 * @param { Bool } isKeepScreenOn - keep screen on if true, or not if false.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowKeepScreenOn(isKeepScreenOn: Bool): Unit

/**
 * Sets whether is private mode or not.
 *
 * @param { Bool } isPrivacyMode - in private mode if true, or not if false.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.PRIVACY_WINDOW",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowPrivacyMode(isPrivacyMode: Bool): Unit

/**
 * Sets whether is touchable or not.
 *
 * @param { Bool } isTouchable - is touchable if true, or not if false.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowTouchable(isTouchable: Bool): Unit

/**
 * Sets the preferred orientation for the main window.
 * It does not take effect on devices that do not support rotation with the sensor, on 2-in-1 devices or for the child window.
 *
 * @param { Orientation } orientation - The orientation config of the window.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setPreferredOrientation(orientation: Orientation): Unit

/**
 * Get the avoid area.
 *
 * @param { AvoidAreaType } areaType - Type of the area.
 * @returns { AvoidArea } Area where the window cannot be displayed.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func getWindowAvoidArea(areaType: AvoidAreaType): AvoidArea

/**
 * Sets the aspect ratio of window.
 *
 * @param { Float64 } ratio - The aspect ratio of window except decoration
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 * @throws { BusinessException } 1300004 - Unauthorized operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setAspectRatio(ratio: Float64): Unit

/**
 * Resets the aspect ratio of window.
 *
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 * @throws { BusinessException } 1300004 - Unauthorized operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func resetAspectRatio(): Unit

/**
 * Sets the specified color space.
 *
 * @param { ColorSpace } colorSpace - the specified color space.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowColorSpace(colorSpace: ColorSpace): Unit

/**
 * Minimizes the main window if the caller is the main window. The main window can be restored in the dock bar. For 2-in-1 devices, it can be restored by calling restore().
 * Hides the child window if the caller is a child window. The child window cannot be restored in the dock bar. It can be made visible again by calling showWindow().
 *
 * @throws { BusinessException } 801 - Capability not supported. Failed to call the API due to limited device capabilities.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true,
    workerthread: true
]
    public func minimize(): Unit

/**
 * Obtains the set color space.
 *
 * @returns { ColorSpace } Color space obtained.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func getWindowColorSpace(): ColorSpace

/**
 * Obtains snapshot of window.
 *
 * @returns { PixelMap } Return pixel map of snapshot.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func snapshot(): PixelMap

/**
 * Sets whether to show the system bar of the main window.
 *
 * @param { Array<SystemBarType> } names - The set of system bar types
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowSystemBarEnabled(names: Array<SystemBarType>): Unit

/**
 * Set the properties of system bar.
 *
 * @param { SystemBarProperties } systemBarProperties - The properties of system bar
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func setWindowSystemBarProperties(systemBarProperties: SystemBarProperties): Unit

/**
 * Register the callback of keyboardHeightChange.
 *
 * @param { WindowCallbackType } callbackType - The value is fixed at KeyboardHeightChange, indicating the keyboard height change event.
 * @param { Callback1Argument<UInt32> } callback - Callback used to return the current keyboard height, which is an integer, in px.
 * @throws { BusinessException } 1300016 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified;
 *                                                                      2. Incorrect parameter types;
 *                                                                      3. Parameter verification failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func on(callbackType: WindowCallbackType, callback: Callback1Argument<UInt32>): Unit

/**
 * Unregister the callback of keyboardHeightChange.
 *
 * @param { WindowCallbackType } callbackType - The value is fixed at KeyboardHeightChange, indicating the keyboard height change event.
 * @param { Callback1Argument<UInt32> } callback  - Callback used to return the current keyboard height, which is an integer, in px. 
 * If a value is passed in, the corresponding subscription is canceled. 
 * If no value is passed in, all subscriptions to the specified event are canceled
 * @throws { BusinessException } 1300016 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified;
 *                                                                      2. Incorrect parameter types;
 *                                                                      3. Parameter verification failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func off(callbackType: WindowCallbackType, callback: Callback1Argument<UInt32>): Unit

/**
 * Unregister the callback of screenshot app event.
 *
 * @param { WindowCallbackType } callbackType - the event type
 * @throws { BusinessException } 1300016 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified;
 *  2. Incorrect parameter types;
 *  3. Parameter verification failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
    public func off(callbackType: WindowCallbackType): Unit
}

/**
 * WindowStage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WindowStage <: RemoteDataLite {
/**
 * Obtains the main window of this window stage.
 *
 * @returns { Window } the main window.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func getMainWindow(): Window

/**
 * Creates a child window for this window stage.
 *
 * @param { String } name - Name of the child window.
 * @returns { Window } the child window.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func createSubWindow(name: String): Window

/**
 * Obtains all the child windows of this window stage.
 *
 * @returns { Array<Window> } all the child windows.
 * @throws { BusinessException } 1300002 - This window state is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func getSubWindow(): Array<Window>

/**
 * Loads content from a page to this window. You are advised to call this API during UIAbility startup.
 * If called multiple times, this API will destroy the existing page content (UIContent) before loading the new content. Exercise caution when using it.
 *
 * @param { String } path - Path of the page to which the content will be loaded
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
    public func loadContent(path: String): Unit
}